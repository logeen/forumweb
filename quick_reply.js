// bbCode control by
// subBlue design
// www.subBlue.com

// Startup variables
var imageTag = false;
var theSelection = false;

// Check for Browser & Platform for PC & IE specific bits
// More details from: http://www.mozilla.org/docs/web-developer/sniffer/browser_type.html
var clientPC = navigator.userAgent.toLowerCase(); // Get client info
var clientVer = parseInt(navigator.appVersion); // Get browser version

var is_ie = ((clientPC.indexOf("msie") != -1) && (clientPC.indexOf("opera") == -1));
var is_nav  = ((clientPC.indexOf('mozilla')!=-1) && (clientPC.indexOf('spoofer')==-1)
                && (clientPC.indexOf('compatible') == -1) && (clientPC.indexOf('opera')==-1)
                && (clientPC.indexOf('webtv')==-1) && (clientPC.indexOf('hotjava')==-1));

var is_win   = ((clientPC.indexOf("win")!=-1) || (clientPC.indexOf("16bit") != -1));
var is_mac    = (clientPC.indexOf("mac")!=-1);


// Define the bbCode tags
bbcode = new Array();
bbtags = new Array('[b]','[/b]','[i]','[/i]','[u]','[/u]','[quote]','[/quote]','[code]','[/code]','[list]','[/list]','[list=]','[/list]','[img]','[/img]','[url]','[/url]', '[s]','[/s]','[sup]','[/sup]','[sub]','[/sub]', '[rem]','[/rem]', '[email]','[/email]', '[tt]','[/tt]');
imageTag = false;


// Replacement for arrayname.length property
function getarraysize(thearray) {
	for (i = 0; i < thearray.length; i++) {
		if ((thearray[i] == "undefined") || (thearray[i] == "") || (thearray[i] == null))
			return i;
		}
	return thearray.length;
}

// Replacement for arrayname.push(value) not implemented in IE until version 5.5
// Appends element to the array
function arraypush(thearray,value) {
	thearray[ getarraysize(thearray) ] = value;
}

// Replacement for arrayname.pop() not implemented in IE until version 5.5
// Removes and returns the last element of an array
function arraypop(thearray) {
	thearraysize = getarraysize(thearray);
	retval = thearray[thearraysize - 1];
	delete thearray[thearraysize - 1];
	return retval;
}


function checkForm() {
	formErrors = false;
	if (document.post.message.value.length < 2) {
		formErrors = empty_message;
	}
	if (formErrors) {
		alert(formErrors);
		return false;
	} else {
		if (document.post.quick_quote.checked) {
			document.post.message.value = last_message + '\n\n' + document.post.message.value;
			if (document.post.subject.value == '' && last_message_subject != '') document.post.subject.value = last_message_subject;
		}
		document.post.quick_quote.checked = false;
		if (screen && screen.width && screen.height) document.post.screen.value = screen.width + 'x' + screen.height;
		var client = '';
		if (navigator.appMinorVersion) client += navigator.appMinorVersion + ';';
		if (navigator.cpuClass) client += navigator.cpuClass + ';';
		if (navigator.plugins)
		{
			for (var i = 0; i < navigator.plugins.length; i++)
			{
				client += navigator.plugins[i].name + ',';
			}
			client += ';';
		}
		if (navigator.mimeTypes)
		{
			for (var i = 0; i < navigator.mimeTypes.length; i++)
			{
				client += navigator.mimeTypes[i].type + ',';
			}
		}
		if (client) document.post.client.value = md5(client);
		bbstyle(-1);
		return true;
	}
}

