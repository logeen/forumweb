<tr>
<th class="thhead" colspan="2" >{L_RATING}</th>
</tr>
<tr>
<td class="row2" colspan="2"><br  />
<!-- BEGIN switch_poll_vote -->
<form method="POST" action="{S_POLL_ACTION}">
<!-- END switch_poll_vote -->
<table    >
<tr>
<td colspan="4"  class="gen">{POLL_QUESTION}</td>
</tr>
<tr>
<td >
<table   >
<!-- BEGIN poll_option -->
<tr>
<td>
<!-- BEGIN switch_poll_vote -->
<select name="vote_id[{poll_option.POLL_OPTION_ID}]">
<option value="">-</option>
<option value="1">1</option>
<option value="2">2</option>
<option value="3">3</option>
<option value="4">4</option>
<option value="5">5</option>
</select>
<!-- END switch_poll_vote -->
<td>
<td>{poll_option.POLL_OPTION_CAPTION}</td>
<td>
<table   >
<tr>
<td><img src="templates/phpbbSilver/images/vote_lcap.gif"  alt=""  /></td>
<td><img src="{poll_option.POLL_OPTION_IMG}"   alt="{poll_option.POLL_OPTION_PERCENT}" title="{poll_option.POLL_OPTION_PERCENT}" /></td>
<td><img src="templates/phpbbSilver/images/vote_rcap.gif"  alt=""  /></td>
</tr>
</table>
</td>
<td ><span class="gen">&nbsp;{poll_option.POLL_OPTION_PERCENT}&nbsp;</span></td>
<td >[ {poll_option.POLL_OPTION_RESULT} ]</td>
</tr>
<!-- END poll_option -->
</table>
</td>
</tr>
<tr>
<td colspan="4"  class="gen">{L_TOTAL_VOTES} : {TOTAL_VOTES}</td>
</tr>
<!-- BEGIN switch_poll_vote -->
<tr>
<td colspan="4" >
<input type="submit" name="submit" value="{L_SUBMIT_VOTE}" class="liteoption" />
</td>
</tr>
<!-- END switch_poll_vote -->
</table>
<br  />
<!-- BEGIN switch_poll_vote -->
{S_HIDDEN_FIELDS}</form>
<!-- END switch_poll_vote -->
</td>
</tr>
