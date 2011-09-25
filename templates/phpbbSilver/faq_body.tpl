
<table width="100%" cellspacing="2" cellpadding="2" border="0">
<tr>
<td class="nav"><a href="{U_INDEX}">{L_INDEX}</a></td>
</tr>
</table>
<table class="forumline" width="100%" cellspacing="1" cellpadding="3" border="0">
<tr>
<th class="thhead" height="28">{L_FAQ_TITLE}</th>
</tr>
<tr>
<td class="row1"> 
<!-- BEGIN faq_block_link -->
<span class="gen">{faq_block_link.BLOCK_TITLE}</span><br />
<!-- BEGIN faq_row_link -->
<a href="{faq_block_link.faq_row_link.U_FAQ_LINK}">{faq_block_link.faq_row_link.FAQ_LINK}</a><br />
<!-- END faq_row_link -->
<br />
<!-- END faq_block_link -->
</td>
</tr>
<tr>
<td class="catbottom" height="28">&nbsp;</td>
</tr>
</table>
<br clear="all" />
<!-- BEGIN faq_block -->
<table class="forumline" width="100%" cellspacing="1" cellpadding="3" border="0">
<tr>
<td class="cathead" height="28" align="center"><span class="cattitle">{faq_block.BLOCK_TITLE}</span></td>
</tr>
<!-- BEGIN faq_row -->
<tr> 
<td class="{faq_block.faq_row.ROW_CLASS}" align="left" valign="top"><a name="{faq_block.faq_row.U_FAQ_ID}"></a><span class="gen">{faq_block.faq_row.FAQ_QUESTION}</span><br />
<span class="postbody">{faq_block.faq_row.FAQ_ANSWER}<br />
<a href="#Top" class="gensmall">{L_BACK_TO_TOP}</a></span></td>
</tr>
<tr>
<td class="spacerow" height="1"><img src="templates/phpbbSilver/images/spacer.gif" alt="" width="1" height="1" /></td>
</tr>
<!-- END faq_row -->
</table>
<br clear="all" />
<!-- END faq_block -->
<table width="100%" cellspacing="0" border="0" cellpadding="2">
<tr> 
<td class="nav"><a href="{U_INDEX}">{L_INDEX}</a></td>
</tr>
<tr>
<td>&nbsp;</td>
</tr>
<tr> 
<td>{JUMPBOX}</td>
</tr>
</table>
