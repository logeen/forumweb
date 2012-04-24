<div class="posting_smilies-tpl">
	<section>
		<h1>{L_EMOTICONS}</h1>
		<ul>
			<!-- BEGIN smilies_row -->
			<!-- BEGIN smilies_col --> 
			<li><img src="{smilies_row.smilies_col.SMILEY_IMG}"  alt="{smilies_row.smilies_col.SMILEY_DESC}" title="{smilies_row.smilies_col.SMILEY_DESC}" data-emoticon="{smilies_row.smilies_col.SMILEY_CODE}"></li>
			<!-- END smilies_col -->
			<!-- END smilies_row -->
		</ul>
		<!-- BEGIN switch_smilies_extra -->
		<p><a href="{U_MORE_SMILIES}" data-target="_smilies:" class="nav popup">{L_MORE_SMILIES}</a></p>
		<!-- END switch_smilies_extra -->
		<p><a href="javascript:window.close();" id="closeWindow">{L_CLOSE_WINDOW}</a></p>
	</section>
	<script>
	$('img').click(function() 
	{
		var emot=$(this).attr('data-emoticon');
		if (opener.document.forms['post'].message.createTextRange && opener.document.forms['post'].message.caretPos) 
		{
			var caretPos = opener.document.forms['post'].message.caretPos;
			caretPos.text = caretPos.text.charAt(caretPos.text.length - 1) == ' ' ? text + ' ' : text;
			opener.document.forms['post'].message.focus();
		} 
		else 
		{
			opener.document.forms['post'].message.value  += text;
			opener.document.forms['post'].message.focus();
		}
	});
	$('#closeWindow').click(function()
	{
		window.close();
	});
	</script>
</div>