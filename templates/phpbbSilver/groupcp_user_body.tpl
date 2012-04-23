<div class="groupcp_user_body-tpl">
	<table>
		<tr>
			<td class="nav">
				<nav class="breadcrumb">
					<ul>
						<li>
						<a href="{U_INDEX}">{L_INDEX}</a>
						</li>
					</ul>
				</nav></td>
		</tr>
	</table>
	<table     class="forumline">
		<!-- BEGIN switch_groups_joined -->
		<tr>
			<th colspan="2"  class="thhead">{L_GROUP_MEMBERSHIP_DETAILS}
			</th>
		</tr>
		<!-- BEGIN switch_groups_member -->
		<tr>
			<td class="row1">{L_YOU_BELONG_GROUPS}</td>
			<td class="row2">
				<form method="get" action="{S_USERGROUP_ACTION}">
					<table>
						<tr>
							<td  class="gensmall">{GROUP_MEMBER_SELECT}</td><td>
								<input type="submit" value="{L_VIEW_INFORMATION}" class="liteoption" />{S_HIDDEN_FIELDS} </td>
						</tr>
					</table>
				</form>	</td>
		</tr>
		<!-- END switch_groups_member -->
		<!-- BEGIN switch_groups_pending -->
		<tr>
			<td class="row1">
				<span class="gen">{L_PENDING_GROUPS}
				</span></td>
			<td class="row2">
				<form method="get" action="{S_USERGROUP_ACTION}">
					<table>
						<tr>
							<td  class="gensmall">{GROUP_PENDING_SELECT}</td><td>
								<input type="submit" value="{L_VIEW_INFORMATION}" class="liteoption" />{S_HIDDEN_FIELDS} </td>
						</tr>
					</table>
				</form>	</td>
		</tr>
		<!-- END switch_groups_pending -->
		<!-- END switch_groups_joined -->
		<!-- BEGIN switch_groups_remaining -->
		<tr>
			<th colspan="2"  class="thhead">{L_JOIN_A_GROUP}
			</th>
		</tr>
		<tr>
			<td class="row1">{L_SELECT_A_GROUP}</td>
			<td class="row2">
				<form method="get" action="{S_USERGROUP_ACTION}">
					<table>
						<tr>
							<td  class="gensmall">{GROUP_LIST_SELECT}</td><td>
								<input type="submit" value="{L_VIEW_INFORMATION}" class="liteoption" />{S_HIDDEN_FIELDS} </td>
						</tr>
					</table>
				</form>	</td>
		</tr>
		<!-- END switch_groups_remaining -->
	</table>
	<table>
		<tr>
			<td class="nav">
				<nav class="breadcrumb">
					<ul>
						<li>
						<a href="{U_INDEX}">{L_INDEX}</a>
						</li>
					</ul>
				</nav></td>
		</tr>
	</table><br  />
	<table>
		<tr>  	 <td>{JUMPBOX}</td>
		</tr>
	</table>
</div>