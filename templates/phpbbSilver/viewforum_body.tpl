<table id="content" width="100%" border="0" cellspacing="0" cellpadding="2">
<tr>
<td class="nav" valign="top"><h1><a class="maintitle" href="{U_VIEW_FORUM}">{FORUM_NAME}</a></h1>
{PAGINATION}</td>
<td class="gensmall" align="right" valign="bottom">{L_MODERATOR}: {MODERATORS}<br />
{LOGGED_IN_USER_LIST}<br />
<strong><a href="{U_MARK_READ}">{L_MARK_TOPICS_READ}</a></strong>
<div><a href="#new1">{L_SKIP_TO_NEW}</a></div></td>
</tr>
</table>
<table width="100%" cellspacing="2" cellpadding="2" border="0">
<tr> 
<td><a href="{U_POST_NEW_TOPIC}"><img src="{POST_IMG}" border="0" alt="{L_POST_NEW_TOPIC}" title="{L_POST_NEW_TOPIC}" width="82" height="25" /></a></td>
<td class="nav" width="100%">&nbsp;<a href="{U_INDEX}">{L_INDEX}</a> &raquo; <a href="{U_VIEW_FORUM}">{FORUM_NAME}</a></td>
</tr>
</table>

  
<table border="0" cellpadding="2" cellspacing="1" width="100%" class="forumline">
<tr> 
<th colspan="2" align="center" class="thcornerl" nowrap height="28">&nbsp;{L_TOPICS}&nbsp;</th>
<th width="50" align="center" class="thtop" nowrap>&nbsp;{L_REPLIES}&nbsp;</th>
<th width="100" align="center" class="thtop" nowrap>&nbsp;{L_AUTHOR}&nbsp;</th>
<th width="50" align="center" class="thtop" nowrap>&nbsp;{L_VIEWS}&nbsp;</th>
<th align="center" class="thcornerr" nowrap>&nbsp;{L_LASTPOST}&nbsp;</th>
</tr>
	<!-- BEGIN switch_prefix -->
	<tr> 
		<td class="catLeft" colspan="6" height="28"><form method="post" action="{PREFIX_ACTION}" style="margin: 0"><input type="hidden" name="mode" value="prefix" /><input type="hidden" name="search_terms" value="all" /><input type="hidden" name="search_fields" value="all" /><input type="hidden" name="show_results" value="topics" /><input type="hidden" name="search_forum" value="{FORUM_ID}" />
		&nbsp;<span class="genmed">{L_PREFIX}:</span>&nbsp;{PREFIX}&nbsp;<input type="submit" class="liteoption" value="{L_GO}" name="submit" />&nbsp;
		</form></td>
	</tr>
	<!-- END switch_prefix -->
