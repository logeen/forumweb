<div class="modcp_viewip-tpl">	
	<table>		
		<tr>   			
			<td class="nav">				
				<nav class="breadcrumb">	 					
					<ul>		 						
						<li>						
						<a href="{U_INDEX}">{L_INDEX}</a>						
						</li>	 					
					</ul>				
				</nav></td>		
		</tr>	
	</table>	
	<table     class="forumline">		
		<tr>   			
			<th class="thhead">{L_IP_INFO} 			
			</th>		
		</tr>		
		<tr>   			
			<td class="cathead">				
				<span class="cattitle">{L_THIS_POST_IP} 				
				</span></td>		
		</tr>		
		<tr>   			
			<td class="row1">   				
				<table>					
					<tr>  <td>&nbsp;{IP} [ {POSTS} ]</td><td>[  							
							<a href="{U_LOOKUP_IP}">{L_LOOKUP_IP}</a> ]&nbsp;</td>					
					</tr>				
				</table></td>		
		</tr>		
		<tr>   			
			<td class="cathead">				
				<span class="cattitle">{L_OTHER_USERS} 				
				</span></td>		
		</tr>		
		<!-- BEGIN userrow -->		
		<tr>   			
			<td class="{userrow.ROW_CLASS}">   				
				<table>					
					<tr>  <td>&nbsp; 							
							<a href="{userrow.U_PROFILE}">{userrow.USERNAME}</a> [ {userrow.POSTS}  ]</td><td>							
							<a href="{userrow.U_SEARCHPOSTS}" title="{userrow.L_SEARCH_POSTS}">								
								<img src="{SEARCH_IMG}"  alt="{L_SEARCH}"   /></a>  &nbsp;</td>					
					</tr>				
				</table></td>		
		</tr>		
		<!-- END userrow -->		
		<tr>   			
			<td class="cathead">				
				<span class="cattitle">{L_OTHER_IPS} 				
				</span></td>		
		</tr>		
		<!-- BEGIN iprow -->		
		<tr>   			
			<td class="{iprow.ROW_CLASS}">   				
				<table>					
					<tr>  <td>&nbsp;{iprow.IP} [ {iprow.POSTS} ]</td><td>[  							
							<a href="{iprow.U_LOOKUP_IP}">{L_LOOKUP_IP}</a> ]&nbsp;</td>					
					</tr>				
				</table></td>		
		</tr>		
		<!-- END iprow -->		
		<tr>   			
			<td class="cathead">				
				<span class="cattitle">{L_CLIENT_OTHER_USERS} 				
				</span></td>		
		</tr>		
		<!-- BEGIN clientrow -->		
		<tr>   			
			<td class="{clientrow.ROW_CLASS}">   				
				<table>					
					<tr>   						
						<td colspan="2">&nbsp; 							
							<a href="{clientrow.U_PROFILE}">{clientrow.USERNAME}</a>&nbsp;</td>					
					</tr>				
				</table></td>		
		</tr>		
		<!-- END clientrow -->	
	</table>	
	<!-- BEGIN switch_admin -->	
	<br>	
	<form action="{S_ACTION}" method="post">		
		<input type="hidden" name="useragent_id" value="{USERAGENT_ID}" />		
		<input type="hidden" name="screen_id" value="{SCREEN_ID}" />		
		<input type="hidden" name="client" value="{CLIENT}" />		
		<table     class="forumline">			
			<tr>				
				<th colspan="2" class="cathead">{L_BAN} 				
				</th>			
			</tr>			
			<tr>				
				<td  class="row3">{L_CLIENT}:</td>				
				<td class="row1">{CLIENT}</td>			
			</tr>			
			<tr>				
				<td  class="row3">{L_USER_AGENT}:</td>				
				<td class="row2">{USER_AGENT}</td>			
			</tr>			
			<tr>				
				<td  class="row3">{L_SCREEN}:</td>				
				<td class="row1">{SCREEN}</td>			
			</tr>			
			<tr>				
				<td  class="row3">					
					<label for="label__host_id">{L_HOST}: 					
					</label></td>				
				<td class="row2">					
					<input type="checkbox" id="label__host_id" name="host_id" value="{HOST_ID}" />  					
					<label for="label__host_id">{HOST} 					
					</label></td>			
			</tr>			
			<tr>				
				<td colspan="2" class="row2">
<script type="text/javascript">
<!--
function maxlength(el, maxSize)
{
	if (!el.onblur) el.onblur = el.onclick = el.onmousedown = el.onmouseup = el.keypress = el.onkeydown = el.onkeyup = el.onmouseover = el.onmouseout = el.onfocus;
	if (el.value.length < maxSize) el.maxlengthvalue = null;
	else if (el.value.length == maxSize) el.maxlengthvalue = el.value;
	else el.maxlengthvalue = el.value = (el.maxlengthvalue ? el.maxlengthvalue : el.value.substring(0, maxSize));
}
//--></script>
<textarea name="description" cols="50" rows="5"  onfocus="maxlength(this, 255)">{USERNAME}</textarea></td>			
			</tr>			
			<tr>				
				<td colspan="2"  class="catbottom">					
					<input type="submit" value="{L_SUBMIT}" class="mainoption" /></td>			
			</tr>		
		</table>	
	</form>	
	<!-- END switch_admin -->	
	<table>		
		<tr>   			
			<td class="nav">				
				<nav class="breadcrumb">	 					
					<ul>		 						
						<li>						
						<a href="{U_INDEX}">{L_INDEX}</a>						
						</li>	 					
					</ul>				
				</nav></td>		
		</tr>	
	</table>
</div>