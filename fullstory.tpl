<div class="comm_block">
	{addcomments}
    {comments}
    {navigation}
    <div id="vk_comments"></div>
<script type="text/javascript">
VK.Widgets.Comments("vk_comments", {limit: 10, width: "370", attach: "*"});
</script>
</div>
<div class="news_block f_right">
	<h3 class="h3dec">
		<a href="#">{title}</a>
	</h3>
	<div class="news_info">
		<ul>
			<li> <i></i>
				Просмотров: {views}
			</li>
			<li> <i style="background-position: 0 -11px"></i>
				Комметариев: {comments-num}
			</li>
			<li>
				<i style="background-position: 0 -22px"></i>
				Автор: {author}
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
		<center> <b>Изображение не прикреплено :(</b>
		</center>
		[/xfnotgiven_image]
	</div>
	<div class="newsstyle">{full-story}</div>
	[edit-date]
	<div class="title_spoiler">
		<a href="javascript:ShowOrHide('edit_info_{news-id}')" style="display: block" >
			<img style="border: none;" alt="" src="{THEME}/images/page_edit.png" />
			&nbsp;Материал обновлен: {edit-date}
		</a>
	</div>
	<div id="edit_info_{news-id}" class="text_spoiler" style="display:none;"> <b>Редактировал:</b>
		{editor}
		<br/>
		[edit-reason]
		<b>Причина:</b>
		{edit-reason}[/edit-reason]
	</div>
	[/edit-date]
</div>
