/***************************************************************************
 *
 * Spell Checker
 *
 * Author: Logeen [www.kurshtml.edu.pl]
 *
 ***************************************************************************/


var ajax = null;
if (window.XMLHttpRequest) ajax = new XMLHttpRequest();
else if (window.ActiveXObject) {
	try {
		ajax = new ActiveXObject('Msxml2.XMLHTTP');
	}
	catch (e) {
		try {
			ajax = new ActiveXObject('Microsoft.XMLHTTP');
		}
		catch (e) {}
	}
}

var spelling_el = null;

function spelling_escape(word) {
	for (var i = 0, word2 = '', length_ = word.length; i < length_; i++) {	
		switch (word.charAt(i)) {
			case '%': word2 += ' '; break;
			case '¡': word2 += '%A1'; break;
			case 'Æ': word2 += '%C6'; break;
			case 'Ê': word2 += '%CA'; break;
			case '£': word2 += '%A3'; break;
			case 'Ñ': word2 += '%D1'; break;
			case 'Ó': word2 += '%D3'; break;
			case '¦': word2 += '%A6'; break;
			case '¬': word2 += '%AC'; break;
			case '¯': word2 += '%AF'; break;
			case '±': word2 += '%B1'; break;
			case 'æ': word2 += '%E6'; break;
			case 'ê': word2 += '%EA'; break;
			case '³': word2 += '%B3'; break;
			case 'ñ': word2 += '%F1'; break;
			case 'ó': word2 += '%F3'; break;
			case '¶': word2 += '%B6'; break;
			case '¼': word2 += '%BC'; break;
			case '¿': word2 += '%BF'; break;
			default: word2 += word.charAt(i); break;
		}
	}
	return word2.replace(/[^a-zA-Z0-9%]+/g, ' ');
}

function spelling_unescape(word) {
	word = word.replace(/%A1/gi, '¡');
	word = word.replace(/%C6/gi, 'Æ');
	word = word.replace(/%CA/gi, 'Ê');
	word = word.replace(/%A3/gi, '£');
	word = word.replace(/%D1/gi, 'Ñ');
	word = word.replace(/%D3/gi, 'Ó');
	word = word.replace(/%A6/gi, '¦');
	word = word.replace(/%AC/gi, '¬');
	word = word.replace(/%AF/gi, '¯');
	word = word.replace(/%B1/gi, '±');
	word = word.replace(/%E6/gi, 'æ');
	word = word.replace(/%EA/gi, 'ê');
	word = word.replace(/%B3/gi, '³');
	word = word.replace(/%F1/gi, 'ñ');
	word = word.replace(/%F3/gi, 'ó');
	word = word.replace(/%B6/gi, '¶');
	word = word.replace(/%BC/gi, '¼');
	word = word.replace(/%BF/gi, '¿');
	return word;
}

function spelling_add(word) {
	if (spelling_lang["Do you really want to add this word to distionary?"] && !window.confirm(spelling_lang["Do you really want to add this word to distionary?"] + "\n\n" + word)) return 0;
	if (!word) return 0;
	if (!ajax) return false;
	ajax.open('POST', 'spelling_add.php', false);
	ajax.setRequestHeader('Content-Type', 'application/x-www-form-urlencoded');
	ajax.send('w=' + spelling_escape(word));
	return ajax.responseText == 1 ? true : false;
}

