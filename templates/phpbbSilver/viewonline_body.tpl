<div class="viewonline_body-tpl">

	<nav class="breadcrumb">
		<ul>
			<li><a href="{U_INDEX}">{L_INDEX}</a></li>
		</ul>
	</nav>

	<h2>Kto jest na forum</h2>

	<h3>{TOTAL_REGISTERED_USERS_ONLINE}</h3>
	<dl>
		<!-- BEGIN reg_user_row -->
		<dt>{L_USERNAME}: <a href="{reg_user_row.U_USER_PROFILE}">{reg_user_row.USERNAME}</a></dt>
		<dd>{L_LAST_UPDATE}: <time datetime="{reg_user_row.LASTUPDATE_DATETIME}">{reg_user_row.LASTUPDATE}</time></dd>
		<dd>{L_FORUM_LOCATION}: <a href="{reg_user_row.U_FORUM_LOCATION}">{reg_user_row.FORUM_LOCATION}</a></dd>
		<!-- END reg_user_row -->
	</dl>

	<h3>{TOTAL_GUEST_USERS_ONLINE}</h3>
	<dl>
		<!-- BEGIN guest_user_row -->
		<dt>{guest_user_row.USERNAME}</dt>
		<dd>{L_LAST_UPDATE}: <time datetime="{guest_user_row.LASTUPDATE_DATETIME}">{guest_user_row.LASTUPDATE}</time></dd>
		<dd>{L_FORUM_LOCATION}: <a href="{guest_user_row.U_FORUM_LOCATION}">{guest_user_row.FORUM_LOCATION}</a></dd>
		<!-- END guest_user_row -->
	</dl>

	<p>{L_ONLINE_EXPLAIN}</p>

</div>