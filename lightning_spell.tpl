<div id="page_content">
	<div id="sidebar_cont" class="f_right">
		<div class="sb_header f_right"> <i style="background-position: 108px 0"></i>
			<span>Реклама</span>
		</div>
		<div>[banner_left]{banner_left}[/banner_left]</div>
	</div>

	<div class="post_content">
		<div class="back">
			<a href="main.html" class="glav">

				<a href="/">Главная</a>
			</a>
			»
			<a href="/m_army.html">Войско</a>
			»
			<a href="/spell.html">Заклинания</a>

		</div>

		<div class="h_post">
			<div class="image_post" align="center">
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

			<div class="t_post" align="center">{title}</div>
		</div>

		<div class="meta_post">
			<ul>
				<li> <i></i>
					Просмотров: {views}
				</li>
				<li>
					<i style="background-position: 0 -11px"></i>
					Комметариев: {comments-num}
				</li>
				<li>
					<i style="background-position: 0 -22px"></i>
					Автор: admin
				</li>
			</ul>
		</div>
		[edit-date]
		<div class="build_spoiler">
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
		<div class="story">{short-story}</div>
		<div class="comm_post">
			{addcomments}
    {comments}
    {navigation}
		</div>
	</div>
</div>