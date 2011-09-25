<script type="text/javascript" src="md5.js"></script>
<form action="{S_PROFILE_ACTION}" {S_FORM_ENCTYPE} method="post" onsubmit="fillClient(this)">
<input type="hidden" name="screen" value="" />
<input type="hidden" name="client" value="" />

{ERROR_BOX}

<table width="100%" cellspacing="2" cellpadding="2" border="0">
<tr> 
<td class="nav"><a href="{U_INDEX}">{L_INDEX}</a></td>
</tr>
</table>

<table border="0" cellpadding="3" cellspacing="1" width="100%" class="forumline">
<tr id="info0"> 
<th class="thhead" colspan="2" height="28"><a href="#info0">{L_REGISTRATION_INFO}</a></th>
</tr>
<tr> 
<td class="row2" colspan="2"><span class="gensmall">{L_ITEMS_REQUIRED}</span></td>
</tr>
<tr> 
<td class="row1" width="38%">{L_USERNAME}: *</td>
<td class="row2" width="62%"> 
<!-- BEGIN switch_username_change -->
<input type="text" class="post" style="width:200px" name="username" size="25" maxlength="25" value="{USERNAME}" />
<!-- END switch_username_change -->
<!-- BEGIN switch_no_username_change -->
<input type="text" class="post" style="width:200px" name="username" size="25" maxlength="25" value="{USERNAME}" readonly="readonly" /><br />
<span class="gensmall">{L_USERNAME_CHANGE_EXPLAIN}</span>
<!-- END switch_no_username_change -->
</td>
</tr>
<tr> 
<td class="row1">{L_EMAIL_ADDRESS}: *</td>
<td class="row2"> 
<input type="text" class="post" style="width:200px" name="email" size="25" maxlength="255" value="{EMAIL}" />
</td>
</tr>
<!-- BEGIN switch_edit_profile -->
<tr> 
<td class="row1">{L_CURRENT_PASSWORD}: *<br />
<span class="gensmall">{L_CONFIRM_PASSWORD_EXPLAIN}</span></td>
<td class="row2"> 
<input type="password" class="post" style="width: 200px" name="cur_password" size="25" maxlength="100" value="{CUR_PASSWORD}" />
</td>
</tr>
<!-- END switch_edit_profile -->
<tr> 
<td class="row1">{L_NEW_PASSWORD}: *<br />
<span class="gensmall">{L_PASSWORD_IF_CHANGED}</span></td>
<td class="row2"> 
<input type="password" class="post" style="width: 200px" name="new_password" size="25" maxlength="100" value="{NEW_PASSWORD}" />
</td>
</tr>
<tr> 
<td class="row1">{L_CONFIRM_PASSWORD}: * <br />
<span class="gensmall">{L_PASSWORD_CONFIRM_IF_CHANGED}</span></td>
<td class="row2"> 
<input type="password" class="post" style="width: 200px" name="password_confirm" size="25" maxlength="100" value="{PASSWORD_CONFIRM}" />
</td>
</tr>
	<!-- Visual Confirmation -->
	<!-- BEGIN switch_confirm -->
	<tr>
		<td class="row1" colspan="2" align="center"><span class="gensmall">{L_CONFIRM_CODE_IMPAIRED}</span><br /><br />{CONFIRM_IMG}<br /><br /></td>
	</tr>
	<tr> 
	  <td class="row1"><span class="gen">{L_CONFIRM_CODE}: * </span><br /><span class="gensmall">{L_CONFIRM_CODE_EXPLAIN}</span></td>
	  <td class="row2"><div><big><strong style="color: red">{L_CONFIRM_CODE_INFORMATION}</strong></big></div><input type="text" class="post" style="width: 200px" name="confirm_code" size="6" maxlength="6" value="" /></td>
	</tr>
	<!-- END switch_confirm -->
