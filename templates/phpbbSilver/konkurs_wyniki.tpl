<div class="konkurs_wyniki-tpl">	
	<p><b>{TITLE}</b>	
	</p>
<script type="text/javascript" language="JavaScript">
<!--
function highlight(row) {
	if (row.className.indexOf('high_row') == -1) row.className += ' ' + 'highlight_row';
}
function unhighlight(row) {
	if (row.className.indexOf('highlight_row') != -1) row.className = row.className.substring(0, row.className.indexOf('highlight_row')) + row.className.substring(row.className.indexOf('highlight_row')+('highlight_row').length);
}
function high(row) {
	if (row.className.indexOf('high_row') != -1) {
		row.className = row.className.substring(0, row.className.indexOf('high_row')) + row.className.substring(row.className.indexOf('high_row')+('high_row').length);
		highlight(row);
	}
	else {
		if (row.className.indexOf('highlight_row') != -1) row.className = row.className.substring(0, row.className.indexOf('highlight_row')) + row.className.substring(row.className.indexOf('highlight_row')+('highlight_row').length);
		row.className += ' ' + 'high_row';
	}
}
//-->
</script>	
	<table class="forumline">		
		<tr>			
			<th class="thtop" ="">&nbsp;#&nbsp; 			
			</th>			
			<th class="thcornerl" ="">&nbsp;{L_WWW}&nbsp; 			
			</th>			
			<th class="thtop" ="">&nbsp;{L_PREZENTACJA}&nbsp; 			
			</th>			
			<th class="thtop" ="">&nbsp;{L_TRESC}&nbsp; 			
			</th>			
			<th class="thtop" ="">&nbsp;{L_OCENA}&nbsp; 			
			</th>			
			<!-- BEGIN switch_recenzent_wyniki_oficjalne -->			
			<th class="thtop" ="">{L_RECENZJE} 			
			</th>			
			<!-- END switch_recenzent_wyniki_oficjalne -->			
			<!-- BEGIN switch_recenzent -->			
			<th class="thtop" ="">&nbsp;{L_KOMENTARZE}&nbsp; 			
			</th>			
			<!-- BEGIN switch_recenzent_level -->			
			<th class="thtop" ="">&nbsp;{L_PUNKTY}&nbsp; 			
			</th>			
			<!-- BEGIN switch_wyniki -->			
			<th class="thtop" ="">&nbsp;{L_DZIALANIE}&nbsp; 			
			</th>			
			<!-- END switch_wyniki -->			
			<!-- END switch_recenzent_level -->			
			<!-- BEGIN switch_wyniki_nieoficjalne -->			
			<th class="thtop" ="">&nbsp;{L_OCEN}&nbsp; 			
			</th>			
			<!-- END switch_wuniki_nieoficjalne -->			
			<!-- BEGIN switch_wyniki -->			
			<th class="thtop" ="">&nbsp;{L_OCENY}&nbsp; 			
			</th>			
			<!-- END switch_wyniki -->			
			<!-- END switch_recenzent -->		
		</tr>		
		<!-- BEGIN wynikirow -->		
		<tr onclick="high(this)" onmouseover="highlight(this)" onmouseout="unhighlight(this)">			
			<td class="row2 {wynikirow.ROW_CLASS}">				
				<span class="gen">&nbsp;{wynikirow.NUMBER}&nbsp; 				
				</span></td>			
			<td class="row1 {wynikirow.ROW_CLASS}">				
				<span class="gen">&nbsp; 					
					<a href="http://{wynikirow.URL}" onmouseover="this.nextSibling.getElementsByTagName('span')[0].style.display = 'inline'" onmouseout="this.nextSibling.getElementsByTagName('span')[0].style.display = 'none'">{wynikirow.URL}</a>					
					<span class="konkurs_wyniki">						
						<span>
