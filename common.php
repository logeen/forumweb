<?php
define('IN_PHPBB', true);
$phpbb_root_path = './';

require_once $phpbb_root_path . 'extension.inc';
require_once $phpbb_root_path . 'includes/HttpRequest.class.php';
require_once $phpbb_root_path . 'includes/functions.php';
require_once $phpbb_root_path . 'includes/template.php';

function parse_data($data)
{
	if ($data->nodeType == XML_TEXT_NODE) return iconv('UTF-8', 'ISO-8859-2', $data->nodeValue);
	if ($data->firstChild && $data->firstChild->nodeType == XML_TEXT_NODE) return iconv('UTF-8', 'ISO-8859-2', $data->firstChild->nodeValue);
	$ret = array();
	foreach ($data->childNodes as $var)
	{
		$value = $var->nodeType == XML_ELEMENT_NODE && !$var->hasChildNodes() ? '' : parse_data($var);
		if ($var->nodeType == XML_ELEMENT_NODE && $var->hasAttribute('name')) $ret[$var->getAttribute('name')] = $value;
		else $ret[] = $value;
	}
	return $ret;
}

$hr = new HttpRequest;
$hr->open($_SERVER['REQUEST_METHOD'], 'http://www.forumweb.pl' . substr($_SERVER['REQUEST_URI'], strlen(strpos($_SERVER['REQUEST_URI'], $_SERVER['SCRIPT_NAME']) === 0 ? $_SERVER['SCRIPT_NAME'] : dirname($_SERVER['SCRIPT_NAME']))) . (strpos($_SERVER['REQUEST_URI'], '?') === false ? '?' : '&') . '_format=xml');
foreach (apache_request_headers() as $name => $value)
{
	if (!in_array(strtolower($name),  array('host', 'accept-encoding'))) $hr->setRequestHeader($name, $value);
}
$hr->send(file_get_contents('php://input'));

header('HTTP/1.1 ' . $hr->status . ' ' . $hr->statusText);
foreach (explode("\r\n", $hr->getAllResponseHeaders()) as $value)
{
	if (preg_match('/^Set-Cookie:/i', $value)) header(preg_replace(array('/(;\s+path=)[^;]+/', '/(;\s+domain=)[^;]+/'), array('$1' . rtrim(dirname($_SERVER['SCRIPT_NAME']), '/') . '/', '$1' . $_SERVER['SERVER_NAME']), $value));
	else if (!preg_match('/^Content-Type:/i', $value)) header($value);
}

$template = new Template('./templates/phpbbSilver');

$xml = new DOMDocument();
$xml->loadXML($hr->responseText);
foreach ($xml->getElementsByTagName('method') as $method)
{
	$name = $method->getAttribute('name');
	if ($name == 'pparse')
	{
		$template->assign_vars(array(
			'DEBUG' => htmlspecialchars(var_export($template->_tpldata, true)),
			'BASE' => htmlspecialchars($_SERVER['SCRIPT_NAME']) . '/' . (isset($template->_tpldata['.'][0]['BASE']) ? preg_replace(array('/^(https?:\/\/[^\/?&#]+)?\/?/i', '/(\?|&amp;)_format=xml(&amp;|#|$)/'), array('', '$1$2'), $template->_tpldata['.'][0]['BASE']) : '')
		));
	}
	call_user_func_array(array($template, $name), parse_data($method));
}