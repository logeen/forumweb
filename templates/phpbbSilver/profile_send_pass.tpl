<!-- kod ukradziony z login_body.tpl. -->
<p class="nav"><a href="{U_INDEX}">{L_INDEX}</a></p>
<form action="{S_PROFILE_ACTION}" method="post" class="forumline">
	<fieldset>
		<legend>{L_SEND_PASSWORD}</legend>
		<p class="gensmall">{L_ITEMS_REQUIRED}</p> <!--a moze cos innego?-->
		<dl>
			<dt><label for="login_username">{L_USERNAME}: *</label></dt>
			<dd><input type="text" name="username" size="25" maxlength="40" value="{USERNAME}" id="pwd_username" class="post" required></dd> <!--mozna tez login_username -->
			<dt><label for="login_password">{L_EMAIL_ADDRESS}: *</label></dt>
			<dd><input type="text" name="username" size="25" maxlength="40" value="{EMAIL}" id="pwd_email" class="post" required></dd>
		</dl>
		<div>
			{S_HIDDEN_FIELDS}
			<button type="submit" name="submit" class="mainoption" value="1">{L_SUBMIT}</button>
			<button type="reset" name="reset" class="liteoption">{L_RESET}</button>
		</div>
	</fieldset>
</form>
