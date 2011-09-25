
<script type="text/javascript" src="md5.js"></script>
<script type="text/javascript" src="{QUICK_REPLY_JS}"></script>
<script type="text/javascript" src="{EDITOR_JS}"></script>
<script language="JavaScript" type="text/javascript">
<!--
// bbCode control by
// subBlue design
// www.subBlue.com

// Helpline messages
b_help = "{L_BBCODE_B_HELP}";
i_help = "{L_BBCODE_I_HELP}";
u_help = "{L_BBCODE_U_HELP}";
q_help = "{L_BBCODE_Q_HELP}";
c_help = "{L_BBCODE_C_HELP}";
l_help = "{L_BBCODE_L_HELP}";
o_help = "{L_BBCODE_O_HELP}";
p_help = "{L_BBCODE_P_HELP}";
w_help = "{L_BBCODE_W_HELP}";
a_help = "{L_BBCODE_A_HELP}";
s_help = "{L_BBCODE_S_HELP}";
f_help = "{L_BBCODE_F_HELP}";

// Shows the help messages in the helpline window
function helpline(help) {
	document.post.helpbox.value = eval(help + "_help");
}

function checkForm() {

	formErrors = false;    

	if (document.post.message.value.length < 2) {
		formErrors = "{L_EMPTY_MESSAGE}";
	}
	
	if (document.post.prefix && (document.post.subject.value.indexOf("[") != 0 || document.post.subject.value.indexOf("]") < 2) && !document.post.prefix.value) {
		alert('{L_NO_PREFIX_MESSAGE}');
		return false;
	} else if (formErrors) {
		alert(formErrors);
		return false;
	} else {
		bbstyle(-1);
		//formObj.preview.disabled = true;
		//formObj.submit.disabled = true;
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
		return true;
	}
}
//-->
</script>

<!-- BEGIN privmsg_extensions -->
<table border="0" cellspacing="0" cellpadding="0" width="100%">
<tr> 
	<td valign="top" align="center" width="100%"> 
	  
<table height="40" cellspacing="2" cellpadding="2" border="0">
<tr> 
<td>{INBOX_IMG}</td>
<td class="gen">{INBOX_LINK}&nbsp;&nbsp;</td>
<td>{SENTBOX_IMG}</td>
<td><span class="cattitle">{SENTBOX_LINK}&nbsp;&nbsp;</span></td>
<td>{OUTBOX_IMG}</td>
<td><span class="cattitle">{OUTBOX_LINK}&nbsp;&nbsp;</span></td>
<td>{SAVEBOX_IMG}</td>
<td><span class="cattitle">{SAVEBOX_LINK}&nbsp;&nbsp;</span></td>
</tr>
</table>
	</td>
  </tr>
</table>

<br clear="all" />
<!-- END privmsg_extensions -->

{MESSAGE_BOX}

{POST_PREVIEW_BOX}

<form action="{S_POST_ACTION}" method="post" name="post" onsubmit="if (this.confirm_code &amp;&amp; this.confirm_code.value == '') { window.alert('{L_EMPTY_CONFIRM_CODE}'); return false } return checkForm(this)">
{ERROR_BOX}
<input type="hidden" name="screen" value="" />
<input type="hidden" name="client" value="" />
<table width="100%" cellspacing="2" cellpadding="2" border="0">
<tr> 
<td class="nav"><a href="{U_INDEX}">{L_INDEX}</a> 
<!-- BEGIN switch_not_privmsg -->
&raquo; <a href="{U_VIEW_FORUM}">{FORUM_NAME}</a></td>
<!-- END switch_not_privmsg -->
</tr>
</table>