<!-- BEGIN topicrow -->
<tr {topicrow.ROW_ID} class="{topicrow.ROW_CLASS}" onmouseover="this.className = 'row_hover'" onmouseout="this.className = '{topicrow.ROW_CLASS}'"> 
<td height="34" nowrap class="row1"><a href="{topicrow.U_VIEW_TOPIC}" style="position:relative;display:block"><img src="{topicrow.TOPIC_FOLDER_IMG}" width="33" height="25" alt="{topicrow.L_TOPIC_FOLDER_ALT}" title="{topicrow.L_TOPIC_FOLDER_ALT}" border="0" />{topicrow.MY_TOPIC_IMG}</a></td>
<td class="row1" width="100%"><span class="topictitle">{topicrow.NEWEST_POST_IMG}{topicrow.TOPIC_TYPE}<a href="{topicrow.U_VIEW_TOPIC}">{topicrow.TOPIC_TITLE}</a></span><span class="gensmall"><br />
{topicrow.GOTO_PAGE}</span></td>
<td class="row2" align="center"><span class="postdetails">{topicrow.REPLIES}</span></td>
<td class="row3" align="center" nowrap><span class="postdetails">&nbsp;{topicrow.FIRST_POST_TIME}&nbsp;</span><br /><span class="name">{topicrow.TOPIC_AUTHOR}</span></td>
<td class="row2" align="center"><span class="postdetails">{topicrow.VIEWS}</span></td>
<td class="row3" align="center" nowrap><span class="postdetails">&nbsp;{topicrow.LAST_POST_TIME}&nbsp;<br />
{topicrow.LAST_POST_AUTHOR} {topicrow.LAST_POST_IMG}</span></td>
</tr>
<!-- END topicrow -->
<!-- BEGIN switch_no_topics -->
<tr> 
<td class="row1" colspan="6" align="center">{L_NO_TOPICS}</td>
</tr>
<!-- END switch_no_topics -->
<tr> 
<td class="catbottom" align="center" colspan="6" height="28">
<table border="0" cellspacing="0" cellpadding="0" align="center">
<tr>
<td><form method="post" action="{S_POST_DAYS_ACTION}" style="display: inline"><span class="genmed">{L_DISPLAY_TOPICS}:</span>&nbsp;{S_SELECT_TOPIC_DAYS}&nbsp; 
<input type="submit" class="liteoption" value="{L_GO}" name="submit" /></form>
</td>
</tr>
</table>
</td>
</tr>
</table>

  
<table width="100%" cellspacing="2" cellpadding="2" border="0">
<tr> 
<td><a href="{U_POST_NEW_TOPIC}"><img src="{POST_IMG}" border="0" alt="{L_POST_NEW_TOPIC}" title="{L_POST_NEW_TOPIC}" width="82" height="25" /></a></td>
<td class="nav" width="100%">&nbsp;<a href="{U_INDEX}">{L_INDEX}</a> &raquo; <a href="{U_VIEW_FORUM}">{FORUM_NAME}</a></td>
</tr>
</table>
<table width="100%" border="0" cellspacing="0" cellpadding="2">
<tr> 
<td class="nav" valign="top">{PAGINATION}<br />
<br />
{JUMPBOX}<br />
</td>
<td class="gensmall" align="right" valign="top"><strong><a href="{U_MARK_READ}">{L_MARK_TOPICS_READ}</a></strong><br />
{L_MODERATOR}: {MODERATORS}<br />
{LOGGED_IN_USER_LIST}
</td>
</tr>
</table>
<table width="100%" cellspacing="0" border="0" align="center" cellpadding="0">
	<tr>
		<td align="left" valign="top">
<table border="0" cellspacing="3" cellpadding="0">
<tr> 
<td><img src="{FOLDER_NEW_IMG}" alt="{L_NEW_POSTS}" title="{L_NEW_POSTS}" width="33" height="25" /></td>
<td class="gensmall">&nbsp;{L_NEW_POSTS}</td>
<td>&nbsp;&nbsp;</td>
<td><img src="{FOLDER_IMG}" alt="{L_NO_NEW_POSTS}" title="{L_NO_NEW_POSTS}" width="33" height="25" /></td>
<td class="gensmall">&nbsp;{L_NO_NEW_POSTS}</td>
<td>&nbsp;&nbsp;</td>
<td><img src="{FOLDER_ANNOUNCE_IMG}" alt="{L_ANNOUNCEMENT}" title="{L_ANNOUNCEMENT}" width="33" height="25" /></td>
<td class="gensmall">{L_ANNOUNCEMENT}</td>
</tr>
<tr> 
<td><img src="{FOLDER_HOT_NEW_IMG}" alt="{L_NEW_POSTS_HOT}" title="{L_NEW_POSTS_HOT}" width="33" height="25" /></td>
<td class="gensmall">{L_NEW_POSTS_HOT}</td>
<td>&nbsp;</td>
<td><img src="{FOLDER_HOT_IMG}" alt="{L_NO_NEW_POSTS_HOT}" title="{L_NO_NEW_POSTS_HOT}" width="33" height="25" /></td>
<td class="gensmall">{L_NO_NEW_POSTS_HOT}</td>
<td>&nbsp;</td>
<td><img src="{FOLDER_STICKY_IMG}" alt="{L_STICKY}" title="{L_STICKY}" width="33" height="25" /></td>
<td class="gensmall">{L_STICKY}</td>
</tr>
<tr> 
<td><img src="{FOLDER_LOCKED_NEW_IMG}" alt="{L_NEW_POSTS_LOCKED}" title="{L_NEW_POSTS_LOCKED}" width="33" height="25" /></td>
<td class="gensmall">{L_NEW_POSTS_LOCKED}</td>
<td>&nbsp;</td>
<td><img src="{FOLDER_LOCKED_IMG}" alt="{L_NO_NEW_POSTS_LOCKED}" title="{L_NO_NEW_POSTS_LOCKED}" width="33" height="25" /></td>
<td class="gensmall">{L_NO_NEW_POSTS_LOCKED}</td>
<td>&nbsp;</td>
<td>&nbsp;</td>
<td class="gensmall">&nbsp;</td>
</tr>
</table>
</td>
		
<td align="right" valign="top"><span class="gensmall">{S_AUTH_LIST}</span></td>
	</tr>
</table>
