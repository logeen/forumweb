
<table    >
<tr> 
<td class="nav"><a href="{U_INDEX}">{L_INDEX}</a></td>
</tr>
</table>

<table     class="forumline">
<tr> 
<th  class="thcornerl">&nbsp;{L_USERNAME}&nbsp;</th>
<th  class="thtop">&nbsp;{L_LAST_UPDATE}&nbsp;</th>
<th  class="thcornerr">&nbsp;{L_FORUM_LOCATION}&nbsp;</th>
</tr>
<tr> 
<td class="catsides" colspan="3" ><span class="cattitle">{TOTAL_REGISTERED_USERS_ONLINE}</span></td>
</tr>
<!-- BEGIN reg_user_row -->
<tr> 
<td  class="{reg_user_row.ROW_CLASS}">&nbsp;<a href="{reg_user_row.U_USER_PROFILE}">{reg_user_row.USERNAME}</a>&nbsp;</td>
<td    class="{reg_user_row.ROW_CLASS}">&nbsp;<time datetime="{reg_user_row.LASTUPDATE_DATETIME}">{reg_user_row.LASTUPDATE}</time>&nbsp;</td>
<td  class="{reg_user_row.ROW_CLASS}" >&nbsp;<a href="{reg_user_row.U_FORUM_LOCATION}">{reg_user_row.FORUM_LOCATION}</a>&nbsp;</td>
</tr>
<!-- END reg_user_row -->
<tr> 
<td colspan="3"  class="row3"><img src="templates/phpbbSilver/images/spacer.gif"   alt="."></td>
</tr>
<tr> 
<td class="catsides" colspan="3" ><span class="cattitle">{TOTAL_GUEST_USERS_ONLINE}</span></td>
</tr>
<!-- BEGIN guest_user_row -->
<tr> 
<td  class="{guest_user_row.ROW_CLASS}">&nbsp;{guest_user_row.USERNAME}&nbsp;</td>
<td    class="{guest_user_row.ROW_CLASS}">&nbsp;<time datetime="{guest_user_row.LASTUPDATE_DATETIME}">{guest_user_row.LASTUPDATE}</time>&nbsp;</td>
<td  class="{guest_user_row.ROW_CLASS}" >&nbsp;<a href="{guest_user_row.U_FORUM_LOCATION}">{guest_user_row.FORUM_LOCATION}</a>&nbsp;</td>
</tr>
<!-- END guest_user_row -->
<tr> 
<td colspan="3" class="row1"><span class="genmed">{L_ONLINE_EXPLAIN}</span></td>
</tr>
</table>

<table    >
<tr> 
<td class="nav"><a href="{U_INDEX}">{L_INDEX}</a><br />
<br />
{JUMPBOX}</td>
</tr>
</table>