<table border="0" cellpadding="3" cellspacing="1" width="100%" class="forumline">
<tr> 
<th class="thhead" colspan="2" height="28">{L_POST_A}</th>
</tr>
<!-- BEGIN switch_confirm_code -->
<tr>
<td class="row1"><span class="gen">{L_CONFIRM_CODE}</span></td>
<td class="row2"><table><tr><td><input type="text" class="post" name="confirm_code" value="{CONFIRM_CODE}" size="5" /></td><td style="padding: 0 2px 0 10px"><img id="confirm_code_img" src="confirm_code.png.php" alt="" style="border: 1px solid #000; vertical-align: middle" /></td><td><input type="button" class="button" value="{L_REFRESH}" onclick="document.getElementById('confirm_code_img').src = 'confirm_code.png.php?' + escape(new Date())" /></td></tr></table></td>
</tr>
<!-- END switch_confirm_code -->
<!-- BEGIN switch_username_select -->
<tr> 
<td class="row1"><span class="gen">{L_USERNAME}</span></td>
<td class="row2"><span class="genmed"> 
<input type="text" class="post" tabindex="1" name="username" size="25" maxlength="25" value="{USERNAME}" />
</span></td>
</tr>
<!-- END switch_username_select -->
<!-- BEGIN switch_privmsg -->
<tr> 
<td class="row1"><span class="gen">{L_USERNAME}</span></td>
<td class="row2"><span class="genmed"> 
<input type="text"  class="post" name="username" maxlength="25" size="25" tabindex="1" value="{USERNAME}" />
&nbsp; 
<input type="submit" name="usersubmit" value="{L_FIND_USERNAME}" class="liteoption" onClick="window.open('{U_SEARCH_USER}', '_phpbbsearch', 'HEIGHT=250,resizable=yes,WIDTH=400');return false;" />
</span><div>{USER_LASTVISIT}</div></td>
</tr>
<!-- END switch_privmsg -->
<tr> 
<td class="row1" width="22%"><span class="gen">{L_SUBJECT}</span></td>
<td class="row2" width="78%"> <span class="gen"> 
{PREFIX} <input type="text" name="subject" size="60" maxlength="60" tabindex="2" class="post" value="{SUBJECT}" />
</span> </td>
</tr>
<tr> 
<td class="row1" valign="top"> 
<table width="100%" border="0" cellspacing="0" cellpadding="1">
<tr> 
<td><span class="gen">{L_MESSAGE_BODY}</span></td>
</tr>
<tr> 
<td valign="middle" align="center"> <br />
<table width="100" border="0" cellspacing="0" cellpadding="5">
<tr align="center"> 
<td colspan="{S_SMILIES_COLSPAN}" class="gensmall"><strong>{L_EMOTICONS}</strong></td>
</tr>
<!-- BEGIN smilies_row -->
<tr align="center" valign="middle"> 
<!-- BEGIN smilies_col -->
<td><a href="javascript:emoticon(' {smilies_row.smilies_col.SMILEY_CODE} ')" onclick="if (editor.insertText(' {smilies_row.smilies_col.SMILEY_CODE} ')) return false"><img src="{smilies_row.smilies_col.SMILEY_IMG}" border="0" alt="{smilies_row.smilies_col.SMILEY_DESC}" title="{smilies_row.smilies_col.SMILEY_DESC}" /></a></td>
<!-- END smilies_col -->
</tr>
<!-- END smilies_row -->
<!-- BEGIN switch_smilies_extra -->
<tr align="center"> 
<td colspan="{S_SMILIES_COLSPAN}" class="nav"><a href="{U_MORE_SMILIES}" onclick="window.open('{U_MORE_SMILIES}', '_phpbbsmilies', 'HEIGHT=250,resizable=yes,scrollbars=yes,WIDTH=300');return false;" target="_phpbbsmilies">{L_MORE_SMILIES}</a></td>
</tr>
<!-- END switch_smilies_extra -->
</table>
<script type="text/javascript">
<!--
document.write("<a id=\"roll\" href=\"javascript:void(0)\" style=\"text-decoration: none; font-weight: bold; font-size: 30px\" onclick=\"if (document.post.message.rows < 30) { if (Editor.isSupported()) editor.getElement().style.height = '450px'; document.post.message.rows = 30; document.post.message.parentNode.width = '100%'; if (document.getElementById && document.getElementById('roll').innerHTML) setTimeout('document.getElementById(\\'roll\\').innerHTML = \\'&nbsp;&nbsp;&laquo;&nbsp;&nbsp;\\'', 1); } else { if (Editor.isSupported()) editor.getElement().style.height = ''; document.post.message.rows = 15;  document.post.message.parentNode.width = 665; if (document.getElementById && document.getElementById('roll').innerHTML) setTimeout('document.getElementById(\\'roll\\').innerHTML = \\'&nbsp;&nbsp;&raquo;&nbsp;&nbsp;\\'', 1); } return false\">&nbsp;&nbsp;&raquo;&nbsp;&nbsp;<"+"/a>");
//-->
</script>
</td>
</tr>
</table>
</td>
<td class="row2" valign="top"> 
<table width="665" border="0" cellspacing="0" cellpadding="2">
<tr align="center" valign="middle"> 
<td><button type="button" class="button" accesskey="b" name="addbbcode0" onClick="if (!editor.insert('b')) bbstyle(0)" onMouseOver="helpline('b')">&nbsp;<span style="font-weight: bold">B</span><span id="addbbcode1" style="display: none">*</span>&nbsp;</button></td>
<td><button type="button" class="button" accesskey="i" name="addbbcode2" onClick="if (!editor.insert('i')) bbstyle(2)" onMouseOver="helpline('i')">&nbsp;<span style="font-style: italic">I</span><span id="addbbcode3" style="display: none">*</span>&nbsp;</button></td>
<td><button type="button" class="button" accesskey="u" name="addbbcode4" onClick="if (!editor.insert('u')) bbstyle(4)" onMouseOver="helpline('u')">&nbsp;<span style="text-decoration: underline">U</span><span id="addbbcode5" style="display: none">*</span>&nbsp;</button></td>
<td><button type="button" class="button" accesskey="s" name="addbbcode1" onClick="if (!editor.insert('s')) bbstyle(18)">&nbsp;<span style="text-decoration: line-through">S</span><span id="addbbcode19" style="display: none">*</span>&nbsp;</button></td>
<td><button type="button" class="button" name="addbbcode3" onClick="if (!editor.insert('sup')) bbstyle(20)">&nbsp;A<span style="font-size: 10px; position: relative; bottom: 0.5em">n</span><span id="addbbcode21" style="display: none">*</span>&nbsp;</button></td>
<td><button type="button" class="button" name="addbbcode5" onClick="if (!editor.insert('sub')) bbstyle(22)">&nbsp;A<span style="font-size: 10px; position: relative; top: 0.2em">n</span><span id="addbbcode23" style="display: none">*</span>&nbsp;</button></td>
<td><button type="button" class="button" accesskey="t" name="addbbcode28" onClick="if (!editor.insert('tt')) bbstyle(28)"><tt>TT</tt><span id="addbbcode29" style="display: none">*</span></button></td>
<td><button type="button" class="button" accesskey="q" name="addbbcode6" onClick="if (!editor.insert('quote')) bbstyle(6)" onMouseOver="helpline('q')">Quote<span id="addbbcode7" style="display: none">*</span></button></td>
<td nowrap="nowrap"><button type="button" class="button" accesskey="c" name="addbbcode8" onClick="if (!editor.insert('code')) bbstyle(8)" onMouseOver="helpline('c')">Code<span id="addbbcode9" style="display: none">*</span></button><button type="button" class="button" accesskey="r" name="addbbcode25" onClick="if (!editor.insert('rem')) bbstyle(24)">//<span id="addbbcode25" style="display: none">*</span></button></td>
<td nowrap="nowrap"><button type="button" class="button" accesskey="l" name="addbbcode10" onClick="if (!editor.insert('ul')) bbstyle(10)" onMouseOver="helpline('l')">List<span id="addbbcode11" style="display: none">*</span></button><button type="button" class="button" accesskey="o" name="addbbcode12" onClick="if (!editor.insert('ol')) bbstyle(12)" onMouseOver="helpline('o')">List=<span id="addbbcode13" style="display: none">*</span></button><button type="button" class="button" accesskey="8" onClick="if (!editor.isActive()) emoticon('[*]')">*</button></td>
<td><button type="button" class="button" accesskey="p" name="addbbcode14" onClick="if (!editor.insert('img')) bbstyle(14)" onMouseOver="helpline('p')">Img<span id="addbbcode15" style="display: none">*</span></button></td>
<td><button type="button" class="button" accesskey="w" name="addbbcode16" onClick="if (!editor.insert('a')) bbstyle(16)" onMouseOver="helpline('w')">URL<span id="addbbcode17" style="display: none">*</span></button></td>
<td><button type="button" class="button" accesskey="m" name="addbbcode26" onClick="if (!editor.insert('email')) bbstyle(26)">Email<span id="addbbcode27" style="display: none">*</span></button></td>
</tr>
<tr> 
<td colspan="13"> 
<table width="100%" border="0" cellspacing="0" cellpadding="0">
<tr> 
<td class="genmed"> &nbsp;{L_FONT_COLOR}: 
<select name="addbbcode24" onChange="if (!editor.insert('color', this.value)) bbfontstyle('[color=' + this.options[this.selectedIndex].value + ']', '[/color]'); this.selectedIndex = 0" onMouseOver="helpline('s')">
<option style="color:{T_BODY_TEXT}; background-color: {T_TD_COLOR1}" value="{T_BODY_TEXT}" class="genmed">{L_COLOR_DEFAULT}</option>
<option style="color:darkred; background-color: {T_TD_COLOR1}" value="darkred" class="genmed">{L_COLOR_DARK_RED}</option>
<option style="color:red; background-color: {T_TD_COLOR1}" value="red" class="genmed">{L_COLOR_RED}</option>
<option style="color:orange; background-color: {T_TD_COLOR1}" value="orange" class="genmed">{L_COLOR_ORANGE}</option>
<option style="color:brown; background-color: {T_TD_COLOR1}" value="brown" class="genmed">{L_COLOR_BROWN}</option>
<option style="color:yellow; background-color: {T_TD_COLOR1}" value="yellow" class="genmed">{L_COLOR_YELLOW}</option>
<option style="color:green; background-color: {T_TD_COLOR1}" value="green" class="genmed">{L_COLOR_GREEN}</option>
<option style="color:olive; background-color: {T_TD_COLOR1}" value="olive" class="genmed">{L_COLOR_OLIVE}</option>
<option style="color:cyan; background-color: {T_TD_COLOR1}" value="cyan" class="genmed">{L_COLOR_CYAN}</option>
<option style="color:blue; background-color: {T_TD_COLOR1}" value="blue" class="genmed">{L_COLOR_BLUE}</option>
<option style="color:darkblue; background-color: {T_TD_COLOR1}" value="darkblue" class="genmed">{L_COLOR_DARK_BLUE}</option>
<option style="color:indigo; background-color: {T_TD_COLOR1}" value="indigo" class="genmed">{L_COLOR_INDIGO}</option>
<option style="color:violet; background-color: {T_TD_COLOR1}" value="violet" class="genmed">{L_COLOR_VIOLET}</option>
<option style="color:white; background-color: {T_TD_COLOR1}" value="white" class="genmed">{L_COLOR_WHITE}</option>
<option style="color:black; background-color: {T_TD_COLOR1}" value="black" class="genmed">{L_COLOR_BLACK}</option>
</select>
&nbsp;{L_FONT_SIZE}: 
<select name="addbbcode26" onChange="if (this.selectedIndex) if (!editor.insert('size', this.value)) bbfontstyle('[size=' + this.options[this.selectedIndex].value + ']', '[/size]'); this.selectedIndex = 0" onMouseOver="helpline('f')">
<option value="0" class="genmed">{L_FONT_SIZE}</option>
<option value="7" class="genmed">{L_FONT_TINY}</option>
<option value="9" class="genmed">{L_FONT_SMALL}</option>
<option value="12" selected class="genmed">{L_FONT_NORMAL}</option>
<option value="18" class="genmed">{L_FONT_LARGE}</option>
<option  value="24" class="genmed">{L_FONT_HUGE}</option>
</select>
</td>
<td nowrap align="right" class="genmed"><a id="closeTags" href="javascript:bbstyle(-1)" onClick="if (editor.isActive()) return false" onMouseOver="helpline('a')">{L_BBCODE_CLOSE_TAGS}</a>&nbsp;</td>
</tr>
</table>
</td>
</tr>
<Tr>
<td colspan="13">
	<select onChange="var insert = this.value.split('||'); insert = insert[this.form.short_code.checked &amp;&amp; typeof insert[1] != 'undefined' ? 1 : 0].replace(/\\n/g, '\n').replace(/\\t/g, '\t').split('|'); if (!editor.insertText(insert[0], typeof insert[1] == 'undefined' ? '' : insert[1])) bbfontstyle(insert[0], typeof insert[1] == 'undefined' ? '' : insert[1]); this.value = ''">
		<option value="">----- {L_SELECT} -----</option>
		<option value="\t">[Tab]</option>
		<optgroup label="XHTML">
			<option value="&lt;!DOCTYPE html\n\tPUBLIC &quot;-//W3C//DTD XHTML 1.0 Strict//EN&quot;\n\t&quot;http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd&quot;&gt;">XHTML 1.0 Strict</option>
			<option value="&lt;!DOCTYPE html\n\tPUBLIC &quot;-//W3C//DTD XHTML 1.0 Transitional//EN&quot;\n\t&quot;http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd&quot;&gt;">XHTML 1.0 Transitional</option>
			<option value="&lt;!DOCTYPE html\n\tPUBLIC &quot;-//W3C//DTD XHTML 1.0 Frameset//EN&quot;\n\t&quot;http://www.w3.org/TR/xhtml1/DTD/xhtml1-frameset.dtd&quot;&gt;">XHTML 1.0 Frameset</option>
			<option value="&lt;!DOCTYPE html\n\tPUBLIC &quot;-//W3C//DTD XHTML 1.1//EN&quot;\n\t&quot;http://www.w3.org/TR/xhtml11/DTD/xhtml11.dtd&quot;&gt;">XHTML 1.1</option>
			<option value="&lt;html&gt;\n&lt;head&gt;\n&lt;title&gt;&lt;/title&gt;\n&lt;/head&gt;\n&lt;body&gt;\n|\n&lt;/body&gt;\n&lt;/html&gt;">&lt;html&gt;...&lt;/html&gt;</option>
			<option value="&lt;meta http-equiv=&quot;Content-Type&quot; content=&quot;text/html; charset=iso-8859-2&quot; /&gt;">Content-Type</option>
			<option value="&lt;style type=&quot;text/css&quot;&gt;|&lt;/style&gt;">&lt;style&gt;...&lt;/style&gt;</option>
			<option value="&lt;link rel=&quot;Stylesheet&quot; type=&quot;text/css&quot; href=&quot;|&quot; /&gt;">&lt;link rel="Stylesheet".../&gt;</option>
			<option value="&lt;script type=&quot;text/javascript&quot;&gt;|&lt;/script&gt;">&lt;script&gt;...&lt;/script&gt;</option>
			<option value="&lt;!-- | --&gt;||&lt;!--|--&gt;">&lt;!-- ... --&gt;</option>
			<option value="&lt;?php\n|\n?&gt;||&lt;?php | ?&gt;">&lt;?php ... ?&gt;</option>
		</optgroup>
		<optgroup label="JavaScript">
			<option value="if ()\n&#123;\n\t|\n&#125;\nelse\n&#123;\n\t\n&#125;||if () &#123;\n\t|\n&#125; else &#123;\n\t\n&#125;">if &#123;&#125; else &#123;&#125;</option>
			<option value="function ()\n&#123;\n\t|\n&#125;||function () &#123;\n\t|\n&#125;">function () &#123;&#125;</option>
			<option value="for (var i = 0; i &lt; ; i++)\n&#123;\n\t|\n&#125;||for (var i = 0; i &lt; ; i++) &#123;\n\t|\n&#125;">for (;;) &#123;&#125;</option>
			<option value="for (var p in )\n&#123;\n\t|\n&#125;||for (var p in ) &#123;\n\t|\n&#125;">for (in) &#123;&#125;</option>
			<option value="while ()\n&#123;\n\t|\n&#125;||while () &#123;\n\t|\n&#125;">while () &#123;&#125;</option>
			<option value="do\n&#123;\n\t|\n&#125;\nwhile ();||do &#123;\n\t|\n&#125; while ();">do &#123;&#125; while ();</option>
			<option value="try\n&#123;\n\t|\n&#125;\ncatch (e)\n&#123;\n\t\n&#125;||try &#123;\n\t|\n&#125; catch (e) &#123;\n\t\n&#125;">try &#123;&#125; catch (e) &#123;&#125;</option>
			<option value="switch ()\n&#123;\n\tcase '':\n\t\t\n\t\tbreak;\n\tcase '':\n\t\t\n\t\tbreak;\n\tcase '':\n\t\t\n\t\tbreak;\n\tdefault:\n\t\t\n\t\tbreak;\n&#125;||switch () &#123;\n\tcase '': ; break;\n\tcase '': ; break;\n\tcase '': ; break;\n\tdefault: ; break;\n&#125;">switch (...)</option>
		</optgroup>
		<optgroup label="PHP">
			<option value="foreach ( as $key =&gt; $value)\n&#123;\n\t|\n&#125;||foreach ( as $key =&gt; $value) &#123;\n\t|\n&#125;">foreach () &#123;&#125;</option>
			<option value="class \n&#123;\n\tfunction ()\n\t&#123;\n\t|\t\n\t&#125;\n&#125;||class  &#123;\n\tfunction () &#123;\n\t|\t\n\t&#125;\n&#125;">class &#123;&#125;</option>
			<option value="$file = '|';\n$fp = fopen($file, 'r') or die();\nflock($fp, 1);\n$content = fread($fp, filesize($file));\nflock($fp, 3);\nfclose($fp);">fread</option>
			<option value="$file = '|';\n$fp = fopen($file, 'w') or die();\nflock($fp, 2);\nfwrite($fp, $content);\nflock($fp, 3);\nfclose($fp);">fwrite</option>
			<option value="$dh = opendir('|') or die();\nwhile (false !== ($file = readdir($dh)))\n&#123;\n\t\n&#125;\nclosedir($dh);||$dh = opendir('|') or die();\nwhile (false !== ($file = readdir($dh))) &#123;\n\t\n&#125;\nclosedir($dh);">readdir</option>
			<option value="$db = mysql_connect('localhost', '', '') or die();\nmysql_select_db('');\n|\nmysql_close($db);">mysql_connect</option>
			<option value="$result = mysql_query('|');\nwhile ($row = mysql_fetch_assoc($result))\n&#123;\n\t\n&#125;||$result = mysql_query('|');\nwhile ($row = mysql_fetch_assoc($result)) &#123;\n\t\n&#125;">mysql_query(...)</option>
			<option value="/**\n * |\n * @param \n * @return \n */">/** @param */</option>
			<option value="/**\n * |\n * @global \n */">/** @global */</option>
			<option value="/**\n * |\n * @var \n */">/** @var */</option>
			<option value="/**#@+\n * \n */\n|\n/**#@-*/">/**#@+*/ ... /**#@-*/</option>
			<option value="/**\n * |\n * @version 1.0.0\n * @author \n * @copyright \n */">/** @copyright */</option>
		</optgroup>
		<optgroup label="MySQL">
			<option value="CREATE TABLE |\n(\n\t,\n\tPRIMARY KEY (id)\n);||CREATE TABLE | ( , PRIMARY KEY (id));">CREATE TABLE</option>
			<option value="SELECT *\n\tFROM |\n\tWHERE \n\tORDER BY \n\tLIMIT ;||SELECT * FROM | WHERE  ORDER BY  LIMIT ;">SELECT</option>
			<option value="SELECT *\n\tFROM |\n\tWHERE \n\tGROUP BY \n\tHAVING \n\tORDER BY \n\tLIMIT ;||SELECT * FROM | WHERE  GROUP BY  HAVING  ORDER BY  LIMIT ;">SELECT ... GROUP BY</option>
			<option value="INSERT INTO |\n\t()\n\tVALUES ();||INSERT INTO | () VALUES ();">INSERT</option>
			<option value="UPDATE |\n\tWHERE \n\tORDER BY \n\tLIMIT ;||UPDATE | WHERE  ORDER BY  LIMIT ;">UPDATE</option>
			<option value="DELETE FROM |\n\tWHERE \n\tORDER BY \n\tLIMIT ;||DELETE FROM | WHERE  ORDER BY  LIMIT ;">DELETE</option>
		</optgroup>
	</select>&nbsp;&nbsp; <input type="checkbox" id="label__short_code" name="short_code" /> <label for="label__short_code">{L_SHORT_CODE}</label>
