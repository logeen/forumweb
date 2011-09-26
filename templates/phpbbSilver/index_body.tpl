<div class="left">
	<!-- BEGIN switch_user_logged_in -->
		<small>{LAST_VISIT_DATE}</small>
	<!-- END switch_user_logged_in -->
	<div id="current_time"></div>
	<script>
	(function updateCurrentTime()
	{
		var currentTime = new Date(new Date() - (-new Date().getTimezoneOffset() * 60000 - {TIME_ZONE} * 3600000));
		document.getElementById('current_time').innerHTML = '{L_CURRENT_TIME}'.replace(/%s/, (currentTime.getDate() < 10 ? '0' : '') + currentTime.getDate() + '.' + (currentTime.getMonth() < 9 ? '0' : '') + (currentTime.getMonth() + 1) + '.' + currentTime.getFullYear() + ' ' + (currentTime.getHours() < 10 ? '0' : '') + currentTime.getHours() + ':' + (currentTime.getMinutes() < 10 ? '0' : '') + currentTime.getMinutes() + '<br />');
	window.setTimeout(updateCurrentTime, 1000);
	})();
	</script>
	<a href="{U_INDEX}" class="nav">{L_INDEX}</a>
</div>
<ul class="right">
		<!-- BEGIN switch_user_logged_in -->
			<li><a href="{U_SEARCH_NEW}">{L_SEARCH_NEW}</a></li>
			<li><a href="{U_SEARCH_SELF}" class="gensmall">{L_SEARCH_SELF}</a></li>
		<!-- END switch_user_logged_in -->
			<li><a href="{U_SEARCH_UNANSWERED}">{L_SEARCH_UNANSWERED}</a></li>
		<!-- BEGIN switch_user_logged_in -->
		<li><a href="{U_MARK_READ}"><b>{L_MARK_FORUMS_READ}</b></a></li>
		<li><a href="#new1">{L_SKIP_TO_NEW}</a></li>
		<!-- END switch_user_logged_in -->
</ul>

<table     class="forumline">
  <tr> 
	
<th colspan="2" class="thcornerl"  >&nbsp;{L_FORUM}&nbsp;</th>
	
<th class="thtop" >&nbsp;{L_TOPICS}&nbsp;</th>
	
<th class="thtop" >&nbsp;{L_POSTS}&nbsp;</th>
	<th class="thcornerr" >&nbsp;{L_LASTPOST}&nbsp;</th>
  </tr>
  <!-- BEGIN catrow -->
  <tr> 
	
<td class="catleft" colspan="2" ><a href="{catrow.U_VIEWCAT}" class="cattitle">{catrow.CAT_DESC}</a></td>
	
<td class="rowpic" colspan="3">&nbsp;</td>
  </tr>
  <!-- BEGIN forumrow -->
  <tr {catrow.forumrow.ROW_ID} onmouseover="this.className = 'row_hover'" onmouseout="this.className = ''"> 
	
<td class="row1" ><a href="{catrow.forumrow.U_FORUM_FOLDER}"><img src="{catrow.forumrow.FORUM_FOLDER_IMG}"    alt="{catrow.forumrow.L_FORUM_FOLDER_ALT}" title="{catrow.forumrow.L_FORUM_FOLDER_ALT}" /></a></td>
	
<td class="row1" ><a href="{catrow.forumrow.U_VIEWFORUM}" class="forumlink">{catrow.forumrow.FORUM_NAME}</a><br />
<span class="genmed">{catrow.forumrow.FORUM_DESC}<br />
</span><span class="gensmall">{catrow.forumrow.L_MODERATOR} {catrow.forumrow.MODERATORS}</span></td>
	
<td class="row2" ><span class="gensmall">{catrow.forumrow.TOPICS}</span></td>
	
<td class="row2" ><span class="gensmall">{catrow.forumrow.POSTS}</span></td>
	
<td class="row2"  > <span class="gensmall">{catrow.forumrow.LAST_POST}</span></td>
  </tr>
  <!-- END forumrow -->
  <!-- END catrow -->
</table>
<div>
	<strong><a href="{U_VIEWONLINE}">{L_WHO_IS_ONLINE}</a></strong>
	<!--<img src="templates/phpbbSilver/images/whosonline.gif" alt="{L_WHO_IS_ONLINE}" title="{L_WHO_IS_ONLINE}"> obrazek do CSS-->
	<!--staty to chyba lista, nie?-->
	<ul>
		<li>{TOTAL_POSTS}</li>
		<li>{TOTAL_USERS}</li>
		<li>{NEWEST_USER}</li>
	</ul>
	<ul>
		<li>{TOTAL_USERS_ONLINE} [<b>{L_WHOSONLINE_ADMIN}</b>] [<b>{L_WHOSONLINE_MOD}</b>]</li>
		<li>{RECORD_USERS}</li>
		<li>{LOGGED_IN_USER_LIST}</li>
	</ul>
	<p><a href="{U_ONLINE}">Online</a>: {L_ONLINE_EXPLAIN}</p>
