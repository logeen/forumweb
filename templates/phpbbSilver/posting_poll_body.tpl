<!-- BEGIN poll_option_rows -->
	<tr>
	    <td class="row1">
            <span class="gen">{L_POLL_OPTION}</span>
        </td>
			<td class="row2">
                <span class="genmed">
                    <input type="text" name="poll_option_text[{poll_option_rows.S_POLL_OPTION_NUM}]" size="50" class="post" maxlength="255" value="{poll_option_rows.POLL_OPTION}" />
						</span>&nbsp;
							<input type="submit" name="edit_poll_option" value="{L_UPDATE_OPTION}" class="liteoption" />
								<input type="submit" name="del_poll_option[{poll_option_rows.S_POLL_OPTION_NUM}]" value="{L_DELETE_OPTION}" class="liteoption" />
			</td>
	</tr>
<!-- END poll_option_rows -->
    <tr>
		<td class="row1"><span class="gen">{L_POLL_OPTION}</span>
        </td>
			<td class="row2"><span class="genmed">
                <input type="text" name="add_poll_option_text" size="50" maxlength="255" class="post" value="{ADD_POLL_OPTION}" />
					</span>&nbsp;
						<input type="submit" name="add_poll_option" value="{L_ADD_OPTION}" class="liteoption" />
            </td>
	</tr>
    <tr>
		<td class="row1"><span class="gen">{L_POLL_LENGTH}</span>
        </td>
			<td class="row2"><span class="genmed">
                <input type="text" name="poll_length" size="3" maxlength="3" class="post"                                                value="{POLL_LENGTH}" />
					</span>&nbsp;
						<span class="gen">{L_DAYS}</span> &nbsp; <span class="gensmall">{L_POLL_LENGTH_EXPLAIN}</span></td>
	</tr>
<!-- BEGIN switch_poll_type_toggle -->
    <tr>
		<td class="row1"><span class="gen">{L_TYPE}</span></td>
			<td class="row2"><span class="genmed">{S_POLL_TYPE_TOGGLE}</td>
	</tr>
<!-- END switch_poll_type_toggle -->
<!-- BEGIN switch_poll_delete_toggle -->
    <tr>
		<td class="row1"><span class="gen"><label for="label__poll_delete">{L_POLL_DELETE}</label>
            </span>
				</td>
					<td class="row2"><input type="checkbox" id="label__poll_delete" name="poll_delete" />
                       </td>
	</tr>
<!-- END switch_poll_delete_toggle -->