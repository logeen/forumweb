
<table    >
<tr>
<td class="nav" v><h1><a class="maintitle" href="{U_VIEW_TOPIC}">{TOPIC_TITLE}</a></h1>
<div class="gensmall" >{MODERATOR}</div>{S_TOPIC_ADMIN}
{PAGINATION}</td>
<td class="gensmall"  v><a href="{U_VIEW_NEWER_TOPIC}">{L_VIEW_NEXT_TOPIC}</a><br />
<a href="{U_VIEW_OLDER_TOPIC}">{L_VIEW_PREVIOUS_TOPIC}</a><br />
<strong>{S_WATCH_TOPIC}</strong></td>
</tr>
</table>
<table    >
<tr> 
<td ><a href="{U_POST_REPLY_TOPIC}"><img src="{REPLY_IMG}"  alt="{L_POST_REPLY_TOPIC}" title="{L_POST_REPLY_TOPIC}"   /></a></td>
<td >
<!-- BEGIN switch_auth_public -->
<iframe src="http://www.facebook.com/plugins/like.php?href=http%3A%2F%2Fwww.forumweb.pl%2Fviewtopic.php%3Ft={TOPIC_ID}&amp;layout=button_count&amp;show_faces=false&amp;width=110&amp;action=recommend&amp;colorscheme=light&amp;height=21&amp;ref=recommend" scrolling="no" frame  allowTransparency="true"></iframe> 
<!-- END switch_auth_public -->
<span class="nav">&nbsp;<a href="{U_INDEX}" class="nav">{L_INDEX}</a> 
&raquo; <a href="{U_VIEW_FORUM}" class="nav"><strong>{FORUM_NAME}</strong></a></span></td>
</tr>
</table>
<table class="forumline"    >
{POLL_DISPLAY} 
<tr> 
<th class="thleft"   >{L_AUTHOR}</th>
<th class="thright"   >{L_MESSAGE}</th>
</tr>
<!-- BEGIN postrow -->
<tr id="post{postrow.U_POST_ID}_0">
<td v class="post_content {postrow.ROW_CLASS}"><span class="name"><a name="{postrow.U_POST_ID}"></a><strong><span  onclick="if (document.post &amp;&amp; document.post.message) { if (!editor || !editor.insert('b', null, '{postrow.POSTER_NAME}')) emoticon('[b]{postrow.POSTER_NAME}[/b]'); window.location.href = '#post'; }" title="{postrow.L_INSERT_AUTHOR_QUOTE}">{postrow.POSTER_NAME}</span></strong></span>
<div class="postdetails">{postrow.POSTER_RANK}<br />
{postrow.RANK_IMAGE}
{postrow.POSTER_AVATAR}<br /><br />
{postrow.POSTER_GENDER}<br />
{postrow.POSTER_AGE}
{postrow.POSTER_JOINED}<br />
{postrow.POSTER_POSTS}<br />
{postrow.POSTER_HELPS}
{postrow.POSTER_FROM}</div>
<img src="templates/phpbbSilver/images/spacer.gif" alt=""   /> 
</td>
<td class="post_content {postrow.ROW_CLASS}" v> 
<table    >
<tr> 
<td  class="postdetails"><a href="{postrow.U_MINI_POST}"><img src="{postrow.MINI_POST_IMG}"   alt="{postrow.L_MINI_POST_ALT}" title="{postrow.L_MINI_POST_ALT}"  /></a>&nbsp;{L_POSTED}: {postrow.POST_DATE}<br />{postrow.POST_SUBJECT}</td>
	<td   v>{postrow.AHM_IMG} {postrow.QUICK_QUOTE_IMG} {postrow.QUOTE_IMG} {postrow.SPELLING_IMG} {postrow.EDIT_IMG} {postrow.DELETE_IMG} {postrow.SPLIT_IMG} {postrow.REPORT_IMG} {postrow.HISTORY_IMG} {postrow.IP_IMG} &nbsp;&nbsp;<a href="#top"><img src="templates/phpbbSilver/images/icon_up.gif"    alt="^" /></a></td>
