
<table width="100%" cellspacing="2" cellpadding="2" border="0">
<tr> 
<td class="maintitle">{L_SEARCH_MATCHES}</td>
</tr>
</table>

<table width="100%" cellspacing="2" cellpadding="2" border="0">
<tr> 
<td class="nav"><a href="{U_INDEX}">{L_INDEX}</a></td>
</tr>
</table>

<table border="0" cellpadding="3" cellspacing="1" width="100%" class="forumline">
<tr> 
<th width="150" class="thcornerl" nowrap height="28">{L_AUTHOR}</th>
<th width="100%" class="thcornerr" nowrap>{L_MESSAGE}</th>
</tr>
<!-- BEGIN searchresults -->
<tr> 
<td class="cathead" colspan="2" height="28"><span class="topictitle">&nbsp;{L_TOPIC}:&nbsp;<a href="{searchresults.U_TOPIC}">{searchresults.TOPIC_TITLE}</a></span></td>
</tr>
<tr> 
<td width="150" valign="top" class="row1" rowspan="2"><span class="name"><b>{searchresults.POSTER_NAME}</b></span><br />
<br />
<span class="postdetails">{L_REPLIES}: <b>{searchresults.TOPIC_REPLIES}</b><br />
{L_VIEWS}: <b>{searchresults.TOPIC_VIEWS}</b></span><br />
<img src="templates/phpbbSilver/images/spacer.gif" alt="" width="150" height="1" /> 
</td>
<td width="100%" valign="top" class="row1"><img src="{searchresults.MINI_POST_IMG}" width="12" height="9" alt="{searchresults.L_MINI_POST_ALT}" title="{searchresults.L_MINI_POST_ALT}" border="0" /><span class="postdetails">{L_FORUM}:&nbsp;<b><a href="{searchresults.U_FORUM}" class="postdetails">{searchresults.FORUM_NAME}</a></b>&nbsp; 
&nbsp;{L_POSTED}: {searchresults.POST_DATE}&nbsp; &nbsp;{L_SUBJECT}: <strong><a href="{searchresults.U_POST}">{searchresults.POST_SUBJECT}</a></strong></span></td>
</tr>
<tr> 
<td valign="top" class="row1"><span class="postbody">{searchresults.MESSAGE}</span></td>
</tr>
<!-- END searchresults -->
<tr> 
<td class="catbottom" colspan="2" height="28">&nbsp; </td>
</tr>
</table>

<table width="100%" cellspacing="2" cellpadding="2" border="0">
<tr> 
<td class="nav"><a href="{U_INDEX}">{L_INDEX}</a><br />
{PAGINATION}<br />
<br />
{JUMPBOX}</td>
</tr>
</table>
