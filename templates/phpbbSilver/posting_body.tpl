<div class="posting_body-tpl">
<script src="md5.js"></script>
<script src="{QUICK_REPLY_JS}"></script>
<script src="{EDITOR_JS}"></script>
<script >
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
st_help = "{L_BBCODE_ST_HELP}";//strikethrough
sp_help = "{L_BBCODE_SP_HELP}";//sup
sb_help = "{L_BBCODE_SB_HELP}";//sub
t_help = "{L_BBCODE_T_HELP}"; //tt
r_help = "{L_BBCODE_R_HELP}"; //rem
m_help = "{L_BBCODE_M_HELP}"; //mail
wysiwyg_help = "{L_BBCODE_WYSIWYG_HELP}"; //wysiwyg

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
</script>

<!-- BEGIN privmsg_extensions -->
<ul>
	<li>{INBOX_IMG} {INBOX_LINK}</li>
	<li>{SENTBOX_IMG} {SENTBOX_LINK}</li>
	<li>{OUTBOX_IMG} {OUTBOX_LINK}</li>
	<li>{SAVEBOX_IMG} {SAVEBOX_LINK}</li>
</ul>
<!-- END privmsg_extensions -->

{MESSAGE_BOX}

{POST_PREVIEW_BOX}

<nav class="breadcrumb">
	<ul>
		<li><a href="{U_INDEX}">{L_INDEX}</a></li>
		<!-- BEGIN switch_not_privmsg -->
		<li><a href="{U_VIEW_FORUM}">{FORUM_NAME}</a></li>
		<!-- END switch_not_privmsg -->
	</ul>
</nav>

