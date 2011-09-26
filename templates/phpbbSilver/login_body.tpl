<p class="nav"><a href="{U_INDEX}">{L_INDEX}</a></p>
<form action="{S_LOGIN_ACTION}" method="post" class="forumline">
	<fieldset>
		<legend>{L_ENTER_PASSWORD}</legend>
		<dl>
			<dt><label for="login_username">{L_USERNAME}:</label></dt>
			<dd><input type="text" name="username" size="25" maxlength="40" value="{USERNAME}" id="login_username" class="post" required></dd> 
			<dt><label for="login_password">{L_PASSWORD}:</label></dt>
			<dd><input type="password" name="password" size="25" maxlength="25" class="post" id="login_password" required></dd>
			<dd><label for="login_autologin">{L_AUTO_LOGIN}:</label> <input type="checkbox" id="login_autologin" name="autologin"></dd>
		</dl>
		<div>
			{S_HIDDEN_FIELDS} 
			<button type="submit" name="login" class="mainoption" value="1">{L_LOGIN}</button>
			<a href="{U_SEND_PASSWORD}">{L_SEND_PASSWORD}</a>
		</div>
	</fieldset>
</form>