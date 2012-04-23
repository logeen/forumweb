<div class="posting_topic_review-tpl">
<!-- BEGIN switch_inline_mode -->
<script>
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
</script>
{L_TOPIC_REVIEW}
<iframe id="topic_review">
	<!-- END switch_inline_mode -->
	<!-- BEGIN switch_iframe_mode -->
	<section class="postpreview">
		<!-- BEGIN postrow -->
		<article id="{switch_iframe_mode.postrow.U_POST_ID}">
			<header>
				<dl>
					<dt>{L_AUTHOR}</dt>
					<dd>{switch_iframe_mode.postrow.POSTER_NAME}</dd>
					<dt>{L_POSTED}</dt>
					<dd>
						<time datetime="{switch_iframe_mode.postrow.POST_DATE_DATETIME}">{switch_iframe_mode.postrow.POST_DATE}</time>
					</dd>
				</dl>
			</header>
			<section class="postbody">
				{switch_iframe_mode.postrow.MESSAGE}
			</section>
		</article>
		<!-- END postrow -->
	</section>
	<!-- END switch_iframe_mode -->
	<!-- BEGIN switch_inline_mode -->
</iframe>

	<!-- END switch_inline_mode -->

</div>