</p>
<form action="{S_POST_ACTION}" method="post" name="post" onsubmit="if (this.confirm_code &amp;&amp; this.confirm_code.value == '') { window.alert('{L_EMPTY_CONFIRM_CODE}'); return false } return checkForm(this)">
<fieldset>
	<legend>{L_POST_A}</legend>
	{ERROR_BOX}
	<input type="hidden" name="screen" value="">
	<input type="hidden" name="client" value="">
	<dl>
		<!-- BEGIN switch_confirm_code -->
		<dt><label for="post_code">{L_CONFIRM_CODE}</label></dt>
		<dd>
			<input type="text" class="post" name="confirm_code" value="{CONFIRM_CODE}" size="5" id="post_code">
			<img id="confirm_code_img" src="confirm_code.png.php" alt="">
			<button type="button" onclick="document.getElementById('confirm_code_img').src = 'confirm_code.png.php?' + escape(new Date())">{L_REFRESH}</button>
		</dd>
		<!-- END switch_confirm_code -->
		<!-- BEGIN switch_username_select -->
		<dt><label for="post_username">{L_USERNAME}</label></dt>
		<dd>
			<input type="text" class="post" tabindex="1" name="username" size="25" maxlength="25" value="{USERNAME}" id="post_username">
		</dd>
		<!-- END switch_username_select -->
		<!-- BEGIN switch_privmsg -->
		<dt><label for="post_user_priv">{L_USERNAME}</label></dt>
		<dd>
			<input type="text"  class="post" name="username" maxlength="25" size="25" tabindex="1" value="{USERNAME}" id="post_user_priv">
			<button type="submit" name="usersubmit" value="{L_FIND_USERNAME}" class="liteoption" onClick="window.open('{U_SEARCH_USER}', '_phpbbsearch', 'HEIGHT=250,resizable=yes,WIDTH=400');return false;">{L_FIND_USERNAME}</button>
			<p>{USER_LASTVISIT}</p>
		</dd>
		<!-- END switch_privmsg -->
		<dt><label for="post_subject">{L_SUBJECT}</label></dt>
		<dd>{PREFIX} <input type="text" name="subject" size="60" maxlength="60" tabindex="2" class="post" value="{SUBJECT}" id="post_subject"></dd>
	<dt><label for="post_body">{L_MESSAGE_BODY}</label>
		<!--td colspan="{S_SMILIES_COLSPAN}" class="gensmall">--><p><b>{L_EMOTICONS}</b></p><!--</td>-->
		<!-- BEGIN smilies_row -->
		<p>
			<!-- BEGIN smilies_col -->
			<a href="javascript:emoticon(' {smilies_row.smilies_col.SMILEY_CODE} ')" onclick="if (editor.insertText(' {smilies_row.smilies_col.SMILEY_CODE} ')) return false"><img src="{smilies_row.smilies_col.SMILEY_IMG}"  alt="{smilies_row.smilies_col.SMILEY_DESC}" title="{smilies_row.smilies_col.SMILEY_DESC}"></a>
			<!-- END smilies_col -->
		</p>
		<!-- END smilies_row -->
		<!-- BEGIN switch_smilies_extra -->
		<p>
			<a href="{U_MORE_SMILIES}" onclick="window.open('{U_MORE_SMILIES}', '_phpbbsmilies', 'HEIGHT=250,resizable=yes,scrollbars=yes,WIDTH=300');return false;" target="_phpbbsmilies" class="nav">{L_MORE_SMILIES}</a>
		</p>
		<!-- END switch_smilies_extra -->
		<script>
			document.write("<a id=\"roll\" href=\"javascript:void(0)\" style=\"text-decoration: none; font-weight: bold; font-size: 30px\" onclick=\"if (document.post.message.rows < 30) { if (Editor.isSupported()) editor.getElement().style.height = '450px'; document.post.message.rows = 30; document.post.message.parentNode.width = '100%'; if (document.getElementById && document.getElementById('roll').innerHTML) setTimeout('document.getElementById(\\'roll\\').innerHTML = \\'&nbsp;&nbsp;&laquo;&nbsp;&nbsp;\\'', 1); } else { if (Editor.isSupported()) editor.getElement().style.height = ''; document.post.message.rows = 15;  document.post.message.parentNode.width = 685; if (document.getElementById && document.getElementById('roll').innerHTML) setTimeout('document.getElementById(\\'roll\\').innerHTML = \\'&nbsp;&nbsp;&raquo;&nbsp;&nbsp;\\'', 1); } return false\">&nbsp;&nbsp;&raquo;&nbsp;&nbsp;<"+"/a>");
		</script>
	</dt>
	<dd>
		<ul>
			<li><button type="button" accesskey="b" name="addbbcode0" onClick="if (!editor.insert('b')) bbstyle(0)" onMouseOver="helpline('b')">&nbsp;<span>B</span><span id="addbbcode1" >*</span>&nbsp;</button></li>
			<li><button type="button" accesskey="i" name="addbbcode2" onClick="if (!editor.insert('i')) bbstyle(2)" onMouseOver="helpline('i')">&nbsp;<span>I</span><span id="addbbcode3" >*</span>&nbsp;</button></li>
			<li><button type="button" accesskey="u" name="addbbcode4" onClick="if (!editor.insert('u')) bbstyle(4)" onMouseOver="helpline('u')">&nbsp;<span>U</span><span id="addbbcode5" >*</span>&nbsp;</button></li>
			<li><button type="button" accesskey="s" name="addbbcode1" onClick="if (!editor.insert('s')) bbstyle(18)" onMouseOver="helpline('st')">&nbsp;<span>S</span><span id="addbbcode19" >*</span>&nbsp;</button></li>
			<li><button type="button" name="addbbcode3" onClick="if (!editor.insert('sup')) bbstyle(20)" onMouseOver="helpline('sp')">&nbsp;A<span>sup</span><span id="addbbcode21" >*</span>&nbsp;</button></li>
			<li><button type="button" name="addbbcode5" onClick="if (!editor.insert('sub')) bbstyle(22)" onMouseOver="helpline('sb')">&nbsp;A<span>sub</span><span id="addbbcode23" >*</span>&nbsp;</button></li>
			<li><button type="button" accesskey="t" name="addbbcode28" onClick="if (!editor.insert('tt')) bbstyle(28)" onMouseOver="helpline('t')"><tt>TT</tt><span id="addbbcode29" >*</span></button></li>
			<li><button type="button" accesskey="q" name="addbbcode6" onClick="if (!editor.insert('quote')) bbstyle(6)" onMouseOver="helpline('q')">Quote<span id="addbbcode7" >*</span></button></li>
			<li><button type="button" accesskey="c" name="addbbcode8" onClick="if (!editor.insert('code')) bbstyle(8)" onMouseOver="helpline('c')">Code<span id="addbbcode9" >*</span></button><button type="button" accesskey="r" name="addbbcode25" onClick="if (!editor.insert('rem')) bbstyle(24)">//<span id="addbbcode25" >*</span></button></li>
			<li><button type="button" accesskey="l" name="addbbcode10" onClick="if (!editor.insert('ul')) bbstyle(10)" onMouseOver="helpline('l')">List<span id="addbbcode11" >*</span></button><button type="button" accesskey="o" name="addbbcode12" onClick="if (!editor.insert('ol')) bbstyle(12)" onMouseOver="helpline('o')">List=<span id="addbbcode13" >*</span></button><button type="button" accesskey="8" onClick="if (!editor.isActive()) emoticon('[*]')">*</button></li>
			<li><button type="button" accesskey="p" name="addbbcode14" onClick="if (!editor.insert('img')) bbstyle(14)" onMouseOver="helpline('p')">Img<span id="addbbcode15" >*</span></button></li>
			<li><button type="button" accesskey="w" name="addbbcode16" onClick="if (!editor.insert('a')) bbstyle(16)" onMouseOver="helpline('w')">URL<span id="addbbcode17" >*</span></button></li>
			<li><button type="button" accesskey="m" name="addbbcode26" onClick="if (!editor.insert('email')) bbstyle(26)" onMouseOver="helpline('m')">Email<span id="addbbcode27" >*</span></button></li>
		</ul>
	</ul>
	<ul>
		<li>
			<label>{L_FONT_COLOR}:
			<select name="addbbcode24" onChange="if (!editor.insert('color', this.value)) bbfontstyle('[color=' + this.options[this.selectedIndex].value + ']', '[/color]'); this.selectedIndex = 0" onMouseOver="helpline('s')">
				<option  value="{T_BODY_TEXT}" class="genmed">{L_COLOR_DEFAULT}</option>
				<option  value="darkred" class="genmed">{L_COLOR_DARK_RED}</option>
				<option  value="red" class="genmed">{L_COLOR_RED}</option>
				<option  value="orange" class="genmed">{L_COLOR_ORANGE}</option>
				<option  value="brown" class="genmed">{L_COLOR_BROWN}</option>
				<option  value="yellow" class="genmed">{L_COLOR_YELLOW}</option>
				<option  value="green" class="genmed">{L_COLOR_GREEN}</option>
				<option  value="olive" class="genmed">{L_COLOR_OLIVE}</option>
				<option  value="cyan" class="genmed">{L_COLOR_CYAN}</option>
				<option  value="blue" class="genmed">{L_COLOR_BLUE}</option>
				<option  value="darkblue" class="genmed">{L_COLOR_DARK_BLUE}</option>
				<option  value="indigo" class="genmed">{L_COLOR_INDIGO}</option>
				<option  value="violet" class="genmed">{L_COLOR_VIOLET}</option>
				<option  value="white" class="genmed">{L_COLOR_WHITE}</option>
				<option  value="black" class="genmed">{L_COLOR_BLACK}</option>
			</select>
			</label>
		</li>
		<li>
			<label>{L_FONT_SIZE}:
			<select name="addbbcode26" onChange="if (this.selectedIndex) if (!editor.insert('size', this.value)) bbfontstyle('[size=' + this.options[this.selectedIndex].value + ']', '[/size]'); this.selectedIndex = 0" onMouseOver="helpline('f')">
				<option value="0" class="genmed">{L_FONT_SIZE}</option>
				<option value="7" class="genmed">{L_FONT_TINY}</option>
				<option value="9" class="genmed">{L_FONT_SMALL}</option>
				<option value="12" selected class="genmed">{L_FONT_NORMAL}</option>
				<option value="18" class="genmed">{L_FONT_LARGE}</option>
				<option  value="24" class="genmed">{L_FONT_HUGE}</option>
			</select>
		</li>
		<li><a id="closeTags" href="javascript:bbstyle(-1)" onClick="if (editor.isActive()) return false" onMouseOver="helpline('a')">{L_BBCODE_CLOSE_TAGS}</a></li>
	</ul>
	<ul>
		<li>
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
	</select>
	</li>
	<li><input type="checkbox" id="label__short_code" name="short_code"> <label for="label__short_code">{L_SHORT_CODE}</label></li>
	</ul>
	<p><input type="text" name="helpbox" size="45" maxlength="100"  class="helpline" value="{L_STYLES_TIP}" readonly="readonly"></p>
	<textarea name="message" rows="15" cols="35"  tabindex="3" class="post" onselect="storeCaret(this);" onclick="storeCaret(this);" onkeyup="storeCaret(this);" id="post_body">{MESSAGE}</textarea>
	</dd>
	<dt><b>{L_OPTIONS}</b>
		<ul>
			<li>{HTML_STATUS}</li>
			<li>{BBCODE_STATUS}</li>
			<li>{SMILIES_STATUS}</li>
		</ul>
	</dt>
	<dd>
		<ul>
		<!-- BEGIN switch_html_checkbox -->
			<li><label><input type="checkbox" name="disable_html" {S_HTML_CHECKED}> {L_DISABLE_HTML}</label></li>
		<!-- END switch_html_checkbox -->
		<!-- BEGIN switch_bbcode_checkbox -->
			<li><label><input type="checkbox" name="disable_bbcode" {S_BBCODE_CHECKED}> {L_DISABLE_BBCODE}</label></li>
		<!-- END switch_bbcode_checkbox -->
		<!-- BEGIN switch_smilies_checkbox -->
			<li><label><input type="checkbox" name="disable_smilies" {S_SMILIES_CHECKED}> {L_DISABLE_SMILIES}</label></li>
		<!-- END switch_smilies_checkbox -->
		<!-- BEGIN switch_signature_checkbox -->
			<li><label><input type="checkbox" name="attach_sig" {S_SIGNATURE_CHECKED}> {L_ATTACH_SIGNATURE}</label></li>
		<!-- END switch_signature_checkbox -->
		<!-- BEGIN switch_notify_checkbox -->
			<li><input type="checkbox" name="notify" {S_NOTIFY_CHECKED}> {L_NOTIFY_ON_REPLY}</label></li>
		<!-- END switch_notify_checkbox -->
		<!-- BEGIN switch_delete_checkbox -->
			<li><label><input type="checkbox" name="delete"> {L_DELETE_POST}</label></li>
		<!-- END switch_delete_checkbox -->
		<!-- BEGIN switch_type_toggle -->
			<li>{S_TYPE_TOGGLE}</li>
		<!-- END switch_type_toggle -->
	</ul>
	</dd>
