
<form method="post" action="{S_SPLIT_ACTION}">
  
<table width="100%" cellspacing="2" cellpadding="2" border="0">
<tr> 
<td class="nav"><a href="{U_INDEX}">{L_INDEX}</a> &raquo; <a href="{U_VIEW_FORUM}">{FORUM_NAME}</a></td>
</tr>
</table>
  
<table width="100%" cellpadding="4" cellspacing="1" border="0" class="forumline">
<tr> 
<th class="thhead" colspan="3" nowrap height="28">{L_SPLIT_TOPIC}</th>
</tr>
<tr> 
<td class="row1" colspan="3" align="center"><span class="genmed">{L_SPLIT_TOPIC_EXPLAIN}</span></td>
</tr>
<tr> 
<td class="row1" nowrap>{L_SPLIT_SUBJECT}</td>
<td class="row2" colspan="2"><span class="courier"> 
<input type="text" size="35" style="width: 350px" maxlength="100" name="subject" class="post" />
</span> <a href="posting.php?mode=topicreview&amp;t=169" onclick="document.getElementById('iframe_regulations').style.display = document.getElementById('iframe_regulations').style.display == 'none' ? 'block' : 'none'; return false"><b>{L_REGULATIONS}...</b></a> <iframe style="display: none" id="iframe_regulations" src="posting.php?mode=topicreview&amp;t=169" width="100%" height="300"></iframe></td>
</tr>
<tr> 
<td class="row1" nowrap>{L_SPLIT_FORUM}</td>
<td class="row2" colspan="2">{S_FORUM_SELECT}</td>
</tr>
<tr align="center"> 
<td class="cathead" colspan="3" height="28"> 
<input class="liteoption" type="submit" name="split_type_all" value="{L_SPLIT_POSTS}" />
&nbsp;&nbsp;&nbsp;&nbsp; 
<input class="liteoption" type="submit" name="split_type_beyond" value="{L_SPLIT_AFTER}" />
</td>
</tr>
<tr> 
<th class="thleft" nowrap height="28">{L_AUTHOR}</th>
<th nowrap>{L_MESSAGE}</th>
<th class="thright" nowrap>&nbsp;{L_SELECT}&nbsp;</th>
</tr>
<!-- BEGIN postrow -->
<tr> 
<td valign="top" class="{postrow.ROW_CLASS}"><span class="name"><a name="{postrow.U_POST_ID}"></a>{postrow.POSTER_NAME}</span></td>
<td width="100%" valign="top" class="{postrow.ROW_CLASS}"> 
<table width="100%" cellspacing="0" cellpadding="3" border="0">
<tr> 
<td class="postdetails"><img src="templates/phpbbSilver/images/icon_minipost.gif" alt="{L_POST}" width="12" height="9">{L_POSTED}: 
{postrow.POST_DATE}&nbsp;&nbsp;&nbsp;&nbsp;{L_POST_SUBJECT}: {postrow.POST_SUBJECT}</td>
<td align="right" valign="top">{postrow.REPORT_IMG}</td>
</tr>
<tr> 
<td colspan="2" valign="top" class="postbody"> 
<hr size="1" />
{postrow.MESSAGE}</td>
</tr>
</table>
</td>
<td width="5%" align="center" class="{postrow.ROW_CLASS}">{postrow.S_SPLIT_CHECKBOX}</td>
</tr>
<tr> 
<td colspan="3" height="1" class="spacerow"><img src="templates/phpbbSilver/images/spacer.gif" width="1" height="1" alt="."></td>
</tr>
<!-- END postrow -->
<tr> 
<td class="catBottom" colspan="3" height="28" align="center"> 
<input class="liteoption" type="submit" name="split_type_all" value="{L_SPLIT_POSTS}" />
&nbsp;&nbsp;&nbsp;&nbsp; 
<input class="liteoption" type="submit" name="split_type_beyond" value="{L_SPLIT_AFTER}" />
{S_HIDDEN_FIELDS} </td>
</tr>
</table>
<table width="100%" cellspacing="2" cellpadding="2" border="0">
<tr> 
<td class="nav"><a href="{U_INDEX}">{L_INDEX}</a> &raquo; <a href="{U_VIEW_FORUM}">{FORUM_NAME}</a></td>
</tr>
</table>
</form>