<tr> 
<td class="catsides" colspan="2" height="28">&nbsp;</td>
</tr>
<tr id="info1"> 
<th class="thsides" colspan="2" height="28"><a href="#info1">{L_PROFILE_INFO}</a></th>
</tr>
<tr> 
<td class="row2" colspan="2"><span class="gensmall">{L_PROFILE_INFO_NOTICE}</span></td>
</tr>
<tr> 
<td class="row1" width="38%">{L_ICQ_NUMBER}:</td>
<td class="row2"> 
<input type="text" name="icq" class="post" style="width: 100px"  size="10" maxlength="15" value="{ICQ}" />
</td>
</tr>
<tr>
<td class="row1">{L_GG}:</td>
<td class="row2"> 
<input type="text" class="post" style="width: 150px"  name="gg" size="20" maxlength="255" value="{GG}" />
</td>
</tr>
<tr>
<td class="row1">{L_TLEN}:</td>
<td class="row2"> 
<input type="text" class="post" style="width: 150px"  name="tlen" size="20" maxlength="255" value="{TLEN}" />
</td>
</tr>
<tr>
<td class="row1">{L_JABBER}:</td>
<td class="row2"> 
<input type="text" class="post" style="width: 150px"  name="jabber" size="20" maxlength="255" value="{JABBER}" />
</td>
</tr>
<tr>
<td class="row1">{L_SKYPE}:</td>
<td class="row2"> 
<input type="text" class="post" style="width: 150px"  name="skype" size="20" maxlength="255" value="{SKYPE}" />
</td>
</tr>
<tr> 
<td class="row1">{L_AIM}:</td>
<td class="row2"> 
<input type="text" class="post" style="width: 150px"  name="aim" size="20" maxlength="255" value="{AIM}" />
</td>
</tr>
<td class="row1">{L_MESSENGER}:</td>
<td class="row2"> 
<input type="text" class="post" style="width: 150px"  name="msn" size="20" maxlength="255" value="{MSN}" />
</td>
</tr>
<tr>
<td class="row1">{L_YAHOO}:</td>
<td class="row2"> 
<input type="text" class="post" style="width: 150px"  name="yim" size="20" maxlength="255" value="{YIM}" />
</td>
</tr>
<tr>
<td class="row1">{L_FACEBOOK}:<div class="gensmall">{L_FACEBOOK_EXPLAIN}</div></td>
<td class="row2"> 
<input type="text" class="post" style="width: 150px"  name="facebook" size="20" maxlength="255" value="{FACEBOOK}" />
</td>
</tr>
<tr> 
<td class="row1">{L_WEBSITE}:</td>
<td class="row2"> 
<input type="text" class="post" style="width: 200px"  name="website" size="25" maxlength="255" value="{WEBSITE}" />
</td>
</tr>
<tr> 
<td class="row1">{L_LOCATION}:</td>
<td class="row2"> 
<input type="text" class="post" style="width: 200px"  name="location" size="25" maxlength="100" value="{LOCATION}" />
</td>
</tr>
<tr> 
<td class="row1">{L_OCCUPATION}:</td>
<td class="row2"> 
<input type="text" class="post" style="width: 200px"  name="occupation" size="25" maxlength="100" value="{OCCUPATION}" />
</td>
</tr>
<tr> 
<td class="row1">{L_INTERESTS}:</td>
<td class="row2"> 
<input type="text" class="post" style="width: 200px"  name="interests" size="35" maxlength="150" value="{INTERESTS}" />
</td>
</tr>
<!-- Start add - Gender MOD -->
<tr> 
      <td class="row1">{L_GENDER}:</td> 
      <td class="row2"> 
      <input type="radio" id="label__gender__0" {LOCK_GENDER} name="gender" value="0" {GENDER_NO_SPECIFY_CHECKED}/> 
      <label for="label__gender__0">{L_GENDER_NOT_SPECIFY}</label>&nbsp;&nbsp; 
      <input type="radio" id="label__gender__1" name="gender" value="1" {GENDER_MALE_CHECKED}/> 
      <label for="label__gender__1">{L_GENDER_MALE}</label>&nbsp;&nbsp; 
      <input type="radio" id="label__gender__2" name="gender" value="2" {GENDER_FEMALE_CHECKED}/> 
      <label for="label__gender__2">{L_GENDER_FEMALE}</label></td> 
</tr>
<!-- End add - Gender MOD -->
<tr> 
	<td class="row1">{L_DATE_OF_BIRTH}:</td>
	<td class="row2">{BIRTH}</td>