function spelling_correct(word) {
	var error = spelling_el.childNodes.item(0).nodeValue;
	if (word) {
		var reg = new RegExp('([^a-zA-Z±æê³ñó¶¼¿¡ÆÊ£ÑÓ¦¬¯])' + error.replace(/([.\\+*?\[\^\](\$)])/g, '\\$1') + '([^a-zA-Z±æê³ñó¶¼¿¡ÆÊ£ÑÓ¦¬¯])', 'g');
		var word_replacement = "$1" + (document.getElementById('spelling_mark') && document.getElementById('spelling_mark').checked ? '[color=red]' + word + '[/color]' : word) + "$2";
		var txt = (' '+document.forms['post'].elements['message'].value+' ').replace(reg, word_replacement).replace(reg, word_replacement);
		if (document.getElementById('spelling_mark') && document.getElementById('spelling_mark').checked) {
			reg = new RegExp('(\\[color=red\\]){2,}' + word.replace(/([.\\+*?\[\^\](\$)])/g, '\\$1') + '(\\[/color\\]){2,}', 'g');
			txt = txt.replace(reg, '[color=red]' + word + '[/color]');
		}
		document.forms['post'].elements['message'].value = txt.substr(1, txt.length-2);
		
		var correct = function (isCorrect) {
			for (var i = 0, length_ = spelling_el.parentNode.getElementsByTagName('span').length; i < length_; i++) {
				if (spelling_el.parentNode.getElementsByTagName('span').item(i).childNodes.item(0).nodeValue == error) {
					spelling_el.parentNode.getElementsByTagName('span').item(i).childNodes.item(0).nodeValue = word;
					spelling_el.parentNode.getElementsByTagName('span').item(i).className = isCorrect ? 'spelling_correct' : 'spelling_incorrect';
				}
			}
		}
		
		if (ajax) {
			ajax.open('GET', 'spelling.php?w=' + spelling_escape(word), true);
			ajax.send('');
			if (ajax.readyState == 4) correct(ajax.responseText == 1);
			else {
				ajax.onreadystatechange = function () {
					if (ajax.readyState == 4) correct(ajax.responseText == 1);
				}
			}
		}
		else correct(true);
	}
}

function spelling_suggestions(word) {
	if (!word) return 0;
	if (!ajax) return false;
	ajax.open('GET', 'spelling.php?s=' + spelling_escape(word), true);
	ajax.send('');
	
	var suggestions = function (suggestions) {
		var suggestions = spelling_unescape(suggestions).split(' ');
		var el = document.createElement('select');
		el.onchange = function () { if (document.getElementById('spelling').getElementsByTagName('select').item(0).value) { document.getElementById('spelling').getElementsByTagName('input').item(0).value = document.getElementById('spelling').getElementsByTagName('select').item(0).options[document.getElementById('spelling').getElementsByTagName('select').item(0).selectedIndex].text; } }
		var elOption = document.createElement('option');
		elOption.value = '';
		elOption.text = '--- ' + spelling_lang["Select"] + ' ---';
		el.appendChild(elOption);
		el.options[0].value = '';
		el.options[0].text = '--- ' + spelling_lang["Select"] + ' ---';
		for (var i = 0; i < suggestions.length; i++) {
			elOption = document.createElement('option');
			elOption.value = suggestions[i];
			elOption.text = suggestions[i];
			el.appendChild(elOption);
			el.options[i+1].value = suggestions[i];
			el.options[i+1].text = suggestions[i];
		}
		var elDiv = document.getElementById('spelling').getElementsByTagName('div').item(0);
		while (elDiv.childNodes.length) elDiv.removeChild(elDiv.childNodes.item(0));
		elDiv.appendChild(el);
		el.focus();
	}
	
	if (ajax.readyState == 4) suggestions(ajax.responseText);
	else {
		ajax.onreadystatechange = function () {
			if (ajax.readyState == 4) suggestions(ajax.responseText);
		}
	}
}

