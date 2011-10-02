<div class="viewtopic_body-tpl">
<section class="topic">
	<header>
		<h1><a class="maintitle" href="{U_VIEW_TOPIC}">{TOPIC_TITLE}</a></h1>
		<p>{MODERATOR}</p>{S_TOPIC_ADMIN}
		{PAGINATION}
	</header>
<ul>
	<li><a href="{U_VIEW_NEWER_TOPIC}">{L_VIEW_NEXT_TOPIC}</a></li>
	<li><a href="{U_VIEW_OLDER_TOPIC}">{L_VIEW_PREVIOUS_TOPIC}</a></li>
	<li><b>{S_WATCH_TOPIC}</b></li>
</ul>
<ul>
	<li><a href="{U_POST_REPLY_TOPIC}"><img src="{REPLY_IMG}"  alt="{L_POST_REPLY_TOPIC}" title="{L_POST_REPLY_TOPIC}"></a></li>
	<!-- BEGIN switch_auth_public -->
	<li><iframe src="http://www.facebook.com/plugins/like.php?href=http%3A%2F%2Fwww.forumweb.pl%2Fviewtopic.php%3Ft={TOPIC_ID}&amp;layout=button_count&amp;show_faces=false&amp;width=110&amp;action=recommend&amp;colorscheme=light&amp;height=21&amp;ref=recommend" scrolling="no" frame  allowTransparency="true"></iframe></li> 
	<!-- END switch_auth_public -->
	<li>
		<nav class="breadcrumb">
			<ul>
				<li><a href="{U_INDEX}">{L_INDEX}</a></li> 
				<li><a href="{U_VIEW_FORUM}" class="nav">{FORUM_NAME}</a></li>
			</ul>
		</nav>
	</li>
</ul>
<section> <!--<div>-->
	{POLL_DISPLAY} 
<!--<th class="thleft"   >{L_AUTHOR}</th>
<th class="thright"   >{L_MESSAGE}</th>-->
		<!-- BEGIN postrow -->
		<!--Mikroformaty?-->
		<article id="post{postrow.U_POST_ID}_0"> <!--<div>-->
			<header>
				<strong title="{postrow.L_INSERT_AUTHOR_QUOTE}" class="author">{postrow.POSTER_NAME}</strong>
				<ul class="postdetails">
					<li>{postrow.POSTER_RANK}</li>
					<li>{postrow.RANK_IMAGE}</li>
					<li>{postrow.POSTER_AVATAR}</li>
					<li>{postrow.POSTER_GENDER}</li>
					<li>{postrow.POSTER_AGE}</li>
					<li>{postrow.POSTER_JOINED}</li>
					<li>{postrow.POSTER_POSTS}</li>
					<li>{postrow.POSTER_HELPS}</li>
					<li>{postrow.POSTER_FROM}</li>
				</ul>
				<p>{postrow.POSTER_STATUS}</p>
				<p>
					<a href="{postrow.U_MINI_POST}"><img src="{postrow.MINI_POST_IMG}"   alt="{postrow.L_MINI_POST_ALT}" title="{postrow.L_MINI_POST_ALT}"  /></a> {L_POSTED}: <time datetime="{postrow.POST_DATE}">{postrow.POST_DATE}</time></p>
					<h2>{postrow.POST_SUBJECT}</h2>
					<p>{postrow.AHM_IMG} {postrow.QUICK_QUOTE_IMG} {postrow.QUOTE_IMG} {postrow.SPELLING_IMG} {postrow.EDIT_IMG} {postrow.DELETE_IMG} {postrow.SPLIT_IMG} {postrow.REPORT_IMG} {postrow.HISTORY_IMG} {postrow.IP_IMG} <a href="#top"><img src="templates/phpbbSilver/images/icon_up.gif" alt="^"></a></p>
			</header>
			<section class="postbody" id="{postrow.U_POST_ID}"> 
				{postrow.MESSAGE}
			</section>
			<footer>
				<p class="signature">{postrow.SIGNATURE} {postrow.EDITED_MESSAGE} {postrow.HELPS}</p>
				<ul id="post{postrow.U_POST_ID}_1">
					<li>{postrow.PROFILE_IMG}</li>
					<li>{postrow.PM_IMG}</li>
					<li>{postrow.EMAIL_IMG}</li>
					<li>{postrow.WWW_IMG}</li>
					<li>{postrow.AIM_IMG}</li>
					<li>{postrow.YIM_IMG}</li>
					<li>{postrow.MSN_IMG}</li>
				</ul>
				<ul>
					<li>{postrow.GG_IMG}{postrow.GG_STATUS_IMG}</li>
					<li>{postrow.TLEN_IMG}{postrow.TLEN_STATUS_IMG}</li>
					<li>{postrow.JABBER_IMG}{postrow.JABBER_STATUS_IMG}</li>
					<li>{postrow.SKYPE_IMG}{postrow.SKYPE_STATUS_IMG}</li>
					<li>{postrow.ICQ_IMG}{postrow.ICQ_STATUS_IMG}</li>
					<li>{postrow.USER_AGENT}</li>
				</ul>
			</footer>
	</article>
	<!-- BEGIN switch_first_post -->
	<!-- END switch_first_post -->
	<!-- END postrow -->
	</section>
	<form method="post" action="{S_POST_DAYS_ACTION}" class="inline">
		<fieldset>
			<label>{L_DISPLAY_POSTS}: {S_SELECT_POST_DAYS}</label> {S_SELECT_POST_ORDER} 
			<button type="submit" value="1" name="submit">{L_GO}</button>
		</fieldset>
</form>
<div>
	<p><a href="{U_POST_REPLY_TOPIC}"><img src="{REPLY_IMG}"  alt="{L_POST_REPLY_TOPIC}" title="{L_POST_REPLY_TOPIC}"></a></p>
	<nav class="breadcrumb">
		<ul>
			<li><a href="{U_INDEX}">{L_INDEX}</a></li>
			<li><a href="{U_VIEW_FORUM}">{FORUM_NAME}</a></li>
		</ul>
	</nav>
</div>
<p>{PAGINATION}</p>

{QUICKREPLY_OUTPUT}

<p>{PAGINATION}</p>

<p>{JUMPBOX}</p>

{S_TOPIC_ADMIN}
<ul>
	<li><b>{S_WATCH_TOPIC}</b></li>
	<li><a href="{U_VIEW_NEWER_TOPIC}">{L_VIEW_NEXT_TOPIC}</a></li>
	<li><a href="{U_VIEW_OLDER_TOPIC}">{L_VIEW_PREVIOUS_TOPIC}</a></li>
	<li>{S_AUTH_LIST}</li>
</ul>

<script>
var foldbox_lang = {
	'Unfold': '{L_UNFOLD}',
	'Fold': '{L_FOLD}'
};
</script>
<script src="{FOLDBOX_JS}"></script>
</section>
</div>