<div class="index_body-tpl">
	<ul>
		<!-- BEGIN switch_user_logged_in -->
		<li>{LAST_VISIT_DATE}</li>
		<!-- END switch_user_logged_in -->
		<li>
			<div id="current_time"></div>
			<script>
			(function updateCurrentTime()
			{
				var currentTime = new Date(new Date() - (-new Date().getTimezoneOffset() * 60000 - {TIME_ZONE} * 3600000));
				document.getElementById('current_time').innerHTML = '{L_CURRENT_TIME}'.replace(/%s/, (currentTime.getDate() < 10 ? '0' : '') + currentTime.getDate() + '.' + (currentTime.getMonth() < 9 ? '0' : '') + (currentTime.getMonth() + 1) + '.' + currentTime.getFullYear() + ' ' + (currentTime.getHours() < 10 ? '0' : '') + currentTime.getHours() + ':' + (currentTime.getMinutes() < 10 ? '0' : '') + currentTime.getMinutes() + '<br />');
				window.setTimeout(updateCurrentTime, 1000);
			})();
			</script>
		</li>					
	</ul>

	<nav class="breadcrumb">
		<ul>
			<li><a href="{U_INDEX}">{L_INDEX}</a></li>
		</ul>
	</nav>

	<ul class="actions">
		<!-- BEGIN switch_user_logged_in -->
		<li><a href="{U_SEARCH_NEW}">{L_SEARCH_NEW}</a></li>
		<li><a href="{U_SEARCH_UNREAD}">{L_SEARCH_UNREAD}</a></li>
		<li><a href="{U_SEARCH_SELF}">{L_SEARCH_SELF}</a></li>
		<!-- END switch_user_logged_in -->
		<li><a href="{U_SEARCH_UNANSWERED}">{L_SEARCH_UNANSWERED}</a></li>
		<!-- BEGIN switch_user_logged_in -->
		<li><a href="{U_MARK_READ}"><b>{L_MARK_FORUMS_READ}</b></a></li>
		<li><a href="#new1">{L_SKIP_TO_NEW}</a></li>
		<!-- END switch_user_logged_in -->
	</ul>

	<div class="forumline">
		<!-- BEGIN catrow -->
		<section class="category">
			<h1><a href="{catrow.U_VIEWCAT}">{catrow.CAT_DESC}</a></h1>
			<!-- BEGIN forumrow -->
			<article class="forum" {catrow.forumrow.ROW_ID}>
				<header>
					<h2><span>{L_FORUM}</span> <a href="{catrow.forumrow.U_VIEWFORUM}" class="forumlink">{catrow.forumrow.FORUM_NAME}</a></h2>
					<div class="folder"><a href="{catrow.forumrow.U_FORUM_FOLDER}" class="{catrow.forumrow.FORUM_FOLDER_CLASS}" title="{catrow.forumrow.L_FORUM_FOLDER_ALT}">{catrow.forumrow.L_FORUM_FOLDER_ALT}</a></div>
					<p>{catrow.forumrow.FORUM_DESC}</p>
					<p><small>{catrow.forumrow.L_MODERATOR} {catrow.forumrow.MODERATORS}</small></p>
				</header>
				<dl>
					<dt>{L_TOPICS}</dt>
					<dd>{catrow.forumrow.TOPICS}</dd>
					<dt>{L_POSTS}</dt>
					<dd>{catrow.forumrow.POSTS}</dd>
					<dt>{L_LASTPOST}</dt>
					<dd>{catrow.forumrow.LAST_POST}</dd>
				</dl>
			</article>
			<!-- END forumrow -->
		</section>
		<!-- END catrow -->
	</div>

	<section class="viewonline">
		<h1><a href="{U_VIEWONLINE}">{L_WHO_IS_ONLINE}</a></h1>
		<ul>
			<li>{TOTAL_POSTS}</li>
			<li>{TOTAL_USERS}</li>
			<li>{NEWEST_USER}</li>
		</ul>
		<ul>
			<li>{TOTAL_USERS_ONLINE} [<b>{L_WHOSONLINE_ADMIN}</b>] [<b>{L_WHOSONLINE_MOD}</b>]</li>
			<li>{RECORD_USERS}</li>
			<li>{LOGGED_IN_USER_LIST}</li>
		</ul>
		<dl>
			<dt><a href="{U_ONLINE}">Online</a>:</dt>
			<dd>{L_ONLINE_EXPLAIN}</dd>
		</dl>
	</section>

	<!-- BEGIN switch_user_logged_out -->
	<form method="post" action="{S_LOGIN_ACTION}">
		<fieldset>
			<legend>{L_LOGIN_LOGOUT}</legend>
			<dl>  
				<dt><label for="label__username">{L_USERNAME}</label></dt>
				<dd><input type="text" id="label__username" name="username" size="10"></dd>
				<dt><label for="label__password">{L_PASSWORD}</label></dt>
				<dd><input type="password" id="label__password" name="password" size="10"></dd>
				<!-- BEGIN switch_allow_autologin -->
				<dt><label for="label__autologin">{L_AUTO_LOGIN}</label></dt>
				<dd><input type="checkbox" id="label__autologin" name="autologin"></dd>
				<!-- END switch_allow_autologin -->
			</dl>
			<button type="submit" class="mainoption" name="login" value="{L_LOGIN}">{L_LOGIN}</button>
		</fieldset>
	</form>
	<!-- END switch_user_logged_out -->

	<div class="tabline">
		<ul class="tabs">
			<li class="tab_active"><a href="#popular">{L_POPULAR}</a></li>
			<li><a href="#read">{L_READ}</a></li>
			<li><a href="#helpful">{L_HELPFUL}</a></li>
			<li><a href="#recommended">{L_RECOMMENDED}</a></li>
			<li><a href="#related">{L_RELATED}</a></li>
			<li><a href="#related">{L_OBSERVE}</a></li>
		</ul>
		<div id="popular" class="tab_content">
			<ul>
				<!-- BEGIN popularrow -->
				<li class="{popularrow.ROW_CLASS}">{popularrow.NEWEST_POST_IMG} <a href="{popularrow.U_VIEW_TOPIC}"><b>[{popularrow.FORUM_NAME}]</b> {popularrow.TOPIC_TITLE}</a></li>
				<!-- END popularrow -->
			</ul>
		</div>
		<div id="read" class="tab_content">
			<ul>
				<!-- BEGIN readrow -->
				<li class="{readrow.ROW_CLASS}">{readrow.NEWEST_POST_IMG} <a href="{readrow.U_VIEW_TOPIC}"><b>[{readrow.FORUM_NAME}]</b> {readrow.TOPIC_TITLE}</a></li>
				<!-- END readrow -->
			</ul>
		</div>
		<div id="helpful" class="tab_content">
			<ul>
				<!-- BEGIN helpfulrow -->
				<li class="{helpfulrow.ROW_CLASS}">{helpfulrow.NEWEST_POST_IMG} <a href="{helpfulrow.U_VIEW_TOPIC}"><b>[{helpfulrow.FORUM_NAME}]</b> {helpfulrow.TOPIC_TITLE}</a></li>
				<!-- END helpfulrow -->
			</ul>
		</div>
		<div id="recommended" class="tab_content">
			<iframe src="http://www.facebook.com/plugins/activity.php?site=www.forumweb.pl&amp;width=500&amp;height=225&amp;header=false&amp;colorscheme=light&amp;font=verdana&amp;border_color=%23fff&amp;recommendations=true&amp;ref=activity" scrolling="no" frameborder="0" width="500" height="225" allowTransparency="true"></iframe>
		</div>
		<div id="related" class="tab_content">
			<!-- BEGIN relatedrow -->
			<a href="{relatedrow.U_VIEW_TAG}" title="{relatedrow.TAG_COUNT}" class="{relatedrow.SIZE_CLASS}">{relatedrow.TAG_NAME}</a>{relatedrow.SEPARATOR}
			<!-- END relatedrow -->
		</div>
		<div id="observe" class="tab_content">
			<ul>
				<!-- BEGIN observerow -->
					<li class="{observerow.ROW_CLASS}">
						{observerow.AVATAR_IMG} <a href="{observerow.U_PROFILE}">{observerow.USERNAME}</a>
						<div>{observerow.OBSERVE}</div>
					</li>
				<!-- END observerow -->
			</ul>
			</div>
	</div>

	<ul class="legend"> 
		<li class="legend_folder_new">{L_NEW_POSTS}</li>
		<li class="legend_folder">{L_NO_NEW_POSTS}</li>
		<li class="legend_folder_lock">{L_FORUM_LOCKED}</li>
	</ul>
</div>