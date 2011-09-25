
<table width="100%" border="0" cellspacing="0" cellpadding="2">
<tr>
<td class="nav" valign="top"><h1><a class="maintitle" href="{U_VIEW_TOPIC}">{TOPIC_TITLE}</a></h1>
<div class="gensmall" style="color:red; font-weight:normal">{MODERATOR}</div>{S_TOPIC_ADMIN}
{PAGINATION}</td>
<td class="gensmall" align="right" valign="bottom"><a href="{U_VIEW_NEWER_TOPIC}">{L_VIEW_NEXT_TOPIC}</a><br />
<a href="{U_VIEW_OLDER_TOPIC}">{L_VIEW_PREVIOUS_TOPIC}</a><br />
<strong>{S_WATCH_TOPIC}</strong></td>
</tr>
</table>
<table width="100%" cellspacing="2" cellpadding="2" border="0">
<tr> 
<td nowrap><a href="{U_POST_REPLY_TOPIC}"><img src="{REPLY_IMG}" border="0" alt="{L_POST_REPLY_TOPIC}" title="{L_POST_REPLY_TOPIC}" height="25" width="82" /></a></td>
<td width="100%">
<!-- BEGIN switch_auth_public -->
<iframe src="http://www.facebook.com/plugins/like.php?href=http%3A%2F%2Fwww.forumweb.pl%2Fviewtopic.php%3Ft={TOPIC_ID}&amp;layout=button_count&amp;show_faces=false&amp;width=110&amp;action=recommend&amp;colorscheme=light&amp;height=21&amp;ref=recommend" scrolling="no" frameborder="0" style="border:0; overflow:hidden; width:110px; height:21px; vertical-align:bottom; float:right" allowTransparency="true"></iframe> 
<!-- END switch_auth_public -->
<span class="nav">&nbsp;<a href="{U_INDEX}" class="nav">{L_INDEX}</a> 
&raquo; <a href="{U_VIEW_FORUM}" class="nav"><strong>{FORUM_NAME}</strong></a></span></td>
</tr>
</table>
<table class="forumline" width="100%" cellspacing="1" cellpadding="3" border="0">
{POLL_DISPLAY} 
<tr> 
<th class="thleft" width="150" height="28" nowrap>{L_AUTHOR}</th>
<th class="thright" nowrap height="28" width="100%">{L_MESSAGE}</th>
</tr>
<!-- BEGIN postrow -->
<tr id="post{postrow.U_POST_ID}_0">
<td valign="top" class="post_content {postrow.ROW_CLASS}"><span class="name"><a name="{postrow.U_POST_ID}"></a><strong><span style="cursor: pointer" onclick="if (document.post &amp;&amp; document.post.message) { if (!editor || !editor.insert('b', null, '{postrow.POSTER_NAME}')) emoticon('[b]{postrow.POSTER_NAME}[/b]'); window.location.href = '#post'; }" title="{postrow.L_INSERT_AUTHOR_QUOTE}">{postrow.POSTER_NAME}</span></strong></span>
<div class="postdetails">{postrow.POSTER_RANK}<br />
{postrow.RANK_IMAGE}
{postrow.POSTER_AVATAR}<br /><br />
{postrow.POSTER_GENDER}<br />
{postrow.POSTER_AGE}
{postrow.POSTER_JOINED}<br />
{postrow.POSTER_POSTS}<br />
{postrow.POSTER_HELPS}
{postrow.POSTER_FROM}</div>
<img src="templates/phpbbSilver/images/spacer.gif" alt="" width="150" height="1" /> 
</td>
<td class="post_content {postrow.ROW_CLASS}" valign="top"> 
<table width="100%" border="0" cellspacing="0" cellpadding="0">
<tr> 
<td width="100%" class="postdetails"><a href="{postrow.U_MINI_POST}"><img src="{postrow.MINI_POST_IMG}" width="12" height="9" alt="{postrow.L_MINI_POST_ALT}" title="{postrow.L_MINI_POST_ALT}" border="0" /></a>&nbsp;{L_POSTED}: {postrow.POST_DATE}<br />{postrow.POST_SUBJECT}</td>
	<td align="right" nowrap valign="top">{postrow.AHM_IMG} {postrow.QUICK_QUOTE_IMG} {postrow.QUOTE_IMG} {postrow.SPELLING_IMG} {postrow.EDIT_IMG} {postrow.DELETE_IMG} {postrow.SPLIT_IMG} {postrow.REPORT_IMG} {postrow.HISTORY_IMG} {postrow.IP_IMG} &nbsp;&nbsp;<a href="#top"><img src="templates/phpbbSilver/images/icon_up.gif" width="16" height="18" border="0" alt="^" /></a></td>
