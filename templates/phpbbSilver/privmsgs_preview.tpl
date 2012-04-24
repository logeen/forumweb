<div class="privmsgs_preview-tpl">
	<section>
		<h1>{L_PREVIEW}</h1>
		<article>
			<header>
				<h2>{POST_SUBJECT}</h2>
				<dl>
					<dt>{L_FROM}</dt>
					<dd>{MESSAGE_FROM}</dd>
					<dt>{L_TO}</dt>
					<dd>{MESSAGE_TO}</dd>
					<dt>{L_POSTED}</dt>
					<dd><time datetime="{POST_DATE_DATETIME}">{POST_DATE}</time></dd>
				</dl>
			</header>
			<section class="postbody">{MESSAGE}</section>
		</article>
		<script>
		var foldbox_lang = {
			'Unfold': '{L_UNFOLD}',
			'Fold': '{L_FOLD}'
		};
		</script>
		<script src="{FOLDBOX_JS}"></script>
	</section>
</div>