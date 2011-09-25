<p ><b>{L_LAUREACI}<br /><span >{EDYCJA}</span></b></p>
<table     class="forumline">
<tr>
<th class="thtop"  >&nbsp;#&nbsp;</th>
<th class="thcornerl"   colspan="2">&nbsp;{L_WWW}&nbsp;</th>
<th class="thtop"  >&nbsp;{L_PUNKTY}&nbsp;</th>
<th class="thtop"  >&nbsp;{L_PKT}&nbsp;[%]&nbsp;</th>
<!-- BEGIN switch_recenzent_admin -->
<th class="thtop" >&nbsp;{L_REKLAMA}&nbsp;</th>
<!-- END switch_recenzent_admin -->
</tr>
<!-- BEGIN laureacirow -->
<tr id="{laureacirow.ID}">
<td class="row2" ><span class="gen">&nbsp;{laureacirow.NUMBER}&nbsp;</span></td>
<td class="row1" ><span class="konkurs_wyniki" onmouseover="this.getElementsByTagName('span')[1].style.display = 'inline'" onmouseout="this.getElementsByTagName('span')[1].style.display = 'none'"><span class="konkurs_laureaci">
<script type="text/javascript"><!--
wsr_snapshot('http://{laureacirow.URL}', 'D4Bto6v2348K', 't');
//--></script>
</span><span >
<script type="text/javascript"><!--
wsr_snapshot('http://{laureacirow.URL}', 'D4Bto6v2348K', 's');
//--></script>
</span></span></td>
<td class="row1" ><span class="gen">&nbsp;<a href="http://{laureacirow.URL}">{laureacirow.URL}</a>&nbsp;</span></td>
<td class="row2"  >&nbsp;{laureacirow.PUNKTY}&nbsp;</td>
<td class="row2"  >&nbsp;{laureacirow.PKT}%&nbsp;</td>
<!-- BEGIN switch_recenzent_admin -->
<td class="row2"><form action="{laureacirow.U_EDYTUJ}" method="post" ><input type="hidden" name="konkurs_laureat_id" value="{laureacirow.ID}" /><input type="text" name="konkurs_laureat_reklama" value="{laureacirow.REKLAMA}" maxlength="255" /> <input type="submit" value="{L_OK}" /></form></td>
<!-- END switch_recenzent_admin -->
</tr>
<!-- END laureacirow -->
</table>