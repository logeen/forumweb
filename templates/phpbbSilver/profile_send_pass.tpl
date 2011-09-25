
<form action="{S_PROFILE_ACTION}" method="post">
<table    >
<tr> 
<td class="nav"><a href="{U_INDEX}">{L_INDEX}</a></td>
</tr>
</table>
  
<table     class="forumline">
<tr> 
<th class="thhead" colspan="2" >{L_SEND_PASSWORD}</th>
</tr>
<tr> 
<td class="row2" colspan="2"><span class="gensmall">{L_ITEMS_REQUIRED}</span></td>
</tr>
<tr> 
<td class="row1" >{L_USERNAME}: *</td>
<td class="row2" > 
<input type="text" class="post"  name="username" size="25" maxlength="40" value="{USERNAME}" />
</td>
</tr>
<tr> 
<td class="row1">{L_EMAIL_ADDRESS}: *</td>
<td class="row2"> 
<input type="text" class="post"  name="email" size="25" maxlength="255" value="{EMAIL}" />
</td>
</tr>
<tr> 
<td class="catbottom" colspan="2"  >{S_HIDDEN_FIELDS} 
<input type="submit" name="submit" value="{L_SUBMIT}" class="mainoption" />
&nbsp;&nbsp; 
<input type="reset" value="{L_RESET}" name="reset" class="liteoption" />
</td>
</tr>
</table>
</form>
