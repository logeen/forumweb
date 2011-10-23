<div class="profile_add_body-tpl">
<script src="md5.js"></script>
<nav class="breadcrumb">
	<ul>
		<li><a href="{U_INDEX}">{L_INDEX}</a></li>
	</ul>
</nav>
<form action="{S_PROFILE_ACTION}" {S_FORM_ENCTYPE} method="post" id="profile_addform"
<!-- BEGIN switch_add_profile -->
 class="accordion"
<!-- END switch_add_profile --> 
>
	{ERROR_BOX}
	<fieldset id="info0">
		<legend><a href="#info0">{L_REGISTRATION_INFO}</a></legend>
		<div>
			<input type="hidden" name="screen" value="">
			<input type="hidden" name="client" value="">
			<p>{L_ITEMS_REQUIRED}</p>
			<dt><label for="profile_username">{L_USERNAME}:</label> *</dt>
			<dd> 
				<!-- BEGIN switch_username_change -->
				<input type="text" name="username" size="25" maxlength="25" value="{USERNAME}" id="profile_username" required>
				<!-- END switch_username_change -->
				<!-- BEGIN switch_no_username_change -->
				<input type="text" name="username" size="25" maxlength="25" value="{USERNAME}" readonly="readonly" id="profile_username">
				<p class="explain">{L_USERNAME_CHANGE_EXPLAIN}</p>
				<!-- END switch_no_username_change -->
			</dd> 
			<dt><label for="profile_email">{L_EMAIL_ADDRESS}:</label> *</dt>
			<dd> 
				<input type="email" name="email" size="25" maxlength="255" value="{EMAIL}" id="profile_email" required>
			</dd>
			<!-- BEGIN switch_edit_profile --> 
			<dt>
				<label for="profile_currpass">{L_CURRENT_PASSWORD}:</label> *
				<p class="explain">{L_CONFIRM_PASSWORD_EXPLAIN}</p>
			</dt>
			<dd> 
				<input type="password" name="cur_password" size="25" maxlength="100" value="{CUR_PASSWORD}" id="profile_currpass" required>
			</dd>
			<!-- END switch_edit_profile --> 
			<dt>
				<label for="profile_pass">{L_NEW_PASSWORD}:</label> *
				<p>{L_PASSWORD_IF_CHANGED}</p>
			</dt>
			<dd> 
				<input type="password" name="new_password" size="25" maxlength="100" value="{NEW_PASSWORD}" id="profile_pass" required>
			</dd> 
			<dt>
				<label for="profile_pass2">{L_CONFIRM_PASSWORD}:</label> *
				<p>{L_PASSWORD_CONFIRM_IF_CHANGED}</p>
			</dt>
			<dd> 
				<input type="password" name="password_confirm" size="25" maxlength="100" value="{PASSWORD_CONFIRM}" id="profile_pass2" required>
			</dd>
			<!-- Visual Confirmation -->
			<!-- BEGIN switch_confirm -->
			<dt>
				<p>{L_CONFIRM_CODE_IMPAIRED}</p><p>{CONFIRM_IMG}</p>
				<p><label for="profile_code">{L_CONFIRM_CODE}:</label> *</p>
				<p class="explain">{L_CONFIRM_CODE_EXPLAIN}</p>
			</dt>
			<dd>
				<b>{L_CONFIRM_CODE_INFORMATION}</b>
				<input type="text" name="confirm_code" size="6" maxlength="6" value="" id="profile_code" required>
			</dd>
			<!-- END switch_confirm -->
		</dl>
		</div>
	</fieldset>
	<fieldset id="info1"> 
		<legend><a href="#info1">{L_PROFILE_INFO}</a></legend>
		<div>
			<p>{L_PROFILE_INFO_NOTICE}</p>
			<dl>
				<dt><label for="profile_icq">{L_ICQ_NUMBER}:</label></dt>
				<dd> 
					<input type="text" name="icq" size="10" maxlength="15" value="{ICQ}" id="profile_icq">
				</dd>
				<dt><label for="profile_gg">{L_GG}:</label></dt>
				<dd> 
					<input type="text" name="gg" size="20" maxlength="255" value="{GG}" id="profile_gg">
				</dd>
				<dt><label for="profile_tlen">{L_TLEN}:</label></dt>
				<dd> 
					<input type="text" name="tlen" size="20" maxlength="255" value="{TLEN}" id="profile_tlen">
				</dd>
				<dt><label for="profile_jabber">{L_JABBER}:</label></dt>
				<dd> 
					<input type="text" name="jabber" size="20" maxlength="255" value="{JABBER}" id="profile_jabber">
				</dd>
				<dt><label for="profile_skype">{L_SKYPE}:</label></dt>
				<dd> 
					<input type="text" name="skype" size="20" maxlength="255" value="{SKYPE}" id="profile_skype">
				</dd>
				<dt><label for="profile_aim">{L_AIM}:</label></dt>
				<dd> 
					<input type="text" name="aim" size="20" maxlength="255" value="{AIM}" id="profile_aim">
				</dd>
				<dt><label for="profile_msn">{L_MESSENGER}:</label></dt>
				<dd>
					<input type="text" name="msn" size="20" maxlength="255" value="{MSN}" id="profile_msn">
				</dd>
				<dt><label for="profile_yahoo">{L_YAHOO}:</label></dt>
				<dd> 
					<input type="text" name="yim" size="20" maxlength="255" value="{YIM}" id="profile_yahoo">
				</dd>
				<dt>
					<label for="profile_face">{L_FACEBOOK}:</label>
					<p class="explain">{L_FACEBOOK_EXPLAIN}</p>
				</dt>
				<dd> 
					<input type="text" name="facebook" size="20" maxlength="255" value="{FACEBOOK}" id="profile_face">
				</dd>
				<dt><label for="profile_site">{L_WEBSITE}:</label></dt>
				<dd> 
					<input type="text" name="website" size="25" maxlength="255" value="{WEBSITE}" id="profile_site">
				</dd> 
				<dt><label for="profile_location">{L_LOCATION}:</label></dt>
				<dd> 
					<input type="text" name="location" size="25" maxlength="100" value="{LOCATION}" id="profile_location">
				</dd>
				<dt><label for="profile_occup">{L_OCCUPATION}:</label></dt>
				<dd> 
					<input type="text" name="occupation" size="25" maxlength="100" value="{OCCUPATION}" id="profile_occup">
				</dd> 
				<dt><label for="profile_interests">{L_INTERESTS}:</label></dt>
				<dd> 
					<input type="text" name="interests" size="35" maxlength="150" value="{INTERESTS}" id="profile_interests">
				</dd>
				<!-- Start add - Gender MOD -->
				<dt>{L_GENDER}:</dt> 
				<dd>
					<ul>
						<li><label><input type="radio" {LOCK_GENDER} name="gender" value="0" {GENDER_NO_SPECIFY_CHECKED}> {L_GENDER_NOT_SPECIFY}</label></li>
						<li><label><input type="radio" name="gender" value="1" {GENDER_MALE_CHECKED}> {L_GENDER_MALE}</label></li> 
						<li><label><input type="radio" name="gender" value="2" {GENDER_FEMALE_CHECKED}> {L_GENDER_FEMALE}</label></li> 
					</ul>
				</dd>
				<!-- End add - Gender MOD -->
				<dt>{L_DATE_OF_BIRTH}:</dt>
				<dd>{BIRTH}</dd>
				<dt>
					<label for="profile_sign">{L_SIGNATURE}:</label>
					<p class="explain">{L_SIGNATURE_EXPLAIN}<p>
					<ul>
						<li>{HTML_STATUS}</li>
						<li>{BBCODE_STATUS}</li>
						<li>{SMILIES_STATUS}</li>
					</ul>
				</dt>
				<dd>
					<textarea name="signature" rows="6" cols="30" class="maxlength" maxlength="{MAX_SIG_CHARS}" id="profile_sign">{SIGNATURE}</textarea>
				</dd>
			</dl>
		</div>
	</fieldset>
	<fieldset id="info2"> 
		<legend><a href="#info2">{L_PREFERENCES}</a></legend>
		<div>
			<dl>
				<dt>{L_PUBLIC_VIEW_EMAIL}:</dt>
				<dd> 
					<ul>
						<li><label><input type="radio" name="viewemail" value="1" {VIEW_EMAIL_YES}> {L_YES}</label></li> 
						<li><label><input type="radio" name="viewemail" value="0" {VIEW_EMAIL_NO}> {L_NO}</label></li>
					</ul>
				</dd>
				<dt>{L_PUBLIC_VIEW_CLIENT}:</dt>	
				<dd> 
					<ul>
						<li><label><input type="radio" name="viewclient" value="1" {VIEW_CLIENT_YES}> {L_YES}</label></li>
						<li><label><input type="radio" name="viewclient" value="0" {VIEW_CLIENT_NO}> {L_NO}</label></li>
					</ul>
				</dd>
				<dt>{L_HIDE_USER}:</dt>
				<dd>
					<ul>
						<li><label><input type="radio" name="hideonline" value="1" {HIDE_USER_YES}> {L_YES}</label></li> 
						<li><label><input type="radio" name="hideonline" value="0" {HIDE_USER_NO}> {L_NO}</label></li>
					</ul>
				</dd>
				<dt>
					<p>{L_NOTIFY_ON_REPLY}:</p>
					<p class="explain">{L_NOTIFY_ON_REPLY_EXPLAIN}</p>
				</dt>
				<dd>
					<ul>
						<li><label><input type="radio" name="notifyreply" value="1" {NOTIFY_REPLY_YES}> {L_YES}</label></li> 
						<li><label><input type="radio" name="notifyreply" value="0" {NOTIFY_REPLY_NO}> {L_NO}</label></li>
					</ul>
				</dd>
				<dt>{L_NOTIFY_ON_PRIVMSG}:</dt>
				<dd> 
					<ul>
						<li><label><input type="radio" name="notifypm" value="1" {NOTIFY_PM_YES}> {L_YES}</label></li> 
						<li><label><input type="radio" name="notifypm" value="0" {NOTIFY_PM_NO}> {L_NO}</label></li>
					</ul>
				</dd>
				<dt>
					<p>{L_POPUP_ON_PRIVMSG}:</p>
					<p class="explain">{L_POPUP_ON_PRIVMSG_EXPLAIN}</p>
				</dt>
				<dd> 
					<ul>
						<li><label><input type="radio" name="popup_pm" value="1" {POPUP_PM_YES}> {L_YES}</label></li> 
						<li><label><input type="radio" name="popup_pm" value="0" {POPUP_PM_NO}> {L_NO}</label></li>
					</ul>
				</dd>
				<dt>
					<p>{L_MAIL_ON_WATCHED_REPLY}:</p>
					<p class="explain">{L_MAIL_ON_WATCHED_REPLY_EXPLAIN}</span>
				</dt>
				<dd> 
					<ul>
						<li><label><input type="radio" name="notify_watch" value="1" {NOTIFY_WATCH_YES}> {L_YES}</label></li> 
						<li><label><input type="radio" name="notify_watch" value="0" {NOTIFY_WATCH_NO}> {L_NO}</label></li>
					</ul>
				</dd> 
			<dt>{L_NOTIFICATION_COUNTER}:</dt>
			<dd>
				<ul>
					<li><label><input type="radio" name="notification" value="1" {NOTIFICATION_YES}> {L_YES}</label></li> 
					<li><label><input type="radio" name="notification" value="0" {NOTIFICATION_NO}> {L_NO}</label></li>
				</ul>
			</dd> 
			<dt>{L_POSTING_REDIRECT}:</dt>
			<dd>
				<ul>
					<li><label><input type="radio" name="posting_redirect" value="0" {POSTING_REDIRECT_0}> {L_POSTING_REDIRECT_DEFAULT}</label></li> 
					<li><label><input type="radio" name="posting_redirect" value="1" {POSTING_REDIRECT_1}> {L_POSTING_REDIRECT_POST}</label></li>
					<li><label><input type="radio" name="posting_redirect" value="2" {POSTING_REDIRECT_2}> {L_POSTING_REDIRECT_TOPIC_POST}</label></li>
					<li><label><input type="radio" name="posting_redirect" value="3" {POSTING_REDIRECT_3}>{L_POSTING_REDIRECT_TOPIC}</label></li>
					<li><label><input type="radio" name="posting_redirect" value="4" {POSTING_REDIRECT_4}> {L_POSTING_REDIRECT_FORUM}</label></li>
					<li><label><input type="radio" id="label__posting_redirect__5" name="posting_redirect" value="5" {POSTING_REDIRECT_5}> {L_POSTING_REDIRECT_INDEX}</label></li>
				</ul>
			</dd> 
			<dt>{L_HIDE_QUICK_REPLY}:</dt>
			<dd>
				<ul>
					<li><label><input type="radio" name="hide_quick_reply" value="1" {HIDE_QUICK_REPLY_YES}> {L_YES}</label></li> 
					<li><label><input type="radio" name="hide_quick_reply" value="0" {HIDE_QUICK_REPLY_NO}> {L_NO}</label></li>
				</ul>
			</dd>
			<!-- BEGIN switch_report -->
			<dt>{switch_report.L_NO_REPORT_POPUP}:</dt>
			<dd> 
				<ul>
					<li><label><input type="radio" name="no_report_popup" value="0" {switch_report.NO_REPORT_POPUP_YES}> {L_YES}</label></li> 
					<li><label><input type="radio" name="no_report_popup" value="1" {switch_report.NO_REPORT_POPUP_NO}> {L_NO}</label></li>
				</ul>
			</dd>
			<dt>{switch_report.L_NO_REPORT_MAIL}:</dt>
			<dd>
				<ul>
					<li><label><input type="radio" name="no_report_mail" value="0" {switch_report.NO_REPORT_MAIL_YES}> {L_YES}</label></li> 
					<li><label><input type="radio" name="no_report_mail" value="1" {switch_report.NO_REPORT_MAIL_NO}> {L_NO}</label></li>
				</ul>
			</dd>
			<!-- END switch_report -->
			<dt>{L_ALWAYS_ADD_SIGNATURE}:</dt>
			<dd>
				<ul>
					<li><label><input type="radio" name="attachsig" value="1" {ALWAYS_ADD_SIGNATURE_YES}> {L_YES}</label></li> 
					<li><label><input type="radio" name="attachsig" value="0" {ALWAYS_ADD_SIGNATURE_NO}> {L_NO}</label></li>
				</ul>
			</dd>
			<dt>{L_SHOW_MY_TOPICS}:</td>
			<dd>
				<ul>
					<li><label><input type="radio" name="mytopics" value="1" {SHOW_MY_TOPICS_YES}> {L_YES}</label></li> 
					<li><label><input type="radio" name="mytopics" value="0" {SHOW_MY_TOPICS_NO}> {L_NO}</label></li>
				</ul>
			</dd>
			<dt>{L_CHANGE_GG_LINK}:</dt>
			<dd>
				<ul>
					<li><label><input type="radio" name="gg_mod" value="1" {GG_MOD_YES}> {L_BRAMKA_GG}</label></li> 
					<li><label><input type="radio" name="gg_mod" value="0" {GG_MOD_NO}> {L_OKNO_GG}</label></li>
				</ul>
			</dd>
			<dt>{L_ALWAYS_ALLOW_BBCODE}:</dt>
			<dd>
				<ul>
					<li><label><input type="radio" name="allowbbcode" value="1" {ALWAYS_ALLOW_BBCODE_YES}> {L_YES}</label></li> 
					<li><label><input type="radio" name="allowbbcode" value="0" {ALWAYS_ALLOW_BBCODE_NO}> {L_NO}</label></li>
				</ul>
			</dd> 
			<dt>{L_ALWAYS_ALLOW_HTML}:</dt>
			<dd> 
				<ul>
					<li><label><input type="radio" name="allowhtml" value="1" {ALWAYS_ALLOW_HTML_YES}> {L_YES}</label></li> 
					<li><label><input type="radio" name="allowhtml" value="0" {ALWAYS_ALLOW_HTML_NO}> {L_NO}</label></li>
				</ul>
			</dd>
			<dt>{L_ALWAYS_ALLOW_SMILIES}:</dt>
			<dd>
				<ul>
					<li><label><input type="radio" name="allowsmilies" value="1" {ALWAYS_ALLOW_SMILIES_YES}> {L_YES}</label></li> 
					<li><label><input type="radio" id="label__allowsmilies__0" name="allowsmilies" value="0" {ALWAYS_ALLOW_SMILIES_NO}> {L_NO}</label></li>
				</ul>
			</dd>
			<dt>{L_BOARD_LANGUAGE}:</dt>
			<dd>{LANGUAGE_SELECT}</dd>
			<dt>{L_BOARD_STYLE}:</dt>
			<dd>{STYLE_SELECT}</dd>
			<dt>{L_TIMEZONE}:</dt>
			<dd>
				<ul>
					<li>{TIMEZONE_SELECT}</li>
					<li><label><input type="checkbox" name="dst" value="1" {S_DST}> {L_DST}</label></li>
					<li><label><input type="checkbox" name="autoswitch_dst" value="1" {S_AUTOSWITCH_DST}> {L_AUTOSWITCH_DST}</label></li>
				</ul>
			</dd> 
			<dt>
				<label for="profile_datef">{L_DATE_FORMAT}:</label>
				<p class="explain">{L_DATE_FORMAT_EXPLAIN}</p>
			</dt>
			<dd>
				<input type="text" name="dateformat" value="{DATE_FORMAT}" maxlength="14" id="profile_datef">
			</dd>
		</div>
	</fieldset>
	<!-- BEGIN switch_avatar_block -->
	<fieldset id="info3">		
		<legend><a href="#info3">{L_AVATAR_PANEL}</a></legend>
		<div>
			<p class="explain">{L_AVATAR_EXPLAIN}</p>
			<figure>
				{AVATAR}
				<figcaption>
					<p>{L_CURRENT_IMAGE}</p>
					<label><input type="checkbox" id="label__avatardel" name="avatardel"> {L_DELETE_AVATAR}</label>
				</figcaption>
			</figure>
			<dl>
				<!-- BEGIN switch_avatar_local_upload -->
				<dt><label for="profile_avatarl">{L_UPLOAD_AVATAR_FILE}:</label></dt>
				<dd> 
					<input type="hidden" name="MAX_FILE_SIZE" value="{AVATAR_SIZE}">
					<input type="file" name="avatar" id="profile_avatarl">
				</dd>
				<!-- END switch_avatar_local_upload -->
				<!-- BEGIN switch_avatar_remote_upload --> 
				<dt>
					<label for="profile_avatarr">{L_UPLOAD_AVATAR_URL}:</label>
					<p class="explain">{L_UPLOAD_AVATAR_URL_EXPLAIN}</p>
				</dt>
				<dd> 
					<input type="url" name="avatarurl" size="40" id="profile_avatarr">
				</dd>
				<!-- END switch_avatar_remote_upload -->
				<!-- BEGIN switch_avatar_remote_link -->
				<dt>
					<label for="profile_avataruri">{L_LINK_REMOTE_AVATAR}:</label>
					<p class="explain">{L_LINK_REMOTE_AVATAR_EXPLAIN}</p>
				</dt>
				<dd> 
					<input type="url" name="avatarremoteurl" size="40" id="profile_avataruri">
				</dd>
				<!-- END switch_avatar_remote_link -->
				<!-- BEGIN switch_avatar_local_gallery -->
				<dt><label for="profile_avatargal">{L_AVATAR_GALLERY}:</label></dt>
				<dd> 
					<button type="submit" name="avatargallery" value="1">{L_SHOW_GALLERY}</button>
				</dd>
				<!-- END switch_avatar_local_gallery -->
			</dl>
		</div>
	</fieldset>
	<!-- END switch_avatar_block -->
	<div> 
		{S_HIDDEN_FIELDS} 
		<button type="submit" name="submit" value="1">{L_SUBMIT}</button>
		<!--<input type="reset" value="{L_RESET}" name="reset" class="liteoption" />-->
	</div>
