<div class="modcp_history-tpl">
	<table>
		<tr>
			<td class="nav">
				<nav class="breadcrumb">
					<ul>
						<li>
						<a href="{U_INDEX}">{L_INDEX}</a>
						</li>
						<li>
						<a href="{U_VIEW_FORUM}">{FORUM_NAME}</a>
						</li>
					</ul>
				</nav></td>
		</tr>
	</table>
	<table     class="forumline">
		<tr>
			<th class="thhead" colspan="3">{L_POST_HISTORY}
			</th>
		</tr>
		<tr>
			<td class="row1" colspan="3">
				<span class="genmed">{L_POST_HISTORY_EXPLAIN}
				</span></td>
		</tr>
		<tr>
			<th>{L_MESSAGE}
			</th>
			<th class="thright">&nbsp;{L_SELECT}&nbsp;
			</th>
		</tr>
		<!-- BEGIN postrow -->
		<tr>
			<td  v class="{postrow.ROW_CLASS}">
				<table>
					<tr>
						<td class="postdetails">
							<img src="templates/phpbbSilver/images/icon_minipost.gif" alt="{L_POST}">{L_POSTED}:
							<time datetime="{postrow.POST_DATE_DATETIME}">{postrow.POST_DATE}
							</time>&nbsp;&nbsp;&nbsp;&nbsp;{L_POST_SUBJECT}: {postrow.POST_SUBJECT}</td>
					</tr>
					<tr>
						<td colspan="2" v class="postbody">
							<hr size="1" />{postrow.MESSAGE}</td>
					</tr>
				</table></td>
			<td   class="{postrow.ROW_CLASS}">{postrow.S_POST_BUTTON}</td>
		</tr>
		<tr>
			<td colspan="3"  class="spacerow">
				<img src="templates/phpbbSilver/images/spacer.gif"   alt="."></td>
		</tr>
		<!-- END postrow -->
	</table>
	<table>
		<tr>
			<td class="nav">
				<nav class="breadcrumb">
					<ul>
						<li>
						<a href="{U_INDEX}">{L_INDEX}</a>
						</li>
						<li>
						<a href="{U_VIEW_FORUM}">{FORUM_NAME}</a>
						</li>
					</ul>
				</nav></td>
		</tr>
	</table>
</div>