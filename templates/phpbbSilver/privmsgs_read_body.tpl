
<table cellspacing="2" cellpadding="2" border="0">
<tr> 
<td>{INBOX_IMG}</td>
<td class="cattitle">{INBOX} &nbsp;</td>
<td>{SENTBOX_IMG}</td>
<td class="cattitle">{SENTBOX} &nbsp;</td>
<td>{OUTBOX_IMG}</td>
<td class="cattitle">{OUTBOX} &nbsp;</td>
<td>{SAVEBOX_IMG}</td>
<td class="cattitle">{SAVEBOX}</td>
</tr>
</table>

<br clear="all" />

<table width="100%" cellspacing="2" cellpadding="2" border="0">
<tr> 
<td>{REPLY_PM_IMG}</td>
<td width="100%" class="nav">&nbsp;<a href="{U_INDEX}">{L_INDEX}</a></td>
</tr>
</table>

<table id="content" border="0" cellpadding="3" cellspacing="1" width="100%" class="forumline">
<tr> 
<th colspan="3" class="thhead" nowrap height="28">{BOX_NAME} :: {L_MESSAGE}</th>
</tr>
<tr> 
<td class="row2"><span class="genmed">{L_FROM}:</span></td>
<td class="row2" colspan="2"><span class="genmed">{MESSAGE_FROM}</span></td>
</tr>
<tr> 
<td class="row2"><span class="genmed">{L_TO}:</span></td>
<td class="row2" colspan="2"><span class="genmed">{MESSAGE_TO}</span></td>
</tr>
<tr> 
<td class="row2"><span class="genmed">{L_POSTED}:</span></td>
<td class="row2" colspan="2"><span class="genmed">{POST_DATE}</span></td>
</tr>
<tr> 
<td class="row2"><span class="genmed">{L_SUBJECT}:</span></td>
<td width="100%" class="row2"><span class="genmed">{POST_SUBJECT}</span></td>
<td nowrap class="row2" align="right">&nbsp;{QUICK_QUOTE_IMG} {QUOTE_PM_IMG} {EDIT_PM_IMG}</td>
</tr>
<tr> 
<td valign="top" colspan="3" class="row1"><span class="postbody">{MESSAGE}</span></td>
</tr>
<tr> 
<td height="28" valign="bottom" colspan="3" class="row1"> 
<table cellspacing="0" cellpadding="0" border="0" height="18">
<tr> 
<td nowrap>{PROFILE_IMG} {PM_IMG} {EMAIL_IMG} {WWW_IMG} {AIM_IMG} {YIM_IMG} {MSN_IMG} 
{ICQ_IMG}</td>
</tr>
</table>
</td>
</tr>
<tr> 
<td class="catbottom" colspan="3" align="right"><form method="post" action="{S_PRIVMSGS_ACTION}" style="margin: 0">{S_HIDDEN_FIELDS} 
<input type="submit" name="save" value="{L_SAVE_MSG}" class="liteoption" />
&nbsp; 
<input type="submit" name="delete" value="{L_DELETE_MSG}" class="liteoption" /></form></td>
</tr>
</table>
  
<table width="100%" cellspacing="2" border="0" cellpadding="2">
<tr> 
<td>{REPLY_PM_IMG}</td>
<td width="100%" class="nav">&nbsp;<a href="{U_INDEX}">{L_INDEX}</a></td>
</tr>
</table>
{QUICKREPLY_OUTPUT}
<table width="100%" cellspacing="0" border="0" cellpadding="0">
<tr> 
<td>{JUMPBOX}</td>
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