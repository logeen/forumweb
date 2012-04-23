<div class="privmsgs_read_body-tpl">

<section>
	<h1>{BOX_NAME} - {L_MESSAGE}</h1>

	<nav class="breadcrumb">
		<ul>
			<li><a href="{U_INDEX}">{L_INDEX}</a></li>
		</ul>
	</nav>

	<dl class="legend">
		<dt>{INBOX_IMG}</dt>
		<dd>{INBOX}</dd>
		<dt>{SENTBOX_IMG}</dt>
		<dd>{SENTBOX}</dd>
		<dt>{OUTBOX_IMG}</dt>
		<dd>{OUTBOX}</dd>
		<dt>{SAVEBOX_IMG}</dt>
		<dd>{SAVEBOX}</dd>
	</dl>

	{REPLY_PM_IMG}

	<article>
		<header>
			<h2>{POST_SUBJECT}</h2>
			<dl>
				<dt>{L_FROM}</dt>
				<dd>{MESSAGE_FROM}</dd>
				<dt>{L_TO}</dt>
				<dd>{MESSAGE_TO}</dd>
				<dt>{L_POSTED}</dt>
				<dd><time datetime="{POST_DATE_DATETIME}">{POST_DATE}</time></dd>
			</dl>
			<div class="actions">
				{QUICK_QUOTE_IMG} {QUOTE_PM_IMG} {EDIT_PM_IMG}
			</div>
		</header>

		{MESSAGE}

		<footer>
			<form method="post" action="{S_PRIVMSGS_ACTION}">
				{S_HIDDEN_FIELDS}
				<input type="submit" name="save" value="{L_SAVE_MSG}" />
				<input type="submit" name="delete" value="{L_DELETE_MSG}" />
			</form>
			<div class="userinfo">
				{PROFILE_IMG} {PM_IMG} {EMAIL_IMG} {WWW_IMG} {AIM_IMG} {YIM_IMG} {MSN_IMG} {ICQ_IMG}
			</div>
		</footer>
	</article>

	{QUICKREPLY_OUTPUT}

	<script>
	var foldbox_lang = {
		'Unfold': '{L_UNFOLD}',
		'Fold': '{L_FOLD}'
	};
	</script>
	<script type="text/javascript" src="{FOLDBOX_JS}"></script>

	<nav class="breadcrumb">
		<ul>
			<li><a href="{U_INDEX}">{L_INDEX}</a></li>
		</ul>
	</nav>

	{JUMPBOX}

</section>


</div>