<div class="privmsgs_popup-tpl">
	<div>
		<div class="message_text">{L_MESSAGE}</div>
		<p><a href="#" id="closer">{L_CLOSE_WINDOW}</a></p>
	</div>
	<script>
	document.getElementById('closer').onclick=function(){window.close(); return false;}
	function jump_to_inbox()
	{
		opener.document.location.href = "{U_PRIVATEMSGS}";
		window.close();
	}
	</script>
</div>