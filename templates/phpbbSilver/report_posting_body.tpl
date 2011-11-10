<div class="report_posting_body-tpl">
<script type="text/javascript" src="md5.js"></script>
<script type="text/javascript"><!--
function checkForm(form) {

	formErrors = false;    

	if (form.reason.value.length < 2)
	{
		formErrors = "{L_EMPTY_REPORT_REASON}";
		for (var i = 0; i < form.elements.length; ++i)
		{
			if (form.elements[i].type == 'checkbox' && form.elements[i].checked)
			{
				formErrors = false;
				break;
			}
		}
		
	}
	
	if (formErrors) {
		alert(formErrors);
		return false;
	} else {
		fillClient(form);
		return true;
	}
}
//--></script>
<form action="{S_REPORT_ACTION}" method="post" onsubmit="return checkForm(this)">
	{ERROR_BOX}
	<input type="hidden" name="screen" value="" />
	<input type="hidden" name="client" value="" />
	<table width="100%" cellspacing="2" cellpadding="2" border="0" align="center">
		<tr>
		  <td align="left" class="nav">
		  	<nav class="breadcrumb">
					<ul>
						<li><a href="{U_INDEX}">{L_INDEX}</a></li>
					</ul>
				</nav>
			</td>
		</tr>
	  </table>
	  <table border="0" cellpadding="3" cellspacing="1" width="100%" class="forumline">
		<tr> 
		  <th height="28" class="thhead" colspan="2">{MESSAGE_TITLE}</th>
		</tr>
		<tr> 
		  <td class="row1" valign="top"><span class="gen">{L_REPORT_REASON}</span><br /><span class="gensmall">{L_REPORT_REASON_EXPLAIN}</span></td>
			<td class="row2" valign="top" width="685">
				<textarea name="reason" cols="75" rows="5" style="width: 100%">{REASON}</textarea><br />
				<a href="{U_REGULATIONS}" onclick="with (document.getElementById('regulations').style) { display = display == 'none' ? 'block' : 'none'; }; return false"><b>{L_REGULATIONS}...</b></a>
			</td>
		</tr>
		<tr>
			<td class="row1" colspan="2"><div id="regulations" style="display: none">{REGULATIONS}</div></td>
		</tr>
		<tr>
			<td class="catbottom" height="28" align="center" colspan="2"><input type="submit" value="{L_SUBMIT}" class="mainoption" /></td>
		</tr>
	</table>
</form>
</div>