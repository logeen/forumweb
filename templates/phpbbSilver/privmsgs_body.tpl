<div class="privmsgs_body-tpl">
<script>
	function select_switch(status)
	{
		for (i = 0; i < document.privmsg_list.length; i++)
		{
			document.privmsg_list.elements[i].checked = status;
		}
	}
</script>

<section>

	<h1>{INBOX}</h1>

	<nav class="breadcrumb">
		<ul>
			<li><a href="{U_INDEX}">{L_INDEX}</a></li>
		</ul>
	</nav>

	<dl>
		<dt>{INBOX_IMG}</dt>
		<dd>{INBOX}</dd>
		<dt>{SENTBOX_IMG}</dt>
		<dd>{SENTBOX}</dd>
		<dt>{OUTBOX_IMG}</dt>
		<dd>{OUTBOX}</dd>
		<dt>{SAVEBOX_IMG}</dt>
		<dd>{SAVEBOX}</dd>
	</dl>

	<form method="post" name="privmsg_list" action="{S_PRIVMSGS_ACTION}">

		{POST_PM_IMG}

		<fieldset>
			<legend><label for="msgdays">{L_DISPLAY_MESSAGES}</label></legend>
			<select name="msgdays" id="msgdays">{S_SELECT_MSG_DAYS}</select>
			<input type="submit" value="{L_GO}" name="submit_msgdays" />
		</fieldset>

		<!-- BEGIN listrow -->
			<article>
				<header>
					<h2><a href="{listrow.U_READ}">{listrow.SUBJECT}</a></h2>
					<div class="folder">
						<img src="{listrow.PRIVMSG_FOLDER_IMG}" alt="{listrow.L_PRIVMSG_FOLDER_ALT}" title="{listrow.L_PRIVMSG_FOLDER_ALT}" /></a>
					</div>
					<div class="mark"><input type="checkbox" name="mark[]2" value="{listrow.S_MARK_ID}" /></div>
				</header>
				<dl>
					<dt>{L_FROM_OR_TO}</dt>
					<dd><a href="{listrow.U_FROM_USER_PROFILE}" class="name">{listrow.FROM}</a></dd>

					<dt>{L_DATE}</dt>
					<dd><time datetime="{listrow.DATE_DATETIME}">{listrow.DATE}</time></dd>
				</dl>
			</article>
		<!-- END listrow -->

		<!-- BEGIN switch_no_messages -->
			{L_NO_MESSAGES}
		<!-- END switch_no_messages -->

		<div class="actions">
			{S_HIDDEN_FIELDS}
			<div>
				<!-- BEGIN switch_box_size_notice --> {BOX_SIZE_STATUS} <!-- END switch_box_size_notice -->
				<a href="javascript:select_switch(true);">{L_MARK_ALL}</a> ::
				<a href="javascript:select_switch(false);">{L_UNMARK_ALL}</a>
			</div>
			<input type="submit" name="save" value="{L_SAVE_MARKED}" class="mainoption" />
			<input type="submit" name="delete" value="{L_DELETE_MARKED}" />
			<input type="submit" name="deleteall" value="{L_DELETE_ALL}" />
		</div>

		{POST_PM_IMG}

	</form>

	<footer>{PAGINATION}</footer>
</section>

<nav class="breadcrumb">
	<ul>
		<li><a href="{U_INDEX}">{L_INDEX}</a></li>
	</ul>
</nav>

{JUMPBOX}

</div>