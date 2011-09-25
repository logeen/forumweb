
<form action="{S_SEARCH_ACTION}" method="POST">
<table width="100%" cellspacing="2" cellpadding="2" border="0">
<tr> 
<td class="nav"><a href="{U_INDEX}">{L_INDEX}</a></td>
</tr>
</table>

<table class="forumline" width="100%" cellpadding="3" cellspacing="1" border="0">
<tr> 
<th class="thhead" colspan="4" height="28">{L_SEARCH_QUERY}</th>
</tr>
<tr> 
<td class="row1" colspan="2" width="50%"><span class="gen">{L_SEARCH_KEYWORDS}:</span><br />
<span class="gensmall">{L_SEARCH_KEYWORDS_EXPLAIN}</span></td>
<td class="row2" colspan="2"><span class="genmed"> 
<input type="text" style="width: 300px" class="post" name="search_keywords" size="30" />
<br />
<input type="radio" id="label__search_terms__any" name="search_terms" value="any" checked />
<label for="label__search_terms__any">{L_SEARCH_ANY_TERMS}</label><br />
<input type="radio" id="label__search_terms__all" name="search_terms" value="all" />
<label for="label__search_terms__all">{L_SEARCH_ALL_TERMS}</label></span></td>
</tr>
<tr> 
<td class="row1" colspan="2"><span class="gen">{L_SEARCH_AUTHOR}:</span><br />
<span class="gensmall">{L_SEARCH_AUTHOR_EXPLAIN}</span></td>
<td class="row2" colspan="2" valign="middle"> 
<input type="text" style="width: 300px" class="post" name="search_author" size="30" />
</td>
</tr>
<tr> 
<th class="thhead" colspan="4" height="28">{L_SEARCH_OPTIONS}</th>
</tr>
<tr> 
<td class="row1" align="right">{L_FORUM}:&nbsp;</td>
<td class="row2"> 
<select class="post" name="search_forum">{S_FORUM_OPTIONS}
</select>
</td>
<td class="row1" align="right" nowrap>{L_SEARCH_PREVIOUS}:&nbsp;</td>
<td class="row2"><span class="genmed"> 
<select class="post" name="search_time">{S_TIME_OPTIONS}
</select>
<br />
<input type="radio" id="label__search_fields__all" name="search_fields" value="all" checked />
<label for="label__search_fields__all">{L_SEARCH_MESSAGE_TITLE}</label><br />
<input type="radio" id="label__search_fields__msgonly" name="search_fields" value="msgonly" />
<label for="label__search_fields__msgonly">{L_SEARCH_MESSAGE_ONLY}</label></span></td>
</tr>
<tr> 
<td class="row1" align="right">{L_CATEGORY}:&nbsp;</td>
<td class="row2"> 
<select class="post" name="search_cat">{S_CATEGORY_OPTIONS}</select>
</td>
<td class="row1" align="right">{L_SORT_BY}:&nbsp;</td>
<td class="row2" nowrap><span class="genmed"> 
<select class="post" name="sort_by">{S_SORT_OPTIONS}</select>
<br />
<input type="radio" id="label__sort_dir__ASC" name="sort_dir" value="ASC" />
<label for="label__sort_dir__ASC">{L_SORT_ASCENDING}</label><br />
<input type="radio" id="label__sort_dir__DESC" name="sort_dir" value="DESC" checked />
<label for="label__sort_dir__DESC">{L_SORT_DESCENDING}</label></span>&nbsp;</td>
</tr>
<tr> 
<td class="row1" align="right" nowrap>{L_DISPLAY_RESULTS}:&nbsp;</td>
<td class="row2" nowrap> 
<input type="radio" id="label__show_results__posts" name="show_results" value="posts" />
<span class="genmed"><label for="label__show_results__posts">{L_POSTS}</label> 
<input type="radio" id="label__show_results__topics" name="show_results" value="topics" checked />
<label for="label__show_results__topics">{L_TOPICS}</label></span></td>
<td class="row1" align="right">{L_RETURN_FIRST}</td>
<td class="row2"><span class="genmed"> 
<select class="post" name="return_chars">{S_CHARACTER_OPTIONS}</select>
{L_CHARACTERS}</span></td>
</tr>
<tr> 
<td class="catbottom" colspan="4" align="center" height="28">{S_HIDDEN_FIELDS} 
<input class="liteoption" type="submit" value="{L_SEARCH}" />
</td>
</tr>
</table>

<table width="100%" cellspacing="2" cellpadding="2" border="0">
<tr> 
<td class="nav"><a href="{U_INDEX}">{L_INDEX}</a></td>
</tr>
</table>
</form>

<table width="100%" border="0" cellpadding="0" cellspacing="0">
<tr>
		
<td>{JUMPBOX}</td>
	</tr>
</table>
