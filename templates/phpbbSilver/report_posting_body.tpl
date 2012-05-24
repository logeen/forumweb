<section class="report_posting_body-tpl">
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
	
	{ERROR_BOX}
		<nav class="breadcrumb">
			<ul>
				<li><a href="{U_INDEX}">{L_INDEX}</a></li>
			</ul>
		</nav>
		<form action="{S_REPORT_ACTION}" method="post" onsubmit="return checkForm(this)">
			<input type="hidden" name="screen" value="">
			<input type="hidden" name="client" value="">
				
		<fieldset id="report">
			
			<section class="left">
				<h5>{MESSAGE_TITLE}</h5>
				<span class="gen">{L_REPORT_REASON}</span><br><span class="gensmall">{L_REPORT_REASON_EXPLAIN}</span>
			</section>
			
			<section class="right">
				<ul class="reasons">
					<!-- BEGIN reasonrow -->
					<li><input type="checkbox" id="label__reasons__{reasonrow.NAME}" name="reasons[]" value="{reasonrow.VALUE}"> <label for="label__reasons__{reasonrow.NAME}">{reasonrow.DESCRIPTION}</label></li>
					<!-- END reasonrow -->
				</ul>
				
					<label for="label__reason"><strong>{L_OTHER_REPORT_REASON}:</strong></label>
					<textarea id="label__reason" name="reason" cols="75" rows="5" style="width: 100%">{REASON}</textarea>
					
					<section class="right">
						<a href="{U_REGULATIONS}" onclick="with (document.getElementById('regulations').style) { display = display == 'none' ? 'block' : 'none'; }; return false"><strong>{L_REGULATIONS}...</strong></a>
					</section>
					
					<section id="regulations">{REGULATIONS}</section>
					
					<input type="submit" value="{L_SUBMIT}" class="mainoption">
						
					</section>
		</fieldset>
		</form>
		
</section>