</tr>
<tr> 
<td class="row1">{L_SIGNATURE}:<br />
<span class="gensmall">{L_SIGNATURE_EXPLAIN}<br />
<br />
{HTML_STATUS}<br />
{BBCODE_STATUS}<br />
{SMILIES_STATUS}</span></td>
<td class="row2">
<script type="text/javascript">
<!--
function maxlength(el, maxSize)
{
	if (!el.onblur) el.onblur = el.onclick = el.onmousedown = el.onmouseup = el.keypress = el.onkeydown = el.onkeyup = el.onmouseover = el.onmouseout = el.onfocus;
	if (el.value.length < maxSize) el.maxlengthvalue = null;
	else if (el.value.length == maxSize) el.maxlengthvalue = el.value;
	else el.maxlengthvalue = el.value = (el.maxlengthvalue ? el.maxlengthvalue : el.value.substring(0, maxSize));
}
//-->
</script>
<textarea name="signature" style="width: 300px" rows="6" cols="30" class="post" onfocus="maxlength(this, {MAX_SIG_CHARS})">{SIGNATURE}</textarea>
</td>
</tr>
<tr> 
<td class="catSides" colspan="2" height="28">&nbsp;</td>
</tr>
<tr id="info2"> 
<th class="thsides" colspan="2" height="28"><a href="#info2">{L_PREFERENCES}</a></th>
</tr>
<tr> 
<td class="row1" width="38%">{L_PUBLIC_VIEW_EMAIL}:</td>
<td class="row2"> 
<input type="radio" id="label__viewemail__1" name="viewemail" value="1" {VIEW_EMAIL_YES} />
<label for="label__viewemail__1">{L_YES}</label>&nbsp;&nbsp; 
<input type="radio" id="label__viewemail__0" name="viewemail" value="0" {VIEW_EMAIL_NO} />
<label for="label__viewemail__0">{L_NO}</label></td>
</tr>
<tr> 
<td class="row1">{L_PUBLIC_VIEW_CLIENT}:</td>
<td class="row2"> 
<input type="radio" id="label__viewclient__1" name="viewclient" value="1" {VIEW_CLIENT_YES} />
<label for="label__viewclient__1">{L_YES}</label>&nbsp;&nbsp; 
<input type="radio" id="label__viewclient__0" name="viewclient" value="0" {VIEW_CLIENT_NO} />
<label for="label__viewclient__0">{L_NO}</label></td>
</tr>
<tr> 
<td class="row1">{L_HIDE_USER}:</td>
<td class="row2"> 
<input type="radio" id="label__hideonline__1" name="hideonline" value="1" {HIDE_USER_YES} />
<label for="label__hideonline__1">{L_YES}</label>&nbsp;&nbsp; 
<input type="radio" id="label__hideonline__0" name="hideonline" value="0" {HIDE_USER_NO} />
<label for="label__hideonline__0">{L_NO}</label></td>
</tr>
<tr> 
<td class="row1">{L_NOTIFY_ON_REPLY}:<br />
<span class="gensmall">{L_NOTIFY_ON_REPLY_EXPLAIN}</span></td>
<td class="row2"> 
<input type="radio" id="label__notifyreply__1" name="notifyreply" value="1" {NOTIFY_REPLY_YES} />
<label for="label__notifyreply__1">{L_YES}</label>&nbsp;&nbsp; 
<input type="radio" id="label__notifyreply__0" name="notifyreply" value="0" {NOTIFY_REPLY_NO} />
<label for="label__notifyreply__0">{L_NO}</label></td>
</tr>
<tr> 
<td class="row1">{L_NOTIFY_ON_PRIVMSG}:</td>
<td class="row2"> 
<input type="radio" id="label__notifypm__1" name="notifypm" value="1" {NOTIFY_PM_YES} />
<label for="label__notifypm__1">{L_YES}</label>&nbsp;&nbsp; 
<input type="radio" id="label__notifypm__0" name="notifypm" value="0" {NOTIFY_PM_NO} />
<label for="label__notifypm__0">{L_NO}</label></td>
</tr>
<tr> 
<td class="row1">{L_POPUP_ON_PRIVMSG}:<br />
<span class="gensmall">{L_POPUP_ON_PRIVMSG_EXPLAIN}</span></td>
<td class="row2"> 
<input type="radio" id="label__popup_pm__1" name="popup_pm" value="1" {POPUP_PM_YES} />
<label for="label__popup_pm__1">{L_YES}</label>&nbsp;&nbsp; 
<input type="radio" id="label__popup_pm__0" name="popup_pm" value="0" {POPUP_PM_NO} />
<label for="label__popup_pm__0">{L_NO}</label></td>
</tr>
<tr> 
<td class="row1">{L_MAIL_ON_WATCHED_REPLY}:<br />
<span class="gensmall">{L_MAIL_ON_WATCHED_REPLY_EXPLAIN}</span></td>
<td class="row2"> 
<input type="radio" id="label__notify_watch__1" name="notify_watch" value="1" {NOTIFY_WATCH_YES} />
<label for="label__notify_watch__1">{L_YES}</label>&nbsp;&nbsp; 
<input type="radio" id="label__notify_watch__0" name="notify_watch" value="0" {NOTIFY_WATCH_NO} />
<label for="label__popup_pm__0">{L_NO}</label></td>
</tr>
<tr> 
<td class="row1">{L_NOTIFICATION_COUNTER}:</td>
<td class="row2"> 
<input type="radio" id="label__notification__1" name="notification" value="1" {NOTIFICATION_YES} />
<label for="label__notification__1">{L_YES}</label>&nbsp;&nbsp; 
<input type="radio" id="label__notification__0" name="notification" value="0" {NOTIFICATION_NO} />
<label for="label__notification__0">{L_NO}</label></td>
</tr>
<tr> 
<td class="row1">{L_POSTING_REDIRECT}:</td>
<td class="row2"> 
<input type="radio" id="label__posting_redirect__0" name="posting_redirect" value="0" {POSTING_REDIRECT_0} />
<label for="label__posting_redirect__0">{L_POSTING_REDIRECT_DEFAULT}</label><br /> 
<input type="radio" id="label__posting_redirect__1" name="posting_redirect" value="1" {POSTING_REDIRECT_1} />
<label for="label__posting_redirect__1">{L_POSTING_REDIRECT_POST}</label><br />
<input type="radio" id="label__posting_redirect__2" name="posting_redirect" value="2" {POSTING_REDIRECT_2} />
<label for="label__posting_redirect__2">{L_POSTING_REDIRECT_TOPIC_POST}</label><br />
<input type="radio" id="label__posting_redirect__3" name="posting_redirect" value="3" {POSTING_REDIRECT_3} />
<label for="label__posting_redirect__3">{L_POSTING_REDIRECT_TOPIC}</label><br />
<input type="radio" id="label__posting_redirect__4" name="posting_redirect" value="4" {POSTING_REDIRECT_4} />
<label for="label__posting_redirect__4">{L_POSTING_REDIRECT_FORUM}</label><br />
<input type="radio" id="label__posting_redirect__5" name="posting_redirect" value="5" {POSTING_REDIRECT_5} />
<label for="label__posting_redirect__5">{L_POSTING_REDIRECT_INDEX}</label>
</tr>
<tr> 
<td class="row1">{L_HIDE_QUICK_REPLY}:</td>
<td class="row2"> 
<input type="radio" id="label__hide_quick_reply__1" name="hide_quick_reply" value="1" {HIDE_QUICK_REPLY_YES} />
<label for="label__hide_quick_reply__1">{L_YES}</label>&nbsp;&nbsp; 
<input type="radio" id="label__hide_quick_reply__0" name="hide_quick_reply" value="0" {HIDE_QUICK_REPLY_NO} />
<label for="label__hide_quick_reply__0">{L_NO}</label></td>
</tr>
<!-- BEGIN switch_report -->
<tr> 
	<td class="row1">{switch_report.L_NO_REPORT_POPUP}:</td>
	<td class="row2"> 
	<input type="radio" id="label__no_report_popup__0" name="no_report_popup" value="0" {switch_report.NO_REPORT_POPUP_YES} />
	<label for="label__no_report_popup__0">{L_YES}</label>&nbsp;&nbsp; 
	<input type="radio" id="label__no_report_popup__1" name="no_report_popup" value="1" {switch_report.NO_REPORT_POPUP_NO} />
	<label for="label__no_report_popup__1">{L_NO}</label></td>
