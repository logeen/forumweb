<?php
/**
 * @version 1.0.3
 * @author S³awomir Kok³owski {@link http://www.kurshtml.edu.pl}
 * @copyright NIE usuwaj tego komentarza! (Do NOT remove this comment!)
 */

class HttpRequest
{
	public $responseText;
	public $status;
	public $statusText;

	private $sock;
	private $timeout;
	private $method;
	private $url;
	private $requestHeaders = '';
	private $responseHeaders = array();

	function __construct($timeout=30)
	{
		$this->timeout = $timeout;
	}

	function open($method, $url)
	{
		$this->method = $method;
		$this->url = @ parse_url($url);
		if ($this->url === false) throw new Exception('Invalid URL format');
		$this->sock = @ fSockOpen($this->url['host'], array_key_exists('port', $this->url) ? $this->url['port'] : 80, $errno, $errstr, $this->timeout);
		if (!$this->sock) throw new Exception($errstr, $errno);
	}

	function setRequestHeader($name, $value)
	{
		$this->requestHeaders .= "$name: $value\r\n";
	}

	function send($data='')
	{
		if ($this->sock)
		{
			fwrite($this->sock,
				trim(strToUpper($this->method)) . " " . (array_key_exists('path', $this->url) ? $this->url['path'] : "") . (array_key_exists('query', $this->url) ? "?{$this->url['query']}" : "") . " HTTP/1.1\r\n" .
				"Host: {$this->url['host']}\r\n" .
				$this->requestHeaders .
				(preg_match("/(^|\r\n)Connection: /", $this->requestHeaders) ? "" : "Connection: Close\r\n") .
				"\r\n" .
				$data
			);

			$this->responseText = '';
			$this->status = null;
			$this->statusText = null;
			$isBody = false;
			while (!feof($this->sock))
			{
				$line = fgets($this->sock, 1024);
				if ($this->status === null)
				{
					if (!preg_match("/^HTTP\/[\d.]+\s+(\d+)(\s+([^\r\n]+))?/i", $line, $matches)) throw new Exception('Invalid response');
					$this->status = intval($matches[1]);
					if (isset($matches[3])) $this->statusText = $matches[3];
				}
				else
				{
					if ($isBody) $this->responseText .= $line;
					else if (preg_match("/^[\r\n]+$/", $line)) $isBody = true;
					else
					{
						if (!preg_match("/^([^:]+):\s*([^\r\n]+)/", $line, $matches)) throw new Exception('Invalid header');
						$this->responseHeaders[$this->capitalize($matches[1])] = $matches[2];
					}
				}
			}
			fClose($this->sock);

			if (array_key_exists('Transfer-Encoding', $this->responseHeaders) && preg_match('/(^|[,\s])chunked([,\s]|$)/i', $this->responseHeaders['Transfer-Encoding'])) $this->responseText = preg_replace("/^[a-f0-9]+[^\r\n]*\r?\n|\r?\n0+[^\r\n]*[\r\n]+$/i", '', $this->responseText);
		}
	}

	function getResponseHeader($name)
	{
		$name = $this->capitalize($name);
		return array_key_exists($name, $this->responseHeaders) ? $this->responseHeaders[$name] : null;
	}

	function getAllResponseHeaders()
	{
		$headers = '';
		foreach ($this->responseHeaders as $name => $value)
		{
			$headers .= "$name: $value\r\n";
		}
		return $headers;
	}

	private function capitalize($text)
	{
		return preg_replace('/(^|[^0-9A-Za-z_])([a-z])/e', 'str_replace(\'\\\\"\', \'"\', \'$1\') . strToUpper(\'$2\')', strToLower($text));
	}
}