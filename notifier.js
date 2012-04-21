var Notifier = function(url, time, data)
{
	this.isActive = function()
	{
		return container.className.indexOf('notifications_show') >= 0;
	};

	this.initialize = function(data)
	{
		if (data && !Notifier.instances[url].isActive())
		{
			if (typeof data.data != 'undefined' && data.data.length > 0)
			{
				var number = 0;
				var html = '';
				for (var i = 0; i < data.data.length; ++i)
				{
					var date = typeof data.data[i].time != 'undefined' ? new Date(data.data[i].time) : null;
					var notification_new = date && date > new Date(time);
					if (notification_new) ++number;
					var itemUrl = data.data[i].url;
					if (typeof data.data[i].time != 'undefined')
					{
						var itemTime = (itemUrl.indexOf('?') < 0 ? '?' : '&') + (Date.parse(data.data[i].time) / 1000);
						if (itemUrl.indexOf('#') < 0) itemUrl += itemTime;
						else itemUrl = itemUrl.replace(/#/, itemTime + '#');
					}
					html += '<dd class="' + (i == 0 ? 'row_first ' : '') + 'row' + (i % 2 ? 2 : 1) + ' notification_' + data.data[i].type + (notification_new ? ' notification_new' : '') + '"><a href="' + htmlspecialchars(itemUrl) + '"' + (date ? ' title="' + (date.getDate() < 10 ? '0' : '') + date.getDate() + '.' + (date.getMonth() + 1 < 10 ? '0' : '') + (date.getMonth() + 1) + '.' + date.getFullYear() + ' ' + (date.getHours() < 10 ? '0' : '') + date.getHours() + ':' + (date.getMinutes() < 10 ? '0' : '') + date.getMinutes() + '"' : '') + '>' + data.data[i].name + '</a></dd>';
				}
				if (typeof time == 'undefined' || !time || new Date(data.time) > new Date(time))
				{
					document.title = '(' + number + ') ' + title;
					if (container.className.indexOf('notifications_notify') < 0) container.className += ' notifications_notify';
				}
				else
				{
					document.title = title;
					if (container.className.indexOf('notifications_notify') >= 0) container.className = container.className.replace(/\s*notifications_notify/, '');
				}
				html = '<dt><a href="" onclick="Notifier.instances[\'' + htmlspecialchars(url.replace(/\\/g, '\\\\').replace(/'/g, '\\\'')) + '\'].toggle(' + (typeof data.time == 'undefined' ? 'null' : "'" + data.time + "'") + '); return false" unselectable="on">' + (number > 0 ? '<strong unselectable="on">' + number + '</strong>' : number) + '/' + data.data.length + '</a></dt>' + html;
				container.innerHTML = html;
				container.style.display = '';
			}
			else
			{
				document.title = title;
				container.innerHTML = '';
				container.style.display = 'none';
			}
		}
	};

	this.toggle = function(newTime)
	{
		if (container.className.indexOf('notifications_show') >= 0) container.className = container.className.replace(/\s*notifications_show/, '');
		else
		{
			container.className += ' notifications_show';
			if (typeof newTime != 'undefined' && newTime && (typeof time == 'undefined' || !time || new Date(newTime) > new Date(time)))
			{
				time = newTime;
				var xhr = getAJAX();
				if (xhr)
				{
					xhr.open('POST', url, true);
					xhr.onreadystatechange = function()
					{
						if (xhr.readyState == 4)
						{
							var response = null;
							try
							{
								eval('response = ' + xhr.responseText + ';');
							}
							catch (e) {}
							if (response && typeof response.error == 'undefined')
							{
								container.className = container.className.replace(/\s*notifications_notify/, '');
								document.title = title;
							}
						}
					};
					xhr.setRequestHeader('Content-Type', 'application/x-www-form-urlencoded');
					xhr.send('time=' + escape(newTime));
				}
			}
		}
	};

	function hide(e)
	{
		var node = typeof e.target != 'undefined' ? e.target : e.srcElement;
		do
		{
			if (node == container) return;
			node = node.parentNode;
		}
		while (node);
		container.className = container.className.replace(/\s*notifications_show/, '');
	}

	function htmlspecialchars(text)
	{
		return text.replace(/&/g, '&amp;').replace(/</g, '&lt;').replace(/>/g, '&gt;').replace(/"/g, '&quot;');
	}

	function getAJAX()
	{
		var ajax = null;
		if (window.XMLHttpRequest) ajax = new XMLHttpRequest();
		else if (window.ActiveXObject)
		{
			try
			{
				ajax = new ActiveXObject('Msxml2.XMLHTTP');
			}
			catch (e)
			{
				try
				{
					ajax = new ActiveXObject('Microsoft.XMLHTTP');
				}
				catch (e) {}
			}
		}
		return ajax;
	}

	Notifier.instances[url] = this;

	var title = document.title;
	var ajax = getAJAX();

	var container = document.createElement('dl');
	container.className = 'notifications';
	container.style.display = 'none';
	document.getElementsByTagName('body')[0].appendChild(container);

	if (typeof window.addEventListener != 'undefined') document.getElementsByTagName('body')[0].addEventListener('click', hide, false);
	else if (typeof window.attachEvent != 'undefined') document.getElementsByTagName('body')[0].attachEvent('onclick', hide);

	if (typeof data != 'undefined') this.initialize(data);

	if (ajax)
	{
		var timeoutID = null;
		var period = 60000;

		function check()
		{
			if (timeoutID) window.clearTimeout(timeoutID);
			if (Notifier.instances[url].isActive()) timeoutID = window.setTimeout(check, period);
			else
			{
				ajax.open('GET', url, true);
				ajax.send('');
			}
		}

		ajax.onreadystatechange = function()
		{
			if (ajax.readyState == 4)
			{
				if (!Notifier.instances[url].isActive())
				{
					try
					{
						eval('data = ' + ajax.responseText + ';');
					}
					catch (e) {}
					Notifier.instances[url].initialize(data);
				}
				timeoutID = window.setTimeout(check, period);
			}
		};

		if (typeof data != 'undefined') timeoutID = window.setTimeout(check, period);
		else
		{
			if (typeof window.addEventListener != 'undefined') window.addEventListener('load', check, false);
			else if (typeof window.attachEvent != 'undefined') window.attachEvent('onload', check);
		}
	}
};

Notifier.instances = {};