</td>
</Tr>
<tr> 
<td colspan="13"> <span class="gensmall"> 
<input type="text" name="helpbox" size="45" maxlength="100" style="width:100%; font-size:10px" class="helpline" value="{L_STYLES_TIP}" readonly="readonly" />
</span></td>
</tr>
</table>
<table border="0" cellspacing="0" cellpadding="2" width="100%">
<tr>
<td width="665"><textarea name="message" rows="15" cols="35" style="width:100%" tabindex="3" class="post" onselect="storeCaret(this);" onclick="storeCaret(this);" onkeyup="storeCaret(this);">{MESSAGE}</textarea></td>
<td></td>
</tr>
</table>
</td>
</td>
<tr> 
<td class="row1" valign="top"><b>{L_OPTIONS}</b><br />
<span class="gensmall">{HTML_STATUS}<br />
{BBCODE_STATUS}<br />
{SMILIES_STATUS}</span></td>
<td class="row2"><span class="gen"> </span> 
<table cellspacing="0" cellpadding="1" border="0">
<!-- BEGIN switch_html_checkbox -->
<tr> 
<td> 
<input type="checkbox" id="label__disable_html" name="disable_html" {S_HTML_CHECKED} />
</td>
<td><label for="label__disable_html">{L_DISABLE_HTML}</label></td>
</tr>
<!-- END switch_html_checkbox -->
<!-- BEGIN switch_bbcode_checkbox -->
<tr> 
<td> 
<input type="checkbox" id="label__disable_bbcode" name="disable_bbcode" {S_BBCODE_CHECKED} />
</td>
<td><label for="label__disable_bbcode">{L_DISABLE_BBCODE}</label></td>
</tr>
<!-- END switch_bbcode_checkbox -->
<!-- BEGIN switch_smilies_checkbox -->
<tr> 
<td> 
<input type="checkbox" id="label__disable_smilies" name="disable_smilies" {S_SMILIES_CHECKED} />
</td>
<td><label for="label__disable_smilies">{L_DISABLE_SMILIES}</label></td>
</tr>
<!-- END switch_smilies_checkbox -->
<!-- BEGIN switch_signature_checkbox -->
<tr> 
<td> 
<input type="checkbox" id="label__attach_sig" name="attach_sig" {S_SIGNATURE_CHECKED} />
</td>
<td><label for="label__attach_sig">{L_ATTACH_SIGNATURE}</label></td>
</tr>
<!-- END switch_signature_checkbox -->
<!-- BEGIN switch_notify_checkbox -->
<tr> 
<td> 
<input type="checkbox" id="label__notify" name="notify" {S_NOTIFY_CHECKED} />
</td>
<td><label for="label__notify">{L_NOTIFY_ON_REPLY}</label></td>
</tr>
<!-- END switch_notify_checkbox -->
<!-- BEGIN switch_delete_checkbox -->
<tr> 
<td> 
<input type="checkbox" id="label__delete" name="delete" />
</td>
<td><label for="label__delete">{L_DELETE_POST}</label></td>
</tr>
<!-- END switch_delete_checkbox -->
<!-- BEGIN switch_type_toggle -->
<tr> 
<td></td>
<td>{S_TYPE_TOGGLE}</td>
</tr>
<!-- END switch_type_toggle -->
</table>
</td>
</tr>
{POLLBOX} 
<tr> 
<td class="catbottom" colspan="2" align="center" height="28"> {S_HIDDEN_FORM_FIELDS}
<input type="submit" tabindex="5" name="preview" class="mainoption" value="{L_PREVIEW}" />
<input type="submit" name="preview" class="mainoption" value="{L_SPELLING}" />
&nbsp; 
<input type="submit" tabindex="6" name="post" class="mainoption" value="{L_SUBMIT}" />
</td>
</tr>
</table>
</form>
{TOPIC_REVIEW_BOX}
<table width="100%" cellspacing="2" cellpadding="2" border="0">
<tr> 
<td class="nav"><a href="{U_INDEX}">{L_INDEX}</a> 
<!-- BEGIN switch_not_privmsg -->
&raquo; <a href="{U_VIEW_FORUM}">{FORUM_NAME}</a><br />
<br />
{JUMPBOX} </td>
<!-- END switch_not_privmsg -->
</tr>
</table>
<script type="text/javascript">
<!--
var editor = new Editor(document.post.message, 'editor postbody');
if (Editor.isSupported())
{
	if (/(^|;)\s*forumweb_wysiwyg\s*=\s*1\s*(;|$)/.test(document.cookie)) editor.activate();
	var switchEditor = document.createElement('a');
	switchEditor.innerHTML = editor.isActive() ? 'BBCode' : 'WYSIWYG';
	switchEditor.href = 'javascript:void(0)';
	switchEditor.style.fontWeight = 'bold';
	switchEditor.onclick = function()
	{
		if (editor.isActive())
		{
			editor.passivate();
			switchEditor.innerHTML = 'WYSIWYG';
			document.cookie = 'forumweb_wysiwyg=0';
		}
		else
		{
			editor.activate();
			switchEditor.innerHTML = 'BBCode';
			document.cookie = 'forumweb_wysiwyg=1; expires=' + new Date(new Date().getTime() + 365*24*60*60*1000).toGMTString();
		}
		return false;
	};
	document.getElementById('closeTags').parentNode.insertBefore(switchEditor, document.getElementById('closeTags'));
	switchEditor.parentNode.insertBefore(document.createTextNode(' ['), switchEditor);
	document.getElementById('closeTags').parentNode.insertBefore(document.createTextNode('] '), document.getElementById('closeTags'));
}
//-->
</script>