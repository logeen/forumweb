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
					<table cellspacing="2" cellpadding="2">
						<tr>
							<td class="nav">
								<nav class="breadcrumb">
									<ul>
										<li><a href="{U_INDEX}">{L_INDEX}</a></li>
									</ul>
								</nav>
							</td>
						</tr>
					</table>
					<table cellpadding="3" cellspacing="1" class="forumline">
						<tr> 
							<th class="thhead" colspan="2">{MESSAGE_TITLE}</th>
						</tr>
						<tr> 
							<td class="row1" valign="top"><span class="gen">{L_REPORT_REASON}</span><br /><span class="gensmall">{L_REPORT_REASON_EXPLAIN}</span></td>
							<td class="row2" valign="top" width="685">
								<!-- BEGIN reasonrow -->
								<div><input type="checkbox" id="label__reasons__{reasonrow.NAME}" name="reasons[]" value="{reasonrow.VALUE}" /> <label for="label__reasons__{reasonrow.NAME}">{reasonrow.DESCRIPTION}</label></div>
								<!-- END reasonrow -->
								<hr />
								<label for="label__reason"><b>{L_OTHER_REPORT_REASON}:</b></label><br />
								<textarea id="label__reason" name="reason" cols="75" rows="5" style="width: 100%">{REASON}</textarea>
								<div align="right"><a href="{U_REGULATIONS}"><b>{L_REGULATIONS}...</b></a></div>
							</td>
						</tr>
						<tr>
							<td class="catbottom" colspan="2"><input type="submit" value="{L_SUBMIT}" class="mainoption" /></td>
						</tr>
					</table>
		</form>
</div>