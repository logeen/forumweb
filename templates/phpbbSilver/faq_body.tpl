<div class="faq_body-tpl">	 	
	<table>	 	 		 		
		<tr>		 		 			 			
			<td class="nav">			 			 				 				
				<nav class="breadcrumb">	 					
					<ul>		 						
						<li>						
						<a href="{U_INDEX}">{L_INDEX}</a>						
						</li>  	 					
					</ul>				
				</nav>		 		
		</tr>	 	
	</table>	 	
	<table class="forumline">	 	 		 		
		<tr>		 		 			 			
			<th class="thhead">{L_FAQ_TITLE} 		 		 			 			
			</th>	 	 		 		
		</tr>	 	 		 		
		<tr>		 		 			 			
			<td class="row1">   			 			 				 				
				<!-- BEGIN faq_block_link -->      			 			 				 				
				<span class="gen">{faq_block_link.BLOCK_TITLE} 			 			 				 				
				</span><br />			 			 				 				
				<!-- BEGIN faq_row_link -->   			 			 				 				
				<a href="{faq_block_link.faq_row_link.U_FAQ_LINK}">{faq_block_link.faq_row_link.FAQ_LINK}</a><br />			 			 				 				
				<!-- END faq_row_link --><br />			 			 				 				
				<!-- END faq_block_link --></td>	 	 		 		
		</tr>	 	 		 		
		<tr>		 		 			 			
			<td class="catbottom">&nbsp;</td>	 	 		 		
		</tr>	 	
	</table><br  />	 	
	<!-- BEGIN faq_block --> 	 	
	<table class="forumline">	 	 		 		
		<tr>		 		 			 			
			<td class="cathead">			 			 				 				
				<span class="cattitle">{faq_block.BLOCK_TITLE} 			 			 				 				
				</span></td>	 	 		 		
		</tr>	 	 		 		
		<!-- BEGIN faq_row -->   	 	 		 		
		<tr>   		 		 			 			
			<td class="{faq_block.faq_row.ROW_CLASS}"  v>			 			 				 				
				<a name="{faq_block.faq_row.U_FAQ_ID}"></a>			 			 				 				
				<span class="gen">{faq_block.faq_row.FAQ_QUESTION} 			 			 				 				
				</span><br />			 			 				 				
				<span class="postbody">{faq_block.faq_row.FAQ_ANSWER}<br />				 				 					 					
					<a href="#Top" class="gensmall">{L_BACK_TO_TOP}</a>			 			 				 				
				</span></td>	 	 		 		
		</tr>	 	 		 		
		<tr>		 		 			 			
			<td class="spacerow">			 			 				 				
				<img src="templates/phpbbSilver/images/spacer.gif" alt=""   /></td>	 	 		 		
		</tr>	 	 		 		
		<!-- END faq_row -->    	 	
	</table><br  />	 	
	<!-- END faq_block --> 	 	
	<table>	 	 		 		
		<tr>   		 		 			 			
			<td class="nav">			 			 				 				
				<nav class="breadcrumb">	 					
					<ul>		 						
						<li>						
						<a href="{U_INDEX}">{L_INDEX}</a>						
						</li>  	 					
					</ul>				
				</nav>	 	 		 		
		</tr>	 	 		 		
		<tr><td>&nbsp;</td>	 	 		 		
		</tr>	 	 		 		
		<tr>  <td>{JUMPBOX}</td>	 	 		 		
		</tr>	 	
	</table>
</div>