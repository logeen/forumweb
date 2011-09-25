<tr> 
<th class="thhead" colspan="2" >{L_POLL}</th>
</tr>
<tr> 
<td class="row2" colspan="2"><br  />
<table    >
<tr> 
<td colspan="4"  class="gen">{POLL_QUESTION}</td>
</tr>
<tr> 
<td > 
<table   >
<!-- BEGIN poll_option -->
<tr> 
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
</table>
<br  />
</td>
</tr>
