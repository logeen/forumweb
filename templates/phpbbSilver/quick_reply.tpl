<!-- BEGIN quick_reply --><div class="quick_reply-tpl">
<form action="{quick_reply.POST_ACTION}" method="post" id="post" name="post" onsubmit="if (this.confirm_code &amp;&amp; this.confirm_code.value == '') { window.alert('{L_EMPTY_CONFIRM_CODE}'); return false } return checkForm(this)">
<fieldset>
	<legend>{L_QUICK_REPLY}</legend>
	<input type="hidden" name="sid" value="{quick_reply.SID}">
	<input type="hidden" name="screen" value="">
	<input type="hidden" name="client" value="">
	<dl>
		<!-- BEGIN user_logged_out -->
		<dt><label for="quick_code">{L_CONFIRM_CODE}</label></dt>
		<dd><input type="text" class="post" name="confirm_code" value="{CONFIRM_CODE}" size="5" id="quick_code">
			<img id="confirm_code_img" src="confirm_code.png.php" alt="">
			<button type="button" id="confirm_refresher">{L_REFRESH}</button>
		</dd>
		<dt><label for="quick_username">{L_USERNAME}</label></dt>
		<dd><input type="text" class="post" tabindex="1" name="username" size="25" maxlength="25" id="quick_username"></dd>
		<!-- END user_logged_out -->
		<dt><label for="quick_subject">{L_SUBJECT}</label></dt>
		<dd><input type="text" name="subject" size="60" maxlength="60" class="post"  value="{quick_reply.MESSAGE_SUBJECT}" id="quick_subject"></dd>
		<dt>
			<p>
			<!-- BEGIN smilies -->
			<img  src="{quick_reply.smilies.URL}" class="emoticon" data-emoticon="{quick_reply.smilies.CODE}" title="{quick_reply.smilies.DESC}">
			<!-- END smilies -->
			</p>
			<p><a href="{U_MORE_SMILIES}" class="popup" data-target="_phpbbsmilies" class="nav popup">{L_MORE_SMILIES}</a></p>
		<dd>
				<textarea name="message" rows="15" cols="80" tabindex="3" class="post"></textarea>
				<div>
					<ul class="bbcode">
						<li><button type="button" accesskey="b" data-tag="b">B</button></li>
						<li><button type="button" accesskey="i" data-tag="i">I</button></li>
						<li><button type="button" accesskey="u" data-tag="u">U</button></li>
						<li><button type="button" accesskey="s" data-tag="s">S</button></li>
						<li><button type="button" data-tag="sup">A<sup>sup</sup></button></li>
						<li><button type="button" data-tag="sub">A<sub>sub</sub></button></li>
						<li><button type="button" accesskey="t" data-tag="tt"><tt>TT</tt></button></li>
						<li><button type="button" accesskey="q" data-tag="quote">Quote</button></li>
						<li><button type="button" accesskey="c" data-tag="code">Code</button><button type="button" accesskey="r" data-tag="rem">//</button></li>
						<li><button type="button" accesskey="l" data-tag="ul">List</button><button type="button" accesskey="o" data-tag="ol">List=</button><button type="button" accesskey="8" data-frag="[*]">*</button></li>
						<li><button type="button" accesskey="p" data-tag="img">Img</button></li>
						<li><button type="button" accesskey="w" data-tag="a" data-help="w">URL</button></li>
						<li><button type="button" accesskey="m" data-tag="email">Email</button></li>
					</ul>
					<p><button type="button" class="quote">{L_QUOTE_SELECTED}</button></p>
					<p>
						<select id="colorChoose">
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
					</p>
					<p>
						<select id="fontChoose">
							<option value="0" class="genmed">{L_FONT_SIZE}</option>
							<option value="7" class="genmed">{L_FONT_TINY}</option>
							<option value="9" class="genmed">{L_FONT_SMALL}</option>
							<option value="12" selected class="genmed">{L_FONT_NORMAL}</option>
							<option value="18" class="genmed">{L_FONT_LARGE}</option>
							<option value="24" class="genmed">{L_FONT_HUGE}</option>
						</select>
					</p>
					<p>
						<select id="codeChoose">
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
								</select><br /><input type="checkbox" id="label__short_code" name="short_code" /> <label for="label__short_code">{L_SHORT_CODE}</label>
				</p>
				<p>
					<!--<script>
						if (document.post.message.rows) document.write("<a id=\"roll\" href=\"javascript:void(0)\" style=\"text-decoration: none; font-weight: bold\" onclick=\"if (document.post.message.rows < 30) { if (Editor.isSupported()) editor.getElement().style.height = '450px'; document.post.message.rows = 30; document.post.message.parentNode.width = '100%'; if (document.getElementById && document.getElementById('roll').innerHTML) setTimeout('document.getElementById(\\'roll\\').innerHTML = \\'&nbsp;&nbsp;&laquo;&nbsp;&nbsp;\\'', 1); } else { if (Editor.isSupported()) editor.getElement().style.height = '240px'; document.post.message.rows = 15; document.post.message.parentNode.width = 450; if (document.getElementById && document.getElementById('roll').innerHTML) setTimeout('document.getElementById(\\'roll\\').innerHTML = \\'&nbsp;&nbsp;&raquo;&nbsp;&nbsp;\\'', 1); } return false\">&nbsp;&nbsp;&raquo;&nbsp;&nbsp;<"+"/a>");
					</script>
					<a id="closeTags" href="javascript:bbstyle(-1)" onclick="if (editor.isActive()) return false">{L_BBCODE_CLOSE_TAGS}</a>-->
				</p>
			</dd>
			<dt>{L_HIDE_PANEL_IN_PROFILE}</dt>
			<dd>
				<ul>
					<li><label><input type="checkbox" name="quick_quote">{L_QUOTE_LAST_MESSAGE}</label></li>
					<!-- BEGIN user_logged_in -->
					<li><label><input type="checkbox" name="attach_sig" {quick_reply.user_logged_in.ATTACH_SIGNATURE}> {L_ATTACH_SIGNATURE}</label></li>
					<li>{quick_reply.user_logged_in.NOTIFY_ON_REPLY} {L_NOTIFY_ON_REPLY}</li>
					<!-- END user_logged_in -->
				</ul>
			</dd>
		</dl>
		<div>
			<input type="hidden" name="mode" value="reply">
			<input type="hidden" name="t" value="{quick_reply.TOPIC_ID}">
			<button type="submit" name="preview" class="liteoption" value="{L_PREVIEW}">{L_PREVIEW}</button>
			<button type="submit" name="preview" class="liteoption" value="{L_SPELLING}">{L_SPELLING}</button>
			<button type="submit" name="post" class="mainoption" value="{L_SUBMIT}">{L_SUBMIT}</button>
		</div>
	</fieldset>
</form>
<!--<script >
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
}</script>-->
<script>
var errors={
	confirm:'{L_EMPTY_CONFIRM_CODE}'
	,empty : '{L_EMPTY_MESSAGE}'
	,last : "{quick_reply.LAST_MESSAGE}"
	,lastsubject : "{quick_reply.LAST_MESSAGE_SUBJECT}"
	,noselected : '{L_NO_TEXT_SELECTED}'
};
</script>
<script src="md5.js"></script>
<!--<script src="{QUICK_REPLY_JS}"></script>-->
<script src="templates/phpbbSilver/js/editor.js"></script>
</div>
<!-- END quick_reply -->