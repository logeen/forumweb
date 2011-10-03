	<div class="overall_footer-tpl">
		<p><a href="subscribe.php"><img src="rss.gif" alt="RSS"></a> <a href="{U_MOBILE_VERSION}" title="{L_MOBILE_VERSION}" rel="nofollow"><img src="mobile.gif" alt="{L_MOBILE_VERSION}"></a></p>
		<script type="text/javascript" src="./s/stat.js"></script>
		<noscript><img src="./s/stat.php" alt=""></noscript>
		
		<ol>
			<!-- BEGIN contest_place1_banner_row -->
			<li class="content-banner"><a href="http://{contest_place1_banner_row.URL}"><img src="{contest_place1_banner_row.BANNER}"    alt="Zdobywca I miejsca w konkursie WWW" title="Zdobywca I miejsca w konkursie WWW"></a></li>
			<!-- END contest_place1_banner_row -->
			<!-- BEGIN contest_place1_row -->
			<li>[<a href="http://{contest_place1_row.URL}" title="Zdobywca I miejsca w konkursie WWW"><strong>{contest_place1_row.URL}</strong></a>]</li>
			<!-- END contest_place1_row -->
			<!-- BEGIN contest_place2_row -->
			<li>[<a href="http://{contest_place2_row.URL}" title="Zdobywca II miejsca w konkursie WWW"><strong>{contest_place2_row.URL}</strong></a>]</li>
			<!-- END contest_place2_row -->
			<!-- BEGIN contest_place3_row -->
			<li>[<a href="http://{contest_place3_row.URL}" title="Zdobywca III miejsca w konkursie WWW">{contest_place3_row.URL}</a>]</li>
			<!-- END contest_place3_row -->
		</ol>
		
		{ADMIN_LINK}
		<footer id="footer">
		<span class="copyright">
		<!--
			We request you retain the full copyright notice below including the link to www.phpbb.com.
			This not only gives respect to the large amount of time given freely by the developers
			but also helps build interest, traffic and use of phpBB. If you cannot (for good
			reason) retain the full copyright we request you at least leave in place the 
			Powered by phpBB line, with phpBB linked to www.phpbb.com. If you refuse
			to include even this then support on our forums may be affected. 
		
			The phpBB Group
		// -->
		Powered by <a href="http://www.phpbb.com/" class="copyright">phpBB</a> 
		&copy; phpBB Group 
		{TRANSLATION_INFO}<br>
		Uruchamianie kodu dziêki <a href="http://sphere-research.com" class="copyright">Sphere Research Labs</a> w ramach <a href="http://ideone.com" class="copyright">ideone.com</a></span>
		<div id="bot"><a href="http://www.phpbb-graph.com">Style created freely by Cyber-MX</a> <b >::</b> Modified by logeen <b >::</b> <strong>Sponsor: <a href="http://pactum.pl">Biuro&nbsp;Rachunkowe</a></strong></div>
		</footer>
	</div>
</div> <!-- #content -->

<!-- BEGIN switch_notifications -->
<script src="{NOTIFIER_JS}"></script>
<script>
new Notifier('{U_NOTIFICATIONS}', '{USER_LAST_NOTIFICATION}', {NOTIFICATIONS_JSON});
</script>
<!-- END switch_notifications -->
<div id="linkor">{LINKOR}</div>
<script src="//ajax.googleapis.com/ajax/libs/jquery/1.6.4/jquery.min.js"></script>
<script>window.jQuery || document.write('<script src="js/jquery-1.6.4.min.js"><\/script>')</script>
<script defer async src="templates/phpbbSilver/js/plugins.js"></script>
<script defer async src="templates/phpbbSilver/js/scripts.js"></script>
</body>
</html>