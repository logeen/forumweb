
<p class="breadcrumb">
	<a href="{U_INDEX}">{L_INDEX}</a>
</p>

<section class="notification confirm">
	<h1>{MESSAGE_TITLE}</h1>
	<p>{MESSAGE_TEXT}</p>
	<form action="{S_CONFIRM_ACTION}" method="post" class="buttons center">
		{S_HIDDEN_FIELDS}
		<input type="submit" name="confirm" value="{L_YES}" class="mainoption">
		<input type="submit" name="cancel" value="{L_NO}">
	</form>
</section>
