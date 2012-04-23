<tr>
<th class="thhead" colspan="2" >{L_POLL}</th>
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
<input type="radio" id="label__vote_id__{poll_option.POLL_OPTION_ID}" name="vote_id" value="{poll_option.POLL_OPTION_ID}" />
&nbsp;</td>
<td><label for="label__vote_id__{poll_option.POLL_OPTION_ID}">{poll_option.POLL_OPTION_CAPTION}</label></td>
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