</dl>
<fieldset>
		{POLLBOX}

<div>
	{S_HIDDEN_FORM_FIELDS}
	<button type="submit" tabindex="5" name="preview" class="mainoption" value="{L_PREVIEW}">{L_PREVIEW}</button>
	<button type="submit" name="preview" class="mainoption" value="1">{L_SPELLING}</button>
	<button type="submit" tabindex="6" name="post" class="mainoption" value="{L_SUBMIT}">{L_SUBMIT}</button>
</div>
</fieldset>
</form>
{TOPIC_REVIEW_BOX}
<nav class="breadcrumb">
	<ul>
		<li><a href="{U_INDEX}">{L_INDEX}</a></li>
		<!-- BEGIN switch_not_privmsg -->
		<li><a href="{U_VIEW_FORUM}">{FORUM_NAME}</a></li>
	<!-- END switch_not_privmsg -->
	</ul>
</nav>
<!-- BEGIN switch_not_privmsg -->
{JUMPBOX}
<!-- END switch_not_privmsg -->
<script>
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
	switchEditor.onmouseover = helpline('wysiwyg');
	document.getElementById('closeTags').parentNode.insertBefore(switchEditor, document.getElementById('closeTags'));
	switchEditor.parentNode.insertBefore(document.createTextNode(' ['), switchEditor);
	document.getElementById('closeTags').parentNode.insertBefore(document.createTextNode('] '), document.getElementById('closeTags'));
}
</script>
</div>