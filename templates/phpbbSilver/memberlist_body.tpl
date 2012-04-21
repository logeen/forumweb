<div class="memberlist_body-tpl">
	<form action="{S_MODE_ACTION}" method="post" class="user_search">
		<fieldset>
			<input type="hidden" name="mode" value="search">
			<label for="label__username">{L_USERNAME}</label>
			<input type="text" name="username" id="label__username" value="{USERNAME}">
			<button>{L_SEARCH}</button>
			<p class="explain">{L_SEARCH_AUTHOR_EXPLAIN}</p>
		</fieldset>
	</form>
	<!-- BEGIN switch_admin_option -->
	<form method="post" action="{S_ADMIN_ACTION}">
		<input type="hidden" name="mode" value="save">
		<input type="hidden" name="submit" value="1">
		<input type="hidden" name="username" value=".">
		<input type="hidden" name="deleteuser" value="1">
		<!-- END switch_admin_option -->

		<nav class="breadcrumb">
			<ul>
				<li><a href="{U_INDEX}">{L_INDEX}</a></li>
			</ul>
		</nav>

		<table>
			<thead>
				<tr>
					<th>#</th>
					<th>{L_PM}</th>
					<th>{L_USERNAME}</th>
					<th>{L_EMAIL}</th>
					<th>{L_GG}</th>
					<th>{L_TLEN}</th>
					<th>{L_FROM}</th>
					<th>{L_JOINED}</th>
					<th>{L_LASTVISIT}</th>
					<th>{L_AGE}</th>
					<th>{L_POSTS}</th>
					<th>{L_HELPS}</th>
					<th>{L_WEBSITE}</th>
					<!-- BEGIN switch_admin_option -->
					<th>{L_SELECT}</th>
					<!-- END switch_admin_option -->
				</tr>
			</thead>
			<!-- BEGIN memberrow -->
			<tr>
				<td>{memberrow.ROW_NUMBER}</td>
				<td><span class="profile_pm">{memberrow.PM}</span></td>
				<td><a href="{memberrow.U_VIEWPROFILE}">{memberrow.USERNAME}</a></td>
				<td><span class="profile_email">{memberrow.EMAIL}</span></td>
				<td>{memberrow.GG_STATUS_IMG}</td>
				<td>{memberrow.TLEN_STATUS_IMG}</td>
				<td>{memberrow.FROM}</td>
				<td><time datetime="{memberrow.JOINED_DATETIME}">{memberrow.JOINED}</time></td>
				<td><time datetime="{memberrow.LASTVISIT_DATETIME}">{memberrow.LASTVISIT}</time></td>
				<td>{memberrow.AGE}</td>
				<td>{memberrow.POSTS}</td>
				<td>{memberrow.HELPS}</td>
				<td><span class="profile_www">{memberrow.WWW}</span></td>
				<!-- BEGIN switch_admin_option -->
				<td><input type="checkbox" name="id[]" value="{memberrow.USER_ID}"></td>
				<!-- END switch_admin_option -->
			</tr>
			<!-- END memberrow -->
			<!-- BEGIN switch_admin_option -->
			<tr>
				<td class="catbottom" colspan="14">
					<input type="submit" name="remove" value="{L_REMOVE_SELECTED}" class="mainoption"></td>
			</tr>
			<!-- END switch_admin_option -->
		</table>
	<!-- BEGIN switch_admin_option -->
	</form>
	<!-- END switch_admin_option -->

	<form method="post" action="{S_MODE_ACTION}" class="sort">
		<fieldset>
			<legend>{L_SUBMIT}</legend>
			<ul>
				<li>
					<label>
						{L_SELECT_SORT_METHOD}
						{S_MODE_SELECT}
					</label>
				</li>
				<li>
					<label>
						{L_ORDER}
						{S_ORDER_SELECT}
					</label>
				</li>
			</ul>
			<button>{L_SUBMIT}</button>
		</fieldset>
	</form>

	<nav class="breadcrumb">
		<ul>
			<li><a href="{U_INDEX}">{L_INDEX}</a></li>
		</ul>
	</nav>

	{PAGINATION}

	{JUMPBOX}
</div>