</tr>
<tr> 
	<td class="row1">{switch_report.L_NO_REPORT_MAIL}:</td>
	<td class="row2"> 
	<input type="radio" id="label__no_report_mail__0" name="no_report_mail" value="0" {switch_report.NO_REPORT_MAIL_YES} />
	<label for="label__no_report_mail__0">{L_YES}</label>&nbsp;&nbsp; 
	<input type="radio" id="label__no_report_mail__1" name="no_report_mail" value="1" {switch_report.NO_REPORT_MAIL_NO} />
	<label for="label__no_report_mail__1">{L_NO}</label></td>
</tr>
<!-- END switch_report -->
<tr> 
<td class="row1">{L_ALWAYS_ADD_SIGNATURE}:</td>
<td class="row2"> 
<input type="radio" id="label__attachsig__1" name="attachsig" value="1" {ALWAYS_ADD_SIGNATURE_YES} />
<label for="label__attachsig__1">{L_YES}</label>&nbsp;&nbsp; 
<input type="radio" id="label__attachsig__0" name="attachsig" value="0" {ALWAYS_ADD_SIGNATURE_NO} />
<label for="label__attachsig__0">{L_NO}</label></td>
</tr>
<tr> 
	<td class="row1">{L_SHOW_MY_TOPICS}:</td>
	<td class="row2"> 
	<input type="radio" id="label__mytopics__1" name="mytopics" value="1" {SHOW_MY_TOPICS_YES} />
	<label for="label__mytopics__1">{L_YES}</label>&nbsp;&nbsp; 
	<input type="radio" id="label__mytopics__0" name="mytopics" value="0" {SHOW_MY_TOPICS_NO} />
	<label for="label__mytopics__0">{L_NO}</label></td>
