<div class="privmsgs_read_body-tpl">	
	<table>		
		<tr>  <td>{INBOX_IMG}</td>			
			<td class="cattitle">{INBOX} &nbsp;</td><td>{SENTBOX_IMG}</td>			
			<td class="cattitle">{SENTBOX} &nbsp;</td><td>{OUTBOX_IMG}</td>			
			<td class="cattitle">{OUTBOX} &nbsp;</td><td>{SAVEBOX_IMG}</td>			
			<td class="cattitle">{SAVEBOX}</td>		
		</tr>	
	</table><br  />	
	<table>		
		<tr>  <td>{REPLY_PM_IMG}</td>			
			<td  class="nav">				
				<nav class="breadcrumb">	 					
					<ul>		 						
						<li>						
						<a href="{U_INDEX}">{L_INDEX}</a>						
						</li>	 					
					</ul>				
				</nav></td>		
		</tr>	
	</table>	
	<table id="content"     class="forumline">		
		<tr>   			
			<th colspan="3" class="thhead">{BOX_NAME} :: {L_MESSAGE} 			
			</th>		
		</tr>		
		<tr>   			
			<td class="row2">				
				<span class="genmed">{L_FROM}: 				
				</span></td>			
			<td class="row2" colspan="2">				
				<span class="genmed">{MESSAGE_FROM} 				
				</span></td>		
		</tr>		
		<tr>   			
			<td class="row2">				
				<span class="genmed">{L_TO}: 				
				</span></td>			
			<td class="row2" colspan="2">				
				<span class="genmed">{MESSAGE_TO} 				
				</span></td>		
		</tr>		
		<tr>   			
			<td class="row2">				
				<span class="genmed">{L_POSTED}: 				
				</span></td>			
			<td class="row2" colspan="2">				
				<span class="genmed">					
					<time datetime="{POST_DATE_DATETIME}">{POST_DATE} 					
					</time>				
				</span></td>		
		</tr>		
		<tr>   			
			<td class="row2">				
				<span class="genmed">{L_SUBJECT}: 				
				</span></td>			
			<td  class="row2">				
				<span class="genmed">{POST_SUBJECT} 				
				</span></td>			
			<td  class="row2">&nbsp;{QUICK_QUOTE_IMG} {QUOTE_PM_IMG} {EDIT_PM_IMG}</td>		
		</tr>		
		<tr>   			
			<td v colspan="3" class="row1">				
				<span class="postbody">{MESSAGE} 				
				</span></td>		
		</tr>		
		<tr>   			
			<td  v colspan="3" class="row1">   				
				<table>					
					<tr>  <td>{PROFILE_IMG} {PM_IMG} {EMAIL_IMG} {WWW_IMG} {AIM_IMG} {YIM_IMG} {MSN_IMG}  {ICQ_IMG}</td>					
					</tr>				
				</table></td>		
		</tr>		
		<tr>   			
			<td class="catbottom" colspan="3">				
				<form method="post" action="{S_PRIVMSGS_ACTION}">{S_HIDDEN_FIELDS}   					
					<input type="submit" name="save" value="{L_SAVE_MSG}" class="liteoption" />&nbsp;   					
					<input type="submit" name="delete" value="{L_DELETE_MSG}" class="liteoption" />				
				</form></td>		
		</tr>	
	</table>    	
	<table>		
		<tr>  <td>{REPLY_PM_IMG}</td>			
			<td  class="nav">				
				<nav class="breadcrumb">	 					
					<ul>		 						
						<li>						
						<a href="{U_INDEX}">{L_INDEX}</a>						
						</li>	 					
					</ul>				
				</nav></td>		
		</tr>	
	</table>{QUICKREPLY_OUTPUT}  	
	<table>		
		<tr>  <td>{JUMPBOX}</td>		
		</tr>	
	</table>
<script type="text/javascript">
<!--
var foldbox_lang = {
	'Unfold': '{L_UNFOLD}',
	'Fold': '{L_FOLD}'
};
//-->
</script>
<script type="text/javascript" src="{FOLDBOX_JS}"></script>
</div>