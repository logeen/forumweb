<div class="search_body-tpl">

	<nav class="breadcrumb">
		<ul>
			<li><a href="{U_INDEX}">{L_INDEX}</a></li>
		</ul>
	</nav>

	<form action="{S_SEARCH_ACTION}" method="POST">

		<fieldset>
			<legend>{L_SEARCH_QUERY}</legend>
			<dl>
				<dt>
					<label for="search_keywords">{L_SEARCH_KEYWORDS}</label>
					<p>{L_SEARCH_KEYWORDS_EXPLAIN}</p>
				</dt>
				<dd>
					<input type="text" name="search_keywords" id="search_keywords">
					<label>
						<input type="radio" name="search_terms" value="all">
						{L_SEARCH_ANY_TERMS}
					</label>
					<label>
						{L_SEARCH_ALL_TERMS}
						<input type="radio" name="search_terms" value="all">
					</label>
				</dd>

				<dt>
					<label for="search_author">{L_SEARCH_AUTHOR}</label>
					<p>{L_SEARCH_AUTHOR_EXPLAIN}</p>
				</dt>
				<dd>
					<input type="text" name="search_author" id="search_author">
				</dd>
			</dl>
		</fieldset>

		<fieldset>
			<legend>{L_SEARCH_OPTIONS}</legend>
			<dl>
				<dt><label for="search_forum">{L_FORUM}</label></dt>
				<dd>
					<select class="post" name="search_forum" id="search_forum">{S_FORUM_OPTIONS}</select>
				</dd>

				<dt><label for="search_time">{L_SEARCH_PREVIOUS}</label></dt>
				<dd>
					<select class="post" name="search_time" id="search_time">{S_TIME_OPTIONS}</select>
					<label>
						<input type="radio" name="search_fields" value="all" checked="checked">
						{L_SEARCH_MESSAGE_TITLE}
					</label>
					<label>
						<input type="radio" name="search_fields" value="msgonly">
						{L_SEARCH_MESSAGE_ONLY}
					</label>
				</dd>

				<dt><label for="search_cat">{L_CATEGORY}</label></dt>
				<dd>
					<select class="post" name="search_cat" id="search_cat">{S_CATEGORY_OPTIONS}</select>
				</dd>

				<dt><label for="sort_by">{L_SORT_BY}</label></dt>
				<dd>
					<select class="post" name="sort_by" id="sort_by">{S_SORT_OPTIONS}</select>
					<label><input type="radio" name="sort_dir" value="ASC"> {L_SORT_ASCENDING}</label>
					<label><input type="radio" name="sort_dir" value="DESC" checked="checked"> {L_SORT_DESCENDING}</label>
				</dd>

				<dt><label>{L_DISPLAY_RESULTS}</label></dt>
				<dd>
					<label><input type="radio" name="show_results" value="posts"> {L_POSTS}</label>
					<label><input type="radio" name="show_results" value="topics"> {L_TOPICS}</label>
				</dd>

				<dt><label for="return_chars">{L_RETURN_FIRST}</label></dt>
				<dd>
					<select class="post" name="return_chars" id="return_chars">{S_CHARACTER_OPTIONS}</select>{L_CHARACTERS}
				</dd>
			</dl>
		</fieldset>
	</form>
	<div>
		{JUMPBOX}
	</div>
</div>