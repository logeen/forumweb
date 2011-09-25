<tr> 
<th class="thhead" colspan="2" height="28">{L_RATING}</th>
</tr>
<tr> 
<td class="row2" colspan="2"><br clear="all" />
<!-- BEGIN switch_poll_vote -->
<form method="POST" action="{S_POLL_ACTION}">
<!-- END switch_poll_vote -->
<table cellspacing="0" cellpadding="4" border="0" align="center">
<tr> 
<td colspan="4" align="center" class="gen">{POLL_QUESTION}</td>
</tr>
<tr> 
<td align="center"> 
<table cellspacing="0" cellpadding="2" border="0">
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
<table cellspacing="0" cellpadding="0" border="0">
<tr> 
<td><img src="templates/phpbbSilver/images/vote_lcap.gif" width="4" alt="" height="12" /></td>
<td><img src="{poll_option.POLL_OPTION_IMG}" width="{poll_option.POLL_OPTION_IMG_WIDTH}" height="12" alt="{poll_option.POLL_OPTION_PERCENT}" title="{poll_option.POLL_OPTION_PERCENT}" /></td>
<td><img src="templates/phpbbSilver/images/vote_rcap.gif" width="4" alt="" height="12" /></td>
</tr>
</table>
</td>
<td align="center"><span class="gen">&nbsp;{poll_option.POLL_OPTION_PERCENT}&nbsp;</span></td>
<td align="center">[ {poll_option.POLL_OPTION_RESULT} ]</td>
</tr>
<!-- END poll_option -->
</table>
</td>
</tr>
<tr> 
<td colspan="4" align="center" class="gen">{L_TOTAL_VOTES} : {TOTAL_VOTES}</td>
</tr>
<!-- BEGIN switch_poll_vote -->
<tr> 
<td colspan="4" align="center"> 
<input type="submit" name="submit" value="{L_SUBMIT_VOTE}" class="liteoption" />
</td>
</tr>
<!-- END switch_poll_vote -->
</table>
<br clear="all" />
<!-- BEGIN switch_poll_vote -->
{S_HIDDEN_FIELDS}</form>
<!-- END switch_poll_vote -->
</td>
</tr>
