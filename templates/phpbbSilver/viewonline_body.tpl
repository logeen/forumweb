
<table width="100%" cellspacing="2" cellpadding="2" border="0">
<tr> 
<td class="nav"><a href="{U_INDEX}">{L_INDEX}</a></td>
</tr>
</table>

<table width="100%" cellpadding="3" cellspacing="1" border="0" class="forumline">
<tr> 
<th width="35%" class="thcornerl">&nbsp;{L_USERNAME}&nbsp;</th>
<th width="25%" class="thtop">&nbsp;{L_LAST_UPDATE}&nbsp;</th>
<th width="40%" class="thcornerr">&nbsp;{L_FORUM_LOCATION}&nbsp;</th>
</tr>
<tr> 
<td class="catsides" colspan="3" height="28"><span class="cattitle">{TOTAL_REGISTERED_USERS_ONLINE}</span></td>
</tr>
<!-- BEGIN reg_user_row -->
<tr> 
<td width="35%" class="{reg_user_row.ROW_CLASS}">&nbsp;<a href="{reg_user_row.U_USER_PROFILE}">{reg_user_row.USERNAME}</a>&nbsp;</td>
<td width="25%" align="center" nowrap class="{reg_user_row.ROW_CLASS}">&nbsp;{reg_user_row.LASTUPDATE}&nbsp;</td>
<td width="40%" class="{reg_user_row.ROW_CLASS}" align="center">&nbsp;<a href="{reg_user_row.U_FORUM_LOCATION}">{reg_user_row.FORUM_LOCATION}</a>&nbsp;</td>
</tr>
<!-- END reg_user_row -->
<tr> 
<td colspan="3" height="1" class="row3"><img src="templates/phpbbSilver/images/spacer.gif" width="1" height="1" alt="."></td>
</tr>
<tr> 
<td class="catsides" colspan="3" height="28"><span class="cattitle">{TOTAL_GUEST_USERS_ONLINE}</span></td>
</tr>
<!-- BEGIN guest_user_row -->
<tr> 
<td width="35%" class="{guest_user_row.ROW_CLASS}">&nbsp;{guest_user_row.USERNAME}&nbsp;</td>
<td width="25%" align="center" nowrap class="{guest_user_row.ROW_CLASS}">&nbsp;{guest_user_row.LASTUPDATE}&nbsp;</td>
<td width="40%" class="{guest_user_row.ROW_CLASS}" align="center">&nbsp;<a href="{guest_user_row.U_FORUM_LOCATION}">{guest_user_row.FORUM_LOCATION}</a>&nbsp;</td>
</tr>
<!-- END guest_user_row -->
<tr> 
<td colspan="3" class="row1"><span class="genmed">{L_ONLINE_EXPLAIN}</span></td>
</tr>
</table>

<table width="100%" cellspacing="2" cellpadding="2" border="0">
<tr> 
<td class="nav"><a href="{U_INDEX}">{L_INDEX}</a><br />
<br />
{JUMPBOX}</td>
</tr>
</table>