<script type="text/javascript"><!--
wsr_snapshot('http://{wynikirow.URL}', 'D4Bto6v2348K', 's');
//--></script>						
						</span>					
					</span>&nbsp; 				
				</span>				
				<!-- BEGIN switch_edycje --><b>					
					<a href="javascript:void(0)" title="{wynikirow.switch_edycje.COUNT}" onclick="with (document.getElementById('www{wynikirow.ID}').style) { if (display == 'none') { display = 'block'; this.innerHTML = '&laquo;'} else { display = 'none'; this.innerHTML = '&raquo;' } } return false">&raquo;</a></b>&nbsp; 				
				<div id="www{wynikirow.ID}" class="gensmall">					
					<!-- BEGIN monthrow -->					
					<a href="{wynikirow.switch_edycje.monthrow.U_HREF}">{wynikirow.switch_edycje.monthrow.NAME}</a>   					
					<!-- END monthrow -->   				
				</div>				
				<!-- END switch_edycje --></td>			
			<td class="row2 {wynikirow.ROW_CLASS}">				
				<span class="genmed">{wynikirow.OCENA_PREZENTACJA} 				
				</span></td>			
			<td class="row2 {wynikirow.ROW_CLASS}">				
				<span class="genmed">{wynikirow.OCENA_TRESC} 				
				</span></td>			
			<td class="row2 {wynikirow.ROW_CLASS}">				
				<span class="genmed"><b>{wynikirow.OCENA}</b>				
				</span></td>			
			<!-- BEGIN switch_recenzent_wyniki_oficjalne -->			
			<td class="row2 {wynikirow.ROW_CLASS}">&nbsp;  				
				<!-- BEGIN switch_recenzje -->   				
				<a href="{wynikirow.switch_recenzent_wyniki_oficjalne.switch_recenzje.U_RECENZJE}">&nbsp;&nbsp;{wynikirow.switch_recenzent_wyniki_oficjalne.switch_recenzje.RECENZJE}&nbsp;&nbsp;&nbsp;</a>				
				<!-- END switch_recenzje -->				
				<!-- BEGIN switch_no_recenzje -->-  				
				<!-- END switch_no_recenzje -->  &nbsp;</td>			
			<!-- END switch_recenzent_wyniki_oficjalne -->			
			<!-- BEGIN switch_recenzent -->			
			<td class="row2 {wynikirow.ROW_CLASS}">&nbsp; 				
				<a href="{wynikirow.switch_recenzent.U_KOMENTARZE}">&nbsp;&nbsp;{wynikirow.switch_recenzent.KOMENTARZE}&nbsp;&nbsp;</a>&nbsp;</td>			
			<!-- BEGIN switch_recenzent_level -->			
			<td class="row2 {wynikirow.ROW_CLASS}">{wynikirow.switch_recenzent.switch_recenzent_level.PUNKTY}</td>			
			<!-- BEGIN switch_wyniki -->			
			<td class="row2 {wynikirow.ROW_CLASS}">				
				<form action="{wynikirow.switch_recenzent.switch_recenzent_level.switch_wyniki.U_USUN}" method="post"  onsubmit="return confirm('{wynikirow.switch_recenzent.switch_recenzent_level.switch_wyniki.L_CONFIRM_USUN}\n\n{wynikirow.URL}')">					
					<input type="hidden" name="konkurs_usun_id" value="{wynikirow.ID}" />					
					<input type="submit" name="konkurs_usun_dyskwalifikacja" value="{wynikirow.switch_recenzent.switch_recenzent_level.switch_wyniki.L_USUN}" title="{wynikirow.switch_recenzent.switch_recenzent_level.switch_wyniki.L_DYSKWALIFIKACJA}" class="liteoption" />				
				</form></td>			
			<!-- END switch_wyniki -->			
			<!-- END switch_recenzent_level -->			
			<!-- BEGIN switch_wyniki_nieoficjalne -->			
			<td class="row2 gensmall {wynikirow.ROW_CLASS} {wynikirow.switch_recenzent.switch_wyniki_nieoficjalne.ROW_CLASS_ALERT}" v ="">				
				<form action="{wynikirow.switch_recenzent.switch_wyniki_nieoficjalne.U_OCEN}" method="post"  onsubmit="if (this.konkurs_ocena_prezentacja.value == '' || this.konkurs_ocena_tresc.value == '') { alert('Wybierz oceny'); return false } return confirm('{wynikirow.URL}\n\nPrezentacja:   ' + this.konkurs_ocena_prezentacja.value + '%\nTre¶æ:             ' + this.konkurs_ocena_tresc.value + '%') ? true : false">					
					<input type="hidden" name="konkurs_ocena_id" value="{wynikirow.ID}" />P: 					
					<select class="gensmall {wynikirow.switch_recenzent.switch_wyniki_nieoficjalne.ROW_CLASS_ALERT}" name="konkurs_ocena_prezentacja">						
						<option value="">- 						
						</option>{wynikirow.switch_recenzent.switch_wyniki_nieoficjalne.OCENA_PREZENTACJA_OPTIONS} 					
					</select>&nbsp;T: 					
					<select class="gensmall {wynikirow.switch_recenzent.switch_wyniki_nieoficjalne.ROW_CLASS_ALERT}" name="konkurs_ocena_tresc">						
						<option value="">- 						
						</option>{wynikirow.switch_recenzent.switch_wyniki_nieoficjalne.OCENA_TRESC_OPTIONS} 					
					</select>&nbsp; 					
					<input class="liteoption {wynikirow.switch_recenzent.switch_wyniki_nieoficjalne.ROW_CLASS_ALERT}" type="submit" value="{wynikirow.switch_recenzent.switch_wyniki_nieoficjalne.L_OK}" />				
				</form></td>			
			<!-- END switch_winiki_nieoficjalne -->			
			<!-- BEGIN switch_wyniki -->			
			<td class="row2 {wynikirow.ROW_CLASS}"  ="">&nbsp;<b>{wynikirow.switch_recenzent.switch_wyniki.OCENY_LICZBA}</b>				
				<!-- BEGIN switch_recenzent_admin --><b>					
					<a href="javascript:void(0)" title="{wynikirow.switch_recenzent.switch_wyniki.switch_recenzent_admin.COUNT}" onclick="with (document.getElementById('oceny{wynikirow.ID}').style) { if (display == 'none') { display = 'block'; this.innerHTML = '&laquo;'} else { display = 'none'; this.innerHTML = '&raquo;' } } return false">&raquo;</a></b>&nbsp; 				
				<div id="oceny{wynikirow.ID}" class="gensmall">					
					<!-- BEGIN ocenyrow -->					
					<div><b>{wynikirow.switch_recenzent.switch_wyniki.switch_recenzent_admin.ocenyrow.USERNAME}</b>:&nbsp;{wynikirow.switch_recenzent.switch_wyniki.switch_recenzent_admin.ocenyrow.OCENA_PREZENTACJA}/{wynikirow.switch_recenzent.switch_wyniki.switch_recenzent_admin.ocenyrow.OCENA_TRESC}/{wynikirow.switch_recenzent.switch_wyniki.switch_recenzent_admin.ocenyrow.OCENA}% 					
					</div>					
					<!-- END ocenyrow -->				
				</div>   				
				<!-- END switch_recenzent_admin -->   				
				<!-- END switch_wyniki -->   				
				<!-- END switch_recenzent -->   		
		</tr>		
		<!-- END wynikirow -->	
	</table><br />	
	<!-- BEGIN switch_recenzent_oceny -->	
	<p>		
		<a href="{switch_recenzent_oceny.U_TWOJE_OCENY}"><b>{switch_recenzent_oceny.L_TWOJE_OCENY}</b></a>	
	</p>	
	<!-- END switch_recenzent_oceny -->
</div>