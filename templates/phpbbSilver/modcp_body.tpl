
<form method="post" action="{S_MODCP_ACTION}">
<table width="100%" cellspacing="2" cellpadding="2" border="0">
<tr> 
<td class="nav"><a href="{U_INDEX}">{L_INDEX}</a> &raquo; <a href="{U_VIEW_FORUM}">{FORUM_NAME}</a></td>
</tr>
</table>

  
<table width="100%" cellpadding="4" cellspacing="1" border="0" class="forumline">
<tr> 
<td class="cathead" colspan="5" align="center" height="28"><span class="cattitle">{L_MOD_CP}</span> 
</td>
</tr>
<tr> 
<td class="row1" colspan="5" align="center"><span class="genmed">{L_MOD_CP_EXPLAIN}</span></td>
</tr>
<tr> 
<th width="4%" class="thleft" nowrap height="28">&nbsp;</th>
<th nowrap>&nbsp;{L_TOPICS}&nbsp;</th>
<th width="8%" nowrap>&nbsp;{L_REPLIES}&nbsp;</th>
<th width="17%" nowrap>&nbsp;{L_LASTPOST}&nbsp;</th>
<th width="5%" class="thRight" nowrap>&nbsp;{L_SELECT}&nbsp;</th>
</tr>
<!-- BEGIN topicrow -->
<tr onmouseover="this.className = 'row_hover'" onmouseout="this.className = ''"> 
<td class="row1" align="center"><img src="{topicrow.TOPIC_FOLDER_IMG}" width="33" height="25" alt="{topicrow.L_TOPIC_FOLDER_ALT}" title="{topicrow.L_TOPIC_FOLDER_ALT}" /></td>
<td class="row1">&nbsp;<span class="topictitle">{topicrow.TOPIC_TYPE}<a href="{topicrow.U_VIEW_TOPIC}" class="topictitle">{topicrow.TOPIC_TITLE}</a></span></td>
<td class="row2" align="center"><span class="postdetails">{topicrow.REPLIES}</span></td>
<td class="row1" align="center"><span class="postdetails">{topicrow.LAST_POST_TIME}</span></td>
<td class="row2" align="center"> 
<input type="checkbox" name="topic_id_list[]" value="{topicrow.TOPIC_ID}" />
</td>
</tr>
<!-- END topicrow -->
<tr align="right"> 
<td class="catbottom" colspan="5" height="28"> {S_HIDDEN_FIELDS} 
<input type="submit" name="delete" class="liteoption" value="{L_DELETE}" />
&nbsp; 
<input type="submit" name="move" class="liteoption" value="{L_MOVE}" />
&nbsp; 
<input type="submit" name="lock" class="liteoption" value="{L_LOCK}" />
&nbsp; 
<input type="submit" name="unlock" class="liteoption" value="{L_UNLOCK}" />
&nbsp;
<input type="submit" name="merge" class="liteoption" value="{L_MERGE}" />
</td>
</tr>
</table>
  
<table width="100%" cellspacing="2" cellpadding="2" border="0">
<tr> 
<td class="nav"><a href="{U_INDEX}">{L_INDEX}</a> &raquo; <a href="{U_VIEW_FORUM}">{FORUM_NAME}</a><br />
<br />
{PAGINATION}</td>
</tr>
</table>
</form>
<table width="100%" border="0" cellspacing="0" cellpadding="0">
 <tr> 
<td>{JUMPBOX}</td>
</tr>
</table>
