<div class="faq_body-tpl">

	<nav class="breadcrumb">
		<ul>
			<li><a href="{U_INDEX}">{L_INDEX}</a></li>
		</ul>
	</nav>

	<section>
		<h1>{L_FAQ_TITLE}</h1>
		<!-- BEGIN faq_block_link -->
		<nav>
			<h1>{faq_block_link.BLOCK_TITLE}</h1>
			<ul>
				<!-- BEGIN faq_row_link -->
				<li><a href="{faq_block_link.faq_row_link.U_FAQ_LINK}">{faq_block_link.faq_row_link.FAQ_LINK}</a></li>
				<!-- END faq_row_link -->
			</ul>
		</nav>
		<!-- END faq_block_link -->

		<!-- BEGIN faq_block -->
		<section>
			<h1>{faq_block.BLOCK_TITLE}</h1>
			<!-- BEGIN faq_row -->
			<article id="{faq_block.faq_row.U_FAQ_ID}">
				<h2>{faq_block.faq_row.FAQ_QUESTION}</h2>
				<p>{faq_block.faq_row.FAQ_ANSWER}</p>
			</article>
			<!-- END faq_row -->
		</section>
		<!-- END faq_block -->
	</section>

	<nav class="breadcrumb">
		<ul>
			<li><a href="{U_INDEX}">{L_INDEX}</a></li>
		</ul>
	</nav>

	{JUMPBOX}
</div>