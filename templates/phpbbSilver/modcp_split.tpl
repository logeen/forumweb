
<form method="post" action="{S_SPLIT_ACTION}">
  
<table    >
<tr> 
<td class="nav"><a href="{U_INDEX}">{L_INDEX}</a> &raquo; <a href="{U_VIEW_FORUM}">{FORUM_NAME}</a></td>
</tr>
</table>
  
<table     class="forumline">
<tr> 
<th class="thhead" colspan="3"  >{L_SPLIT_TOPIC}</th>
</tr>
<tr> 
<td class="row1" colspan="3" ><span class="genmed">{L_SPLIT_TOPIC_EXPLAIN}</span></td>
</tr>
<tr> 
<td class="row1" >{L_SPLIT_SUBJECT}</td>
<td class="row2" colspan="2"><span class="courier"> 
<input type="text" size="35"  maxlength="100" name="subject" class="post" />
</span> <a href="posting.php?mode=topicreview&amp;t=169" onclick="document.getElementById('iframe_regulations').style.display = document.getElementById('iframe_regulations').style.display == 'none' ? 'block' : 'none'; return false"><b>{L_REGULATIONS}...</b></a> <iframe  id="iframe_regulations" src="posting.php?mode=topicreview&amp;t=169"  ></iframe></td>
</tr>
<tr> 
<td class="row1" >{L_SPLIT_FORUM}</td>
<td class="row2" colspan="2">{S_FORUM_SELECT}</td>
</tr>
<tr > 
<td class="cathead" colspan="3" > 
<input class="liteoption" type="submit" name="split_type_all" value="{L_SPLIT_POSTS}" />
&nbsp;&nbsp;&nbsp;&nbsp; 
<input class="liteoption" type="submit" name="split_type_beyond" value="{L_SPLIT_AFTER}" />
</td>
</tr>
<tr> 
<th class="thleft"  >{L_AUTHOR}</th>
<th >{L_MESSAGE}</th>
<th class="thright" >&nbsp;{L_SELECT}&nbsp;</th>
</tr>
<!-- BEGIN postrow -->
<tr> 
<td v class="{postrow.ROW_CLASS}"><span class="name"><a name="{postrow.U_POST_ID}"></a>{postrow.POSTER_NAME}</span></td>
<td  v class="{postrow.ROW_CLASS}"> 
<table    >
<tr> 
<td class="postdetails"><img src="templates/phpbbSilver/images/icon_minipost.gif" alt="{L_POST}"  >{L_POSTED}: 
<time datetime="{postrow.POST_DATE_DATETIME}">{postrow.POST_DATE}</time>&nbsp;&nbsp;&nbsp;&nbsp;{L_POST_SUBJECT}: {postrow.POST_SUBJECT}</td>
<td  v>{postrow.REPORT_IMG}</td>
</tr>
<tr> 
<td colspan="2" v class="postbody"> 
<hr size="1" />
{postrow.MESSAGE}</td>
</tr>
</table>
</td>
<td   class="{postrow.ROW_CLASS}">{postrow.S_SPLIT_CHECKBOX}</td>
</tr>
<tr> 
<td colspan="3"  class="spacerow"><img src="templates/phpbbSilver/images/spacer.gif"   alt="."></td>
</tr>
<!-- END postrow -->
<tr> 
<td class="catBottom" colspan="3"  > 
<input class="liteoption" type="submit" name="split_type_all" value="{L_SPLIT_POSTS}" />
&nbsp;&nbsp;&nbsp;&nbsp; 
<input class="liteoption" type="submit" name="split_type_beyond" value="{L_SPLIT_AFTER}" />
{S_HIDDEN_FIELDS} </td>
</tr>
</table>
<table    >
<tr> 
<td class="nav"><a href="{U_INDEX}">{L_INDEX}</a> &raquo; <a href="{U_VIEW_FORUM}">{FORUM_NAME}</a></td>
</tr>
</table>
</form>
