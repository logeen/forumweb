<<<<<<< HEAD
/**
 * WYSIWYG editor for BBCode.
 * @author S³awomir Kok³owski {@link http://www.kurshtml.edu.pl}
 * @copyright NIE usuwaj tego komentarza! (Do NOT remove this comment!)
 */

var Editor = function(textarea, className)
{
	var instance = this;
	var editor = null;
	var range = null;

	this.isActive = function()
	{
		if (!Editor.isSupported()) return false;
		return editor.style.display != 'none';
	};

	this.getElement = function()
	{
		return editor;
	};

	this.bbcode2html = function()
	{
		if (!Editor.isSupported()) return false;
		var html = textarea.value;
		html = html.replace(/</g, '&lt;').replace(/>/g, '&gt;');
		html = html.replace(/\[(\/?(b|i|u|s|sup|sub|tt))\]/g, '<$1>');
		html = html.replace(/\[list\]\s*/g, '<ul>').replace(/\s*\[\/list\]/g, '</ul>');
		html = html.replace(/\[list=([^\]]+)\]\s*/g, '<ol type="$1">');
		html = html.replace(/\s*\[\*\]/g, '<li>');
		html = html.replace(/\[img\]([^\[]*)\[\/img\]/g, '<img src="$1" />');
		html = html.replace(/\[email\]([^\[]*)\[\/email\]/g, '<a href="mailto:$1">$1</a>');
		html = html.replace(/\[url\]([^\[]*)/g, '<a href="$1">$1').replace(/\[url=([^\]]+)\]/g, '<a href="$1">').replace(/\[\/url\]/g, '</a>');
		html = html.replace(/\[color=([^\]]+)\]/g, '<span style="color: $1">').replace(/\[\/color\]/g, '</span>');
		html = html.replace(/\[size=([^\]]+)\]/g, '<span style="font-size: $1px">').replace(/\[\/size\]/g, '</span>');
		html = html.replace(/\[(\/?)code\]/g, '<$1pre>');
		html = html.replace(/\[quote="([^"]*)"\]/g, '<blockquote title="$1">').replace(/\[(\/?)quote\]/g, '<$1blockquote>');
		html = html.replace(/\t/g, '<span class="tab">&nbsp; &nbsp;</span>');
		var matches = html.match(/(^|[\r\n])( +)/g);
		if (matches)
		{
			for (var i = 0; i < matches.length; ++i)
			{
				html = html.replace(new RegExp(matches[i]), matches[i].replace(/ /g, '&nbsp;'));
			}
		}
		html = html.replace(/\r\n/g, '\n').replace(/\r/g, '\n').replace(/\n/g, '<br />');
		editor.innerHTML = html + '<br /><br />';
		return true;
	};

	this.html2bbcode = function()
	{
		if (!Editor.isSupported()) return false;
		var bbcode = editor.cloneNode(true);
		for (var i = 0, elements = bbcode.getElementsByTagName('span'); i < elements.length; ++i)
		{
			if (elements[i].style.fontSize != '') elements[i].innerHTML = '[size=' + elements[i].style.fontSize.replace(/px$/ig, '') + ']' + elements[i].innerHTML + '[/size]';
			if (elements[i].style.color != '')
			{
				var color = elements[i].style.color;
				var matches = color.match(/^\s*rgb\s*\(\s*(\d+)\s*,\s*(\d+)\s*,\s*(\d+)\s*\)\s*$/i);
				if (matches) color = '#' + ((matches[1] = parseInt(matches[1], 10)) < 0x10 ? '0' : '') + matches[1].toString(16) + ((matches[2] = parseInt(matches[2], 10)) < 0x10 ? '0' : '') + matches[2].toString(16) + ((matches[3] = parseInt(matches[3], 10)) < 0x10 ? '0' : '') + matches[3].toString(16);
				else
				{
					matches = color.match(/^\s*rgb\s*\(\s*(\d+)%\s*,\s*(\d+)%\s*,\s*(\d+)%\s*\)\s*$/i);
					if (matches) color = '#' + ((matches[1] = Math.round(matches[1] * 255 / 100)) < 0x10 ? '0' : '') + matches[1].toString(16) + ((matches[2] = Math.round(matches[2] * 255 / 100)) < 0x10 ? '0' : '') + matches[2].toString(16) + ((matches[3] = Math.round(matches[3] * 255 / 100)) < 0x10 ? '0' : '') + matches[3].toString(16);
				}
				elements[i].innerHTML = '[color=' + color + ']' + elements[i].innerHTML + '[/color]';
			}
			if (/(^|\s)line-through(\s|$)/.test(elements[i].style.textDecoration)) elements[i].innerHTML = '<s>' + elements[i].innerHTML + '</s>';
			if (/(^|\s)underline(\s|$)/.test(elements[i].style.textDecoration)) elements[i].innerHTML = '<u>' + elements[i].innerHTML + '</u>';
			if (elements[i].style.fontStyle == 'italic') elements[i].innerHTML = '<i>' + elements[i].innerHTML + '</i>';
			if (elements[i].style.fontWeight == 'bold') elements[i].innerHTML = '<b>' + elements[i].innerHTML + '</b>';
		}
		for (var i = 0, elements = bbcode.getElementsByTagName('a'); i < elements.length; ++i)
		{
			var matches = elements[i].href.match(/^mailto:(.+)$/);
			if (matches && matches[1] == elements[i].innerHTML) elements[i].innerHTML = '[email]' + elements[i].innerHTML + '[/email]';
		}
		bbcode = bbcode.innerHTML;
		bbcode = bbcode.replace(/<a\s[^>]*href="[^>"]+"[^>]*>(\[email\][^\[]+\[\/email\])<\/a>/ig, '$1');
		bbcode = bbcode.replace(/<(b|strong)(\s*|\s[^>]+)>/ig, '[b]').replace(/<\/(b|strong)>/ig, '[/b]');
		bbcode = bbcode.replace(/<(i|em)(\s*|\s[^>]+)>/ig, '[i]').replace(/<\/(i|em)>/ig, '[/i]');
		bbcode = bbcode.replace(/<u(\s*|\s[^>]+)>/ig, '[u]').replace(/<\/u>/ig, '[/u]');
		bbcode = bbcode.replace(/<(s|strike)(\s*|\s[^>]+)>/ig, '[s]').replace(/<\/(s|strike)>/ig, '[/s]');
		bbcode = bbcode.replace(/<sup(\s*|\s[^>]+)>/ig, '[sup]').replace(/<\/sup>/ig, '[/sup]');
		bbcode = bbcode.replace(/<sub(\s*|\s[^>]+)>/ig, '[sub]').replace(/<\/sub>/ig, '[/sub]');
		bbcode = bbcode.replace(/<tt(\s*|\s[^>]+)>/ig, '[tt]').replace(/<\/tt>/ig, '[/tt]');
		bbcode = bbcode.replace(/<ul(\s*|\s[^>]+)>/ig, '[list]').replace(/<ol\s[^>]*type="([^>"]+)"[^>]*>/ig, '[list=$1]').replace(/<ol(\s*|\s[^>]+)>/ig, '[list=1]').replace(/<\/(ul|ol)>/ig, '[/list]');
		bbcode = bbcode.replace(/\s*<\/li>\s*/ig, '').replace(/<li(\s*|\s[^>]+)>/ig, '\n[*]');
		bbcode = bbcode.replace(/(\[list(=[^\]]+)?\])\s+/g, '$1').replace(/\s+\[\/list\]/g, '[/list]')
		bbcode = bbcode.replace(/<img\s[^>]*src="([^>"]+)"[^>]*>/ig, '[img]$1[/img]');
		bbcode = bbcode.replace(/<a\s[^>]*href="([^>"]+)"[^>]*>/ig, '[url=$1]').replace(/<\/a>/ig, '[/url]');
		bbcode = bbcode.replace(/<blockquote\s[^>]*title="([^"]+)"[^>]*>/ig, '[quote="$1"]').replace(/<blockquote(\s*|\s[^>]+)>/ig, '[quote]').replace(/<\/blockquote>/ig, '[/quote]');
		bbcode = bbcode.replace(/<pre(\s*|\s[^>]+)>/ig, '[code]').replace(/<\/pre>/ig, '[/code]');
		bbcode = bbcode.replace(/(<br([\s\/]*|\s[^>]+)>|<p(\s*|\s[^>]+)>|<\/(p|div)>)/ig, '\n').replace(/<div(\s*|\s[^>]+)>/ig, '');
		bbcode = bbcode.replace(/<span class="tab">(&nbsp; &nbsp;|\u00A0 \u00A0|\s{3})<\/span>/g, '\t').replace(/(&nbsp;|\u00A0)/g, ' ');
		bbcode = bbcode.replace(/<[^>]+>/g, '');
		bbcode = bbcode.replace(/&lt;/g, '<').replace(/&gt;/g, '>').replace(/&quot;/g, '"').replace(/&amp;/g, '&');
		bbcode = bbcode.replace(/\r\n/g, '\n').replace(/\r/g, '\n').replace(/\n{2,}/g, '\n\n');
		bbcode = bbcode.replace(/^\s+|\s+$/g, '');
		textarea.value = bbcode;
		return true;
	};

	this.activate = function()
	{
		if (!Editor.isSupported()) return false;
		this.bbcode2html();
		textarea.style.display = 'none';
		editor.style.display = '';
		return true;
	};

	this.passivate = function()
	{
		if (!Editor.isSupported()) return false;
		this.html2bbcode();
			editor.style.display = 'none';
			textarea.style.display = '';
		return true;
	};

	this.insertText = function(startText, endText)
	{
		if (!Editor.isSupported() || !this.isActive()) return false;
		if (typeof endText == 'undefined') endText = '';
		if (!isContentEditable())
		{
			this.html2bbcode();
			textarea.value += startText + endText;
			this.bbcode2html();
			editor.innerHTML += '<br />';
		}
		else
		{
			if (typeof window.getSelection != 'undefined')
			{
				var startNode = document.createTextNode(startText);
				var endNode = document.createTextNode(endText);
				range.insertNode(startNode);
				range.collapse(false);
				range.insertNode(endNode);
				range.setStartBefore(startNode);
				range.setEndAfter(endNode);
			}
			else
			{
				range.pasteHTML(startText + range.htmlText + endText)
				range.select();
			}
		}
		return true;
	};

	this.insert = function(tagName, attr, content)
	{
		if (!Editor.isSupported() || !this.isActive()) return false;
		if (!isContentEditable())
		{
			content = arguments.length > 2 && arguments[2] !== null ? arguments[2] : '';
			if (content != '')
			{
				switch (tagName.toLowerCase())
				{
					case 'ul':
						this.insertText('[list][*]' + content, '[/list]');
						break;
					case 'ol':
						this.insertText('[list=1][*]' + content, '[/list]');
						break;
					case 'a':
						if (typeof attr == 'undefined' || attr == '') attr = window.prompt('[url=...]' + (content.length > 97 ? content.substring(0, 97) + '...' : content) + '[/url]', /^[a-z]+:/i.test(content) ? content : '');
						if (attr) document.execCommand('createLink', false, attr);
						break;
					case 'color':
					case 'size':
						this.insertText('[' + tagName + '=' + attr + ']' + content, '[/' + tagName + ']');
						break;
					case 'quote':
						if (typeof attr == 'undefined') attr = window.prompt('[quote="..."]' + (content.length > 97 ? content.substring(0, 97) + '...' : content) + '[/quote]');
						this.insertText('[' + tagName + (attr ? '="' + attr + '"' : '') + ']' + content, '[/' + tagName + ']');
						break;
					default:
						this.insertText('[' + tagName + ']' + content, '[/' + tagName + ']');
						break;
				}
			}
		}
		else
		{
			if (typeof content != 'undefined' && content !== null)
			{
				var html = text2html(content);
				switch (tagName.toLowerCase())
				{
					case 'ul':
						if (typeof window.getSelection != 'undefined')
						{
							try
							{
								var element = document.createElement('li');
								range.surroundContents(element);
								range.surroundContents(document.createElement('ul'));
								element.innerHTML = html;
							}
							catch (e)
							{
								this.insertText('[list][*]' + content, '[/list]');
							}
						}
						else range.pasteHTML('<ul><li>' + html + '</li></ul>');
						break;
					case 'ol':
						if (typeof window.getSelection != 'undefined')
						{
							try
							{
								var element = document.createElement('li');
								range.surroundContents(element);
								range.surroundContents(document.createElement('ol'));
								element.innerHTML = html;
							}
							catch (e)
							{
								this.insertText('[list=1][*]' + content, '[/list]');
							}
						}
						else range.pasteHTML('<ol><li>' + html + '</li></ol>');
						break;
					case 'a':
						if (typeof attr == 'undefined' || attr == '') attr = window.prompt('[url=...]' + (content.length > 97 ? content.substring(0, 97) + '...' : content) + '[/url]', /^[a-z]+:/i.test(content) ? content : '');
						if (attr)
						{
							if (typeof window.getSelection != 'undefined')
							{
								try
								{
									var element = document.createElement('a');
									element.href = attr;
									range.surroundContents(element);
									element.innerHTML = html;
								}
								catch (e)
								{
									this.insertText('[url=' + attr + ']' + content, '[/url]');
								}
							}
							else range.pasteHTML('<a href="' + htmlspecialchars(attr) + '">' + html + '</a>');
						}
						break;
					case 'color':
						if (typeof window.getSelection != 'undefined')
						{
							try
							{
								var element = document.createElement('span');
								element.style.color = attr;
								range.surroundContents(element);
								element.innerHTML = html;
							}
							catch (e)
							{
								this.insertText('[color=' + attr + ']' + content, '[/color]');
							}
						}
						else range.pasteHTML('<span style="color: ' + htmlspecialchars(attr) + '">' + html + '</span>');
					case 'size':
						if (typeof window.getSelection != 'undefined')
						{
							try
							{
								var element = document.createElement('span');
								element.style.fontSize = attr + 'px';
								range.surroundContents(element);
								element.innerHTML = html;
							}
							catch (e)
							{
								this.insertText('[size=' + attr + ']' + content, '[/size]');
							}
						}
						else range.pasteHTML('<span style="font-size: ' + htmlspecialchars(attr) + 'px">' + html + '</span>');
						break;
					case 'quote':
						if (typeof attr == 'undefined') attr = window.prompt('[quote="..."]' + (content.length > 97 ? content.substring(0, 97) + '...' : content) + '[/quote]');
						if (typeof window.getSelection != 'undefined')
						{
							try
							{
								var element = document.createElement('blockquote');
								if (attr) element.title = attr;
								range.surroundContents(element);
								element.innerHTML = html;
							}
							catch (e)
							{
								this.insertText('[quote' + (attr ? '="' + attr + '"' : '') + ']' + content, '[/quote]');
							}
						}
						else range.pasteHTML('<blockquote' + (attr ? ' title="' + htmlspecialchars(attr) + '"' : '') + '>' + html + '</blockquote>');
						break;
					default:
						if (typeof window.getSelection != 'undefined')
						{
							try
							{
								var element = document.createElement(tagName);
								range.surroundContents(element);
								element.innerHTML = html;
							}
							catch (e)
							{
								this.insertText('[' + tagName + ']' + content, '[/' + tagName + ']');
							}
						}
						else range.pasteHTML('<' + tagName + '>' + html + '</' + tagName + '>');
						break;
				}
				editor.innerHTML += '<br />';
			}
			else
			{
				content = typeof window.getSelection != 'undefined' ? '' + range : range.htmlText;
				switch (tagName.toLowerCase())
				{
					case 'b':
						document.execCommand('bold', false, null);
						break;
					case 'i':
						document.execCommand('italic', false, null);
						break;
					case 'u':
						document.execCommand('underline', false, null);
						break;
					case 's':
						document.execCommand('strikeThrough', false, null);
						break;
					case 'sup':
						document.execCommand('superscript', false, null);
						break;
					case 'sub':
						document.execCommand('subscript', false, null);
						break;
					case 'tt':
						if (typeof window.getSelection != 'undefined')
						{
							try
							{
								range.surroundContents(document.createElement('tt'));
							}
							catch (e)
							{
								this.insertText('[tt]', '[/tt]');
							}
						}
						else range.pasteHTML('<tt>' + range.htmlText + '</tt>');
						break;
					case 'ul':
						document.execCommand('insertUnorderedList', false, null);
						break;
					case 'ol':
						document.execCommand('insertOrderedList', false, null);
						break;
					case 'img':
						if (content != '' || (content = window.prompt('[img]...[/img]'))) document.execCommand('insertImage', false, content);
						break;
					case 'email':
						if (/^[^@]+@[^@]+$/.test(content)) attr = 'mailto:' + content;
					case 'a':
						if (content != '')
						{
							if (typeof attr == 'undefined' || attr == '') attr = window.prompt('[url=...]' + (content.length > 97 ? content.substring(0, 97) + '...' : content) + '[/url]', /^[a-z]+:/i.test(content) ? content : '');
							if (attr) document.execCommand('createLink', false, attr);
						}
						break;
					case 'color':
						if (typeof window.getSelection != 'undefined')
						{
							try
							{
								var element = document.createElement('span');
								element.style.color = attr;
								range.surroundContents(element);
							}
							catch (e)
							{
								this.insertText('[color=' + attr + ']', '[/color]');
							}
						}
						else range.pasteHTML('<span style="color: ' + htmlspecialchars(attr) + '">' + range.htmlText + '</span>');
						break;
					case 'size':
						if (typeof window.getSelection != 'undefined')
						{
							try
							{
								var element = document.createElement('span');
								element.style.fontSize = attr + 'px';
								range.surroundContents(element);
							}
							catch (e)
							{
								this.insertText('[size=' + attr + ']', '[/size]');
							}
						}
						else range.pasteHTML('<span style="font-size: ' + htmlspecialchars(attr) + 'px">' + range.htmlText + '</span>');
						break;
					case 'quote':
						if (typeof attr == 'undefined') attr = window.prompt('[quote="..."]' + (content.length > 97 ? content.substring(0, 97) + '...' : content) + '[/quote]');
						if (typeof window.getSelection != 'undefined')
						{
							try
							{
								var element = document.createElement('blockquote');
								if (attr) element.title = attr;
								range.surroundContents(element);
								if (arguments.length > 2 && arguments[2] !== null) element.innerHTML = text2html('' + arguments[2]);
							}
							catch (e)
							{
								this.insertText('[quote' + (attr ? '="' + attr + '"' : '') + ']' + (arguments.length > 2 && arguments[2] !== null ? arguments[2] : ''), '[/quote]');
							}
						}
						else range.pasteHTML('<blockquote' + (attr ? ' title="' + htmlspecialchars(attr) + '"' : '') + '>' + (arguments.length > 2 && arguments[2] !== null ? text2html('' + arguments[2]) : range.htmlText) + '</blockquote>');
						break;
					case 'code':
						if (typeof window.getSelection != 'undefined')
						{
							try
							{
								range.surroundContents(document.createElement('pre'));
							}
							catch (e)
							{
								this.insertText('[code]', '[/code]');
							}
						}
						else range.pasteHTML('<pre>' + range.htmlText + '</pre>');
						break;
					default:
						this.insertText('[' + tagName + ']', '[/' + tagName + ']');
						break;
				}
			}
			if (typeof document.selection != 'undefined') document.selection.createRange().select();
		}
		return true;
	};

	function htmlspecialchars(text)
	{
		return text.replace(/&/g, '&amp;').replace(/</g, '&lt;').replace(/</g, '&gt;').replace(/"/g, '&quot;');
	}

	function text2html(text)
	{
		return htmlspecialchars(text).replace(/\r\n/g, '\n').replace(/\r/g, '\n').replace(/\n/g, '<br />');
	}

	if (Editor.isSupported())
	{
		function isContentEditable()
		{
			if (range)
			{
				var node = typeof window.getSelection != 'undefined' ? range.startContainer : range.parentElement();
				if (node)
				{
					do
					{
						if (node == editor) return true;
						node = node.parentNode;
					}
					while (node.parentNode);
				}
			}
			return false;
		}
		editor = document.createElement('div');
		editor.contentEditable = true;
		if (typeof className != 'undefined') editor.className = className;
		editor.style.display = 'none';
		editor.onmouseup = editor.onkeyup = function()
		{
			range = typeof window.getSelection != 'undefined' ? window.getSelection().getRangeAt(0) : document.selection.createRange();
		};
		textarea.parentNode.insertBefore(editor, textarea);
		var onsubmit = typeof textarea.form.onsubmit != 'undefined' ? textarea.form.onsubmit : null;
		textarea.form.onsubmit = function(e)
		{
			if (instance.isActive()) instance.html2bbcode();
			if (onsubmit) return typeof e != 'undefined' ? onsubmit.call(textarea.form, e) : onsubmit.call(textarea.form);
		};
	}
};

