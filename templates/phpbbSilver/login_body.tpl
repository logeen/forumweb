 
<form action="{S_LOGIN_ACTION}" method="post" target="_top">

<table width="100%" cellspacing="2" cellpadding="2" border="0">
<tr> 
	
<td class="nav"><a href="{U_INDEX}">{L_INDEX}</a></td>
  </tr>
</table>

<table width="100%" cellpadding="3" cellspacing="1" border="0" class="forumline">
<tr> 
<th class="thhead" nowrap height="28">{L_ENTER_PASSWORD}</th>
</tr>
<tr> 
<td class="row1"> 
<table border="0" cellpadding="3" cellspacing="1" width="100%">
<tr> 
<td colspan="2">&nbsp;</td>
</tr>
<tr> 
<td width="45%" align="right">{L_USERNAME}:</td>
<td width="55%"> 
<input type="text" name="username" size="25" maxlength="40" value="{USERNAME}" class="post" />
</td>
</tr>
<tr> 
<td align="right">{L_PASSWORD}:</td>
<td> 
<input type="password" name="password" size="25" maxlength="25" class="post" />
</td>
</tr>
<!-- BEGIN switch_allow_autologin -->
<tr> 
<td colspan="2" align="center"><label for="label__autologin">{L_AUTO_LOGIN}:</label> 
<input type="checkbox" id="label__autologin" name="autologin" />
</td>
</tr>
<!-- END switch_allow_autologin -->
<tr> 
<td colspan="2" align="center">{S_HIDDEN_FIELDS} 
<input type="submit" name="login" class="mainoption" value="{L_LOGIN}" />
</td>
</tr>
<tr> 
<td colspan="2" class="gensmall" align="center"><a href="{U_SEND_PASSWORD}">{L_SEND_PASSWORD}</a></td>
</tr>
</table>
</td>
</tr>
<tr>
<td class="catbottom" height="28">&nbsp;</td>
</tr>
</table>

</form>
