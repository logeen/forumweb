<div class="search_body-tpl">	
	<form action="{S_SEARCH_ACTION}" method="POST">		
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
		<table class="forumline">			
			<tr>   				
				<th class="thhead" colspan="4">{L_SEARCH_QUERY} 				
				</th>			
			</tr>			
			<tr>   				
				<td class="row1" colspan="2">					
					<span class="gen">{L_SEARCH_KEYWORDS}: 					
					</span><br />					
					<span class="gensmall">{L_SEARCH_KEYWORDS_EXPLAIN} 					
					</span></td>				
				<td class="row2" colspan="2">					
					<span class="genmed">   						
						<input type="text"  class="post" name="search_keywords" size="30" /><br />						
						<input type="radio" id="label__search_terms__any" name="search_terms" value="any" checked />						
						<label for="label__search_terms__any">{L_SEARCH_ANY_TERMS} 						
						</label><br />						
						<input type="radio" id="label__search_terms__all" name="search_terms" value="all" />						
						<label for="label__search_terms__all">{L_SEARCH_ALL_TERMS} 						
						</label>					
					</span></td>			
			</tr>			
			<tr>   				
				<td class="row1" colspan="2">					
					<span class="gen">{L_SEARCH_AUTHOR}: 					
					</span><br />					
					<span class="gensmall">{L_SEARCH_AUTHOR_EXPLAIN} 					
					</span></td>				
				<td class="row2" colspan="2" v>   					
					<input type="text"  class="post" name="search_author" size="30" /></td>			
			</tr>			
			<tr>   				
				<th class="thhead" colspan="4">{L_SEARCH_OPTIONS} 				
				</th>			
			</tr>			
			<tr>   				
				<td class="row1">{L_FORUM}:&nbsp;</td>				
				<td class="row2">   					
					<select class="post" name="search_forum">{S_FORUM_OPTIONS}  					
					</select></td>				
				<td class="row1">{L_SEARCH_PREVIOUS}:&nbsp;</td>				
				<td class="row2">					
					<span class="genmed">   						
						<select class="post" name="search_time">{S_TIME_OPTIONS}  						
						</select><br />						
						<input type="radio" id="label__search_fields__all" name="search_fields" value="all" checked />						
						<label for="label__search_fields__all">{L_SEARCH_MESSAGE_TITLE} 						
						</label><br />						
						<input type="radio" id="label__search_fields__msgonly" name="search_fields" value="msgonly" />						
						<label for="label__search_fields__msgonly">{L_SEARCH_MESSAGE_ONLY} 						
						</label>					
					</span></td>			
			</tr>			
			<tr>   				
				<td class="row1">{L_CATEGORY}:&nbsp;</td>				
				<td class="row2">   					
					<select class="post" name="search_cat">{S_CATEGORY_OPTIONS} 					
					</select></td>				
				<td class="row1">{L_SORT_BY}:&nbsp;</td>				
				<td class="row2">					
					<span class="genmed">   						
						<select class="post" name="sort_by">{S_SORT_OPTIONS} 						
						</select><br />						
						<input type="radio" id="label__sort_dir__ASC" name="sort_dir" value="ASC" />						
						<label for="label__sort_dir__ASC">{L_SORT_ASCENDING} 						
						</label><br />						
						<input type="radio" id="label__sort_dir__DESC" name="sort_dir" value="DESC" checked />						
						<label for="label__sort_dir__DESC">{L_SORT_DESCENDING} 						
						</label>					
					</span>&nbsp;</td>			
			</tr>			
			<tr>   				
				<td class="row1">{L_DISPLAY_RESULTS}:&nbsp;</td>				
				<td class="row2">   					
					<input type="radio" id="label__show_results__posts" name="show_results" value="posts" />					
					<span class="genmed">						
						<label for="label__show_results__posts">{L_POSTS} 						
						</label>   						
						<input type="radio" id="label__show_results__topics" name="show_results" value="topics" checked />						
						<label for="label__show_results__topics">{L_TOPICS} 						
						</label>					
					</span></td>				
				<td class="row1">{L_RETURN_FIRST}</td>				
				<td class="row2">					
					<span class="genmed">   						
						<select class="post" name="return_chars">{S_CHARACTER_OPTIONS} 						
						</select>{L_CHARACTERS} 					
					</span></td>			
			</tr>			
			<tr>   				
				<td class="catbottom" colspan="4">{S_HIDDEN_FIELDS}   					
					<input class="liteoption" type="submit" value="{L_SEARCH}" /></td>			
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
	</form>	
	<table>		
		<tr>		 <td>{JUMPBOX}</td>	 		
		</tr>	
	</table>
</div>