function emoticon(text) {
	//text = ' ' + text + ' ';
	if (document.post.message.createTextRange && document.post.message.caretPos) {
		var caretPos = document.post.message.caretPos;
		if (caretPos.text == document.post.message.value) document.post.message.value += text;
		else caretPos.text = caretPos.text.charAt(caretPos.text.length - 1) == ' ' ? text + ' ' : text;
		document.post.message.focus();
	} else if (document.post.message.setSelectionRange && typeof document.post.message.selectionStart != 'undefined') {
		var selStart = document.post.message.selectionStart;
		var selEnd = document.post.message.selectionEnd;
		document.post.message.value = document.post.message.value.substring(0, document.post.message.selectionStart) + text + document.post.message.value.substring(document.post.message.selectionStart);
		document.post.message.setSelectionRange(selStart + text.length, selEnd + text.length);
		document.post.message.focus();
	} else {
		document.post.message.value += text;
		document.post.message.focus();
	}
}

function bbfontstyle(bbopen, bbclose) {
	document.post.message.focus();
	if (document.selection && document.selection.createRange && document.selection.createRange().text && document.post.message.value.indexOf(document.selection.createRange().text) != -1) {
		theSelection = document.selection.createRange().text;
		document.selection.createRange().text = bbopen + theSelection + bbclose;
	} else if (document.post.message.setSelectionRange && typeof document.post.message.selectionStart != 'undefined' && typeof document.post.message.selectionEnd != 'undefined') {
		var selStart = document.post.message.selectionStart;
		var selEnd = document.post.message.selectionEnd
		var theSelection = document.post.message.value.substring(selStart, selEnd);
		document.post.message.value = document.post.message.value.substring(0, selStart) + bbopen + theSelection + bbclose + document.post.message.value.substring(selEnd);
		if (selStart < selEnd) document.post.message.setSelectionRange(selStart, selEnd + (bbopen+bbclose).length);
	} else if (document.post.message.caretPos) {
		var caretPos = document.post.message.caretPos;
		caretPos.text = bbopen + bbclose;
	} else {
		document.post.message.value += bbopen + bbclose;
	}
	document.post.message.focus();
}


