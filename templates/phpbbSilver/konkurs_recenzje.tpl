<p id="recenzje" align="left" style="text-align: left; font-size: 14pt"><b><a href="http://{URL}">{URL}</a></b></p>
<!-- BEGIN recenzjerow -->
<table width="100%" cellpadding="2" cellspacing="1" border="0" class="forumline">
<tr>
<td align="justify" class="row2" style="padding: 5px">
<!-- BEGIN switch_self -->
<div style="text-align: right">[<a href="{recenzjerow.switch_self.U_EDYTUJ}">{recenzjerow.switch_self.L_EDYTUJ}</a>] [<a href="{recenzjerow.switch_self.U_USUN}" onclick="return confirm('{recenzjerow.switch_self.CONFIRM_USUN}') ? true : false">{recenzjerow.switch_self.L_USUN}</a>]</div><hr />
<!-- END switch_self -->
{recenzjerow.RECENZJA}
</td>
</tr>
<!-- BEGIN switch_user -->
<tr>
<td align="center" class="row1"><a href="{recenzjerow.switch_user.U_PROFILE}"><b>{recenzjerow.switch_user.USERNAME}</b></a></td>
</tr>
<!-- END switch_user -->
</table>
<br />
<!-- END recenzjerow -->
<!-- BEGIN switch_formularz_recenzja -->
<br />
<form id="dodaj_recenzje" action="{switch_formularz_recenzja.U_DODAJ}" method="post">
{switch_formularz_recenzja.S_HIDDEN_FIELDS}
<table width="100%" cellpadding="2" cellspacing="1" border="0" class="forumline">
<tr>
<th colspan="2" class="thtop" nowrap height="28">&nbsp;{switch_formularz_recenzja.TITLE}&nbsp;<sup>*</sup></th>
</tr>
<tr>
<td class="row2" valign="middle" style="vertical-align: middle"><a href="http://{URL}">{URL}</a></td>
</tr>
<tr>
<td class="row2" valign="middle" style="vertical-align: middle">Prezentacja:&nbsp;<select name="konkurs_ocena_prezentacja"><option value="">-</option>{switch_formularz_recenzja.OCENA_PREZENTACJA_OPTIONS}</select> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Tre¶æ:&nbsp;<select name="konkurs_ocena_tresc"><option value="">-</option>{switch_formularz_recenzja.OCENA_TRESC_OPTIONS}</select></td>
</tr>
<tr>
<td class="row2">
<textarea name="recenzja" cols="75" rows="10" class="post" style="width: 100%">{switch_formularz_recenzja.RECENZJA}</textarea>
</td>
</tr>
<tr>
<td class="row2"><input type="checkbox" id="label__show_user" name="show_user" value="1" style="vertical-align: middle" {switch_formularz_recenzja.USER_CHECKED} />&nbsp;<label for="label__show_user">{switch_formularz_recenzja.USER_LABEL}</label></td>
</tr>
<tr>
<td colspan="2" class="row1" align="center" style="text-align: center"><input type="submit" value="{switch_formularz_recenzja.L_WYSLIJ}" class="mainoption" /></td>
</tr>
</table>
<div style="font-size: 10px; text-align: left">* {switch_formularz_recenzja.DISCLAIMER}</div>
</form>
<!-- END switch_formularz_recenzja -->