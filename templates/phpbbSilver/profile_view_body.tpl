<div class="profile_view_body-tpl">
	<nav class="breadcrumb">
		<ul>
			<li><a href="{U_INDEX}">{L_INDEX}</a></li>
		</ul>
	</nav>

	<article>
		<h1>{L_VIEWING_PROFILE}</h1>
		<section>
			<h2>{L_AVATAR}</h2>
			<figure>
				{AVATAR_IMG}
				<figcaption>{POSTER_RANK}</figcaption>
			</figure>
		</section>
		<section>
			<h2>{L_CONTACT} {USERNAME}</h2>
			<dl>
				<dt>{L_EMAIL_ADDRESS}:</dt>
				<dd>{EMAIL_IMG}</dd>
				<dt>{L_PM}:</dt>
				<dd>{PM_IMG}</dd>
				<dt>{L_GG}:</dt>
				<dd>{GG_IMG} {GG_STATUS_IMG}</dd>
				<dt>{L_TLEN}:</dt>
				<dd>{TLEN_IMG} {TLEN_STATUS_IMG}</dd>
				<dt>{L_JABBER}:</dt>
				<dd>{JABBER_IMG} {JABBER_STATUS_IMG}</dd>
				<dt>{L_SKYPE}:</dt>
				<dd>{SKYPE_IMG} {SKYPE_STATUS_IMG}</dd>
				<dt>{L_ICQ_NUMBER}:</dt>
				<dd>{ICQ_IMG} {ICQ_STATUS_IMG}</dd>
				<dt>{L_MESSENGER}:</dt>
				<dd>{MSN}</dd>
				<dt>{L_YAHOO}:</dt>
				<dd>{YIM_IMG}</dd>
				<dt>{L_AIM}:</dt>
				<dd>{AIM_IMG}</dd>
				<dt>{L_FACEBOOK}:</dt>
				<dd>{FACEBOOK_IMG}</dd>
			</dl>
		</section>
		<section>
			<h2>{L_OBSERVING} {USERNAME}</h2>
			<dl>
				<dt>{L_OBSERVES}</dt>
				<dd>{OBSERVES}</dd>
				<dt>{L_IS_OBSERVED}</dt>
				<dd>{IS_OBSERVED}</dd>
				<!-- BEGIN switch_user_not_self -->
				<dt>{L_OBSERVE_USER}</dt>
				<dd>
					{switch_user_not_self.OBSERVE}
					<p class="explain">{L_OBSERVE_USER_EXPLAIN}</p>
				</dd>
				<!-- END switch_user_not_self -->
				<!-- BEGIN switch_user_self -->
				<dt>{L_YOU_OBSERVE}</dt>
				<dd>
					<ul>
						<!-- BEGIN observerow -->
						<li>{switch_user_self.observerow.STOP_OBSERVING} <a href="{switch_user_self.observerow.U_VIEWPROFILE}">{switch_user_self.observerow.USERNAME}</a></li>
						<!-- END observerow -->
					</ul>
				</dd>
				<!-- END switch_user_self -->
			</dl>
		</section>
		<section>
			<h2>{L_ABOUT_USER}</h2>
			<dl>
				<dt>{L_JOINED}:</dt>
				<dd><time datetime="{JOINED_DATETIME}">{JOINED}</time></dd>
				<dt>{L_LASTVISIT}:</dt>
				<dd><time datetime="{LASTVISIT_DATETIME}">{LASTVISIT}</time></dd>
				<dt>{L_LANGUAGE}:</dt>
				<dd>{LANGUAGE}</dd>
				<dt>{L_TIMEZONE}:</dt>
				<dd>{TIMEZONE} {DST}</dd>
				<dt>{L_TOTAL_POSTS}:</dt>
				<dd>{POSTS}</dd>
				<dd>[{POST_PERCENT_STATS} / {POST_DAY_STATS}]</dd>
				<dd><a href="{U_SEARCH_USER}">{L_SEARCH_USER_POSTS}</a></dd>
				<dt>{L_TOTAL_HELPS}:</dt>
				<dd>{HELPS}</dd>
				<dd>[{POSTS_PER_HELPS_STATS} / {HELPS_PER_DAY_STATS}]</dd>
				<dd><a href="{U_SEARCH_USER_HELPS}">{L_SEARCH_USER_HELPS}</a></dd>
				<dt>{L_TOTAL_HELPS_TO}:</dt>
				<dd>{HELPS_TO}</dd>
				<dd>[{POSTS_PER_HELPS_TO_STATS} / {HELPS_TO_PER_DAY_STATS}]</dd>
				<dd><a href="{U_SEARCH_USER_HELPS_TO}">{L_SEARCH_USER_HELPS_TO}</a></dd>
				<dt>{L_LOCATION}:</dt>
				<dd>{LOCATION}<dd>
				<dt>{L_WEBSITE}:</dt>
				<dd>{WWW}</dd>
				<dt>{L_OCCUPATION}:</dt>
				<dd>{OCCUPATION}</dd>
				<dt>{L_INTERESTS}:</dt>
				<dd>{INTERESTS}</dd>
				<!-- Start add - Gender MOD --> 
				<dt>{L_GENDER}:</dt>
				<dd>{GENDER}</dd>
				<!-- End add - Gender MOD -->
				<dt>{L_DATE_OF_BIRTH}:</dt>
				<dd>{BIRTH}</dd>
				<dt>{L_AGE}:</dt>
				<dd>{AGE}</dd>
				<dt>{L_SIGNATURE}:</dt>
				<dd>{SIGNATURE}</dd>
				<!-- BEGIN switch_viewclient -->
				<dt>{switch_viewclient.L_BROWSER}:</dt>
				<dd>{switch_viewclient.BROWSER_IMG}</dd>
				<dt>{switch_viewclient.L_OPERATING_SYSTEM}:</dt>
				<dd>{switch_viewclient.OPERATING_SYSTEM_IMG}</dd>
				<dt>{switch_viewclient.L_SCREEN}:</dt>
				<dd>{switch_viewclient.SCREEN_IMG}</dd>
				<!-- END switch_viewclient -->
				<!-- BEGIN switch_mod -->
				<dt>{switch_mod.L_HOST}:</dt>
				<dd>{switch_mod.HOST}</dd>
				<dt>{switch_mod.L_CLIENT}:</dt>
				<dd>{switch_mod.CLIENT}</dd>
				<dt>{switch_mod.L_USER_AGENT}:</dt>
				<dd>{switch_mod.USER_AGENT}</dd>
				<dt>{switch_mod.L_SIMILAR_USERS}:</dt>
				<dd>{switch_mod.SIMILAR_USERS}</dd>
				<!-- END switch_mod -->
			</dl>
		</section>
	</article>

	{JUMPBOX}
</div>