</tr>
</table>
<table width="100%" border="0" cellpadding="0" cellspacing="0">
<tr> 
<td valign="top" class="postbody" onmouseup="if (document.getSelection &amp;&amp; document.getSelection() || document.selection &amp;&amp; document.selection.createRange &amp;&amp; document.selection.createRange().text) quoteAuthor = &quot;{postrow.POSTER_NAME}&quot;"> 
<hr />
{postrow.MESSAGE}
<br />&nbsp;</td>
</tr>
<tr> 
<td valign="bottom" class="genmed"><div class="signature">{postrow.SIGNATURE}</div><span class="gensmall">{postrow.EDITED_MESSAGE} {postrow.HELPS}</span></td>
</tr>
</table>
</td>
</tr>
<tr id="post{postrow.U_POST_ID}_1">
<td class="post_content {postrow.ROW_CLASS}" align="center" valign="middle"><span class="genmed">&nbsp;{postrow.POSTER_STATUS}&nbsp;</span></td>
<td class="post_content {postrow.ROW_CLASS}" valign="middle"> 
<table cellspacing="0" cellpadding="0" border="0" width="100%"><tr><td>
	<table cellspacing="0" cellpadding="0" border="0">
	<tr>
	<td valign="middle">{postrow.PROFILE_IMG} {postrow.PM_IMG} {postrow.EMAIL_IMG} {postrow.WWW_IMG} {postrow.AIM_IMG} {postrow.YIM_IMG} {postrow.MSN_IMG}</td>
	<td>&nbsp;</td>
	<td valign="top">
		<table border="0" cellpadding="0" cellspacing="0" style="border-collapse: collapse">
		<tr>
		<td height="19"><div style="position:relative">{postrow.GG_IMG}<div style="position:absolute;left:3px;top:-1px">{postrow.GG_STATUS_IMG}</div></div></td>
		<td>&nbsp;</td>
		<td><div style="position:relative">{postrow.TLEN_IMG}<div style="position:absolute;left:3px;top:-1px">{postrow.TLEN_STATUS_IMG}</div></div></td>
		<td>&nbsp;</td>
		<td><div style="position:relative">{postrow.JABBER_IMG}<div style="position:absolute;left:3px;top:-1px">{postrow.JABBER_STATUS_IMG}</div></div></td>
		<td>&nbsp;</td>
		<td><div style="position:relative">{postrow.SKYPE_IMG}<div style="position:absolute;left:3px;top:-1px">{postrow.SKYPE_STATUS_IMG}</div></div></td>
		<td>&nbsp;</td>
		<td><div style="position:relative">{postrow.ICQ_IMG}<div style="position:absolute;left:3px;top:-1px">{postrow.ICQ_STATUS_IMG}</div></div></td>
		</tr>
		</table>
	</td>
	</tr>
	</table>
</td><td class="post_content" align="right" valign="top" nowrap="nowrap">{postrow.USER_AGENT}</td></tr></table>

</td>
</tr>
<!-- BEGIN switch_first_post -->
<script type="text/javascript">
<!--
for (var i = 0; document.getElementById('post{postrow.U_POST_ID}_' + i); i++)
{
	document.getElementById('post{postrow.U_POST_ID}_' + i).style.display = 'none';
	document.getElementById('post{postrow.U_POST_ID}_' + i).className += ' first_post'
}
document.write('<tr><td colspan="2" class="view_first_post {postrow.ROW_CLASS}"><a href="" onclick="this.parentNode.parentNode.style.display = \'none\'; for (var i = 0; document.getElementById(\'post{postrow.U_POST_ID}_\' + i); i++) document.getElementById(\'post{postrow.U_POST_ID}_\' + i).style.display = \'\'; return false"><b>{L_VIEW_FIRST_POST}...</b></a></td></tr>');
//-->
</script>
<!-- END switch_first_post -->
<tr>
<td class="spaceRow" colspan="2" height="1"><img src="templates/phpbbSilver/images/spacer.gif" alt="" width="1" height="1" /></td>
</tr>
<!-- END postrow -->
<tr> 
<td class="catbottom" colspan="2" height="28"> 
<table cellspacing="0" cellpadding="0" border="0" align="center">
<tr> 
<td align="center"><form method="post" action="{S_POST_DAYS_ACTION}" style="display: inline"><span class="gensmall">{L_DISPLAY_POSTS}: {S_SELECT_POST_DAYS}&nbsp;{S_SELECT_POST_ORDER}&nbsp; 
<input type="submit" value="{L_GO}" class="liteoption" name="submit" />
</span></form></td>
</tr>
</table>
</td>
</tr>
</table>

<table width="100%" cellspacing="2" cellpadding="2" border="0">
<tr> 
<td nowrap><a href="{U_POST_REPLY_TOPIC}"><img src="{REPLY_IMG}" border="0" alt="{L_POST_REPLY_TOPIC}" title="{L_POST_REPLY_TOPIC}" height="25" width="82" /></a></td>
<td width="100%" class="nav">&nbsp;<a href="{U_INDEX}">{L_INDEX}</a> &raquo; <a href="{U_VIEW_FORUM}"><strong>{FORUM_NAME}</strong></a></td>
<td class="nav" nowrap>{PAGINATION}</td>
</tr>
</table>

{QUICKREPLY_OUTPUT}

<table width="100%" border="0" cellspacing="0" cellpadding="2">
<tr> 
<td class="nav" valign="top">{PAGINATION}
<table width="100%" border="0" cellspacing="0" cellpadding="0">
<tr> 
<td>&nbsp;</td>
</tr>
<tr> 
<td>{JUMPBOX}</td>
</tr>
</table>
{S_TOPIC_ADMIN}</td>
<td class="gensmall" align="right" valign="top"><strong>{S_WATCH_TOPIC}</strong><br />
<a href="{U_VIEW_NEWER_TOPIC}">{L_VIEW_NEXT_TOPIC}</a><br />
<a href="{U_VIEW_OLDER_TOPIC}">{L_VIEW_PREVIOUS_TOPIC}</a><br />
{S_AUTH_LIST} </td>
</tr>
</table>

<script type="text/javascript">
<!--
var foldbox_lang = {
	'Unfold': '{L_UNFOLD}',
	'Fold': '{L_FOLD}'
};
//-->
</script>
<script type="text/javascript" src="{FOLDBOX_JS}"></script>