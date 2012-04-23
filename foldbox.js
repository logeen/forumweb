var foldbox_width = 0;
var foldbox_items = [];

function foldbox(el, id)
{
	if (document.getElementById(id).style.overflow == 'scroll')
	{
		with (document.getElementById(id).style)
		{
			overflow = 'visible';
			width = height = 'auto'
		}
		el.innerHTML = foldbox_lang['Fold'];
	}
	else
	{
		with(document.getElementById(id))
		{
			style.overflow = 'scroll';
			if (foldbox_width) style.width = foldbox_width + 'px';
			if (offsetHeight && offsetHeight > 300) style.height = '300px';
		}
		el.innerHTML = foldbox_lang['Unfold'];
	}
}

window.setTimeout(
	function()
	{
		with (document.querySelectorAll ? document.querySelectorAll('div.foldbox') : document.getElementsByTagName('div'))
		{
			for (var i = 0; i < length; i++)
			{
				if (/(^| )foldbox( |$)/.test(item(i).className) && (item(i).offsetHeight && item(i).offsetHeight > 300 || item(i).offsetWidth && screen.availWidth && item(i).offsetWidth > screen.availWidth))
				{
					foldbox_items[foldbox_items.length] = [item(i), item(i).innerHTML];
					item(i).innerHTML = '<div>&nbsp;</div>';
				}
			}

			if (foldbox_items.length > 0)
			{
				foldbox_width = foldbox_items[0][0].offsetWidth;
				for (i = 0; i < foldbox_items.length; i++)
				{
					foldbox_items[i][0].style.overflow = 'scroll';
					if (foldbox_width) foldbox_items[i][0].style.width = foldbox_width + 'px';
					foldbox_items[i][0].innerHTML = foldbox_items[i][1];
					if (foldbox_items[i][0].offsetHeight && foldbox_items[i][0].offsetHeight > 300) foldbox_items[i][0].style.height = '300px';
					document.getElementById(foldbox_items[i][0].id + '_link').innerHTML = '<a href="javascript:void(0)" onclick="foldbox(this, \'' + foldbox_items[i][0].id + '\'); return false">' + foldbox_lang['Unfold'] + '</a>';
				}
			}
		}

		foldbox_items = [];

		function viewbox_show()
		{
			window.clearTimeout(this._id);
			var self = this;
			this._id = window.setTimeout(function()
				{
					with (self.getElementsByTagName('select')[0])
					{
						style.display = 'inline';
					}
				},
				500
			);
		}

		function viewbox_hide()
		{
			window.clearTimeout(this._id);
			var self = this;
			this._id = window.setTimeout(function()
				{
					with (self.getElementsByTagName('select')[0])
					{
						if (value == '') style.display = 'none';
					}
				},
				1000
			);
		}

		var run_lang = {
			"7": "Ada", "13": "Assembler", "104": "AWK (gawk)", "105": "AWK (mawk)",
			"28": "Bash", "110": "bc", "12": "Brainf**k",
			"11": "C", "27": "C#", "1": "C++", "106": "COBOL", "32": "Common Lisp (clisp)",
			"102": "D (dmd)",
			"36": "Erlang",
			"107": "Forth", "5": "Fortran",
			"21": "Haskell",
			"16": "Icon",
			"10": "Java", "35": "JavaScript (rhino)", "112": "JavaScript (spidermonkey)",
			"26": "Lua",
			"8": "Ocaml",
			"22": "Pascal (fpc)", "2": "Pascal (gpc)", "3": "Perl", "29": "PHP", "19": "Pike", "108": "Prolog (gnu)", "15": "Prolog (swi)", "4": "Python",
			"17": "Ruby",
			"39": "Scala", "33": "Scheme (guile)", "23": "Smalltalk",
			"38": "Tcl", "62": "Text",
			"100": "Vala", "101": "Visual Basic .NET"
		};
		var run_select = '<select class="runbox" style="font: 10px Arial, Helvetica, sans-serif; padding: 0; margin: 0 1ex 0 0; display: none"><option value=""></option>';
		for (var p in run_lang)
		{
			if (typeof p != 'function') run_select += '<option value="' + p + '"' + (p == "29" ? ' selected="selected"' : '') + '>' + run_lang[p] + '</option>';
		}
		run_select += '</select>';

		with (document.querySelectorAll ? document.querySelectorAll('span.viewbox, span.runbox') : document.getElementsByTagName('span'))
		{
			for (var i = 0; i < length; i++)
			{
				if (/(^| )viewbox( |$)/.test(item(i).className))
				{
					item(i).innerHTML = '<select class="viewbox" style="font: 10px Arial, Helvetica, sans-serif; padding: 0; margin: 0 1ex 0 0; display: none"><option value=""></option><option value="css">CSS</option><option value="js">JS</option><option value="html">HTML</option></select>' + item(i).innerHTML;
					item(i).onmouseover = viewbox_show;
					item(i).onmouseout = viewbox_hide;
				}
				else if (/(^| )runbox( |$)/.test(item(i).className))
				{
					item(i).innerHTML = run_select + item(i).innerHTML;
					item(i).onmouseover = viewbox_show;
					item(i).onmouseout = viewbox_hide;
				}
			}
		}
	},
	200
);

