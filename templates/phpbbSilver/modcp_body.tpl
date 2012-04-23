<div class="modcp_body-tpl">
	<form method="post" action="{S_MODCP_ACTION}">
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
		<table class="forumline">
			<tr>
				<td class="cathead" colspan="5">
					<span class="cattitle">{L_MOD_CP}
					</span>  </td>
			</tr>
			<tr>
				<td class="row1" colspan="5">
					<span class="genmed">{L_MOD_CP_EXPLAIN}
					</span></td>
			</tr>
			<tr>
				<th  class="thleft">&nbsp;
				</th>
				<th>&nbsp;{L_TOPICS}&nbsp;
				</th>
				<th>&nbsp;{L_REPLIES}&nbsp;
				</th>
				<th>&nbsp;{L_LASTPOST}&nbsp;
				</th>
				<th  class="thRight">&nbsp;{L_SELECT}&nbsp;
				</th>
			</tr>
			<!-- BEGIN topicrow -->
			<tr onmouseover="this.className = 'row_hover'" onmouseout="this.className = ''">
				<td class="row1">
					<img src="{topicrow.TOPIC_FOLDER_IMG}"   alt="{topicrow.L_TOPIC_FOLDER_ALT}" title="{topicrow.L_TOPIC_FOLDER_ALT}" /></td>
				<td class="row1">&nbsp;
					<span class="topictitle">{topicrow.TOPIC_TYPE}
						<a href="{topicrow.U_VIEW_TOPIC}" class="topictitle">{topicrow.TOPIC_TITLE}</a>
					</span></td>
				<td class="row2">
					<span class="postdetails">{topicrow.REPLIES}
					</span></td>
				<td class="row1">
					<span class="postdetails">
						<time datetime="{topicrow.LAST_POST_TIME_DATETIME}">{topicrow.LAST_POST_TIME}
						</time>
					</span></td>
				<td class="row2">
					<input type="checkbox" name="topic_id_list[]" value="{topicrow.TOPIC_ID}" /></td>
			</tr>
			<!-- END topicrow -->
			<tr>
				<td class="catbottom" colspan="5"> {S_HIDDEN_FIELDS}
					<input type="submit" name="delete" class="liteoption" value="{L_DELETE}" />&nbsp;
					<input type="submit" name="move" class="liteoption" value="{L_MOVE}" />&nbsp;
					<input type="submit" name="lock" class="liteoption" value="{L_LOCK}" />&nbsp;
					<input type="submit" name="unlock" class="liteoption" value="{L_UNLOCK}" />&nbsp;
					<input type="submit" name="merge" class="liteoption" value="{L_MERGE}" /></td>
			</tr>
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
					</nav><br />{PAGINATION}</td>
			</tr>
		</table>
	</form>
	<table>
		<tr>  <td>{JUMPBOX}</td>
		</tr>
	</table>
</div>