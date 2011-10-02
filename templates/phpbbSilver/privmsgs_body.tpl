 
<script language="Javascript" type="text/javascript">
	//
	// Should really check the browser to stop this whining ...
	//
	function select_switch(status)
	{
		for (i = 0; i < document.privmsg_list.length; i++)
		{
			document.privmsg_list.elements[i].checked = status;
		}
	}
</script>
<table    >
<tr> 
<td>{INBOX_IMG}</td>
<td class="cattitle">{INBOX} &nbsp;</td>
<td>{SENTBOX_IMG}</td>
<td class="cattitle">{SENTBOX} &nbsp;</td>
<td>{OUTBOX_IMG}</td>
<td class="cattitle">{OUTBOX} &nbsp;</td>
<td>{SAVEBOX_IMG}</td>
<td class="cattitle">{SAVEBOX} &nbsp;</td>
</tr>
</table>
<br  />

<form method="post" name="privmsg_list" action="{S_PRIVMSGS_ACTION}">
<table    >
<tr> 
<td>{POST_PM_IMG}</td>
<td class="nav" >&nbsp;<a href="{U_INDEX}">{L_INDEX}</a></td>
	  <td class="gensmall"  >{L_DISPLAY_MESSAGES}: 
		<select name="msgdays">{S_SELECT_MSG_DAYS}</select>
		<input type="submit" value="{L_GO}" name="submit_msgdays" class="liteoption" />
		</td>
	</tr>
  </table>
<table     class="forumline">
<tr> 
<th  class="thcornerl" >&nbsp;{L_FLAG}&nbsp;</th>
	  <th  class="thtop" >&nbsp;{L_SUBJECT}&nbsp;</th>
	  <th  class="thtop" >&nbsp;{L_FROM_OR_TO}&nbsp;</th>
	  <th  class="thtop" >&nbsp;{L_DATE}&nbsp;</th>
	  <th  class="thcornerr" >&nbsp;{L_MARK}&nbsp;</th>
	</tr>
	<!-- BEGIN listrow -->
	<tr> 
<td class="{listrow.ROW_CLASS}"  ><a href="{listrow.U_PRIVMSG_FOLDER}"><img src="{listrow.PRIVMSG_FOLDER_IMG}"   alt="{listrow.L_PRIVMSG_FOLDER_ALT}" title="{listrow.L_PRIVMSG_FOLDER_ALT}"  /></a></td>
<td class="{listrow.ROW_CLASS}">&nbsp;<a href="{listrow.U_READ}" class="topictitle">{listrow.SUBJECT}</a></td>
<td   class="{listrow.ROW_CLASS}">&nbsp;<a href="{listrow.U_FROM_USER_PROFILE}" class="name">{listrow.FROM}</a></td>
<td   class="{listrow.ROW_CLASS}"><span class="postdetails"><time datetime="{listrow.DATE_DATETIME}">{listrow.DATE}</time></span></td>
<td   class="{listrow.ROW_CLASS}"><span class="postdetails"> 
<input type="checkbox" name="mark[]2" value="{listrow.S_MARK_ID}" />
</span></td>
</tr>
<!-- END listrow -->
<!-- BEGIN switch_no_messages -->
<tr> 
<td class="row1" colspan="5" ><span class="gen">{L_NO_MESSAGES}</span></td>
	</tr>
<!-- END switch_no_messages -->
	<tr> 
	  <td class="catbottom" colspan="5"  > {S_HIDDEN_FIELDS} 
		<input type="submit" name="save" value="{L_SAVE_MARKED}" class="mainoption" />&nbsp; 
		<input type="submit" name="delete" value="{L_DELETE_MARKED}" class="liteoption" />	&nbsp; 
		<input type="submit" name="deleteall" value="{L_DELETE_ALL}" class="liteoption" />
	  </td>
	</tr>
  </table>
<table    >
<tr> 
<td>{POST_PM_IMG}</td>
<td class="nav" >&nbsp;<a href="{U_INDEX}">{L_INDEX}</a></td>
<td class="gensmall"  v ><strong> 
<!-- BEGIN switch_box_size_notice -->
{BOX_SIZE_STATUS} :: 
<!-- END switch_box_size_notice -->
<a href="javascript:select_switch(true);">{L_MARK_ALL}</a> :: <a href="javascript:select_switch(false);">{L_UNMARK_ALL}</a></strong></td>
</tr>
<tr> 
<td class="nav" colspan="3">{PAGINATION}</td>
</tr>
</table>
</form>
<table    >
<tr> 
<td v>{JUMPBOX}</td>
</tr>
</table>
