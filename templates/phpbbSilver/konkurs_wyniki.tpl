<section class="konkurs_wyniki-tpl">
	<h1>{TITLE}</h1>
	<table>
		<tr>
			<th>#</th>
			<th>{L_WWW}</th>
			<th>{L_PREZENTACJA}</th>
			<th>{L_TRESC}</th>
			<th>{L_OCENA}</th>
			<!-- BEGIN switch_recenzent_wyniki_oficjalne -->
			<th>{L_RECENZJE}</th>
			<!-- END switch_recenzent_wyniki_oficjalnie -->
			<!-- BEGIN switch_recenzent -->
			<th>{L_KOMENTARZE}</th>
			<!-- BEGIN switch_recenzent_level -->
			<th>{L_PUNKTY}</th>
			<!-- BEGIN switch_wyniki -->
			<th>{L_DZIALANIE}</th>
			<!-- END switch_wyniki -->
			<!-- END switch_recenzent_level -->
			<!-- BEGIN switch_wyniki_nieoficjalne -->
			<th>{L_OCEN}</th>
			<!-- END switch_wyniki_nieoficjalne -->
			<!-- BEGIN switch_wynki -->
			<th>{L_OCENY}</th>
			<!-- END switch_wyniki -->
			<!-- END switch_recenzent -->
		</tr>
		<!-- BEGIN wynikirow -->
		<tr>
			<td>
				{wynikirow.NUMBER}
			</td>
			<td>
				<a href="http://{wynikirow.URL}">{wynikirow.URL}</a>
				<!-- BEGIN switch_edycje -->
				<b>
					<a href="javascript:void(0)" title="{wynikirow.switch_edycje.COUNT}" onclick="with (document.getElementById('www{wynikirow.ID}').style) { if (display == 'none') { display = 'block'; this.innerHTML = '&laquo;'} else { display = 'none'; this.innerHTML = '&raquo;' } } return false">&raquo;</a>
				</b>
				<div id="www{wynikirow.ID}">
					<!-- BEGIN monthrow -->
					<a href="{wynikirow.switch_edycje.monthrow.U_HREF}">{wynikirow.switch_edycje.monthrow.NAME</a>
					<!-- END monthrow -->
				</div>
				<!-- END switch_edycje -->
			</td>
			<td>
				{wynikirow.OCENA_PREZENTACJA}
			</td>
			<td>
				{wynikirow.OCENA_TRESC}
			</td>
			<td>
				{wynikirow.OCENA}
			</td>
			<!-- BEGIN switch_recenzent_wyniki_oficjalne -->
			<td>
				<!-- BEGIN switch_recenzje -->
				<a href="{wynikirow.switch_recenzent_wyniki_oficjalne.switch_recenzje.U_RECENZJE">{wynikirow.switch_recenzent_wyniki_oficjalne.switch_recenzje.RECENZJE}</a>
				<!-- END switch_recenzje -->
				<!-- BEGIN switch_no_recenzje -->
				&ndash;
				<!-- END switch_no_recenzje -->
			</td>
			<!-- END switch_recenzent_wyniki_oficjalne -->
			<!-- BEGIN switch_recenzent -->
			<td>
				<a href="{wynikirow.switch_recenzent.U_KOMENTARZE}">{wynikirow.switch_recenzent.KOMENTARZE}</a>
			</td>
			<!-- BEGIN switch_recenzent_level -->
			<td>
				{wynikirow.switch_recenzent.switch_recenzent_level.PUNKTY}
			</td>
			<!-- BEGIN switch_wyniki -->
			<td>
				<form action="{wynikirow.switch_recenzent.switch_recenzent_level.switch_wyniki.U_USUN}" method="post" onsubmit="return confirm('{wynikirow.switch_recenzent.switch_recenzent_level.switch_wyniki.L_CONFIRM_USUN}\n\n{wynikirow.URL}')">
					<input type="hidden" name="konkurs_usun_id" value="{wynikirow.ID}">
					<input type="submit" name="konkurs_usun_dyskwalifikacja" value="{wynikirow.switch_recenzent.switch_recenzent_level.switch_wyniki.L_USUN" title="{wynikirow.switch_recenzent.switch_recenzent_level.switch_wyniki.L_DYSKWALIFIKACJA}">
				</form>
			</td>
			<!-- END switch_wyniki -->
			<!-- END switch_recenzent_level -->
			<!-- BEGIN switch_wyniki_nieoficjalne -->
			<td>
				<form action="{wynikirow.switch_recenzent.switch_wyniki_nieoficjalne.U_OCEN}" method="post" onsubmit="if (this.konkurs_ocena_prezentacja.value == '' || this.konkurs_ocena_tresc.value == '') { alert('Wybierz oceny'); return false } return confirm('{wynikirow.URL}\n\nPrezentacja:   ' + this.konkurs_ocena_prezentacja.value + '%\nTreść: ' + this.konkurs_ocena_tresc.value + '%') ? true : false">
					<input type="hidden" name="konkurs_ocena_id" value="{wynikirow.ID}">
					<label for="prezentacja"><abbr title="Prezentacja">P</abbr>:</label>
					<select name="konkurs_ocena_prezentacja" id="prezentacja">
						<option value="">&ndash;</option>
						{wynikirow.switch_recenzent.switch_wyniki_nieoficjalne.OCENA_PREZENTACJA_OPTIONS}
					</select>
					<label for="tresc"><abbr title="Treść">T</abbr>:</label>
					<select name="konkurs_ocena_tresc" id="tresc">
						<option value="">&ndash;</option>
						{wynikirow.switch_recenzent.switch_wyniki_nieoficjalne.OCENA_TRESC_OPTIONS}
					</select>
					<input type="submit" value="{wynikirow.switch_recenzent.switch_wyniki_nieoficjalne.L_OK}">
				</form>
			</td>
			<!-- END switch_wyniki_nieoficjalne -->
			<!-- BEGIN switch_wyniki -->
			<td>
				<strong>{wynikirow.switch_recenzent.switch_wyniki.OCENY_LICZBA}</strong>
				<!-- BEGIN switch_recenzent_admin --><b>
					<a href="javascript:void(0)" title="{wynikirow.switch_recenzent.switch_wyniki.switch_recenzent_admin.COUNT}" onclick="with (document.getElementById('oceny{wynikirow.ID}').style) { if (display == 'none') { display = 'block'; this.innerHTML = '&laquo;'} else { display = 'none'; this.innerHTML = '&raquo;' } } return false">&raquo;</a></b>&nbsp;
				<div id="oceny{wynikirow.ID}" class="gensmall">
					<!-- BEGIN ocenyrow -->
					<div>
						<strong>{wynikirow.switch_recenzent.switch_wyniki.switch_recenzent_admin.ocenyrow.USERNAME}</strong>: {wynikirow.switch_recenzent.switch_wyniki.switch_recenzent_admin.ocenyrow.OCENA_PREZENTACJA}/{wynikirow.switch_recenzent.switch_wyniki.switch_recenzent_admin.ocenyrow.OCENA_TRESC}/{wynikirow.switch_recenzent.switch_wyniki.switch_recenzent_admin.ocenyrow.OCENA}%
					</div>
					<!-- END ocenyrow -->
				</div>
				<!-- END switch_recenzent_admin -->
			</td>
			<!-- END switch_wyniki -->
			<!-- END switch_recenzent -->
		</tr>
		<!-- END wynikirow -->
	</table>
	<!-- BEGIN switch_recenzent_oceny -->
	<p>
		<a href="{switch_recenzent_oceny.U_TWOJE_OCENY}"><strong>{switch_recenzent_oceny.L_TWOJE_OCENY}</strong></a>
	</p>
	<!-- END switch_recenzent_oceny -->
</section>