</tr>
</table>
<table    >
<tr> 
<td v class="postbody" onmouseup="if (document.getSelection &amp;&amp; document.getSelection() || document.selection &amp;&amp; document.selection.createRange &amp;&amp; document.selection.createRange().text) quoteAuthor = &quot;{postrow.POSTER_NAME}&quot;"> 
<hr />
{postrow.MESSAGE}
<br />&nbsp;</td>
</tr>
<tr> 
<td v class="genmed"><div class="signature">{postrow.SIGNATURE}</div><span class="gensmall">{postrow.EDITED_MESSAGE} {postrow.HELPS}</span></td>
</tr>
</table>
</td>
</tr>
<tr id="post{postrow.U_POST_ID}_1">
<td class="post_content {postrow.ROW_CLASS}"  v><span class="genmed">&nbsp;{postrow.POSTER_STATUS}&nbsp;</span></td>
<td class="post_content {postrow.ROW_CLASS}" v> 
<table    ><tr><td>
	<table   >
	<tr>
	<td v>{postrow.PROFILE_IMG} {postrow.PM_IMG} {postrow.EMAIL_IMG} {postrow.WWW_IMG} {postrow.AIM_IMG} {postrow.YIM_IMG} {postrow.MSN_IMG}</td>
	<td>&nbsp;</td>
	<td v>
		<table    >
		<tr>
		<td ><div >{postrow.GG_IMG}<div >{postrow.GG_STATUS_IMG}</div></div></td>
		<td>&nbsp;</td>
		<td><div >{postrow.TLEN_IMG}<div >{postrow.TLEN_STATUS_IMG}</div></div></td>
		<td>&nbsp;</td>
		<td><div >{postrow.JABBER_IMG}<div >{postrow.JABBER_STATUS_IMG}</div></div></td>
		<td>&nbsp;</td>
		<td><div >{postrow.SKYPE_IMG}<div >{postrow.SKYPE_STATUS_IMG}</div></div></td>
		<td>&nbsp;</td>
		<td><div >{postrow.ICQ_IMG}<div >{postrow.ICQ_STATUS_IMG}</div></div></td>
		</tr>
		</table>
	</td>
	</tr>
	</table>
</td><td class="post_content"  v ="">{postrow.USER_AGENT}</td></tr></table>

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
<td class="spaceRow" colspan="2" ><img src="templates/phpbbSilver/images/spacer.gif" alt=""   /></td>
</tr>
<!-- END postrow -->
<tr> 
<td class="catbottom" colspan="2" > 
<table    >
<tr> 
<td ><form method="post" action="{S_POST_DAYS_ACTION}" ><span class="gensmall">{L_DISPLAY_POSTS}: {S_SELECT_POST_DAYS}&nbsp;{S_SELECT_POST_ORDER}&nbsp; 
<input type="submit" value="{L_GO}" class="liteoption" name="submit" />
</span></form></td>
</tr>
</table>
</td>
</tr>
</table>

<table    >
<tr> 
<td ><a href="{U_POST_REPLY_TOPIC}"><img src="{REPLY_IMG}"  alt="{L_POST_REPLY_TOPIC}" title="{L_POST_REPLY_TOPIC}"   /></a></td>
<td  class="nav">&nbsp;<a href="{U_INDEX}">{L_INDEX}</a> &raquo; <a href="{U_VIEW_FORUM}"><strong>{FORUM_NAME}</strong></a></td>
<td class="nav" >{PAGINATION}</td>
</tr>
</table>

{QUICKREPLY_OUTPUT}

<table    >
<tr> 
<td class="nav" v>{PAGINATION}
<table    >
<tr> 
<td>&nbsp;</td>
</tr>
<tr> 
<td>{JUMPBOX}</td>
</tr>
</table>
{S_TOPIC_ADMIN}</td>
<td class="gensmall"  v><strong>{S_WATCH_TOPIC}</strong><br />
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