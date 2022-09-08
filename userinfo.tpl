<div style="margin-top: 6px; margin-right: 16px;">
	<div class="uheader">
		{usertitle}
		<div class="f_right">[online]Online[/online] [offline]{lastdate}[/offline]</div>
	</div>

	<div class="f_left" style="width: 200px; margin-left: 6px; position: relative;">
		{pm}
		<img src="{foto}" width="200" class="uimg">
		<div class="edituser">{edituser}</div>
	</div>
	<div class="f_left p_info">
		<h4>
			[fullname]{fullname}[/fullname]
	    [not-fullname]Аноним[/not-fullname]
		</h4>
		<div class="g_info">Игровые данные</div>
		<div class="f_left uabout">Логин:</div>
		<div class="f_left uinfo">
			[xfvalue_login]
           [xfnotgiven_title]Заполняется администратором[/xfnotgiven_title]
		</div>
		<div class="clr"></div>

		<div class="f_left uabout">Звание:</div>
		<div class="f_left uinfo">
			[xfvalue_title]
           [xfnotgiven_title]Заполняется администратором[/xfnotgiven_title]
		</div>
		<div class="clr"></div>
		<div class="end_g"></div>

		<div class="f_left uabout">Город:</div>
		<div class="f_left uinfo">
			[land]{land}[/land]
            [not-land]Не указан[/not-land]
		</div>

		<div class="clr"></div>

		<div class="f_left uabout">Группа:</div>
		<div class="f_left uinfo">{status}</div>
		<div class="clr"></div>

		<div class="f_left uabout">Публикации:</div>
		<div class="f_left uinfo">
			[news-num]{news-num}[/news-num]
            [not-news-num]0[/not-news-num]
		</div>
		<div class="clr"></div>

		<div class="f_left uabout">Комментариев:</div>
		<div class="f_left uinfo">
			[comm-num]{comm-num}[/comm-num]
            [not-comm-num]0[/not-comm-num]
		</div>
		<div class="clr"></div>

		<div class="f_left uabout">О себе:</div>
		<div class="f_left uinfo">{info}</div>
	</div>
	{warn}
{getwarn}
	<div class="clr"></div>
</div>
[not-logged]
<div id="options">
	<div class="uheader">Редактирование профиля</div>
	<div class="baseform">
		<table class="tableform">
			<tr>
				<td class="label" width="120">Ваше Имя:</td>
				<td>
					<input type="text" name="fullname" value="{fullname}" class="f_input" />
				</td>
			</tr>
			<tr>
				<td class="label">Ваш E-Mail:</td>
				<td>
					<input type="text" name="email" value="{editmail}" class="f_input" />
					<br />
				</td>
			</tr>
			<tr>
				<td class="label">Город:</td>
				<td>
					<input type="text" name="land" value="{land}" class="f_input" />
				</td>
			</tr>
			<tr>
				<td class="label">Старый пароль:</td>
				<td>
					<input type="password" name="altpass" class="f_input" />
				</td>
			</tr>
			<tr>
				<td class="label">Новый пароль:</td>
				<td>
					<input type="password" name="password1" class="f_input" />
				</td>
			</tr>
			<tr>
				<td class="label">Повторите:</td>
				<td>
					<input type="password" name="password2" class="f_input" />
				</td>
			</tr>
			<tr>
				<td class="label">Аватар:</td>
				<td width="600">
					<input type="file" name="image" class="f_avatar f_left" />
					<br />
					<br />
					<div class="checkbox">
						<input type="checkbox" name="del_foto" id="del_foto" value="yes" />
						<span class="uedit">Удалить аватар</span>
					</div>
				</td>
			</tr>
			<tr>
				<td class="label">О себе:</td>
				<td>
					<textarea name="info" style="width:90%;" rows="5" class="f_textarea">{editinfo}</textarea>
				</td>
			</tr>
			{xfields}
		</table>
		<div class="fieldsubmit">
			<input class="f_submit" type="submit" name="submit" value="Отправить" />
		</div>
	</div>
</div>
[/not-logged]