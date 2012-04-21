<div class="view-forum_body-tpl">
	<section>
		<header>
			<h1><a href="{U_VIEW_FORUM}">{FORUM_NAME}</a></h1>
			{PAGINATION}
		</header>

		<ul class="actions">
			<li>{L_MODERATOR}: {MODERATORS}</li>
			<li>{LOGGED_IN_USER_LIST}</li>
			<li><a href="{U_MARK_READ}">{L_MARK_TOPICS_READ}</a></li>
			<li><a href="#new1">{L_SKIP_TO_NEW}</a></li>
		</ul>

		<p class="posts_new_topic"><a href="{U_POST_NEW_TOPIC}" class="{POST_CLASS}" title="{U_POST_NEW_TOPIC}">{L_POST_NEW_TOPIC}</a></p>

		<nav class="breadcrumb">
			<ul>
				<li><a href="{U_INDEX}">{L_INDEX}</a></li>
				<li><a href="{U_VIEW_FORUM}">{FORUM_NAME}</a></li>
			</ul>
		</nav>

		<div class="forumline">
			<!-- BEGIN switch_prefix -->
			<form method="post" action="{PREFIX_ACTION}">
				<fieldset>
					<input type="hidden" name="mode" value="prefix">
					<input type="hidden" name="search_terms" value="all">
					<input type="hidden" name="search_fields" value="all">
					<input type="hidden" name="show_results" value="topics">
					<input type="hidden" name="search_forum" value="{FORUM_ID}">
					<label>{L_PREFIX}: {PREFIX}</label>
					<button type="submit" class="liteoption" value="{L_GO}" name="submit">{L_GO}</button>
				</fieldset>
			</form>
			<!-- END switch_prefix -->

			<!-- BEGIN topicrow -->
			<article class="{topicrow.ROW_CLASS}">
				<header>
					<h2><span>{L_TOPICS}</span> {topicrow.NEWEST_POST_IMG}{topicrow.TOPIC_TYPE}<a href="{topicrow.U_VIEW_TOPIC}">{topicrow.TOPIC_TITLE}</a></h2>
					<div class="folder"><a href="{topicrow.U_VIEW_TOPIC}" class="{topicrow.TOPIC_FOLDER_CLASS}" title="{topicrow.L_TOPIC_FOLDER_ALT}">{topicrow.L_TOPIC_FOLDER_ALT}</a> <span class="{topicrow.MY_TOPIC_CLASS}">{topicrow.MY_TOPIC_ALT}</span></div>
					<p>{topicrow.GOTO_PAGE}</p>
				</header>
				<dl>
					<dt>{L_AUTHOR}</dt>
					<dd><time datetime="{topicrow.FIRST_POST_TIME_DATETIME}">{topicrow.FIRST_POST_TIME}</time> {topicrow.TOPIC_AUTHOR}</dd>
					<dt>{L_REPLIES}</dt>
					<dd>{topicrow.REPLIES}</dd>
					<dt>{L_VIEWS}</dt>
					<dd>{topicrow.VIEWS}</dd>
					<dt>{L_LASTPOST}</dt>
					<dd><time datetime="{topicrow.LAST_POST_TIME_DATETIME}">{topicrow.LAST_POST_TIME}</time> {topicrow.LAST_POST_AUTHOR} {topicrow.LAST_POST_IMG}</dd>
				</dl>
			</article>
			<!-- END topicrow -->
			<!-- BEGIN switch_no_topics -->
			<p>{L_NO_TOPICS}</p>
			<!-- END switch_no_topics -->

			<form method="post" action="{S_POST_DAYS_ACTION}">
				<fieldset>
					<label>{L_DISPLAY_TOPICS}: {S_SELECT_TOPIC_DAYS}</label>
					<button type="submit" value="{L_GO}" name="submit">{L_GO}</button>
				</fieldset>
			</form>
		</div>

		<p class="posts_new_topic"><a href="{U_POST_NEW_TOPIC}" class="{POST_CLASS}" title="{U_POST_NEW_TOPIC}">{L_POST_NEW_TOPIC}</a></p>

		<nav class="breadcrumb">
			<ul>
				<li><a href="{U_INDEX}">{L_INDEX}</a></li>
				<li><a href="{U_VIEW_FORUM}">{FORUM_NAME}</a></li>
			</ul>
		</nav>

		<footer>
			{PAGINATION}
			{JUMPBOX}
		</footer>

		<ul class="actions">
			<li><a href="{U_MARK_READ}">{L_MARK_TOPICS_READ}</a></li>
			<li>{L_MODERATOR}: {MODERATORS}</li>
			<li>{LOGGED_IN_USER_LIST}</li>
		</ul>
	</section>

	<ul class="legend">
		<li class="legend_new_posts">{L_NEW_POSTS}</li>
		<li class="legend_no_new_posts">{L_NO_NEW_POSTS}</li>
		<li class="legend_announsement">{L_ANNOUNCEMENT}</li>
		<li class="legend_new_posts_hot">{L_NEW_POSTS_HOT}</li>
		<li class="legend_no_new_posts_hot">{L_NO_NEW_POSTS_HOT}</li>
		<li class="legend_sticky">{L_STICKY}</li>
		<li class="legend_new_posts_locked">{L_NEW_POSTS_LOCKED}</li>
		<li class="legend_no_new_posts_locked">{L_NO_NEW_POSTS_LOCKED}</li>
	</li>

	<p class="auth_list">{S_AUTH_LIST}</p>
</div>