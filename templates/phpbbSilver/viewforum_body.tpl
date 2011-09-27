<section>
<header class="left">
	<h1><a href="{U_VIEW_FORUM}">{FORUM_NAME}</a></h1>
	{PAGINATION}
</header>
<ul class="right">
	<li>{L_MODERATOR}: {MODERATORS}</li>
	<li>{LOGGED_IN_USER_LIST}</li>
	<li><b><a href="{U_MARK_READ}">{L_MARK_TOPICS_READ}</a></b></li>
	<li><a href="#new1">{L_SKIP_TO_NEW}</a></li>
</ul>
<p>
	<a href="{U_POST_NEW_TOPIC}"><img src="{POST_IMG}"  alt="{L_POST_NEW_TOPIC}" title="{L_POST_NEW_TOPIC}"></a> <a href="{U_INDEX}">{L_INDEX}</a> &raquo; <a href="{U_VIEW_FORUM}">{FORUM_NAME}</a>
</p>
<table class="forumline">
	<thead>
		<tr> 
			<th colspan="2">{L_TOPICS}</th>
			<th>{L_REPLIES}</th>
			<th>{L_AUTHOR}</th>
			<th>{L_VIEWS}</th>
			<th>{L_LASTPOST}</th>
		</tr>
	</thead>
	<tbody>
		<!-- BEGIN switch_prefix -->
		<!--potrzebne to w ogóle?!-->
		<tr> 
			<td colspan="6" >
				<form method="post" action="{PREFIX_ACTION}" >
					<fieldset>
						<input type="hidden" name="mode" value="prefix">
						<input type="hidden" name="search_terms" value="all">
						<input type="hidden" name="search_fields" value="all">
						<input type="hidden" name="show_results" value="topics">
						<input type="hidden" name="search_forum" value="{FORUM_ID}">
						<label>{L_PREFIX}: {PREFIX}</label> <button type="submit" class="liteoption" value="1" name="submit">{L_GO}</button>
					</fieldset>
				</form>
			</td>
		</tr>
		<!-- END switch_prefix -->
		<!-- BEGIN topicrow -->
		<tr {topicrow.ROW_ID}> <!--class="{topicrow.ROW_CLASS}"--> 
			<td>
				<a href="{topicrow.U_VIEW_TOPIC}" ><img src="{topicrow.TOPIC_FOLDER_IMG}"   alt="{topicrow.L_TOPIC_FOLDER_ALT}" title="{topicrow.L_TOPIC_FOLDER_ALT}">{topicrow.MY_TOPIC_IMG}</a>
			</td>
			<td>
				<p>{topicrow.NEWEST_POST_IMG}{topicrow.TOPIC_TYPE}<a href="{topicrow.U_VIEW_TOPIC}">{topicrow.TOPIC_TITLE}</a></p> <!--nag³ówki?-->
				<p>{topicrow.GOTO_PAGE}</p>
			</td>
			<td>{topicrow.REPLIES}</td>
			<td>
				<time>{topicrow.FIRST_POST_TIME}</time>
				<p class="author">{topicrow.TOPIC_AUTHOR}</p>
			</td>
			<td>{topicrow.VIEWS}</td>
			<td>
				<time>{topicrow.LAST_POST_TIME}</time>
				<p>{topicrow.LAST_POST_AUTHOR} {topicrow.LAST_POST_IMG}</p>
			</td>
		</tr>
		<!-- END topicrow -->
		<!-- BEGIN switch_no_topics -->
		<tr> 
			<td colspan="6" >{L_NO_TOPICS}</td>
		</tr>
		<!-- END switch_no_topics -->
	</tbody>
</table>
<form method="post" action="{S_POST_DAYS_ACTION}" class="inline">
	<fieldset>
		<label>{L_DISPLAY_TOPICS}: {S_SELECT_TOPIC_DAYS}</label> 
		<button type="submit" value="1" name="submit">{L_GO}</button>
	</fieldset>
</form>
<div class="left"> 
	<p><a href="{U_POST_NEW_TOPIC}"><img src="{POST_IMG}"  alt="{L_POST_NEW_TOPIC}" title="{L_POST_NEW_TOPIC}"   /></a> <a href="{U_INDEX}">{L_INDEX}</a> &raquo; <a href="{U_VIEW_FORUM}">{FORUM_NAME}</a></p>
	<p{PAGINATION}</p>
	<p>{JUMPBOX}</p>
</div>
<ul class="right">
	<li><b><a href="{U_MARK_READ}">{L_MARK_TOPICS_READ}</a></b></li>
	<li>{L_MODERATOR}: {MODERATORS}</li>
	<li>{LOGGED_IN_USER_LIST}</li>
</ul>
<dl class="left">
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
		
<p class="right">{S_AUTH_LIST}</p>
</section>