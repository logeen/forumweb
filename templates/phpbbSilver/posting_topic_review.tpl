<div class="posting_topic_review-tpl">	
	<!-- BEGIN switch_inline_mode -->
<script type="text/javascript">
<!--
function topic_review_open()
{
	if (!topic_review_open.opened)
	{
		document.getElementById('topic_review_open_button').style.display = 'none';
		with (document.getElementById('topic_review'))
		{
			onload = function () { window.location.href = '#topic_review'; };
			src = "{U_REVIEW_TOPIC}".replace(/&amp;/g, '&');
			style.display = 'inline';
		}
		topic_review_open.opened = true;
	}
}
topic_review_open.opened = false;
//-->
</script>	
	<table class="forumline">	 		
		<tr>  		  			
			<td class="cathead">				
				<span class="cattitle">{L_TOPIC_REVIEW} 				
				</span></td>	 		
		</tr>	 		
		<tr>		 			
			<td class="row1">				
				<input type="button" onclick="topic_review_open(); return false" id="topic_review_open_button" value="{L_SHOW}" />				
				<iframe id="topic_review">					
					<!-- END switch_inline_mode -->					
					<!-- BEGIN switch_iframe_mode -->					
					<table class="forumline">	 						
						<tr>		  							
							<th class="thcornerl">{L_AUTHOR} 							
							</th>		 							
							<th class="thcornerr">{L_MESSAGE} 							
							</th>	 						
						</tr>	 						
						<!-- BEGIN postrow --> 	 						
						<tr>		  							
							<td  v class="{switch_iframe_mode.postrow.ROW_CLASS}">								
								<span class="name">									
									<a name="{switch_iframe_mode.postrow.U_POST_ID}"></a><strong>{switch_iframe_mode.postrow.POSTER_NAME}</strong>								
								</span><br />								
								<img src="templates/phpbbSilver/images/spacer.gif" alt=""   /></td>		  							
							<td class="{switch_iframe_mode.postrow.ROW_CLASS}" v>								
								<table>			 									
									<tr>  				 <td>											
											<img src="{switch_iframe_mode.postrow.MINI_POST_IMG}"   alt="{switch_iframe_mode.postrow.L_MINI_POST_ALT}" title="{switch_iframe_mode.postrow.L_MINI_POST_ALT}"  />											
											<span class="postdetails">{L_POSTED}:   												
												<time datetime="{switch_iframe_mode.postrow.POST_DATE_DATETIME}">{switch_iframe_mode.postrow.POST_DATE} 												
												</time>											
											</span></td>			 									
									</tr>			 									
									<tr>  				 										
										<td colspan="2">											
											<hr /></td>			 									
									</tr>			 									
									<tr>  				 										
										<td colspan="2">											
											<span class="postbody">{switch_iframe_mode.postrow.MESSAGE} 											
											</span></td>			 									
									</tr>		 								
								</table></td>	 						
						</tr>	 						
						<tr>  		 							
							<td colspan="2"  class="spacerow">								
								<img src="templates/phpbbSilver/images/spacer.gif" alt=""   /></td>	 						
						</tr>	  						
						<!-- END postrow --> 					
					</table>					
					<!-- END switch_iframe_mode -->					
					<!-- BEGIN switch_inline_mode -->				
				</iframe></td>	 		
		</tr>	
	</table>	
	<!-- END switch_inline_mode -->
</div>