<div class="viewtopic_poll_result-tpl">
<section class="poll">
	<header>
		<h1>{L_POLL}</h1>
		<p>{POLL_QUESTION}</p>
	</header>

<!-- BEGIN poll_option -->
	<p>
		<strong>{poll_option.POLL_OPTION_CAPTION}</strong>
		<meter value="{poll_option.POLL_OPTION_RESULT}" max="{TOTAL_VOTES}" min="0">
			<!-- <img src="{poll_option.POLL_OPTION_IMG}" alt="{poll_option.POLL_OPTION_PERCENT}" title="{poll_option.POLL_OPTION_PERCENT}"> -->
			{poll_option.POLL_OPTION_PERCENT}
		</meter>
		<span>{poll_option.POLL_OPTION_PERCENT} ({poll_option.POLL_OPTION_RESULT})</span>
	</p>
<!-- END poll_option -->

	<footer>
		<p>{L_TOTAL_VOTES}: {TOTAL_VOTES}</p>
	</footer>

</section>



</div>