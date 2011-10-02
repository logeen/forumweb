<div class="memberlist_body-tpl">	
	<form action="{S_MODE_ACTION}" method="post">		
		<input type="hidden" name="mode" value="search">		
		<table class="forumline">			
			<tr>				
				<th>&nbsp;{L_USERNAME}&nbsp; 				
				</th>				
				<td class="row1 genmed">					
					<input type="text" name="username" value="{USERNAME}" class="post">  					
					<input type="submit" value="{L_SEARCH}" class="littleoption"></td>			
			</tr>			
			<tr>				
				<td colspan="2" class="row2 gensmall">{L_SEARCH_AUTHOR_EXPLAIN}</td>			
			</tr>		
		</table>	
	</form>	
	<!-- BEGIN switch_admin_option -->	
	<form method="post" action="{S_ADMIN_ACTION}">		
		<input type="hidden" name="mode" value="save" />		
		<input type="hidden" name="submit" value="1" />		
		<input type="hidden" name="username" value="." />		
		<input type="hidden" name="deleteuser" value="1" />		
		<!-- END switch_admin_option -->		
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
				<th class="thcornerl"># 				
				</th>				
				<th class="thtop">&nbsp;{L_PM}&nbsp; 				
				</th>				
				<th class="thtop">&nbsp;{L_USERNAME}&nbsp; 				
				</th>				
				<th class="thtop">&nbsp;{L_EMAIL}&nbsp; 				
				</th>				
				<th class="thTop" ="">{L_GG} 				
				</th>				
				<th class="thTop" ="">{L_TLEN} 				
				</th>				
				<th class="thtop">{L_FROM} 				
				</th>				
				<th class="thtop">{L_JOINED} 				
				</th>				
				<th class="thtop">{L_LASTVISIT} 				
				</th>				
				<th class="thtop">{L_AGE} 				
				</th>				
				<th class="thtop">{L_POSTS} 				
				</th>				
				<th class="thtop">{L_HELPS} 				
				</th>				
				<th class="thcornerr">{L_WEBSITE} 				
				</th>				
				<!-- BEGIN switch_admin_option -->				
				<th class="thcornerr">{L_SELECT} 				
				</th>				
				<!-- END switch_admin_option -->			
			</tr>			
			<!-- BEGIN memberrow -->			
			<tr>				
				<td class="{memberrow.ROW_CLASS}">&nbsp;{memberrow.ROW_NUMBER}&nbsp;</td>				
				<td class="{memberrow.ROW_CLASS}">&nbsp;{memberrow.PM_IMG}&nbsp;</td>				
				<td class="{memberrow.ROW_CLASS}">					
					<a href="{memberrow.U_VIEWPROFILE}">{memberrow.USERNAME}</a></td>				
				<td class="{memberrow.ROW_CLASS}">&nbsp;{memberrow.EMAIL_IMG}&nbsp;</td>				
				<td class="{memberrow.ROW_CLASS}"  v>{memberrow.GG_STATUS_IMG}</td>				
				<td class="{memberrow.ROW_CLASS}"  v>{memberrow.TLEN_STATUS_IMG}</td>				
				<td class="{memberrow.ROW_CLASS}">{memberrow.FROM}</td>				
				<td class="{memberrow.ROW_CLASS}">					
					<span class="gensmall">						
						<time datetime="{memberrow.JOINED_DATETIME}">{memberrow.JOINED} 						
						</time>					
					</span></td>				
				<td class="{memberrow.ROW_CLASS}">					
					<span class="gensmall">						
						<time datetime="{memberrow.LASTVISIT_DATETIME}">{memberrow.LASTVISIT} 						
						</time>					
					</span></td>				
				<td class="{memberrow.ROW_CLASS}">					
					<span class="gensmall">{memberrow.AGE} 					
					</span></td>				
				<td class="{memberrow.ROW_CLASS}">{memberrow.POSTS}</td>				
				<td class="{memberrow.ROW_CLASS}">{memberrow.HELPS}</td>				
				<td class="{memberrow.ROW_CLASS}">&nbsp;{memberrow.WWW_IMG}&nbsp;</td>				
				<!-- BEGIN switch_admin_option -->				
				<td class="{memberrow.ROW_CLASS}">					
					<input type="checkbox" name="id[]" value="{memberrow.USER_ID}" /></td>				
				<!-- END switch_admin_option -->			
			</tr>			
			<!-- END memberrow -->			
			<!-- BEGIN switch_admin_option -->			
			<tr>				
				<td class="catbottom" colspan="14">   					
					<input type="submit" name="remove" value="{L_REMOVE_SELECTED}" class="mainoption" /></td>			
			</tr>			
			<!-- END switch_admin_option -->		
		</table>		
		<!-- BEGIN switch_admin_option -->	
	</form>	
	<!-- END switch_admin_option -->	
	<form method="post" action="{S_MODE_ACTION}">		
		<table     class="forumline">			
			<tr>   				
				<td class="catbottom">{L_SELECT_SORT_METHOD}:&nbsp;{S_MODE_SELECT}&nbsp;&nbsp;{L_ORDER}&nbsp;{S_ORDER_SELECT}&nbsp;&nbsp;   					
					<input type="submit" name="submit" value="{L_SUBMIT}" class="liteoption" /></td>			
			</tr>		
		</table>	
	</form>	
	<table>		
		<tr>   			
			<td class="nav">				
				<nav class="breadcrumb">	 					
					<ul>		 						
						<li>						
						<a href="{U_INDEX}">{L_INDEX}</a>						
						</li>	 					
					</ul>				
				</nav>{PAGINATION}</td>		
		</tr>	
	</table>	
	<table>		
		<tr>  <td>{JUMPBOX}</td>		
		</tr>	
	</table>
</div>