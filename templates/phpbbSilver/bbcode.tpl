<!-- BEGIN ulist_open --><ul><!-- END ulist_open -->
<!-- BEGIN ulist_close --></ul><!-- END ulist_close -->

<!-- BEGIN olist_open --><ol type="{LIST_TYPE}"><!-- END olist_open -->
<!-- BEGIN olist_close --></ol><!-- END olist_close -->

<!-- BEGIN listitem --><li><!-- END listitem -->

<!-- BEGIN quote_username_open -->
<table width="90%" cellspacing="1" cellpadding="3" border="0" align="center">
<tr> 
	  <td><span class="genmed"><b>{USERNAME} {L_WROTE}:</b></span></td>
	</tr>
	<tr>
	  <td class="quote"><!-- END quote_username_open -->
<!-- BEGIN quote_open -->
<table width="90%" cellspacing="1" cellpadding="3" border="0" align="center">
<tr> 
	  <td><span class="genmed"><b>{L_QUOTE}:</b></span></td>
	</tr>
	<tr>
	  <td class="quote"><!-- END quote_open -->
<!-- BEGIN quote_close --></td>
	</tr>
</table>
<!-- END quote_close -->

<!-- BEGIN code_open -->
<table width="90%" cellspacing="1" cellpadding="3" border="0" align="center">
	<tr class="code_view"> 
	  <td><span class="genmed"><b>{L_CODE}:</b></span></td><td align="right" class="gensmall"><b id="foldbox_code{ID}_link"></b>&nbsp;&nbsp; <a href="javascript:void(0)" onclick="this.innerHTML = selectText('{ID}') ? '{L_DESELECT}' : '{L_SELECT}'; return false">{L_SELECT}</a>&nbsp;&nbsp; <span class="viewbox" id="viewbox_{ID}"><a href="{U_VIEW}">{L_VIEW}</a></span>&nbsp;&nbsp; <span class="runbox" id="runbox_{ID}"><a href="{U_RUN}">{L_RUN}</a></span>&nbsp;&nbsp; <a href="{U_SAVE}">{L_SAVE}</a>{FORM}</td>
	</tr>
	<tr>
	  <td colspan="2"><div class="foldbox" id="foldbox_code{ID}"><table cellpadding="0" cellspacing="0" border="0" width="100%"><tr><td class="code" id="{ID}"><!-- END code_open -->
<!-- BEGIN code_close --></td></tr></table></div></td>
	</tr>
</table>
<!-- END code_close -->


<!-- BEGIN b_open --><span style="font-weight: bold"><!-- END b_open -->
<!-- BEGIN b_close --></span><!-- END b_close -->

<!-- BEGIN u_open --><span style="text-decoration: underline"><!-- END u_open -->
<!-- BEGIN u_close --></span><!-- END u_close -->

<!-- BEGIN i_open --><span style="font-style: italic"><!-- END i_open -->
<!-- BEGIN i_close --></span><!-- END i_close -->

<!-- BEGIN s_open --><span style="text-decoration: line-through"><!-- END s_open -->
<!-- BEGIN s_close --></span><!-- END s_close -->

<!-- BEGIN sup_open --><sup><!-- END sup_open -->
<!-- BEGIN sup_close --></sup><!-- END sup_close -->

<!-- BEGIN sub_open --><sub><!-- END sub_open -->
<!-- BEGIN sub_close --></sub><!-- END sub_close -->

<!-- BEGIN tt_open --><tt><!-- END tt_open -->
<!-- BEGIN tt_close --></tt><!-- END tt_close -->

<!-- BEGIN color_open --><span style="color: {COLOR}"><!-- END color_open -->
<!-- BEGIN color_close --></span><!-- END color_close -->

<!-- BEGIN size_open --><span style="font-size: {SIZE}px; line-height: normal"><!-- END size_open -->
<!-- BEGIN size_close --></span><!-- END size_close -->

<!-- BEGIN img --><img src="{URL}" alt="{ALT}" border="0" /><!-- END img -->

<!-- BEGIN url --><a href="{URL}" class="postlink">{DESCRIPTION}</a><!-- END url -->

<!-- BEGIN email --><a href="mailto:{EMAIL}">{EMAIL}</a><!-- END email -->

<!-- BEGIN embed --><script type="text/javascript">document.write(embed({WIDTH}, {HEIGHT}, "{URL}"));</script><!-- END embed -->