function viewbox_striptags(code)
{
	return code == '' ? '' : code.replace(/<br ?\/?>/gi, '\n').replace(/<[^>]*>/g, '').replace(/&nbsp;/g, ' ');
}

function viewbox(el, id_form, id_code)
{
	function viewbox_replacetag(tag, code, message)
	{
		if (code != '' && code != message.value)
		{
			var open_tag = false;
			if (tag.charAt(0) != '/')
			{
				open_tag = true;
				var m = message.value.match(new RegExp('&lt;(' + tag + '(\\s.*?|\\s*/)?)&gt;', 'i'));
				if (m) tag = m[1];
			}
			tag = '&lt;' + tag + '&gt;';
			var pos = message.value.toLowerCase().indexOf(tag);
			if (pos < 0) message.value = code + message.value;
			else
			{
				if (open_tag) pos += tag.length;
				message.value = message.value.substring(0, pos) + code + message.value.substring(pos);
			}
		}
	}

	with (document.getElementById(id_form))
	{
		var code = {'css': '', 'js': '', 'html': ''};
		var code_selected = false;

		with (document.querySelectorAll ? document.querySelectorAll('select.viewbox') : document.getElementsByTagName('select'))
		{
			for (var i = 0; i < length; i++)
			{
				if (/(^| )viewbox( |$)/.test(item(i).className) && item(i).value != '')
				{
					code[item(i).value] += document.getElementById(item(i).parentNode.id.replace(/^viewbox_/, '')).innerHTML;
					if (item(i).parentNode.getElementsByTagName('a')[0] == el) code_selected = true;
				}
			}
		}

		message.value = code_selected ? '' : (selectedTexts[id_code] ? document.getElementById(id_code).innerHTML.replace(/^<textarea(\s[^>]*)?>|<\/textarea>$/gi, '') : viewbox_striptags(document.getElementById(id_code).innerHTML));

		viewbox_replacetag('body', viewbox_striptags(code['html']), message);
		if (code['js'] != '') viewbox_replacetag('body', '&lt;script type="text/javascript"&gt;\n// &lt;![CDATA[\n' + viewbox_striptags(code['js']) + '\n// ]]&gt;\n&lt;/script&gt;', message);
		if (code['css'] != '') viewbox_replacetag('/head', '&lt;style type="text/css"&gt;\n/* &lt;![CDATA[ */\n' + viewbox_striptags(code['css']) + '\n/* ]]&gt; */\n&lt;/style&gt;', message);

		window.setTimeout(function() { submit(); }, 0);
	}
}

function runbox(el, id_form, id_code)
{
	with (document.getElementById(id_form))
	{
		with (document.querySelectorAll ? document.querySelectorAll('select.runbox') : document.getElementsByTagName('select'))
		{
			for (var i = 0; i < length; i++)
			{
				if (/(^| )runbox( |$)/.test(item(i).className) && item(i).value != '')
				{
					if (item(i).parentNode.getElementsByTagName('a')[0] == el)
					{
						lang.value = item(i).value;
						break;
					}
				}
			}
		}

		file.value = selectedTexts[id_code] ? document.getElementById(id_code).innerHTML.replace(/^<textarea(\s[^>]*)?>|<\/textarea>$/gi, '') : viewbox_striptags(document.getElementById(id_code).innerHTML);
		file.value = file.value.replace(/&lt;br ?\/?&gt;/gi, '\n').replace(/&lt;/g, '<').replace(/&gt;/g, '>').replace(/&amp;/g, '&');

		window.setTimeout(function() { submit(); }, 0);
	}
}