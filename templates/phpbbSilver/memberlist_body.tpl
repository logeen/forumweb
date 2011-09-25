<form action="{S_MODE_ACTION}" method="post">
<input type="hidden" name="mode" value="search">
<table align="center" cellpadding="2" cellspacing="1" border="0" class="forumline">
<tr>
<th nowrap>&nbsp;{L_USERNAME}&nbsp;</th>
<td class="row1 genmed"><input type="text" name="username" value="{USERNAME}" class="post"> <input type="submit" value="{L_SEARCH}" class="littleoption"></td>
</tr>
<tr>
<td colspan="2" class="row2 gensmall">{L_SEARCH_AUTHOR_EXPLAIN}</td>
</tr>
</table>
</form>

<!-- BEGIN switch_admin_option -->
<form method="post" action="{S_ADMIN_ACTION}" style="margin-bottom: 0">
<input type="hidden" name="mode" value="save" /><input type="hidden" name="submit" value="1" /><input type="hidden" name="username" value="." /><input type="hidden" name="deleteuser" value="1" />
<!-- END switch_admin_option -->
<table width="100%" cellspacing="2" cellpadding="2" border="0">
<tr> 
<td class="nav"><a href="{U_INDEX}">{L_INDEX}</a></td>
</tr>
</table>
<table width="100%" cellpadding="2" cellspacing="1" border="0" class="forumline">
<tr> 
<th class="thcornerl" nowrap height="28">#</th>
<th class="thtop" nowrap>&nbsp;{L_PM}&nbsp;</th>
<th class="thtop" nowrap>&nbsp;{L_USERNAME}&nbsp;</th>
<th class="thtop" nowrap>&nbsp;{L_EMAIL}&nbsp;</th>
<th class="thTop" nowrap="nowrap">{L_GG}</th>
<th class="thTop" nowrap="nowrap">{L_TLEN}</th>
<th class="thtop" nowrap>{L_FROM}</th>
<th class="thtop" nowrap>{L_JOINED}</th>
<th class="thtop" nowrap>{L_LASTVISIT}</th>
<th class="thtop" nowrap>{L_AGE}</th>
<th class="thtop" nowrap>{L_POSTS}</th>
<th class="thtop" nowrap>{L_HELPS}</th>
<th class="thcornerr" nowrap>{L_WEBSITE}</th>
<!-- BEGIN switch_admin_option -->
<th class="thcornerr" nowrap>{L_SELECT}</th>
<!-- END switch_admin_option -->
</tr>
<!-- BEGIN memberrow -->
<tr>
<td class="{memberrow.ROW_CLASS}" align="center">&nbsp;{memberrow.ROW_NUMBER}&nbsp;</td>
<td class="{memberrow.ROW_CLASS}" align="center">&nbsp;{memberrow.PM_IMG}&nbsp;</td>
<td class="{memberrow.ROW_CLASS}" align="center"><a href="{memberrow.U_VIEWPROFILE}">{memberrow.USERNAME}</a></td>
<td class="{memberrow.ROW_CLASS}" align="center">&nbsp;{memberrow.EMAIL_IMG}&nbsp;</td>
<td class="{memberrow.ROW_CLASS}" align="center" valign="middle">{memberrow.GG_STATUS_IMG}</td>
<td class="{memberrow.ROW_CLASS}" align="center" valign="middle">{memberrow.TLEN_STATUS_IMG}</td>
<td class="{memberrow.ROW_CLASS}" align="center">{memberrow.FROM}</td>
<td class="{memberrow.ROW_CLASS}" align="center"><span class="gensmall">{memberrow.JOINED}</span></td>
<td class="{memberrow.ROW_CLASS}" align="center"><span class="gensmall">{memberrow.LASTVISIT}</span></td>
<td class="{memberrow.ROW_CLASS}" align="center"><span class="gensmall">{memberrow.AGE}</span></td>
<td class="{memberrow.ROW_CLASS}" align="center">{memberrow.POSTS}</td>
<td class="{memberrow.ROW_CLASS}" align="center">{memberrow.HELPS}</td>
<td class="{memberrow.ROW_CLASS}" align="center">&nbsp;{memberrow.WWW_IMG}&nbsp;</td>
<!-- BEGIN switch_admin_option -->
<td class="{memberrow.ROW_CLASS}" align="center"><input type="checkbox" name="id[]" value="{memberrow.USER_ID}" /></td>
<!-- END switch_admin_option -->
</tr>
<!-- END memberrow -->
<!-- BEGIN switch_admin_option -->
<tr>
<td class="catbottom" colspan="14" align="right" height="28"> 
<input type="submit" name="remove" value="{L_REMOVE_SELECTED}" class="mainoption" />
</td>
</tr>
<!-- END switch_admin_option -->
</table>
<!-- BEGIN switch_admin_option -->
</form>
<!-- END switch_admin_option -->
<form method="post" action="{S_MODE_ACTION}" style="margin: 0">
<table width="100%" cellpadding="2" cellspacing="1" border="0" class="forumline">
<tr align="center"> 
<td class="catbottom" height="28">{L_SELECT_SORT_METHOD}:&nbsp;{S_MODE_SELECT}&nbsp;&nbsp;{L_ORDER}&nbsp;{S_ORDER_SELECT}&nbsp;&nbsp; 
<input type="submit" name="submit" value="{L_SUBMIT}" class="liteoption" />
</td>
</tr>
</table>
</form>

<table width="100%" cellspacing="2" cellpadding="2" border="0">
<tr> 
<td class="nav"><a href="{U_INDEX}">{L_INDEX}</a><br />
{PAGINATION}</td>
</tr>
</table>

<table width="100%" cellspacing="0" border="0" cellpadding="0">
<tr> 
<td>{JUMPBOX}</td>
</tr>
</table>
