<div class="plan_header">
	<div class="h_plan"> <b>Наше расписание:</b>
	</div>
	<ul>
		<li>
			пн-вт в 16:00
			<span class="wars_plan">-- Clan War --</span>
		</li>
		<li>
			среда в 16:00
			<span class="day_plan">-- День подготовки --</span>
		</li>
		<ul class="f_right two_plan">
			<li>чт-пт в 16:00</li>
			<li>воскресенье в 16:00</li>
		</ul>
	</ul>
</div>
[not-group=5]
<div class="header_buttons">
	<ul>
		<li>
			
		</li>
	</ul>
</div>
<div class="header_profile f_right">
	<div class="header_text f_left" > <b>{login}</b>
		<br>
		<span>Новых сообщений: {new-pm}</span>
	</div>
	<div class="f_right">
		<a href="{profile-link}">
			<img src="{foto}" width="38" class="b3radius hp_photo"></a>
	</div>
	<ul>
		<li>
			<a href="{profile-link}">Мой профиль</a>
		</li>
		<li>
			<a href="{pm-link}">Мои сообщения ({new-pm})</a>
		</li>
		<li>
			<a href="{favorites-link}">Закладки</a>
		</li>
		<li>
			<a href="{newposts-link}">Новое на сайте</a>
		</li>
		<li>
			<a href="{logout-link}">Выйти</a>
		</li>
	</ul>
</div>
[/not-group]

[group=5]
<ul class="loginbox">
	<a href="{registration-link}" class="reg"> <i style="background-position: -22px 0"></i>
		Регистрация
	</a>
	<li>
		<a class="input_l" id="logbtn" href="#"> <i></i>
			<b>Войти</b>
		</a>
		<form method="post" action="">
			<div id="logform" class="radial">
				<ul class="autho">
					<li class="lfield">
						<label for="login_name">{login-method}</label>
						<input type="text" name="login_name" id="login_name" />
					</li>
					<li class="login_pass">
						<label for="login_password">
							Пароль (
							<a href="{lostpassword-link}">Забыли?</a>
							):
						</label>
						<input type="password" name="login_password" id="login_password" />
					</li>
					<li class="foreign">
						<input type="checkbox" name="login_not_save" id="login_not_save" value="1"/>
						<label for="login_not_save">&nbsp;Чужой компьютер</label>
					</li>
					<li class="lbtn">
						<button class="fbutton" onclick="submit();" type="submit" title="Войти">
							<span>Войти</span>
						</button>
					</li>
				</ul>
				<input name="login" type="hidden" id="login" value="submit" />
			</div>
		</form>
	</li>
</ul>
[/group]