</form>
<!-- BEGIN switch_user_logged_in -->
<form method="post" action="{U_BLOCK_USER}" class="accordion"><!-- name="post"-->
	<fieldset id="info4">
		<legend><a href="#info4">{BLOCK_USERS}</a></legend>
		<div>
			<dl>
				<dt>{L_BLOCK_USERS_LIST}:</dt>
				<dd>
					<a href="{U_BLOCK_USERS_LIST}" class="popup" data-height="250" data-width="600">{L_BLOCK_USERS_LIST}</a>
				</dd>
				<dt><label for="profile_blocknick">{L_NICK_BLOCK_USER}:</label> *</dt>
				<dd>
					<input type="text" name="username" maxlength="50" size="20">
					<button type="submit" name="usersubmit" value="1" class="popup" data-url="{U_SEARCH_USER}" data-width="400">{L_FIND_USER}</button>
				</dd>
				<dt><label for="profile_blocktype">{L_BLOCK_TYPE}:</label> * </dt>
				<dd>
					<ul>
						<li><label><input type="checkbox" name="block[]" value="{BLOCK_POST}"> {L_BLOCK_POSTS}</label><li>
						<li><label><input type="checkbox" name="block[]" value="{BLOCK_PM}" onclick="document.getElementById('block_pm').style.display = this.checked ? '' : 'none'" class="switcher" data-target="#block_pm"> {L_BLOCK_PMS}</label></li>
					</ul>
				</dd>
			</dl>
			<dl id="block_pm" class="switch">
				<dt>
					<label for="profile_blockpm">{L_BLOCK_DESCRIPTION}:</label>
					<p class="explain">{L_BLOCK_DESCRIPTION_INFO}</p>
				</dt>
				<dd>
					<textarea name="blockdesc" rows="6" cols="30" id="profile_blockpm"></textarea>
				</dd>
			</dl>
		</div>
	</fieldset>
	<div>
		<button type="submit" name="submituser" value="1">{L_BLOCK}</button>
		<!--<input type="reset" value="{L_RESET}" name="reset" class="liteoption">-->
	</div>
</form>
<!-- END switch_user_logged_in -->
<!-- BEGIN switch_add_profile -->
<!-- END switch_add_profile --> 
<nav class="breadcrumb">
	<ul>
		<li><a href="{U_INDEX}">{L_INDEX}</a></li>
	</ul>
</nav>
</div>