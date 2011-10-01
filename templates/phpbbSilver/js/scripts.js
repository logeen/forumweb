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
	function initController(c)
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
			}
		}
		controllers[c]();
	}
	/********************************
	Onload
	********************************/
	initLinks();
	initForms();
	initTabs();
	var c=document.location.pathname.split(/\//)
	,c=c[c.length-1];
	initController(c);
}(document));