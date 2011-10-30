<div class="viewtopic_body-tpl">
	<section>
		<header>
			<h1><a href="{U_VIEW_TOPIC}">{TOPIC_TITLE}</a></h1>
			<p>{MODERATOR}</p>
			{S_TOPIC_ADMIN}
			{PAGINATION}
		</header>

		<nav>
			<ul>
				<li><a href="{U_VIEW_NEWER_TOPIC}">{L_VIEW_NEXT_TOPIC}</a></li>
				<li><a href="{U_VIEW_OLDER_TOPIC}">{L_VIEW_PREVIOUS_TOPIC}</a></li>
			</ul>
		</nav>

		<ul class="actions">
			<li>{S_WATCH_TOPIC}</li>
		</ul>

		<p class="post_reply_topic"><a href="{U_POST_REPLY_TOPIC}" title="{L_POST_REPLY_TOPIC}">{L_POST_REPLY_TOPIC}</a></p>

		<!-- BEGIN switch_auth_public -->
		<iframe src="http://www.facebook.com/plugins/like.php?href=http%3A%2F%2Fwww.forumweb.pl%2Fviewtopic.php%3Ft={TOPIC_ID}&amp;layout=button_count&amp;show_faces=false&amp;width=110&amp;action=recommend&amp;colorscheme=light&amp;height=21&amp;ref=recommend" scrolling="no" frameborder="0" width="110" height="21" allowTransparency="true"></iframe> 
		<!-- END switch_auth_public -->

		<nav class="breadcrumb">
			<ul>
				<li><a href="{U_INDEX}">{L_INDEX}</a></li> 
				<li><a href="{U_VIEW_FORUM}" class="nav">{FORUM_NAME}</a></li>
			</ul>
		</nav>

		{POLL_DISPLAY} 

		<!-- BEGIN postrow -->
		<article id="{postrow.U_POST_ID}" class="{postrow.ROW_CLASS}">
			<header>
				<h2><span>{L_MESSAGE}</span> <a href="{postrow.U_MINI_POST}"><img src="{postrow.MINI_POST_IMG}" width="12" height="9" alt="{postrow.L_MINI_POST_ALT}" title="{postrow.L_MINI_POST_ALT}"></a> {postrow.POST_SUBJECT}</h2>
				<!-- BEGIN switch_first_post -->
				<p class="view_first_post"><a href="#{postrow.U_POST_ID}">{L_VIEW_FIRST_POST}</a></p>
				<!-- END switch_first_post -->
				<dl>
					<dt>{L_AUTHOR}</dt>
					<dd>
						<ul>
							<li class="insert_author_quote" title="{postrow.L_INSERT_AUTHOR_QUOTE}">{postrow.POSTER_NAME}</li>
							<li>{postrow.POSTER_RANK}</li>
							<li>{postrow.RANK_IMAGE}</li>
							<li>{postrow.POSTER_AVATAR}</li>
							<li>{postrow.POSTER_GENDER}</li>
							<li>{postrow.POSTER_AGE}</li>
							<li>{postrow.POSTER_JOINED}</li>
							<li>{postrow.POSTER_POSTS}</li>
							<li>{postrow.POSTER_HELPS}</li>
							<li>{postrow.POSTER_FROM}</li>
							<li>{postrow.POSTER_STATUS}</li>
						</ul>
					</dd>
					<dt>{L_POSTED}</dt>
					<dd><time datetime="{postrow.POST_DATE}">{postrow.POST_DATE}</time></dd>
				</dl>
				<ul class="post_actions">
					<li class="action_ahm">{postrow.AHM}</li>
					<li class="action_quick_quote"><a href="#post" title="{L_QUOTE_SELECTED}">{L_QUOTE_SELECTED}</a></li>
					<li class="action_quote">{postrow.QUOTE}</li>
					<li class="action_spelling">{postrow.SPELLING}</li>
					<li class="action_edit">{postrow.EDIT}</li>
					<li class="action_delete">{postrow.DELETE}</li>
					<li class="action_split">{postrow.SPLIT}</li>
					<li class="action_report">{postrow.REPORT}</li>
					<li class="action_history">{postrow.HISTORY}</li>
					<li class="action_ip">{postrow.IP}</li>
					<li class="action_top"><a href="#top" title="{L_TOP}">{L_TOP}</a></li>
				</ul>
			</header>
			<section class="postbody">{postrow.MESSAGE}</section>
			<footer>
				<div class="signature">
					{postrow.SIGNATURE}
					{postrow.EDITED_MESSAGE}
					{postrow.HELPS}
				</div>
				<ul class="profile">
					<li class="profile_view">{postrow.PROFILE}</li>
					<li class="profile_pm">{postrow.PM}</li>
					<li class="profile_email">{postrow.EMAIL}</li>
					<li class="profile_www">{postrow.WWW}</li>
					<li class="profile_aim">{postrow.AIM}</li>
					<li class="profile_yim">{postrow.YIM}</li>
					<li class="profile_msn">{postrow.MSN}</li>
					<li class="profile_gg">{postrow.GG}{postrow.GG_STATUS_IMG}</li>
					<li class="profile_tlen">{postrow.TLEN}{postrow.TLEN_STATUS_IMG}</li>
					<li class="profile_jabber">{postrow.JABBER}{postrow.JABBER_STATUS_IMG}</li>
					<li class="profile_skype">{postrow.SKYPE}{postrow.SKYPE_STATUS_IMG}</li>
					<li class="profile_icq">{postrow.ICQ}{postrow.ICQ_STATUS_IMG}</li>
				</ul>
				{postrow.USER_AGENT}
			</footer>
		</article>
		<!-- END postrow -->
	
		<form method="post" action="{S_POST_DAYS_ACTION}">
			<fieldset>
				<label>{L_DISPLAY_POSTS}: {S_SELECT_POST_DAYS}</label> {S_SELECT_POST_ORDER} 
				<button type="submit" value="{L_GO}" name="submit">{L_GO}</button>
			</fieldset>
		</form>

		<p class="post_reply_topic"><a href="{U_POST_REPLY_TOPIC}" title="{L_POST_REPLY_TOPIC}">{L_POST_REPLY_TOPIC}</a></p>

		<nav class="breadcrumb">
			<ul>
				<li><a href="{U_INDEX}">{L_INDEX}</a></li>
				<li><a href="{U_VIEW_FORUM}">{FORUM_NAME}</a></li>
			</ul>
		</nav>

		<footer>
			{PAGINATION}
		</footer>
	</section>

	{QUICKREPLY_OUTPUT}

	<!-- BEGIN switch_related_topics -->
	<section class="relatd_topics">
		<h1>{L_RELATED_TOPICS}</h1>
		<ul>
	<!-- END switch_related_topics -->
			<!-- BEGIN relatedrow -->
			<li class="{relatedrow.ROW_CLASS}">{relatedrow.NEWEST_POST_IMG} <a href="{relatedrow.U_VIEW_TOPIC}" title="{relatedrow.FORUM_NAME}">{relatedrow.TOPIC_TITLE}</a></li>
			<!-- END relatedrow -->
	<!-- BEGIN switch_related_topics -->
		</ul>
		<dl>
			<dt>{L_TAGS}:</dt>
			<dd>
	<!-- END switch_related_topics -->
		<!-- BEGIN tagrow -->
		<a href="{tagrow.U_VIEW_TAG}" title="{tagrow.TAG_COUNT}">{tagrow.TAG_NAME}</a>{tagrow.SEPARATOR}
		<!-- END tagrow -->
	<!-- BEGIN switch_related_topics -->
			</dd>
		</dl>
	</section>
	<!-- END switch_related_topics -->

	{PAGINATION}
	{JUMPBOX}
	{S_TOPIC_ADMIN}

	<ul class="actions">
		<li>{S_WATCH_TOPIC}</li>
	</ul>

	<nav>
		<ul>
			<li><a href="{U_VIEW_NEWER_TOPIC}">{L_VIEW_NEXT_TOPIC}</a></li>
			<li><a href="{U_VIEW_OLDER_TOPIC}">{L_VIEW_PREVIOUS_TOPIC}</a></li>
		</ul>
	</nav>

	<p class="auth_list">{S_AUTH_LIST}</p>

	<script>
	var foldbox_lang = {
		'Unfold': '{L_UNFOLD}',
		'Fold': '{L_FOLD}'
	};
	</script>
	<script src="{FOLDBOX_JS}"></script>
</div>