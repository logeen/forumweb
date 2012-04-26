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
		function fillClient(form)
		{
			if (screen && screen.width && screen.height) form.screen.value = screen.width + 'x' + screen.height;
			var client = '';
			if (navigator.appMinorVersion) client += navigator.appMinorVersion + ';';
			if (navigator.cpuClass) client += navigator.cpuClass + ';';
			if (navigator.plugins)
			{
				for (var i = 0; i < navigator.plugins.length; i++)
				{
					client += navigator.plugins[i].name + ',';
				}
				client += ';';
			}
			if (navigator.mimeTypes)
			{
				for (var i = 0; i < navigator.mimeTypes.length; i++)
				{
					client += navigator.mimeTypes[i].type + ',';
				}
			}
			if (client&&typeof form.client !== 'undefined') form.client.value = md5(client);
		}
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
			$(t.data('target')).css({display:t.attr('checked')?'':'none'});
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
			,u=t.data('url')?t.data('url'):t.attr('href')
			,w=t.data('width')?t.data('width'):600
			,h=t.data('height')?t.data('height'):250
			,ta=t.data('target')?t.data('target'):'_phpbbsearch';
			e.preventDefault();
			window.open(t.attr('href'), ta, 'HEIGHT='+h+',WIDTH='+w+',resizable=yes');
		});
	}
	/********************************
	Kontrolery
	********************************/
	function initController(c, mode)
	{
		var controllers={
			'viewtopic':function()
			{
				var as=$('article')
				,f=as.filter(':first')
				,fid=f.attr('id')
				,a=as.find('header .insert_author_quote')
				,c=as.find('section')
				,quoteSelected=function(author)
				{
					var theSelection = null
					,author=author||null;
					if (document.selection && document.selection.createRange) theSelection = document.selection.createRange().text; // Get text selection
					if (theSelection) 
					{
						return editor.insertTag('quote',author,theSelection);
					}
					else 
					{
						alert(errors.noselected);
					}
				}
				console.log(f);
				a.click(function()
				{
					if (document.forms.post && document.forms.post.message) 
					{ 
						console.log('klikniêto');
						if (!editor || !editor.insert('b', null, this.innerHTML))
							emoticon('[b]'+this.innerHTML+'[/b]'); window.location.href = '#post'; 
					}
				});
				c.mouseup(function()
				{
					/*if (document.getSelection && document.getSelection() || document.selection && document.selection.createRange && document.selection.createRange().text) 
						quoteAuthor =*/
						quoteSelected($(this).parent().find('header .insert_author_quote').text());
				});
				f.after('<p class="view_first_post"><a href="javascript:void(0);" onclick="this.style.display=\'none\'; document.getElementById(\''+fid+'\').style.display = \'block\'; return false"><b>Poka¿ pierwsz± wiadomo¶æ...</b></a></p>');
				f.hide();
				//do quick_reply
				this.posting(1);
			},
			'subscribe':function()
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
			},
			'posting':function()
			{
				// Shows the help messages in the helpline window
				function helpline(e) 
				{
					if(typeof help[e] !== 'undefined') $('#helpbox').html(help[e]);
				}
				function checkForm(form) 
				{
					form=form||document.forms.post;
					var formErrors = false;    
					if (form.message.value.length < 2) 
					{
						formErrors = errors.empty;
					}	
					if (form.prefix && (form.subject.value.indexOf("[") !== 0 || form.subject.value.indexOf("]") < 2) && !form.prefix.value) 
					{
						alert(errors.noprefix);
						return false;
					}
					else if (formErrors) 
					{
						alert(formErrors);
						return false;
					}	 
					else 
					{
						//formObj.preview.disabled = true;
						//formObj.submit.disabled = true;
						if (form.quick_quote.checked) 
						{
							form.message.value = errors.last + '\n\n' + form.message.value;
							if (form.subject.value == '' && errors.lastsubject != '') form.subject.value = errors.lastsubject;
						}
						return true;
					}
				};
				$('#post').submit(function(e)
				{
					if (this.confirm_code && this.confirm_code.value == '') { window.alert(errors.confirm); return false } return checkForm(this);
				});
				$('#confirm_refresher').click(function(e)
				{
					$('#confirm_code_img').attr('src','confirm_code.png.php?' + escape(new Date()));
				});
				
				var editor = new Editor($('#post [name=message]').get(0), 'editor postbody');
				if (editor.wysiwyg.isSupported)
				{
					if(parseInt(localStorage.getItem('wysiwyg'))===1) editor.wysiwyg.activate();
					$('<li>[<a href="javascript:void(0);" style="font-weight:bold">'+(editor.wysiwyg.isActive()?'BBCode':'WYSIWYG')+'</a>]</li>').insertBefore($('#fontChoose').parent()).find('a').click(function()
					{
						if (editor.wysiwyg.isActive())
						{
							editor.wysiwyg.passivate();
							this.innerHTML = 'WYSIWYG';
							localStorage.setItem('wysiwyg',0);
						}
						else
						{
							editor.wysiwyg.activate();
							this.innerHTML = 'BBCode';
							localStorage.setItem('wysiwyg',1);
						}
						return false;
					});
				}
				$('.emoticon').click(function()
				{
					var emoticon=$(this).attr('data-emoticon')||':C';
					//if (!editor.insertText(emoticon)) emoticon(emoticon);
					//editor.insertText(emoticon);
					editor.insert(emoticon);
					return false;
				});
				$('.bbcode').on('click','button',function(e)
				{
					console.log('klikniêty');
					var t=$(this)
					,tag=t.attr('data-tag')
					,frag=t.attr('data-frag');
					//if (!editor.insert(tag)) bbstyle(0)
					return tag?editor.insertTag(tag):editor.insert(frag);
				}).on('mouseover','button',function(e)
				{
					helpline($(this).attr('data-help')||$(this).attr('data-tag'));
				});
				$('#colorChoose').change(function()
				{
					editor.insertTag('color', this.value);
					this.selectedIndex = 0;
				});
				$('#fontChoose').change(function()
				{
					if (this.selectedIndex) editor.insertTag('size', this.value);
					this.selectedIndex = 0;
				});
				$('#codeChoose').change(function()
				{
					var insert = this.value.split('||'); 
					insert = insert[this.form.short_code.checked && typeof insert[1] !== 'undefined' ? 1 : 0].replace(/\\n/g, '\n').replace(/\\t/g, '\t').split('|'); 
					editor.insert(insert[0], typeof insert[1] == 'undefined' ? '' : insert[1]);
					this.value = '';
				});
				$('#post select[data-help]').on('mouseover',function()
				{
					helpline($(this).attr('data-help'));
				});
				$('.quote').click(function()
				{
					
				})
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
	,c=c[c.length-1].replace(/\.[^.]+$/, '')
	,m=document.location.search.match(/[?&]mode=([^&]*)/),
	m=m?m[1]:null;
	initController(c,m);
}(document));