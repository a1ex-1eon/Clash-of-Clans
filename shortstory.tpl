<div class="news_block" f_right>
	<h3 class="h3dec">
		<a href="#">[full-link]{title}[/full-link]</a>
		{include file="engine/modules/newbage.php?thetime={date=U}&label=New&int=6"}
	</h3>

	<div class="news_info">
		<ul>
			<li> <i></i>
				����������: {views}
			</li>
			<li> <i style="background-position: 0 -11px"></i>
				�����������: {comments-num}
			</li>
			<li>
				<i style="background-position: 0 -22px"></i>
				�����: {author}
			</li>
		</ul>
		<span>{date=d F `y}</span>
	</div>
	<div class="clr"></div>
	<div class="image_secure">
		[full-link]
		[xfgiven_image]
	                    [xfvalue_image]
	    [/xfgiven_image]
		[/full-link]
		[xfnotgiven_image]
		<center> <b>����������� �� ����������� :(</b>
		</center>
		[/xfnotgiven_image]
	</div>
	<div class="newsstyle">
		{short-story}
[edit-date]
		<div class="title_spoiler">
			<a href="javascript:ShowOrHide('edit_info_{news-id}')" style="display: block" >
				<img style="border: none;" alt="" src="{THEME}/images/page_edit.png" />
				&nbsp;�������� ��������: {edit-date}
			</a>
		</div>
		<div id="edit_info_{news-id}" class="text_spoiler" style="display:none;"> <b>������������:</b>
			{editor}
			<br/>
			[edit-reason]
			<b>�������:</b>
			{edit-reason}[/edit-reason]
		</div>
		[/edit-date]
	</div>

</div>