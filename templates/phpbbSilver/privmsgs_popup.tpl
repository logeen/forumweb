<div>
	<p>{L_MESSAGE}</p>
	<p><a href="http://forumweb.pl" id="closer">{L_CLOSE_WINDOW}</a></p>
</div>
<script>
document.getElementById('closer').onclick=function(){window.close(); return false;}
function jump_to_inbox()
{
	opener.document.location.href = "{U_PRIVATEMSGS}";
	window.close();
}
</script>