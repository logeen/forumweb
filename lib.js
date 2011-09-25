var selectedTexts = {};

function selectText(id)
{
	var el = document.getElementById(id);
	if (!selectedTexts[id])
	{
		selectedTexts[id] = el.innerHTML;
		el.innerHTML = '<textarea id="_' + id + '" class="code" readonly="readonly" cols="50" rows="10" style="background-image: none; width: 100%' + (el.offsetHeight ? '; overflow: hidden; height: ' + (el.offsetHeight + 20) + 'px' : '') + '">' + el.innerHTML.replace(/[\r\n]*<br(\s[^>]*)?>[\r\n]*/gi, '<br />').replace(/[\r\n]+/g, ' ').replace(/<br \/>/g, '\n').replace(/<[^>]*>/gi, '').replace(/&nbsp;/g, ' ') + '</textarea>';
		with (document.getElementById('_' + id))
		{
			select();
			focus();
		}
		return true;
	}
	else
	{
		el.innerHTML = selectedTexts[id];
		delete selectedTexts[id];
		return false;
	}
}

function fillClient(form)
{
		if (screen && screen.width && screen.height) form.elements['screen'].value = screen.width + 'x' + screen.height;
		
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
		if (client) form.elements['client'].value = md5(client);
}

function embed(width, height, url)
{
	return '<object data="' + url + '" width="' + width + '" height="' + height + '" type="application/x-shockwave-flash"><param name="movie" value="' + url + '"></param><param name="allowFullScreen" value="true" /></param></object>';
}