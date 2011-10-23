/*$(function(){
	log('Hello World');
});*/
(function(d)
{
	/********************************
	Taby
	********************************/
	function initTabs()
	{
		//var as=document.getElementById(id).getElementsByTagName('a');
		var as=$('.tabs a').get();
		for(var i=0;i<as.length;i++)
		{
			var a=as[i];
			if (i > 0) $('#' + a.href.replace(/^[^#]*#/, '')).hide();
			$(a).click(function() 
			{
				return false;
			}).mousedown(function() 
			{
				console.log('switch');return tab_switch(this); 
			});
		}
	}
	function tab_switch(a) 
	{
		a.unselectable = 'on';
		var tab = a.parentNode;
		tab.unselectable = 'on';
		if (!/(^|\s)tab_active(\s|$)/.test(tab.className)) 
		{
			var tabs = tab.parentNode.getElementsByTagName('li');
			for (var i = 0; i < tabs.length; ++i) 
			{
				if (/(^|\s)tab_active(\s|$)/.test(tabs[i].className)) 
				{
					tabs[i].className = (' ' + tabs[i].className + ' ').replace(/\s+tab_active\s+/g, ' ').replace(/\s{2,}/g, ' ');
					d.getElementById(tabs[i].getElementsByTagName('a')[0].href.replace(/^[^#]*#/, '')).style.display = 'none';
					break;
				}
			}
			tab.className += ' tab_active';
			d.getElementById(a.href.replace(/^[^#]*#/, '')).style.display = '';
		}
		return false;
	}
	/********************************
	Formularze
	********************************/
	function initForms()
	{
		function maxlength(el, maxSize)
		{
			if (!el.onblur) el.onblur = el.onclick = el.onmousedown = el.onmouseup = el.keypress = el.onkeydown = el.onkeyup = el.onmouseover = el.onmouseout = el.onfocus;
			if (el.value.length < maxSize) el.maxlengthvalue = null;
			else if (el.value.length == maxSize) el.maxlengthvalue = el.value;
			else el.maxlengthvalue = el.value = (el.maxlengthvalue ? el.maxlengthvalue : el.value.substring(0, maxSize));
		}
		$('.maxlength').focus(function()
		{
			maxlength(this,$(this).attr('maxlength'));
		})
		$('form').submit(function()
		{
			fillClient(this);
		});
		/*accordion form*/
		$('form.accordion').each(function()
		{
			var t=$(this)
			,c=t.find('fieldset > div')
			,f=c.filter(':first')
			,a=t.find('legend a');
			$(a).click(function(e)
			{
				//e.preventDefault();
				c.hide();
				$(this).parents('fieldset').find('div').show();
			});
			c.hide();
			f.show();
		});
		/*switching fields*/
		$('[type="radio"|"checkbox"].switcher').click(function()
		{
			var t=$(this)
			$(t.attr('data-target')).css({display:t.attr('checked')?'':'none'});
		});
		$('form .switch').hide();
	}
	/********************************
	Linki
	********************************/
	function initLinks()
	{
		$('.popup').click(function(e)
		{
			var t=$(this)
			,u=t.attr('data-url')?t.attr('data-url'):t.attr('href')
			,w=t.attr('data-width')?t.attr('data-width'):600
			,h=t.attr('data-height')?t.attr('data-height'):250;
			e.preventDefault();
			window.open(t.attr('href'), '_phpbbsearch', 'HEIGHT='+w+',WIDTH='+h+',resizable=yes');
		});
	}
	/********************************
	Kontrolery
	********************************/
	function initController(c, mode)
	{
		var controllers={
			'viewtopic.php':function()
			{
				var as=$('article')
				,f=as.filter(':first')
				,fid=f.attr('id')
				,a=as.find('header .author')
				,c=as.find('section');
				console.log(f);
				a.click(function()
				{
					if (document.post && document.post.message) 
					{ 
						if (!editor || !editor.insert('b', null, this.innerHTML))
							emoticon('[b]'+this.innerHTML+'[/b]'); window.location.href = '#post'; 
					}
				});
				c.mouseup(function()
				{
					if (document.getSelection && document.getSelection() || document.selection && document.selection.createRange && document.selection.createRange().text) 
						quoteAuthor =$(this).parent().find('header .author').text();
				});
				f.after('<p class="view_first_post"><a href="javascript:void(0);" onclick="this.style.display=\'none\'; document.getElementById(\''+fid+'\').style.display = \'block\'; return false"><b>Poka¿ pierwsz¹ wiadomoœæ...</b></a></p>');
				f.hide();
			},
			'subscribe.php':function()
			{
				var forum_url = location.href.substring(0, location.href.lastIndexOf('/')+1);
		
				function make_URL(URL) {
					URL += (URL.indexOf('?') == -1 ? '?' : '&') +
						(document.sidebar.topics.checked ? 'topics&' : '') + 
						'n=' + document.sidebar.n.value +
						'&m=' + document.sidebar.m.value +
						(URL.indexOf('rss') != -1 ? '&t=' + document.sidebar.t.value : '') +
						'&s=' + document.sidebar.s.value +
						'&l=' + (document.sidebar.l.checked ? 1 : 0) +
						(document.sidebar.u ? '&u=' + document.sidebar.u.value : '');
					
					for (var i = 0, f = ''; i < document.forms['sidebar'].elements.length; i++) {
						if (document.forms['sidebar'].elements[i].name == 'f[]' && document.forms['sidebar'].elements[i].checked) f += ',' + document.forms['sidebar'].elements[i].value;
					}
					if (f != '') URL += '&f=' + f.substring(1);
					
					return URL + panel_suffix;
				}
			
				function addSidebar(SidebarTag, Title, URL) {
					URL = forum_url + URL;
					
					if ((typeof window.sidebar == "object") && (typeof window.sidebar.addPanel == "function")) { 
						window.sidebar.addPanel(Title, URL, ""); 
						return true; 
					} 
					else if ((navigator.userAgent.indexOf("Opera") != -1) && (navigator.userAgent.indexOf("Opera 5") == -1)) { 
						SidebarTag.setAttribute("title", Title); 
						SidebarTag.setAttribute("href", URL); 
						SidebarTag.setAttribute("rel", "sidebar"); 
						return true; 
					} 
					else if (window.external) {
						window.external.addFavorite(URL, Title);
						return true;
					} 
					else { 
						//alert("Panel jest dostêpny wy³±cznie w Mozilli/Netscape 6 lub Operze 6...");
						window.location.href = URL; 
						return false; 
					} 
				}
				
				var f = $(document.sidebar);
				f.find('[type="button"]').click(function()
				{
					addSidebar(this, panel_title, make_URL('panel.php'));
					return false;
				});
				f.click(function() {
					window.open(make_URL('panel.php?rss'), 'rss');
					return true;
				});
			}
		}
		
		if (controllers[c])
		{
			controllers[c](mode);
		}
	}
	/********************************
	Onload
	********************************/
	initLinks();
	initForms();
	initTabs();
	var c=document.location.pathname.split(/\//)
	,c=c[c.length-1]
	,m=document.location.search.match(/[?&]mode=([^&]*)/),
	m=m?m[1]:null;
	initController(c,m);
}(document));