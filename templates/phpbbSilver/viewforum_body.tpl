<div class="viewforum_body-tpl">
	<section>
	<header>
		<h1><a href="{U_VIEW_FORUM}">{FORUM_NAME}</a></h1>
		{PAGINATION}
	</header>
	<ul>
		<li>{L_MODERATOR}: {MODERATORS}</li>
		<li>{LOGGED_IN_USER_LIST}</li>
		<li><b><a href="{U_MARK_READ}">{L_MARK_TOPICS_READ}</a></b></li>
		<li><a href="#new1">{L_SKIP_TO_NEW}</a></li>
	</ul>
	<p><a href="{U_POST_NEW_TOPIC}"><img src="{POST_IMG}" alt="{L_POST_NEW_TOPIC}" title="{L_POST_NEW_TOPIC}"></a></p>
	<nav class="breadcrumb">
		<ul>
			<li><a href="{U_INDEX}">{L_INDEX}</a></li>
			<li><a href="{U_VIEW_FORUM}">{FORUM_NAME}</a></li>
		</ul>
	</nav>
	<section>
		<h1>Lista tematów</h1>
		<!-- BEGIN switch_prefix -->
		<form method="post" action="{PREFIX_ACTION}">
			<fieldset>
				<input type="hidden" name="mode" value="prefix">
				<input type="hidden" name="search_terms" value="all">
				<input type="hidden" name="search_fields" value="all">
				<input type="hidden" name="show_results" value="topics">
				<input type="hidden" name="search_forum" value="{FORUM_ID}">
				<label>{L_PREFIX}: {PREFIX}</label> <button type="submit" class="liteoption" value="1" name="submit">{L_GO}</button>
			</fieldset>
		</form>
		<!-- END switch_prefix -->
		<!-- BEGIN topicrow -->
		<article id="{topicrow.ROW_ID}"> <!--class="{topicrow.ROW_CLASS}"--> 
					<!--<a href="{topicrow.U_VIEW_TOPIC}" ><img src="{topicrow.TOPIC_FOLDER_IMG}"   alt="{topicrow.L_TOPIC_FOLDER_ALT}" title="{topicrow.L_TOPIC_FOLDER_ALT}">{topicrow.MY_TOPIC_IMG}</a> imo do CSS-->
			<header>
					<h2>{topicrow.NEWEST_POST_IMG}{topicrow.TOPIC_TYPE}<a href="{topicrow.U_VIEW_TOPIC}">{topicrow.TOPIC_TITLE}</a></h2>
					<p>{topicrow.GOTO_PAGE}</p>
					<p>{L_AUTHOR}: <span class="author">{topicrow.TOPIC_AUTHOR}</span> (<time datetime="{topicrow.FIRST_POST_TIME_DATETIME}">{topicrow.FIRST_POST_TIME}</time>)</p>
			</header>
				<dl>
					<dt>{L_REPLIES}</dt>
					<dd>{topicrow.REPLIES}</dd>
					<dt>{L_VIEWS}</dt>
					<dd>{topicrow.VIEWS}</dd>
					<dt>{L_LASTPOST}</dt>
					<dd>{topicrow.LAST_POST_AUTHOR} (<time datetime="{topicrow.LAST_POST_TIME_DATETIME}">{topicrow.LAST_POST_TIME}</time>) {topicrow.LAST_POST_IMG}</dd>
				</dl>
		</article>
		<!-- END topicrow -->
		<!-- BEGIN switch_no_topics -->
		<p>{L_NO_TOPICS}</p>
		<!-- END switch_no_topics -->
	</section>
	<form method="post" action="{S_POST_DAYS_ACTION}">
		<fieldset>
			<label>{L_DISPLAY_TOPICS}: {S_SELECT_TOPIC_DAYS}</label> 
			<button type="submit" value="1" name="submit">{L_GO}</button>
		</fieldset>
	</form>
	<div> 
		<p><a href="{U_POST_NEW_TOPIC}"><img src="{POST_IMG}"  alt="{L_POST_NEW_TOPIC}" title="{L_POST_NEW_TOPIC}"></a></p>
		<nav class="breadcrumb">
			<ul>
				<li><a href="{U_INDEX}">{L_INDEX}</a></li>
				<li><a href="{U_VIEW_FORUM}">{FORUM_NAME}</a></li>
			</ul>
		</nav>
		<p{PAGINATION}</p>
		<p>{JUMPBOX}</p>
	</div>
	<ul>
		<li><b><a href="{U_MARK_READ}">{L_MARK_TOPICS_READ}</a></b></li>
		<li>{L_MODERATOR}: {MODERATORS}</li>
		<li>{LOGGED_IN_USER_LIST}</li>
	</ul>
	<dl>
		<dt><img src="{FOLDER_NEW_IMG}" alt="{L_NEW_POSTS}" title="{L_NEW_POSTS}"></dt>
		<dd>{L_NEW_POSTS}</dd>
		<dt><img src="{FOLDER_IMG}" alt="{L_NO_NEW_POSTS}" title="{L_NO_NEW_POSTS}"></dt>
		<dd>{L_NO_NEW_POSTS}</dd>
		<dt><img src="{FOLDER_ANNOUNCE_IMG}" alt="{L_ANNOUNCEMENT}" title="{L_ANNOUNCEMENT}"></dt>
		<dd>{L_ANNOUNCEMENT}</dd>
		<dt><img src="{FOLDER_HOT_NEW_IMG}" alt="{L_NEW_POSTS_HOT}" title="{L_NEW_POSTS_HOT}"></dt>
		<dd>{L_NEW_POSTS_HOT}</dd>
		<dt><img src="{FOLDER_HOT_IMG}" alt="{L_NO_NEW_POSTS_HOT}" title="{L_NO_NEW_POSTS_HOT}"></dt>
		<dd>{L_NO_NEW_POSTS_HOT}</dd>
		<dt><img src="{FOLDER_STICKY_IMG}" alt="{L_STICKY}" title="{L_STICKY}"></dt>
		<dd>{L_STICKY}</dd>
		<dt><img src="{FOLDER_LOCKED_NEW_IMG}" alt="{L_NEW_POSTS_LOCKED}" title="{L_NEW_POSTS_LOCKED}"></dt>
		<dd>{L_NEW_POSTS_LOCKED}</dd>
		<dt><img src="{FOLDER_LOCKED_IMG}" alt="{L_NO_NEW_POSTS_LOCKED}" title="{L_NO_NEW_POSTS_LOCKED}"></dt>
		<dd>{L_NO_NEW_POSTS_LOCKED}</dd>
	</dl>		
	<p>{S_AUTH_LIST}</p>
	</section>
</div>