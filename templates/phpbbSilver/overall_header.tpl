<!DOCTYPE html>
<!--[if lt IE 9 ]><html lang="pl" class="no-js ie" dir="{S_CONTENT_DIRECTION}"><![endif]-->
<!--[if (gte IE 9)|!(IE)]><!--><html lang="pl" class="no-js" dir="{S_CONTENT_DIRECTION}"><!--<![endif]-->
<head>
	<meta charset="{S_CONTENT_ENCODING}">
	<script>(function(H){H.className=H.className.replace(/\bno-js\b/,'js')})(document.documentElement)</script> <!--http://paulirish.com/2009/avoiding-the-fouc-v3/-->
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1"> <!--IMO lepiej do nag³ówków HTTP-->
	{META}{META_ROBOTS}
	<meta name="title" content="{META_TITLE}">
	<meta property="og:title" content="{META_TITLE}">
	<meta property="og:type" content="website">
	<title>{PAGE_TITLE}</title>
	<!-- Mobile viewport optimized -->
	<meta name="viewport" content="width=device-width,initial-scale=1">
	<link rel="image_src" href="forumweb.jpg">
	<link rel="shortcut icon" type="image/x-icon" href="favicon.ico">
	<link href="panel.php?rss" rel="alternate" type="application/rss+xml" title="{SITENAME}">
	<!-- BEGIN rssrow -->
	<link href="{rssrow.HREF}" rel="alternate" type="application/rss+xml" title="{rssrow.TITLE}">
	<!-- END rssrow -->
	<link rel="stylesheet" href="templates/phpbbSilver/css/style.css">
	<!--<script src="templates/phpbbSilver/js/modernizr-2.0.6.min.js"></script> Po co? Nie korzystamy z ¿adnych zaawansowanych mechanizmów HTML 5 - jak zaczniemy korzystaæ, to dodamy-->
	<!--[if lt IE 9]>
		<script src="//html5shiv.googlecode.com/svn/trunk/html5.js"></script>
	<![endif]-->
	<!-- BEGIN switch_autodetect_version -->
	<script>
	if (screen && screen.width && screen.width < 800 && !/[?&]mobile([=&]|$)/.test(window.location.search)) window.location.href = window.location.protocol + '//' + window.location.hostname + window.location.pathname + window.location.search + (window.location.search == '' ? '?' : '&') + 'mobile' + (screen.height < 480 ? '=mini' : '') + window.location.hash;
	</script>
	<!-- END switch_autodetect_version -->
</head>
<body>
<div class="overall_header-tpl">
	<header id="top" role="banner">
		<h1><a href="{U_INDEX}"><img src="templates/phpbbSilver/images/logo.png" alt="Forumweb.pl - Przyjazne forum webmasterskie" title="Forumweb.pl - Przyjazne forum webmasterskie"></a></h1>
		<div class="sites">Oficjalne forum serwisu: <a href="http://kurshtml.edu.pl">kurshtml.edu.pl</a></div>
		 <nav id="nav-main">
		 	<ul>
		 		<li><a href="{U_KONKURS}">Konkurs{KONKURS_NOWE}</a></li>
		 		<li><a href="{U_REGULATIONS}">{L_REGULATIONS}</a></li>
		 		<li><a href="{U_FAQ}">{L_FAQ}</a></li>
		 		<li><a href="{U_SEARCH}">{L_SEARCH}</a></li>
		 		<li><a href="{U_MEMBERLIST}">{L_MEMBERLIST}</a></li>
		 		<li><a href="{U_USERGROUPS}">{L_USERGROUPS}</a></li>
		 		<li><a href="{U_IRC}">{L_IRC}</a></li>
		 		<li><a href="{U_REGISTER}">{L_REGISTER}</a></li>
		 	</ul>
		 </nav>
		 <nav id="nav-user">
		 	<ul>
			 	<li><a href="{U_PROFILE}">{L_PROFILE}</a></li>
		 		<li><a href="{U_PRIVATEMSGS}" title="{PRIVATE_MESSAGE_INFO_ALT}">{PRIVATE_MESSAGE_INFO}</a></li>
				<li><a href="{U_LOGIN_LOGOUT}" title="{L_LOGIN_LOGOUT}">{L_LOGIN_LOGOUT}</a></li>
				<!-- BEGIN switch_report_list -->
				<li><a href="{switch_report_list.U_REPORT_LIST}">{switch_report_list.L_REPORT_LIST}</a></li>
				<!-- END switch_report_list -->
				<!-- BEGIN switch_ban_list -->
				<li><a href="{switch_ban_list.U_BAN_LIST}">{switch_ban_list.L_BAN_LIST}</a></li>
				<!-- END switch_ban_list -->
		 	</ul>
		 </nav>
		 <form action="http://www.google.pl/search" method="get" >
			<fieldset id="search">
		 	<legend>{L_SEARCH}</legend>
				<input type="hidden" name="ie" value="iso-8859-2">
				<input type="hidden" name="sitesearch" value="www.forumweb.pl">
				<input type="search" name="q">
				<button>{L_SEARCH}</button>
			</fieldset>
			</form>
	</header>

	<section id="top-ad">
		<div>{REKLAMA_A2}</div>
		<div>{REKLAMA_B1}</div>
	</section>
</div>

	<div id="content">
		<!-- Tutaj bêdzie zawarto¶æ, ale jak na razie trzeba oczy¶ciæ co nie co wiêc zostawiam tabelkê -->