<tr>
<th class="thhead" colspan="2" >{L_RATING}</th>
</tr>
			<tr>
				<td class="row2" colspan="2"><br  /><form method="POST" action="{S_POLL_ACTION}">
<table    >
<tr>
<td  class="gen">{POLL_QUESTION}</td>
</tr>
<tr>
<td >
<table   >
<!-- BEGIN poll_option -->
<tr>
<td>
<select name="vote_id[{poll_option.POLL_OPTION_ID}]">
<option value="">-</option>
<option value="1">1</option>
<option value="2">2</option>
<option value="3">3</option>
<option value="4">4</option>
<option value="5">5</option>
</select>
&nbsp;</td>
<td>{poll_option.POLL_OPTION_CAPTION}</td>
</tr>
<!-- END poll_option -->
</table>
</td>
</tr>
<tr>
<td >
<input type="submit" name="submit" value="{L_SUBMIT_VOTE}" class="liteoption" />
</td>
</tr>
<tr>
<td  class="gensmall"><strong><a href="{U_VIEW_RESULTS}">{L_VIEW_RESULTS}</a></strong></td>
</tr>
</table>
{S_HIDDEN_FIELDS}</form></td>
</tr>