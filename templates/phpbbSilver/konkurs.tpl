<table    >
<tr> 
<td v class="gensmall">{CURRENT_TIME}<div class="nav"><a href="{U_INDEX}">{L_INDEX}</a> &raquo; <a href="{U_KONKURS}">{L_KONKURS}</a> &raquo; {MODE}</div></td>
</tr>
</table>
<br />

<table    >
<tr>
<td  v >

&nbsp;<br /><br />
<table      class="forumline">
<tr>
<th class="thtop"  >&nbsp;{L_INFO}&nbsp;</th>
</tr>
<tr>
<td class="row1"><span class="gen"><b>
<!-- BEGIN linkrow -->
<b >::</b>&nbsp;<a href="{linkrow.U_HREF}">{linkrow.NAME}</a><br />
<!-- END linkrow -->
</b></span>
<div ><a href="{U_RSS}"><img src="rss.gif" alt="{L_RSS}" ></a></div>&nbsp;
</td>
</tr>
</table>
<br />

<table      class="forumline">
<tr>
<th class="thtop"  >&nbsp;{L_LAUREACI}&nbsp;</th>
</tr>
<tr>
<td class="row2 genmed">
<!-- BEGIN yearrow -->
<b>{yearrow.YEAR}</b>:<div >
<!-- BEGIN monthrow -->
<a href="{yearrow.monthrow.U_MONTH}">{yearrow.monthrow.MONTH}</a>&nbsp; 
<!-- END monthrow -->
</div>
<!-- END yearrow -->
<br />
</td>
</tr>
</table>
<br />

<table      class="forumline">
<tr>
<th class="thtop"  >&nbsp;{L_TOP_10}&nbsp;</th>
</tr>
<tr>
<td class="row2" >
<table class="genmed"   >
<!-- BEGIN top10row -->
<tr v><td class="{top10row.ROW_CLASS}"  ><b>{top10row.NUMBER}.</b>&nbsp;</td><td class="{top10row.ROW_CLASS}" ><a href="{top10row.URL}" title="{top10row.POINTS}">{top10row.LINK}</a> &nbsp;<a href="{top10row.U_HREF}" title="{top10row.MONTH}" ><b>&raquo;</b></a></td></tr>
<!-- END top10row -->
</table>
<br />
</td>
</tr>
</table>

<!-- BEGIN switch_recenzent -->
<br />
<table      class="forumline">
<tr>
<th class="thtop"  >&nbsp;{DATE}&nbsp;</th>
</tr>
<tr>
<td class="row2" >
<table >
<!-- BEGIN userrow -->
<tr>
<td  class="{switch_recenzent.userrow.ROW_CLASS}">{switch_recenzent.userrow.NUMBER}.</td>
<td  class="{switch_recenzent.userrow.ROW_CLASS}"><a href="{switch_recenzent.userrow.U_PROFILE}">{switch_recenzent.userrow.USERNAME}</a></td>
<td  class="{switch_recenzent.userrow.ROW_CLASS}">{switch_recenzent.userrow.COUNT}</td>
</tr>
<!-- END userrow -->
</table>
</td>
</tr>
</table>
<!-- END switch_recenzent -->

</td>
<td  v >
&nbsp;<br />

<script type="text/javascript" src="http://www.websnapr.com/js/websnapr.js"></script>

{MESSAGE}
{LAUREACI}
{WYNIKI}
{FORMULARZ}
{KOMENTARZE}
{RECENZJE}

</td>
</tr>
</table>
<br /><br />