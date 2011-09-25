 
<form action="{S_LOGIN_ACTION}" method="post" target="_top">

<table    >
<tr> 
	
<td class="nav"><a href="{U_INDEX}">{L_INDEX}</a></td>
  </tr>
</table>

<table     class="forumline">
<tr> 
<th class="thhead"  >{L_ENTER_PASSWORD}</th>
</tr>
<tr> 
<td class="row1"> 
<table    >
<tr> 
<td colspan="2">&nbsp;</td>
</tr>
<tr> 
<td  >{L_USERNAME}:</td>
<td > 
<input type="text" name="username" size="25" maxlength="40" value="{USERNAME}" class="post" />
</td>
</tr>
<tr> 
<td >{L_PASSWORD}:</td>
<td> 
<input type="password" name="password" size="25" maxlength="25" class="post" />
</td>
</tr>
<!-- BEGIN switch_allow_autologin -->
<tr> 
<td colspan="2" ><label for="label__autologin">{L_AUTO_LOGIN}:</label> 
<input type="checkbox" id="label__autologin" name="autologin" />
</td>
</tr>
<!-- END switch_allow_autologin -->
<tr> 
<td colspan="2" >{S_HIDDEN_FIELDS} 
<input type="submit" name="login" class="mainoption" value="{L_LOGIN}" />
</td>
</tr>
<tr> 
<td colspan="2" class="gensmall" ><a href="{U_SEND_PASSWORD}">{L_SEND_PASSWORD}</a></td>
</tr>
</table>
</td>
</tr>
<tr>
<td class="catbottom" >&nbsp;</td>
</tr>
</table>

</form>
