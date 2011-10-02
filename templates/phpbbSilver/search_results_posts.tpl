<div class="search_results_posts-tpl">	
	<table>		
		<tr>   			
			<td class="maintitle">{L_SEARCH_MATCHES}</td>		
		</tr>	
	</table>	
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
			<th  class="thcornerl">{L_AUTHOR} 			
			</th>			
			<th  class="thcornerr">{L_MESSAGE} 			
			</th>		
		</tr>		
		<!-- BEGIN searchresults -->		
		<tr>   			
			<td class="cathead" colspan="2">				
				<span class="topictitle">&nbsp;{L_TOPIC}:&nbsp; 					
					<a href="{searchresults.U_TOPIC}">{searchresults.TOPIC_TITLE}</a>				
				</span></td>		
		</tr>		
		<tr>   			
			<td  v class="row1" rowspan="2">				
				<span class="name"><b>{searchresults.POSTER_NAME}</b>				
				</span><br /><br />				
				<span class="postdetails">{L_REPLIES}: <b>{searchresults.TOPIC_REPLIES}</b><br />{L_VIEWS}: <b>{searchresults.TOPIC_VIEWS}</b>				
				</span><br />				
				<img src="templates/phpbbSilver/images/spacer.gif" alt=""   />  </td>			
			<td  v class="row1">				
				<img src="{searchresults.MINI_POST_IMG}"   alt="{searchresults.L_MINI_POST_ALT}" title="{searchresults.L_MINI_POST_ALT}"  />				
				<span class="postdetails">{L_FORUM}:&nbsp;<b>						
						<a href="{searchresults.U_FORUM}" class="postdetails">{searchresults.FORUM_NAME}</a></b>&nbsp;  &nbsp;{L_POSTED}:  					
					<time datetime="{searchresults.POST_DATE_DATETIME}">{searchresults.POST_DATE} 					
					</time>&nbsp; &nbsp;{L_SUBJECT}: <strong>						
						<a href="{searchresults.U_POST}">{searchresults.POST_SUBJECT}</a></strong>				
				</span></td>		
		</tr>		
		<tr>   			
			<td v class="row1">				
				<span class="postbody">{searchresults.MESSAGE} 				
				</span></td>		
		</tr>		
		<!-- END searchresults -->		
		<tr>   			
			<td class="catbottom" colspan="2">&nbsp; </td>		
		</tr>	
	</table>	
	<table>		
		<tr>   			
			<td class="nav">				
				<nav class="breadcrumb">	 					
					<ul>		 						
						<li>						
						<a href="{U_INDEX}">{L_INDEX}</a>						
						</li>	 					
					</ul>				
				</nav>{PAGINATION}<br /><br />{JUMPBOX}</td>		
		</tr>	
	</table>
</div>