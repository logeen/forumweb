<div class="privmsgs_popup-tpl">
	<section class="message">
		<div class="message_text">{L_MESSAGE}</div>
		<footer><a href="#" id="closer">{L_CLOSE_WINDOW}</a></footer>
	</section>
	<script>
	document.getElementById('closer').onclick=function(){window.close(); return false;}
	function jump_to_inbox()
	{
		opener.document.location.href = "{U_PRIVATEMSGS}";
		window.close();
	}
	</script>
</div>