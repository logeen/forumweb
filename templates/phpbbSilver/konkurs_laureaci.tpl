<p style="text-align: center; font-size: 14px"><b>{L_LAUREACI}<br /><span style="font-size: 14pt">{EDYCJA}</span></b></p>
<table align="center" cellpadding="2" cellspacing="1" border="0" class="forumline">
<tr>
<th class="thtop" nowrap height="28">&nbsp;#&nbsp;</th>
<th class="thcornerl" nowrap width="320" colspan="2">&nbsp;{L_WWW}&nbsp;</th>
<th class="thtop" nowrap width="80">&nbsp;{L_PUNKTY}&nbsp;</th>
<th class="thtop" nowrap width="80">&nbsp;{L_PKT}&nbsp;[%]&nbsp;</th>
<!-- BEGIN switch_recenzent_admin -->
<th class="thtop" nowrap>&nbsp;{L_REKLAMA}&nbsp;</th>
<!-- END switch_recenzent_admin -->
</tr>
<!-- BEGIN laureacirow -->
<tr id="{laureacirow.ID}">
<td class="row2" align="center"><span class="gen">&nbsp;{laureacirow.NUMBER}&nbsp;</span></td>
<td class="row1" width="110"><span class="konkurs_wyniki" onmouseover="this.getElementsByTagName('span')[1].style.display = 'inline'" onmouseout="this.getElementsByTagName('span')[1].style.display = 'none'"><span class="konkurs_laureaci">
<script type="text/javascript"><!--
wsr_snapshot('http://{laureacirow.URL}', 'D4Bto6v2348K', 't');
//--></script>
</span><span style="display: none; position: absolute; margin-left: 110px; margin-top: -90px">
<script type="text/javascript"><!--
wsr_snapshot('http://{laureacirow.URL}', 'D4Bto6v2348K', 's');
//--></script>
</span></span></td>
<td class="row1" width="200"><span class="gen">&nbsp;<a href="http://{laureacirow.URL}">{laureacirow.URL}</a>&nbsp;</span></td>
<td class="row2" align="center" style="padding: 0; font-size: 8pt">&nbsp;{laureacirow.PUNKTY}&nbsp;</td>
<td class="row2" align="center" style="padding: 0; font-size: 8pt">&nbsp;{laureacirow.PKT}%&nbsp;</td>
<!-- BEGIN switch_recenzent_admin -->
<td class="row2"><form action="{laureacirow.U_EDYTUJ}" method="post" style="display: inline"><input type="hidden" name="konkurs_laureat_id" value="{laureacirow.ID}" /><input type="text" name="konkurs_laureat_reklama" value="{laureacirow.REKLAMA}" maxlength="255" /> <input type="submit" value="{L_OK}" /></form></td>
<!-- END switch_recenzent_admin -->
</tr>
<!-- END laureacirow -->
</table>