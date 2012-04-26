<div class="posting_poll_body-tpl">
	<fieldset>
		<dl>
			<!-- BEGIN poll_option_rows -->
			<dt>{L_POLL_OPTION}</dt>
			<dd>
				<ul>
					<li><input type="text" name="poll_option_text[{poll_option_rows.S_POLL_OPTION_NUM}]" maxlength="255" value="{poll_option_rows.POLL_OPTION}"></li>
					<li><button type="submit" name="edit_poll_option" value="{L_UPDATE_OPTION}" class="liteoption">{L_UPDATE_OPTION}</button></li>
					<li><button type="submit" name="del_poll_option[{poll_option_rows.S_POLL_OPTION_NUM}]" value="{L_DELETE_OPTION}" class="liteoption">{L_DELETE_OPTION}</button></li>
				</ul>
			</dd>
			<!-- END poll_option_rows -->
			<dt><label for="poll_add_option">{L_POLL_OPTION}</label></dt>
			<dd>
				<ul>
					<li><input type="text" name="add_poll_option_text" id="poll_add_option" maxlength="255" value="{ADD_POLL_OPTION}"></li>
					<li><button type="submit" name="add_poll_option" value="{L_ADD_OPTION}" class="liteoption">{L_ADD_OPTION}</button></li>
				</ul>
			</dd>
			<dt><label for="poll_length">{L_POLL_LENGTH}</label></dt>
			<dd>
				<input type="text" name="poll_length" size="3" maxlength="3" value="{POLL_LENGTH}" id="poll_length"> <span>{L_DAYS}</span>
				<p class="explain">{L_POLL_LENGTH_EXPLAIN}</p>
			</dd>
			<!-- BEGIN switch_poll_type_toggle -->
			<dt>{L_TYPE}</dt>
			<dd>{S_POLL_TYPE_TOGGLE}</dd>
			<!-- END switch_poll_type_toggle -->
			<!-- BEGIN switch_poll_delete_toggle -->
			<dt><label for="poll_delete">{L_POLL_DELETE}</label></dt>
			<dd><input type="checkbox" id="poll_delete" name="poll_delete"></dd>
			<!-- END switch_poll_delete_toggle -->
		</dl>
	</fieldset>
</div>