</tr>
<tr> 
	  <td class="row1">{L_CHANGE_GG_LINK}:</td>
	  <td class="row2"> 
		<input type="radio" id="label__gg_mod__1" name="gg_mod" value="1" {GG_MOD_YES} />
		<label for="label__gg_mod__1">{L_BRAMKA_GG}</label>&nbsp;&nbsp; 
		<input type="radio" id="label__gg_mod__0" name="gg_mod" value="0" {GG_MOD_NO} />
		<label for="label__gg_mod__0">{L_OKNO_GG}</label></td>
	</tr>
<tr> 
<td class="row1">{L_ALWAYS_ALLOW_BBCODE}:</td>
<td class="row2"> 
<input type="radio" id="label__allowbbcode__1" name="allowbbcode" value="1" {ALWAYS_ALLOW_BBCODE_YES} />
<label for="label__allowbbcode__1">{L_YES}</label>&nbsp;&nbsp; 
<input type="radio" id="label__allowbbcode__0" name="allowbbcode" value="0" {ALWAYS_ALLOW_BBCODE_NO} />
<label for="label__allowbbcode__0">{L_NO}</label></td>
</tr>
<tr> 
<td class="row1">{L_ALWAYS_ALLOW_HTML}:</td>
<td class="row2"> 
<input type="radio" id="label__allowhtml__1" name="allowhtml" value="1" {ALWAYS_ALLOW_HTML_YES} />
<label for="label__allowhtml__1">{L_YES}</label>&nbsp;&nbsp; 
<input type="radio" id="label__allowhtml__0" name="allowhtml" value="0" {ALWAYS_ALLOW_HTML_NO} />
<label for="label__allowhtml__0">{L_NO}</label></td>
</tr>
<tr> 
<td class="row1">{L_ALWAYS_ALLOW_SMILIES}:</td>
<td class="row2"> 
<input type="radio" id="label__allowsmilies__1" name="allowsmilies" value="1" {ALWAYS_ALLOW_SMILIES_YES} />
<label for="label__allowsmilies__1">{L_YES}</label>&nbsp;&nbsp; 
<input type="radio" id="label__allowsmilies__0" name="allowsmilies" value="0" {ALWAYS_ALLOW_SMILIES_NO} />
<label for="label__allowsmilies__0">{L_NO}</label></td>
</tr>
<tr> 
<td class="row1">{L_BOARD_LANGUAGE}:</td>
<td class="row2"><span class="gensmall">{LANGUAGE_SELECT}</span></td>
</tr>
<tr> 
<td class="row1">{L_BOARD_STYLE}:</td>
<td class="row2"><span class="gensmall">{STYLE_SELECT}</span></td>
</tr>
<tr> 
<td class="row1">{L_TIMEZONE}:</td>
<td class="row2"><span class="gensmall">{TIMEZONE_SELECT}<br />
<input type="checkbox" id="label__dst" name="dst" value="1" {S_DST} />&nbsp;<label for="label__dst">{L_DST}</label><br />
<input type="checkbox" id="label__autoswitch_dst" name="autoswitch_dst" value="1" {S_AUTOSWITCH_DST} />&nbsp;<label for="label__autoswitch_dst">{L_AUTOSWITCH_DST}</label></span></td>
</tr>
<tr> 
<td class="row1">{L_DATE_FORMAT}:<br />
<span class="gensmall">{L_DATE_FORMAT_EXPLAIN}</span></td>
<td class="row2"> 
<input type="text" name="dateformat" value="{DATE_FORMAT}" maxlength="14" class="post" />
</td>
</tr>
<!-- BEGIN switch_avatar_block -->
<tr> 
<td class="catsides" colspan="2" height="28">&nbsp;</td>
</tr>
<tr id="info3"> 
<th class="thsides" colspan="2" height="28"><a href="#info3">{L_AVATAR_PANEL}</a></th>
</tr>
<tr> 
<td class="row1" colspan="2"> 
<table width="70%" cellspacing="2" cellpadding="0" border="0" align="center">
<tr> 
<td width="65%" class="gensmall">{L_AVATAR_EXPLAIN}</td>
<td align="center" class="gensmall">{L_CURRENT_IMAGE}<br />
{AVATAR}<br />
<input type="checkbox" id="label__avatardel" name="avatardel" />
&nbsp;<label for="label__avatardel">{L_DELETE_AVATAR}</label></td>
</tr>
</table>
</td>
</tr>
<!-- BEGIN switch_avatar_local_upload -->
<tr> 
<td class="row1">{L_UPLOAD_AVATAR_FILE}:</td>
<td class="row2"> 
<input type="hidden" name="MAX_FILE_SIZE" value="{AVATAR_SIZE}" />
<input type="file" name="avatar" class="post" style="width:200px" />
</td>
</tr>
<!-- END switch_avatar_local_upload -->
<!-- BEGIN switch_avatar_remote_upload -->
<tr> 
<td class="row1">{L_UPLOAD_AVATAR_URL}:<br />
<span class="gensmall">{L_UPLOAD_AVATAR_URL_EXPLAIN}</span></td>
<td class="row2"> 
<input type="text" name="avatarurl" size="40" class="post" style="width:200px" />
</td>
</tr>
<!-- END switch_avatar_remote_upload -->
<!-- BEGIN switch_avatar_remote_link -->
<tr> 
<td class="row1">{L_LINK_REMOTE_AVATAR}:<br />
<span class="gensmall">{L_LINK_REMOTE_AVATAR_EXPLAIN}</span></td>
<td class="row2"> 
<input type="text" name="avatarremoteurl" size="40" class="post" style="width:200px" />
</td>
</tr>
<!-- END switch_avatar_remote_link -->
<!-- BEGIN switch_avatar_local_gallery -->
<tr> 
<td class="row1">{L_AVATAR_GALLERY}:</td>
<td class="row2"> 
<input type="submit" name="avatargallery" value="{L_SHOW_GALLERY}" class="liteoption" />
</td>
</tr>
<!-- END switch_avatar_local_gallery -->
<!-- END switch_avatar_block -->
<tr class="tfoot"> 
<td class="catbottom" colspan="2" align="center" height="28">{S_HIDDEN_FIELDS} 
<input type="submit" name="submit" value="{L_SUBMIT}" class="mainoption" />
&nbsp;&nbsp; 
<input type="reset" value="{L_RESET}" name="reset" class="liteoption" />
</td>
</tr>
</table>
</form>
<br />

