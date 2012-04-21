<div class="groupcp_info_body-tpl">
	<form action="{S_GROUPCP_ACTION}" method="post">
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
		<table class="forumline">
			<tr>
				<th class="thhead" colspan="7">{L_GROUP_INFORMATION}
				</th>
			</tr>
			<tr>
				<td class="row1">{L_GROUP_NAME}:</td>
				<td class="row2">
					<span class="gen">{GROUP_NAME}
					</span></td>
			</tr>
			<tr>
				<td class="row1">{L_GROUP_DESC}:</td>
				<td class="row2">{GROUP_DESC}</td>
			</tr>
			<tr>
				<td class="row1">{L_GROUP_MEMBERSHIP}:</td>
				<td class="row2">{GROUP_DETAILS} &nbsp;&nbsp;
					<!-- BEGIN switch_subscribe_group_input -->
					<input class="mainoption" type="submit" name="joingroup" value="{L_JOIN_GROUP}" />
					<!-- END switch_subscribe_group_input -->
					<!-- BEGIN switch_unsubscribe_group_input -->
					<input class="mainoption" type="submit" name="unsub" value="{L_UNSUBSCRIBE_GROUP}" />
					<!-- END switch_unsubscribe_group_input --></td>
			</tr>
			<!-- BEGIN switch_mod_option -->
			<tr>
				<td class="row1">{L_GROUP_TYPE}:</td>
				<td class="row2">
					<input type="radio" id="label__group_type__{S_GROUP_OPEN_TYPE}" name="group_type" value="{S_GROUP_OPEN_TYPE}" {S_GROUP_OPEN_CHECKED} />
					<label for="label__group_type__{S_GROUP_OPEN_TYPE}">{L_GROUP_OPEN}
					</label> &nbsp;&nbsp;
					<input type="radio" id="label__group_type__{S_GROUP_CLOSED_TYPE}" name="group_type" value="{S_GROUP_CLOSED_TYPE}" {S_GROUP_CLOSED_CHECKED} />
					<label for="label__group_type__{S_GROUP_CLOSED_TYPE}">{L_GROUP_CLOSED}
					</label> &nbsp;&nbsp;
					<input type="radio" id="label__group_type__{S_GROUP_HIDDEN_TYPE}" name="group_type" value="{S_GROUP_HIDDEN_TYPE}" {S_GROUP_HIDDEN_CHECKED} />
					<label for="label__group_type__{S_GROUP_HIDDEN_TYPE}">{L_GROUP_HIDDEN}
					</label> &nbsp;&nbsp;
					<input class="mainoption" type="submit" name="groupstatus" value="{L_UPDATE}" /></td>
			</tr>
			<!-- END switch_mod_option -->
		</table>{S_HIDDEN_FIELDS}
	</form>
	<form action="{S_GROUPCP_ACTION}" method="post" name="post">
		<table     class="forumline">
			<tr>
				<th class="thcornerl">{L_PM}
				</th>
				<th class="thtop">{L_USERNAME}
				</th>
				<th class="thtop">{L_POSTS}
				</th>
				<th class="thTop">{L_HELPS}
				</th>
				<th class="thtop">{L_FROM}
				</th>
				<th class="thtop">{L_EMAIL}
				</th>
				<th class="thtop">{L_WEBSITE}
				</th>
				<th class="thcornerr">{L_SELECT}
				</th>
			</tr>
			<tr>
				<td class="catsides" colspan="9">
					<span class="cattitle">{L_GROUP_MODERATOR}
					</span></td>
			</tr>
			<tr>
				<td class="row1"> {MOD_PM_IMG} </td>
				<td class="row1">
					<a href="{U_MOD_VIEWPROFILE}">{MOD_USERNAME}</a></td>
				<td class="row1">{MOD_POSTS}</td>
				<td class="row1">{MOD_HELPS}</td>
				<td class="row1">{MOD_FROM}</td>
				<td class="row1">{MOD_EMAIL_IMG}</td>
				<td class="row1">&nbsp;{MOD_WWW_IMG}&nbsp;</td>
				<td class="row1">&nbsp;</td>
			</tr>
			<tr>
				<td class="catsides" colspan="9">
					<span class="cattitle">{L_GROUP_MEMBERS}
					</span></td>
			</tr>
			<!-- BEGIN member_row -->
			<tr>
				<td class="{member_row.ROW_CLASS}"> {member_row.PM_IMG} </td>
				<td class="{member_row.ROW_CLASS}">
					<a href="{member_row.U_VIEWPROFILE}">{member_row.USERNAME}</a></td>
				<td class="{member_row.ROW_CLASS}">{member_row.POSTS}</td>
				<td class="{member_row.ROW_CLASS}">{member_row.HELPS}</td>
				<td class="{member_row.ROW_CLASS}"> {member_row.FROM} </td>
				<td class="{member_row.ROW_CLASS}">{member_row.EMAIL_IMG}</td>
				<td class="{member_row.ROW_CLASS}">{member_row.WWW_IMG}</td>
				<td class="{member_row.ROW_CLASS}"> &nbsp;
					<!-- BEGIN switch_mod_option -->
					<input type="checkbox" name="members[]" value="{member_row.USER_ID}" />
					<!-- END switch_mod_option --> &nbsp;</td>
			</tr>
			<!-- END member_row -->
			<!-- BEGIN switch_no_members -->
			<tr>
				<td class="row1" colspan="8">{L_NO_MEMBERS}</td>
			</tr>
			<!-- END switch_no_members -->
			<!-- BEGIN switch_hidden_group -->
			<tr>
				<td class="row1" colspan="8">{L_HIDDEN_MEMBERS}</td>
			</tr>
			<!-- END switch_hidden_group -->
			<!-- BEGIN switch_mod_option -->
			<tr>
				<td class="catbottom" colspan="9">
					<input type="submit" name="remove" value="{L_REMOVE_SELECTED}" class="mainoption" />		</td>
			</tr>
			<!-- END switch_mod_option -->
		</table>
		<table>
			<tr>
				<td v class="nav">
					<!-- BEGIN switch_mod_option -->
					<input type="text"  class="post" name="username" maxlength="50" size="20" />
					<input type="submit" name="add" value="{L_ADD_MEMBER}" class="mainoption" />
					<input type="submit" name="usersubmit" value="{L_FIND_USERNAME}" class="liteoption" onClick="window.open('{U_SEARCH_USER}', '_phpbbsearch', 'HEIGHT=250,resizable=yes,WIDTH=400');return false;" /><br /><br />
					<!-- END switch_mod_option -->
					<nav class="breadcrumb">
						<ul>
							<li>
							<a href="{U_INDEX}">{L_INDEX}</a>
							</li>
						</ul>
					</nav><br />{PAGINATION}</td>
			</tr>
		</table>{PENDING_USER_BOX} {S_HIDDEN_FIELDS}
	</form>
	<table>
		<tr>  <td>{JUMPBOX}</td>
		</tr>
	</table>
</div>