</div>

<!-- BEGIN switch_user_logged_out -->
	<form method="post" action="{S_LOGIN_ACTION}">
		<fieldset>
			<legend>{L_LOGIN_LOGOUT}</legend>  
			<ul class="inline">
				<li><label>{L_USERNAME}: <input class="post" type="text" name="username" size="10"></label></li>
				<li><label>{L_PASSWORD}: <input class="post" type="password" name="password" size="10"></label></li>
				<!-- BEGIN switch_allow_autologin -->
				<li><label>{L_AUTO_LOGIN} <input class="text" type="checkbox" name="autologin"></label></li>
				<!-- END switch_allow_autologin -->
				<li><button type="submit" class="mainoption" name="login" value="1">{L_LOGIN}</button></li>
			</ul>
		</fieldset>
	</form>
<!-- END switch_user_logged_out -->
<script>
function tab_switch(a) {
	a.unselectable = 'on';
	var tab = a.parentNode;
	tab.unselectable = 'on';
	if (!/(^|\s)tab_active(\s|$)/.test(tab.className)) {
		var tabs = tab.parentNode.getElementsByTagName('li');
		for (var i = 0; i < tabs.length; ++i) {
			if (/(^|\s)tab_active(\s|$)/.test(tabs[i].className)) {
				tabs[i].className = (' ' + tabs[i].className + ' ').replace(/\s+tab_active\s+/g, ' ').replace(/\s{2,}/g, ' ');
				document.getElementById(tabs[i].getElementsByTagName('a')[0].href.replace(/^[^#]*#/, '')).style.display = 'none';
				break;
			}
		}
		tab.className += ' tab_active';
		document.getElementById(a.href.replace(/^[^#]*#/, '')).style.display = '';
	}
	return false;
}
</script>
<ul class="tabs">
<li class="tab_active"><a href="#popular" onclick="return false" onmousedown="return tab_switch(this)">{L_POPULAR}</a></li>
<li><a href="#read" onclick="return false" onmousedown="return tab_switch(this)">{L_READ}</a></li>
<li><a href="#helpful" onclick="return false" onmousedown="return tab_switch(this)">{L_HELPFUL}</a></li>
<li><a href="#recommended" onclick="return false" onmousedown="return tab_switch(this)">{L_RECOMMENDED}</a></li>
</ul>
<div id="popular" class="tab_content">
<ul>
<!-- BEGIN popularrow -->
<li class="{popularrow.ROW_CLASS}">{popularrow.NEWEST_POST_IMG} <a href="{popularrow.U_VIEW_TOPIC}"><b>[{popularrow.FORUM_NAME}]</b> {popularrow.TOPIC_TITLE}</a></li>
<!-- END popularrow -->
</ul>
</div>
<div id="read" class="tab_content" >
<ul>
<!-- BEGIN readrow -->
<li class="{readrow.ROW_CLASS}">{readrow.NEWEST_POST_IMG} <a href="{readrow.U_VIEW_TOPIC}"><b>[{readrow.FORUM_NAME}]</b> {readrow.TOPIC_TITLE}</a></li>
<!-- END readrow -->
</ul>
</div>
<div id="helpful" class="tab_content" >
<ul>
<!-- BEGIN helpfulrow -->
<li class="{helpfulrow.ROW_CLASS}">{helpfulrow.NEWEST_POST_IMG} <a href="{helpfulrow.U_VIEW_TOPIC}"><b>[{helpfulrow.FORUM_NAME}]</b> {helpfulrow.TOPIC_TITLE}</a></li>
<!-- END helpfulrow -->
</ul>
</div>
<div id="recommended" class="tab_content" >
<iframe src="http://www.facebook.com/plugins/activity.php?site=www.forumweb.pl&amp;width=500&amp;height=225&amp;header=false&amp;colorscheme=light&amp;font=verdana&amp;border_color=%23fff&amp;recommendations=true&amp;ref=activity" scrolling="no" frame  allowTransparency="true"></iframe>
</div>
<ul class="inline"> 
	<li><img src="templates/phpbbSilver/images/folder_new.gif" alt="{L_NEW_POSTS}" title="{L_NEW_POSTS}"> <small>{L_NEW_POSTS}</small></li>
	<li><img src="templates/phpbbSilver/images/folder.gif" alt="{L_NO_NEW_POSTS}" title="{L_NO_NEW_POSTS}"> <small>{L_NO_NEW_POSTS}</small></li>
	<li><img src="templates/phpbbSilver/images/folder_lock.gif" alt="{L_FORUM_LOCKED}" title="{L_FORUM_LOCKED}"><small>{L_FORUM_LOCKED}</small></li>
</ul>