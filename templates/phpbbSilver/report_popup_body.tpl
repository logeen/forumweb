<p class="postbody">{TEXT}</p>
<!-- BEGIN links_target_0 -->
<base target="report_window" />
<!-- END links_target_0 -->
<!-- BEGIN links_target_1 -->
<base target="_blank" />
<!-- END links_target_1 -->
<table width="100%" cellpadding="2" cellspacing="1" border="0" class="forumline">
  <tr> 
	<th class="thCornerL" nowrap="nowrap">&nbsp;{L_POST}&nbsp;</th>
	<th class="thTop" nowrap="nowrap">&nbsp;{L_AUTHOR}&nbsp;</th>
	<th class="thTop" nowrap="nowrap">&nbsp;{L_TOPIC}&nbsp;</th>
	<th class="thTop" nowrap="nowrap">&nbsp;{L_FORUM}&nbsp;</th>
	<th class="thCornerR" nowrap="nowrap">&nbsp;{L_REPORTER}&nbsp;</th>
  </tr>
<!-- BEGIN postrow -->
  <tr> 
	<td class="row1" align="left" valign="middle"><span class="genmed">
	<a href="{postrow.U_POST}" {postrow.U_POST_ONCLICK} class="genmed"><img src="{S_POST_IMG}" border="0" /></a>
	<a href="{postrow.U_POST}" {postrow.U_POST_ONCLICK} class="genmed">{postrow.POST}</a></span></td>
	<td class="row2" align="center" valign="middle"><span class="genmed">
	<!-- BEGIN u_author -->
	<a href="{postrow.U_AUTHOR}" {postrow.U_AUTHOR_ONCLICK} class="genmed">{postrow.AUTHOR}</a>
	<!-- END u_author -->
	<!-- BEGIN no_u_author -->
	{postrow.AUTHOR}
	<!-- END no_u_author -->
	</span></td>
	<td class="row3" align="center" valign="middle"><span class="genmed">
	<a href="{postrow.U_TOPIC}" {postrow.U_TOPIC_ONCLICK} class="genmed">{postrow.TOPIC}</a></span></td>
	<td class="row2" align="center" valign="middle"><span class="genmed">
	<a href="{postrow.U_FORUM}" {postrow.U_FORUM_ONCLICK} class="genmed">{postrow.FORUM}</a></span></td>
	<td class="row3" align="center" valign="middle"><span class="genmed">
	<!-- BEGIN u_reporter -->
	<a href="{postrow.U_REPORTER}" {postrow.U_REPORTER_ONCLICK} class="genmed">{postrow.REPORTER}</a>
	<!-- END u_reporter -->
	<!-- BEGIN no_u_reporter -->
	{postrow.REPORTER}
	<!-- END no_u_reporter -->
	</span></td>
  </tr>
<!-- END postrow -->
</table>
<base target="_self" />
<script type="text/javascript">
<!--
document.write('<p align="center" class="genmed"><a href="javascript:window.close()" class="genmed" >{L_CLOSE_WINDOW}</a> - <a href="javascript:location.reload()" class="genmed" >{L_RELOAD_WINDOW}</a></p>');

function open2(url)
{
	opener.document.location.href = url;
	opener.focus();
	return false;
}
//-->
</script>





