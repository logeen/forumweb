
<!-- BEGIN switch_inline_mode -->
<script type="text/javascript">
<!--
function topic_review_open()
{
	if (!topic_review_open.opened)
	{
		document.getElementById('topic_review_open_button').style.display = 'none';
		with (document.getElementById('topic_review'))
		{
			onload = function () { window.location.href = '#topic_review'; };
			src = "{U_REVIEW_TOPIC}".replace(/&amp;/g, '&');
			style.display = 'inline';
		}
		topic_review_open.opened = true;
	}
}
topic_review_open.opened = false;
//-->
</script>
<table border="0" cellpadding="3" cellspacing="1" width="100%" class="forumline">
	<tr> 
		
<td class="cathead" height="28" align="center"><span class="cattitle">{L_TOPIC_REVIEW}</span></td>
	</tr>
	<tr>
		<td class="row1" align="center"><input type="button" onclick="topic_review_open(); return false" id="topic_review_open_button" value="{L_SHOW}" /><iframe id="topic_review" width="100%" height="300" style="display: none">
<!-- END switch_inline_mode -->
<!-- BEGIN switch_iframe_mode -->
<table border="0" cellpadding="3" cellspacing="1" width="100%" class="forumline">
	<tr>
		
<th class="thcornerl" width="22%" height="28">{L_AUTHOR}</th>
		<th class="thcornerr">{L_MESSAGE}</th>
	</tr>
	<!-- BEGIN postrow -->
	<tr>
		
<td width="22%" valign="top" class="{switch_iframe_mode.postrow.ROW_CLASS}"><span class="name"><a name="{switch_iframe_mode.postrow.U_POST_ID}"></a><strong>{switch_iframe_mode.postrow.POSTER_NAME}</strong></span><br />
<img src="templates/phpbbSilver/images/spacer.gif" alt="" width="150" height="1" /></td>
		
<td class="{switch_iframe_mode.postrow.ROW_CLASS}" valign="top">
<table width="100%" border="0" cellspacing="0" cellpadding="0">
			<tr> 
				
<td width="100%"><img src="{switch_iframe_mode.postrow.MINI_POST_IMG}" width="12" height="9" alt="{switch_iframe_mode.postrow.L_MINI_POST_ALT}" title="{switch_iframe_mode.postrow.L_MINI_POST_ALT}" border="0" /><span class="postdetails">{L_POSTED}: 
{switch_iframe_mode.postrow.POST_DATE}</span></td>
			</tr>
			<tr> 
				<td colspan="2"><hr /></td>
			</tr>
			<tr> 
				<td colspan="2"><span class="postbody">{switch_iframe_mode.postrow.MESSAGE}</span></td>
			</tr>
		</table></td>
	</tr>
	<tr> 
		<td colspan="2" height="1" class="spacerow"><img src="templates/phpbbSilver/images/spacer.gif" alt="" width="1" height="1" /></td>
	</tr>
	 <!-- END postrow -->
</table>
<!-- END switch_iframe_mode -->
<!-- BEGIN switch_inline_mode -->
</iframe></td>
	</tr>
</table>
<!-- END switch_inline_mode -->
