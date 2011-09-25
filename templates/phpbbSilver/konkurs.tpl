<table width="100%" cellspacing="0" cellpadding="2" border="0">
<tr> 
<td valign="bottom" class="gensmall">{CURRENT_TIME}<div class="nav"><a href="{U_INDEX}">{L_INDEX}</a> &raquo; <a href="{U_KONKURS}">{L_KONKURS}</a> &raquo; {MODE}</div></td>
</tr>
</table>
<br />

<table cellpadding="0" cellspacing="0" border="0" width="100%">
<tr>
<td width="140" valign="top" style="vertical-align: top; padding-right: 10px">

&nbsp;<br /><br />
<table align="center" cellpadding="2" cellspacing="1" border="0" width="140" class="forumline">
<tr>
<th class="thtop" nowrap height="28">&nbsp;{L_INFO}&nbsp;</th>
</tr>
<tr>
<td class="row1"><span class="gen"><b>
<!-- BEGIN linkrow -->
<b style="color: red; font-size: 13px">::</b>&nbsp;<a href="{linkrow.U_HREF}">{linkrow.NAME}</a><br />
<!-- END linkrow -->
</b></span>
<div style="text-align: center; margin-top: 5px"><a href="{U_RSS}"><img src="rss.gif" alt="{L_RSS}" style="border: 0"></a></div>&nbsp;
</td>
</tr>
</table>
<br />

<table align="center" cellpadding="2" cellspacing="1" border="0" width="140" class="forumline">
<tr>
<th class="thtop" nowrap height="28">&nbsp;{L_LAUREACI}&nbsp;</th>
</tr>
<tr>
<td class="row2 genmed">
<!-- BEGIN yearrow -->
<b>{yearrow.YEAR}</b>:<div style="margin-bottom: 5px">
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

<table align="center" cellpadding="2" cellspacing="1" border="0" width="140" class="forumline">
<tr>
<th class="thtop" nowrap height="28">&nbsp;{L_TOP_10}&nbsp;</th>
</tr>
<tr>
<td class="row2" style="padding: 0">
<table class="genmed" cellspacing="0" cellpadding="0" width="100%">
<!-- BEGIN top10row -->
<tr valign="top"><td class="{top10row.ROW_CLASS}" style="padding: 4px 0" align="right"><b>{top10row.NUMBER}.</b>&nbsp;</td><td class="{top10row.ROW_CLASS}" style="padding: 4px 0"><a href="{top10row.URL}" title="{top10row.POINTS}">{top10row.LINK}</a> &nbsp;<a href="{top10row.U_HREF}" title="{top10row.MONTH}" style="text-decoration: none"><b>&raquo;</b></a></td></tr>
<!-- END top10row -->
</table>
<br />
</td>
</tr>
</table>

<!-- BEGIN switch_recenzent -->
<br />
<table align="center" cellpadding="2" cellspacing="1" border="0" width="140" class="forumline">
<tr>
<th class="thtop" nowrap height="28">&nbsp;{DATE}&nbsp;</th>
</tr>
<tr>
<td class="row2" style="padding: 0">
<table width="100%">
<!-- BEGIN userrow -->
<tr>
<td align="right" class="{switch_recenzent.userrow.ROW_CLASS}">{switch_recenzent.userrow.NUMBER}.</td>
<td width="100%" class="{switch_recenzent.userrow.ROW_CLASS}"><a href="{switch_recenzent.userrow.U_PROFILE}">{switch_recenzent.userrow.USERNAME}</a></td>
<td align="right" class="{switch_recenzent.userrow.ROW_CLASS}">{switch_recenzent.userrow.COUNT}</td>
</tr>
<!-- END userrow -->
</table>
</td>
</tr>
</table>
<!-- END switch_recenzent -->

</td>
<td align="center" valign="top" style="text-align: center; vertical-align: top">
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