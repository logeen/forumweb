<div class="groupcp_pending_info-tpl">	 	
	<table class="forumline">	 		 		
		<tr>  	    			 			
			<th class="thcornerl" >{L_PM} 			 			
			</th>	   			 			
			<th class="thtop">{L_USERNAME} 			 			
			</th>	   			 			
			<th class="thtop">{L_POSTS} 			 			
			</th>	   			 			
			<th class="thtop">{L_HELPS} 			 			
			</th>	   			 			
			<th class="thtop">{L_FROM} 			 			
			</th>	   			 			
			<th class="thtop">{L_EMAIL} 			 			
			</th>	   			 			
			<th class="thtop">{L_WEBSITE} 			 			
			</th>	   			 			
			<th class="thcornerr">{L_SELECT} 			 			
			</th>	 		 		
		</tr>	 		 		
		<tr>  	    			 			
			<td class="catsides" colspan="8">				 				
				<span class="cattitle">{L_PENDING_MEMBERS} 				 				
				</span></td>	 		 		
		</tr>	 		 		
		<!-- BEGIN pending_members_row -->  	 		 		
		<tr>  	   			 			
			<td class="{pending_members_row.ROW_CLASS}" > {pending_members_row.PM_IMG}  	  </td>	    			 			
			<td class="{pending_members_row.ROW_CLASS}" >				 				
				<a href="{pending_members_row.U_VIEWPROFILE}">{pending_members_row.USERNAME}</a></td>	    			 			
			<td class="{pending_members_row.ROW_CLASS}" >{pending_members_row.POSTS}</td>			 			
			<td class="{pending_members_row.ROW_CLASS}" >{pending_members_row.HELPS}</td>	    			 			
			<td class="{pending_members_row.ROW_CLASS}" >{pending_members_row.FROM}</td>	    			 			
			<td class="{pending_members_row.ROW_CLASS}" >{pending_members_row.EMAIL_IMG}</td>	    			 			
			<td class="{pending_members_row.ROW_CLASS}" >{pending_members_row.WWW_IMG}</td>	   			 			
			<td class="{pending_members_row.ROW_CLASS}" >				 				
				<span class="gensmall">  					 					
					<input type="checkbox" name="pending_members[]" value="{pending_members_row.USER_ID}" />				 				
				</span></td>	 		 		
		</tr>	 		 		
		<!-- END pending_members_row -->  	 		 		
		<tr>  	    			 			
			<td class="cat" colspan="8"  >   				 				
				<input type="submit" name="approve" value="{L_APPROVE_SELECTED}" class="mainoption" />&nbsp;   				 				
				<input type="submit" name="deny" value="{L_DENY_SELECTED}" class="liteoption" /></td>	 		 		
		</tr>	 	
	</table>
</div>