<!-- BEGIN switch_user_logged_in -->
<form method="post" name="post" action="{U_BLOCK_USER}">
<table border="0" cellpadding="3" cellspacing="1" width="100%" class="forumline">
<tr id="info4">
	<th class="thHead" align="center" colspan="2"><a href="#info4">{BLOCK_USERS}</a></th>
</tr>
<tr>
	<td class="row1" width="38%"><span class="gen">{L_BLOCK_USERS_LIST}:</span></td>
	<td class="row2" width="62%"><span class="gen"><a href = "{U_BLOCK_USERS_LIST}" onclick="javascript:window.open('{U_BLOCK_USERS_LIST}', '_phpbbsearch', 'HEIGHT=250,resizable=yes,WIDTH=600');return false;" class="mainmenu">{L_BLOCK_USERS_LIST}</a></span></td>
</tr>
<tr>
	<td class="row1"> <span class="gen">{L_NICK_BLOCK_USER}:</span> * </td>
	<td class="row2"><input type="text" class="post" name="username" maxlength="50" size="20" />&nbsp;&nbsp;&nbsp;<input type="submit" name="usersubmit" value="{L_FIND_USER}" class="liteoption" onClick="window.open('{U_SEARCH_USER}', '_phpbbsearch', 'HEIGHT=250,resizable=yes,WIDTH=400');return false;" /></td>