Editor.isSupported = function()
{
	return typeof document.execCommand != 'undefined' && (typeof window.getSelection != 'undefined' || typeof document.selection != 'undefined');
=======
/**
 * WYSIWYG editor for BBCode.
 * @author S³awomir Kok³owski {@link http://www.kurshtml.edu.pl}
 * @copyright NIE usuwaj tego komentarza! (Do NOT remove this comment!)
 */

var Editor = function(textarea, className)
{
	var instance = this;
	var editor = null;
	var range = null;

	this.isActive = function()
	{
		if (!Editor.isSupported()) return false;
		return editor.style.display != 'none';
	};

	this.getElement = function()
	{
		return editor;
	};

	this.bbcode2html = function()
	{
		if (!Editor.isSupported()) return false;
		var html = textarea.value;
		html = html.replace(/</g, '&lt;').replace(/>/g, '&gt;');
		html = html.replace(/\[(\/?(b|i|u|s|sup|sub|tt))\]/g, '<$1>');
		html = html.replace(/\[list\]\s*/g, '<ul>').replace(/\s*\[\/list\]/g, '</ul>');
		html = html.replace(/\[list=([^\]]+)\]\s*/g, '<ol type="$1">');
		html = html.replace(/\s*\[\*\]/g, '<li>');
		html = html.replace(/\[img\]([^\[]*)\[\/img\]/g, '<img src="$1" />');
		html = html.replace(/\[email\]([^\[]*)\[\/email\]/g, '<a href="mailto:$1">$1</a>');
		html = html.replace(/\[url\]([^\[]*)/g, '<a href="$1">$1').replace(/\[url=([^\]]+)\]/g, '<a href="$1">').replace(/\[\/url\]/g, '</a>');
		html = html.replace(/\[color=([^\]]+)\]/g, '<span style="color: $1">').replace(/\[\/color\]/g, '</span>');
		html = html.replace(/\[size=([^\]]+)\]/g, '<span style="font-size: $1px">').replace(/\[\/size\]/g, '</span>');
		html = html.replace(/\[(\/?)code\]/g, '<$1pre>');
		html = html.replace(/\[quote="([^"]*)"\]/g, '<blockquote title="$1">').replace(/\[(\/?)quote\]/g, '<$1blockquote>');
		html = html.replace(/\t/g, '<span class="tab">&nbsp; &nbsp;</span>');
		var matches = html.match(/(^|[\r\n])( +)/g);
		if (matches)
		{
			for (var i = 0; i < matches.length; ++i)
			{
				html = html.replace(new RegExp(matches[i]), matches[i].replace(/ /g, '&nbsp;'));
			}
		}
		html = html.replace(/\r\n/g, '\n').replace(/\r/g, '\n').replace(/\n/g, '<br />');
		editor.innerHTML = html + '<br /><br />';
		return true;
	};

	this.html2bbcode = function()
	{
		if (!Editor.isSupported()) return false;
		var bbcode = editor.cloneNode(true);
		for (var i = 0, elements = bbcode.getElementsByTagName('span'); i < elements.length; ++i)
		{
			if (elements[i].style.fontSize != '') elements[i].innerHTML = '[size=' + elements[i].style.fontSize.replace(/px$/ig, '') + ']' + elements[i].innerHTML + '[/size]';
			if (elements[i].style.color != '')
			{
				var color = elements[i].style.color;
				var matches = color.match(/^\s*rgb\s*\(\s*(\d+)\s*,\s*(\d+)\s*,\s*(\d+)\s*\)\s*$/i);
				if (matches) color = '#' + ((matches[1] = parseInt(matches[1], 10)) < 0x10 ? '0' : '') + matches[1].toString(16) + ((matches[2] = parseInt(matches[2], 10)) < 0x10 ? '0' : '') + matches[2].toString(16) + ((matches[3] = parseInt(matches[3], 10)) < 0x10 ? '0' : '') + matches[3].toString(16);
				else
				{
					matches = color.match(/^\s*rgb\s*\(\s*(\d+)%\s*,\s*(\d+)%\s*,\s*(\d+)%\s*\)\s*$/i);
					if (matches) color = '#' + ((matches[1] = Math.round(matches[1] * 255 / 100)) < 0x10 ? '0' : '') + matches[1].toString(16) + ((matches[2] = Math.round(matches[2] * 255 / 100)) < 0x10 ? '0' : '') + matches[2].toString(16) + ((matches[3] = Math.round(matches[3] * 255 / 100)) < 0x10 ? '0' : '') + matches[3].toString(16);
				}
				elements[i].innerHTML = '[color=' + color + ']' + elements[i].innerHTML + '[/color]';
			}
			if (/(^|\s)line-through(\s|$)/.test(elements[i].style.textDecoration)) elements[i].innerHTML = '<s>' + elements[i].innerHTML + '</s>';
			if (/(^|\s)underline(\s|$)/.test(elements[i].style.textDecoration)) elements[i].innerHTML = '<u>' + elements[i].innerHTML + '</u>';
			if (elements[i].style.fontStyle == 'italic') elements[i].innerHTML = '<i>' + elements[i].innerHTML + '</i>';
			if (elements[i].style.fontWeight == 'bold') elements[i].innerHTML = '<b>' + elements[i].innerHTML + '</b>';
		}
		for (var i = 0, elements = bbcode.getElementsByTagName('a'); i < elements.length; ++i)
		{
			var matches = elements[i].href.match(/^mailto:(.+)$/);
			if (matches && matches[1] == elements[i].innerHTML) elements[i].innerHTML = '[email]' + elements[i].innerHTML + '[/email]';
		}
		bbcode = bbcode.innerHTML;
		bbcode = bbcode.replace(/<a\s[^>]*href="[^>"]+"[^>]*>(\[email\][^\[]+\[\/email\])<\/a>/ig, '$1');
		bbcode = bbcode.replace(/<(b|strong)(\s*|\s[^>]+)>/ig, '[b]').replace(/<\/(b|strong)>/ig, '[/b]');
		bbcode = bbcode.replace(/<(i|em)(\s*|\s[^>]+)>/ig, '[i]').replace(/<\/(i|em)>/ig, '[/i]');
		bbcode = bbcode.replace(/<u(\s*|\s[^>]+)>/ig, '[u]').replace(/<\/u>/ig, '[/u]');
		bbcode = bbcode.replace(/<(s|strike)(\s*|\s[^>]+)>/ig, '[s]').replace(/<\/(s|strike)>/ig, '[/s]');
		bbcode = bbcode.replace(/<sup(\s*|\s[^>]+)>/ig, '[sup]').replace(/<\/sup>/ig, '[/sup]');
		bbcode = bbcode.replace(/<sub(\s*|\s[^>]+)>/ig, '[sub]').replace(/<\/sub>/ig, '[/sub]');
		bbcode = bbcode.replace(/<tt(\s*|\s[^>]+)>/ig, '[tt]').replace(/<\/tt>/ig, '[/tt]');
		bbcode = bbcode.replace(/<ul(\s*|\s[^>]+)>/ig, '[list]').replace(/<ol\s[^>]*type="([^>"]+)"[^>]*>/ig, '[list=$1]').replace(/<ol(\s*|\s[^>]+)>/ig, '[list=1]').replace(/<\/(ul|ol)>/ig, '[/list]');
		bbcode = bbcode.replace(/\s*<\/li>\s*/ig, '').replace(/<li(\s*|\s[^>]+)>/ig, '\n[*]');
		bbcode = bbcode.replace(/(\[list(=[^\]]+)?\])\s+/g, '$1').replace(/\s+\[\/list\]/g, '[/list]')
		bbcode = bbcode.replace(/<img\s[^>]*src="([^>"]+)"[^>]*>/ig, '[img]$1[/img]');
		bbcode = bbcode.replace(/<a\s[^>]*href="([^>"]+)"[^>]*>/ig, '[url=$1]').replace(/<\/a>/ig, '[/url]');
		bbcode = bbcode.replace(/<blockquote\s[^>]*title="([^"]+)"[^>]*>/ig, '[quote="$1"]').replace(/<blockquote(\s*|\s[^>]+)>/ig, '[quote]').replace(/<\/blockquote>/ig, '[/quote]');
		bbcode = bbcode.replace(/<pre(\s*|\s[^>]+)>/ig, '[code]').replace(/<\/pre>/ig, '[/code]');
		bbcode = bbcode.replace(/(<br([\s\/]*|\s[^>]+)>|<p(\s*|\s[^>]+)>|<\/(p|div)>)/ig, '\n').replace(/<div(\s*|\s[^>]+)>/ig, '');
		bbcode = bbcode.replace(/<span class="tab">(&nbsp; &nbsp;|\u00A0 \u00A0|\s{3})<\/span>/g, '\t').replace(/(&nbsp;|\u00A0)/g, ' ');
		bbcode = bbcode.replace(/<[^>]+>/g, '');
		bbcode = bbcode.replace(/&lt;/g, '<').replace(/&gt;/g, '>').replace(/&quot;/g, '"').replace(/&amp;/g, '&');
		bbcode = bbcode.replace(/\r\n/g, '\n').replace(/\r/g, '\n').replace(/\n{2,}/g, '\n\n');
		bbcode = bbcode.replace(/^\s+|\s+$/g, '');
		textarea.value = bbcode;
		return true;
	};

	this.activate = function()
	{
		if (!Editor.isSupported()) return false;
		this.bbcode2html();
		textarea.style.display = 'none';
		editor.style.display = '';
		return true;
	};

	this.passivate = function()
	{
		if (!Editor.isSupported()) return false;
		this.html2bbcode();
			editor.style.display = 'none';
			textarea.style.display = '';
		return true;
	};

	this.insertText = function(startText, endText)
	{
		if (!Editor.isSupported() || !this.isActive()) return false;
		if (typeof endText == 'undefined') endText = '';
		if (!isContentEditable())
		{
			this.html2bbcode();
			textarea.value += startText + endText;
			this.bbcode2html();
			editor.innerHTML += '<br />';
		}
		else
		{
			if (typeof window.getSelection != 'undefined')
			{
				var startNode = document.createTextNode(startText);
				var endNode = document.createTextNode(endText);
				range.insertNode(startNode);
				range.collapse(false);
				range.insertNode(endNode);
				range.setStartBefore(startNode);
				range.setEndAfter(endNode);
			}
			else
			{
				range.pasteHTML(startText + range.htmlText + endText)
				range.select();
			}
		}
		return true;
	};

	this.insert = function(tagName, attr, content)
	{
		if (!Editor.isSupported() || !this.isActive()) return false;
		if (!isContentEditable())
		{
			content = arguments.length > 2 && arguments[2] !== null ? arguments[2] : '';
			if (content != '')
			{
				switch (tagName.toLowerCase())
				{
					case 'ul':
						this.insertText('[list][*]' + content, '[/list]');
						break;
					case 'ol':
						this.insertText('[list=1][*]' + content, '[/list]');
						break;
					case 'a':
						if (typeof attr == 'undefined' || attr == '') attr = window.prompt('[url=...]' + (content.length > 97 ? content.substring(0, 97) + '...' : content) + '[/url]', /^[a-z]+:/i.test(content) ? content : '');
						if (attr) document.execCommand('createLink', false, attr);
						break;
					case 'color':
					case 'size':
						this.insertText('[' + tagName + '=' + attr + ']' + content, '[/' + tagName + ']');
						break;
					case 'quote':
						if (typeof attr == 'undefined') attr = window.prompt('[quote="..."]' + (content.length > 97 ? content.substring(0, 97) + '...' : content) + '[/quote]');
						this.insertText('[' + tagName + (attr ? '="' + attr + '"' : '') + ']' + content, '[/' + tagName + ']');
						break;
					default:
						this.insertText('[' + tagName + ']' + content, '[/' + tagName + ']');
						break;
				}
			}
		}
		else
		{
			if (typeof content != 'undefined' && content !== null)
			{
				var html = text2html(content);
				switch (tagName.toLowerCase())
				{
					case 'ul':
						if (typeof window.getSelection != 'undefined')
						{
							try
							{
								var element = document.createElement('li');
								range.surroundContents(element);
								range.surroundContents(document.createElement('ul'));
								element.innerHTML = html;
							}
							catch (e)
							{
								this.insertText('[list][*]' + content, '[/list]');
							}
						}
						else range.pasteHTML('<ul><li>' + html + '</li></ul>');
						break;
					case 'ol':
						if (typeof window.getSelection != 'undefined')
						{
							try
							{
								var element = document.createElement('li');
								range.surroundContents(element);
								range.surroundContents(document.createElement('ol'));
								element.innerHTML = html;
							}
							catch (e)
							{
								this.insertText('[list=1][*]' + content, '[/list]');
							}
						}
						else range.pasteHTML('<ol><li>' + html + '</li></ol>');
						break;
					case 'a':
						if (typeof attr == 'undefined' || attr == '') attr = window.prompt('[url=...]' + (content.length > 97 ? content.substring(0, 97) + '...' : content) + '[/url]', /^[a-z]+:/i.test(content) ? content : '');
						if (attr)
						{
							if (typeof window.getSelection != 'undefined')
							{
								try
								{
									var element = document.createElement('a');
									element.href = attr;
									range.surroundContents(element);
									element.innerHTML = html;
								}
								catch (e)
								{
									this.insertText('[url=' + attr + ']' + content, '[/url]');
								}
							}
							else range.pasteHTML('<a href="' + htmlspecialchars(attr) + '">' + html + '</a>');
						}
						break;
					case 'color':
						if (typeof window.getSelection != 'undefined')
						{
							try
							{
								var element = document.createElement('span');
								element.style.color = attr;
								range.surroundContents(element);
								element.innerHTML = html;
							}
							catch (e)
							{
								this.insertText('[color=' + attr + ']' + content, '[/color]');
							}
						}
						else range.pasteHTML('<span style="color: ' + htmlspecialchars(attr) + '">' + html + '</span>');
					case 'size':
						if (typeof window.getSelection != 'undefined')
						{
							try
							{
								var element = document.createElement('span');
								element.style.fontSize = attr + 'px';
								range.surroundContents(element);
								element.innerHTML = html;
							}
							catch (e)
							{
								this.insertText('[size=' + attr + ']' + content, '[/size]');
							}
						}
						else range.pasteHTML('<span style="font-size: ' + htmlspecialchars(attr) + 'px">' + html + '</span>');
						break;
					case 'quote':
						if (typeof attr == 'undefined') attr = window.prompt('[quote="..."]' + (content.length > 97 ? content.substring(0, 97) + '...' : content) + '[/quote]');
						if (typeof window.getSelection != 'undefined')
						{
							try
							{
								var element = document.createElement('blockquote');
								if (attr) element.title = attr;
								range.surroundContents(element);
								element.innerHTML = html;
							}
							catch (e)
							{
								this.insertText('[quote' + (attr ? '="' + attr + '"' : '') + ']' + content, '[/quote]');
							}
						}
						else range.pasteHTML('<blockquote' + (attr ? ' title="' + htmlspecialchars(attr) + '"' : '') + '>' + html + '</blockquote>');
						break;
					default:
						if (typeof window.getSelection != 'undefined')
						{
							try
							{
								var element = document.createElement(tagName);
								range.surroundContents(element);
								element.innerHTML = html;
							}
							catch (e)
							{
								this.insertText('[' + tagName + ']' + content, '[/' + tagName + ']');
							}
						}
						else range.pasteHTML('<' + tagName + '>' + html + '</' + tagName + '>');
						break;
				}
				editor.innerHTML += '<br />';
			}
			else
			{
				content = typeof window.getSelection != 'undefined' ? '' + range : range.htmlText;
				switch (tagName.toLowerCase())
				{
					case 'b':
						document.execCommand('bold', false, null);
						break;
					case 'i':
						document.execCommand('italic', false, null);
						break;
					case 'u':
						document.execCommand('underline', false, null);
						break;
					case 's':
						document.execCommand('strikeThrough', false, null);
						break;
					case 'sup':
						document.execCommand('superscript', false, null);
						break;
					case 'sub':
						document.execCommand('subscript', false, null);
						break;
					case 'tt':
						if (typeof window.getSelection != 'undefined')
						{
							try
							{
								range.surroundContents(document.createElement('tt'));
							}
							catch (e)
							{
								this.insertText('[tt]', '[/tt]');
							}
						}
						else range.pasteHTML('<tt>' + range.htmlText + '</tt>');
						break;
					case 'ul':
						document.execCommand('insertUnorderedList', false, null);
						break;
					case 'ol':
						document.execCommand('insertOrderedList', false, null);
						break;
					case 'img':
						if (content != '' || (content = window.prompt('[img]...[/img]'))) document.execCommand('insertImage', false, content);
						break;
					case 'email':
						if (/^[^@]+@[^@]+$/.test(content)) attr = 'mailto:' + content;
					case 'a':
						if (content != '')
						{
							if (typeof attr == 'undefined' || attr == '') attr = window.prompt('[url=...]' + (content.length > 97 ? content.substring(0, 97) + '...' : content) + '[/url]', /^[a-z]+:/i.test(content) ? content : '');
							if (attr) document.execCommand('createLink', false, attr);
						}
						break;
					case 'color':
						if (typeof window.getSelection != 'undefined')
						{
							try
							{
								var element = document.createElement('span');
								element.style.color = attr;
								range.surroundContents(element);
							}
							catch (e)
							{
								this.insertText('[color=' + attr + ']', '[/color]');
							}
						}
						else range.pasteHTML('<span style="color: ' + htmlspecialchars(attr) + '">' + range.htmlText + '</span>');
						break;
					case 'size':
						if (typeof window.getSelection != 'undefined')
						{
							try
							{
								var element = document.createElement('span');
								element.style.fontSize = attr + 'px';
								range.surroundContents(element);
							}
							catch (e)
							{
								this.insertText('[size=' + attr + ']', '[/size]');
							}
						}
						else range.pasteHTML('<span style="font-size: ' + htmlspecialchars(attr) + 'px">' + range.htmlText + '</span>');
						break;
					case 'quote':
						if (typeof attr == 'undefined') attr = window.prompt('[quote="..."]' + (content.length > 97 ? content.substring(0, 97) + '...' : content) + '[/quote]');
						if (typeof window.getSelection != 'undefined')
						{
							try
							{
								var element = document.createElement('blockquote');
								if (attr) element.title = attr;
								range.surroundContents(element);
								if (arguments.length > 2 && arguments[2] !== null) element.innerHTML = text2html('' + arguments[2]);
							}
							catch (e)
							{
								this.insertText('[quote' + (attr ? '="' + attr + '"' : '') + ']' + (arguments.length > 2 && arguments[2] !== null ? arguments[2] : ''), '[/quote]');
							}
						}
						else range.pasteHTML('<blockquote' + (attr ? ' title="' + htmlspecialchars(attr) + '"' : '') + '>' + (arguments.length > 2 && arguments[2] !== null ? text2html('' + arguments[2]) : range.htmlText) + '</blockquote>');
						break;
					case 'code':
						if (typeof window.getSelection != 'undefined')
						{
							try
							{
								range.surroundContents(document.createElement('pre'));
							}
							catch (e)
							{
								this.insertText('[code]', '[/code]');
							}
						}
						else range.pasteHTML('<pre>' + range.htmlText + '</pre>');
						break;
					default:
						this.insertText('[' + tagName + ']', '[/' + tagName + ']');
						break;
				}
			}
			if (typeof document.selection != 'undefined') document.selection.createRange().select();
		}
		return true;
	};

	function htmlspecialchars(text)
	{
		return text.replace(/&/g, '&amp;').replace(/</g, '&lt;').replace(/</g, '&gt;').replace(/"/g, '&quot;');
	}

	function text2html(text)
	{
		return htmlspecialchars(text).replace(/\r\n/g, '\n').replace(/\r/g, '\n').replace(/\n/g, '<br />');
	}

	if (Editor.isSupported())
	{
		function isContentEditable()
		{
			if (range)
			{
				var node = typeof window.getSelection != 'undefined' ? range.startContainer : range.parentElement();
				if (node)
				{
					do
					{
						if (node == editor) return true;
						node = node.parentNode;
					}
					while (node.parentNode);
				}
			}
			return false;
		}
		editor = document.createElement('div');
		editor.contentEditable = true;
		if (typeof className != 'undefined') editor.className = className;
		editor.style.display = 'none';
		editor.onmouseup = editor.onkeyup = function()
		{
			range = typeof window.getSelection != 'undefined' ? window.getSelection().getRangeAt(0) : document.selection.createRange();
		};
		textarea.parentNode.insertBefore(editor, textarea);
		var onsubmit = typeof textarea.form.onsubmit != 'undefined' ? textarea.form.onsubmit : null;
		textarea.form.onsubmit = function(e)
		{
			if (instance.isActive()) instance.html2bbcode();
			if (onsubmit) return typeof e != 'undefined' ? onsubmit.call(textarea.form, e) : onsubmit.call(textarea.form);
		};
	}
};

Editor.isSupported = function()
{
	return typeof document.execCommand != 'undefined' && (typeof window.getSelection != 'undefined' || typeof document.selection != 'undefined');
>>>>>>> c222969aeea908b44b7bee795d95d38488193cec
};