function spell(el, evnt) {
	spelling_el = el;
	var error = spelling_el.childNodes.item(0).nodeValue;
	
	var x = evnt.pageX;
	var y = evnt.pageY;
	if (typeof x == "undefined" || typeof y == "undefined") {
		x = document.body.scrollLeft + evnt.clientX;
		y = document.body.scrollTop + evnt.clientY;
	}

	if (isNaN(x) || isNaN(y) || typeof x == "undefined" || typeof y == "undefined") {
		spelling_correct(window.prompt('', error));
		return;
	}
	
	if (!document.getElementById('spelling')) {
		var dialog = document.createElement('form');
		dialog.action = "javascript:void(0)";
		dialog.onsubmit = function() { spelling_correct(document.getElementById('spelling').getElementsByTagName('input').item(0).value); document.getElementById('spelling').style.display = 'none'; document.getElementById('spelling').getElementsByTagName('select').item(0).style.display = 'none'; return false }
		dialog.onreset = function() { document.getElementById('spelling').style.display = 'none'; document.getElementById('spelling').getElementsByTagName('select').item(0).style.display = 'none' };
		dialog.id = "spelling";
		
		var element = document.createElement('input');
		element.type = "text";
		element.className = "post";
		dialog.appendChild(element);
		
		element = document.createElement('input');
		element.type = "submit";
		element.value = spelling_lang["Confirm"];
		element.className = "mainoption";
		dialog.appendChild(element);
		dialog.appendChild(document.createTextNode(' '));
		
		element = document.createElement('input');
		element.type = "reset";
		element.value = spelling_lang["Cancel"];
		element.className = "liteoption";
		dialog.appendChild(element);
		dialog.appendChild(document.createTextNode(' '));
		
		element = document.createElement('input');
		element.type = "button";
		element.value = "?";
		element.className = "liteoption";
		element.onclick = function() { if (document.getElementById('spelling').getElementsByTagName('input').item(0).value) { var el = document.getElementById('spelling').getElementsByTagName('select').item(0); el.options[0].text = '--- ' + spelling_lang["Wait"] + ' ---'; el.selectedIndex = 0; el.disabled = true; el.style.display = 'inline'; setTimeout("spelling_suggestions(document.getElementById('spelling').getElementsByTagName('input').item(0).value);", 1); } }
		dialog.appendChild(element);
		dialog.appendChild(document.createTextNode(' '));
		
		var elementDiv = document.createElement('div');
		element = document.createElement('select');
		element.onchange = function () { if (document.getElementById('spelling').getElementsByTagName('select').item(0).value) { document.getElementById('spelling').getElementsByTagName('input').item(0).value = document.getElementById('spelling').getElementsByTagName('select').item(0).options[document.getElementById('spelling').getElementsByTagName('select').item(0).selectedIndex].text; } }
		element.style.display = 'none';
		var elementOption = document.createElement('option');
		elementOption.value = '';
		elementOption.text = '';
		element.appendChild(elementOption);
		elementDiv.appendChild(element);
		dialog.appendChild(elementDiv);
		
		element = document.createElement('a');
		element.href = "spelling_add.php";
		element.onclick = function() { if (!ajax) return true; spelling_add(document.getElementById('spelling').getElementsByTagName('input').item(0).value); spelling_correct(document.getElementById('spelling').getElementsByTagName('input').item(0).value); document.getElementById('spelling').style.display = 'none'; return false }
		element.appendChild(document.createTextNode(spelling_lang["Add to dictionary"]));
		dialog.appendChild(element);
		
		document.getElementsByTagName('form').item(0).parentNode.insertBefore(dialog, document.getElementsByTagName('form').item(0));
	}
	else {
		document.getElementById('spelling').getElementsByTagName('input').item(1).value = spelling_lang["Confirm"];
		document.getElementById('spelling').getElementsByTagName('input').item(2).value = spelling_lang["Cancel"];
		document.getElementById('spelling').getElementsByTagName('input').item(3).value = "?";
		document.getElementById('spelling').getElementsByTagName('select').item(0).style.display = 'none';
	}
	
	var width = document.getElementById('spelling').offsetWidth;
	if (typeof width == "undefined") width = 200;
		
	document.getElementById('spelling').style.display = 'block';
	document.getElementById('spelling').style.left = x - width < 0 ? 0 : x - width;
	document.getElementById('spelling').style.top = y + 15;
	document.getElementById('spelling').getElementsByTagName('input').item(0).value = error;
	document.getElementById('spelling').getElementsByTagName('input').item(0).focus();
}