</tr>
<tr>
	<td class="row1"> <span class="gen">{L_BLOCK_TYPE}:</span> * </td>
	<td class="row2">
		<input type="checkbox" id="label__block__post" name="block[]" value="{BLOCK_POST}" /> <label for="label__block__post">{L_BLOCK_POSTS}</label><br />
		<input type="checkbox" id="label__block__pm" name="block[]" value="{BLOCK_PM}" onclick="document.getElementById('block_pm').style.display = this.checked ? '' : 'none'" /> <label for="label__block__pm">{L_BLOCK_PMS}</label>
	</td>
</tr>
<tr id="block_pm">
	<td class="row1" valign="top"> <span class="gen">{L_BLOCK_DESCRIPTION}:</span><br /> <span class="gensmall">{L_BLOCK_DESCRIPTION_INFO}</span> </td>
	<td class="row2"> <textarea name="blockdesc" style="width: 300px"  rows="6" cols="30" class="post"></textarea> </td>
</tr>
<tr>
	<td class="catBottom" colspan="2" align="center" height="28"><input type="submit" name="submituser" value="{L_BLOCK}" class="mainoption" />&nbsp;&nbsp;<input type="reset" value="{L_RESET}" name="reset" class="liteoption" /></td>
</tr>
</table>
</form>
<script type="text/javascript">
<!--
document.getElementById('block_pm').style.display = 'none';
//-->
</script>
<!-- END switch_user_logged_in -->
<!-- BEGIN switch_add_profile -->
<script type="text/javascript">
<!--
for (var i = 0, item; (item = document.getElementById('info' + i)); ++i) {
	item.getElementsByTagName('a')[0].onclick = function() {
		var currentNode = this.parentNode;
		while (!/^info\d+$/.test(currentNode.id)) {
			currentNode = currentNode.parentNode;
		} 
		for (var i = 0, el; (el = document.getElementById('info' + i)); ++i) {
			var node = el.nextSibling;
			while (node && !/^info\d+$/.test(node.id) && !/(^|\s)tfoot(\s|$)/.test(node.className)) {
				if (!/^#/.test(node.nodeName)) node.style.display = el == currentNode ? '' : 'none'; 
				node = node.nextSibling;
			}
		}
		return false;
	};
	if (i > 0) {
		var node = item.nextSibling;
		while (node && !/^info\d+$/.test(node.id) && !/(^|\s)tfoot(\s|$)/.test(node.className)) {
			if (!/^#/.test(node.nodeName)) node.style.display = 'none'; 
			node = node.nextSibling;
		}
	}
}
//-->
</script>
<!-- END switch_add_profile -->

<table width="100%" cellspacing="2" cellpadding="2" border="0">
<tr> 
<td class="nav"><a href="{U_INDEX}">{L_INDEX}</a></td>
</tr>
</table>