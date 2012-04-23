<div class="search_username-tpl">

<script type="text/javascript">
function refresh_username(selected_username)
{
	opener.document.forms['post'].username.value = selected_username;
	opener.focus();
	window.close();
}
</script>

<form method="post" name="search" action="{S_SEARCH_ACTION}">
	<fieldset>
		<legend>{L_SEARCH_USERNAME}</legend>

		<label for="search_username">
			<input type="text" name="search_username" id="search_username" value="{USERNAME}" class="post" />
		</label>

		<button type="submit" name="search">{L_SEARCH}</button>

		<p>{L_SEARCH_EXPLAIN}</p>

		<!-- BEGIN switch_select_name -->

		{L_UPDATE_USERNAME}
		<select name="username_list">{S_USERNAME_OPTIONS}</select>

		<input type="submit" onclick="refresh_username(this.form.username_list.options[this.form.username_list.selectedIndex].value);return false" name="use" value="{L_SELECT}" />

		<!-- END switch_select_name -->

		<button onclick="window.close()">{L_CLOSE_WINDOW}</button>

	</fieldset>
</form>
</div>