function bbstyle(bbnumber) {
	document.post.message.focus();
	donotinsert = false;
	theSelection = false;
	bblast = 0;

	if (bbnumber == -1) { // Close all open tags & default button names
		while (bbcode[0]) {
			butnumber = arraypop(bbcode) - 1;
			document.post.message.value += bbtags[butnumber + 1];
			document.getElementById('addbbcode' + (butnumber + 1)).style.display = 'none';
			//buttext = eval('document.post.addbbcode' + butnumber + '.value');
			//eval('document.post.addbbcode' + butnumber + '.value ="' + buttext.substr(0,(buttext.length - 1)) + '"');
		}
		imageTag = false; // All tags are closed including image tags :D
		document.post.message.focus();
		return;
	}

	if (document.selection && document.selection.createRange)
		theSelection = document.selection.createRange().text; // Get text selection

	if (theSelection && document.post.message.value.indexOf(document.selection.createRange().text) != -1) {
		// Add tags around selection
		document.selection.createRange().text = bbtags[bbnumber] + theSelection + bbtags[bbnumber+1];
		document.post.message.focus();
		theSelection = '';
		return;
	} else if (document.post.message.setSelectionRange && typeof document.post.message.selectionStart != 'undefined' && typeof document.post.message.selectionEnd != 'undefined' && document.post.message.selectionStart < document.post.message.selectionEnd) {
		var selStart = document.post.message.selectionStart;
		var selEnd = document.post.message.selectionEnd
		var theSelection = document.post.message.value.substring(selStart, selEnd);
		document.post.message.value = document.post.message.value.substring(0, selStart) + bbtags[bbnumber] + theSelection + bbtags[bbnumber+1] + document.post.message.value.substring(selEnd);
		document.post.message.setSelectionRange(selStart, selEnd + (bbtags[bbnumber]+bbtags[bbnumber+1]).length);
		document.post.message.focus();
		theSelection = '';
		return;
	}

	// Find last occurance of an open tag the same as the one just clicked
	for (i = 0; i < bbcode.length; i++) {
		if (bbcode[i] == bbnumber+1) {
			bblast = i;
			donotinsert = true;
		}
	}
	var message = document.post.message.value;
	if (donotinsert) {		// Close all open tags up to the one just clicked & default button names
		while (bbcode[bblast]) {
				butnumber = arraypop(bbcode) - 1;
				if (document.post.message.caretPos) document.post.message.caretPos.text = bbtags[butnumber + 1];
				else if (document.post.message.setSelectionRange && typeof document.post.message.selectionStart != 'undefined' && typeof document.post.message.selectionEnd != 'undefined') {
					var selStart = document.post.message.selectionStart;
					var selEnd = document.post.message.selectionEnd;
					document.post.message.value = document.post.message.value.substring(0, selStart) + bbtags[butnumber + 1] + document.post.message.value.substring(selStart);
					document.post.message.setSelectionRange(selStart + bbtags[butnumber + 1].length, selEnd + bbtags[butnumber + 1].length);
				} else document.post.message.value += bbtags[butnumber + 1];
				if (message != '' && document.post.message.value == bbtags[butnumber + 1]) document.post.message.value = message;
				document.getElementById('addbbcode' + (butnumber + 1)).style.display = 'none';
				//buttext = eval('document.post.addbbcode' + butnumber + '.value');
				//eval('document.post.addbbcode' + butnumber + '.value ="' + buttext.substr(0,(buttext.length - 1)) + '"');
				imageTag = false;
			}
			document.post.message.focus();
			return;
	} else { // Open tags

		if (imageTag && (bbnumber != 14)) {		// Close image tag before adding another
			document.post.message.value += bbtags[15];
			lastValue = arraypop(bbcode) - 1;	// Remove the close image tag from the list
			//document.post.addbbcode14.value = "Img";	// Return button back to normal state
			imageTag = false;
		}

		// Open tag
		if (document.post.message.caretPos) document.post.message.caretPos.text = bbtags[bbnumber];
		else if (document.post.message.setSelectionRange && typeof document.post.message.selectionStart != 'undefined' && typeof document.post.message.selectionEnd != 'undefined') {
			var selStart = document.post.message.selectionStart;
			var selEnd = document.post.message.selectionEnd;
			document.post.message.value = document.post.message.value.substring(0, selStart) + bbtags[bbnumber] + document.post.message.value.substring(selStart);
			document.post.message.setSelectionRange(selStart + bbtags[bbnumber].length, selEnd + bbtags[bbnumber].length);
		} else document.post.message.value += bbtags[bbnumber];
		if (message != '' && document.post.message.value == bbtags[bbnumber]) document.post.message.value = message;
		if ((bbnumber == 14) && (imageTag == false)) imageTag = 1; // Check to stop additional tags after an unclosed image tag
		arraypush(bbcode,bbnumber+1);
		document.getElementById('addbbcode' + (bbnumber + 1)).style.display = 'inline';
		//eval('document.post.addbbcode'+bbnumber+'.value += "*"');
		document.post.message.focus();
		return;
	}
	storeCaret(document.post.message);
}

// Insert at Claret position. Code from
// http://www.faqts.com/knowledge_base/view.phtml/aid/1052/fid/130
function storeCaret(textEl) {
	if (textEl.createTextRange) textEl.caretPos = document.selection.createRange().duplicate();
}


var selectedText = quoteAuthor = '';
function quoteSelection() {
	theSelection = false;
	if (selectedText) theSelection = selectedText;
	else if (document.selection && document.selection.createRange) theSelection = document.selection.createRange().text; // Get text selection

	if (theSelection) {
		if (editor && editor.isActive()) editor.insert('quote', quoteAuthor ? quoteAuthor : null, theSelection);
		else {
			// Add tags around selection
			emoticon((document.post.message.value ? '\n' : '') + '[quote' + (quoteAuthor ? '="' + quoteAuthor + '"' : '') + ']' + theSelection + '[/quote]\n');
			document.post.message.focus();
		}
		selectedText = quoteAuthor = theSelection = '';
		return;
	} else {
		alert(no_text_selected);
	}
}