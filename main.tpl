<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="ru" lang="ru">
<head>
	{headers}
	<title>Clash oF Clans</title>
	<meta charset="windows-1251">
    <link rel="shortcut icon" href="http://alex.7ci.ru/favicon.ico?1" type="image/x-icon" />
	<link media="screen" href="{THEME}/css/main.css" type="text/css" rel="stylesheet" />
	<script type="text/javascript" src="{THEME}/js/libs.js"></script>
	<script type="text/javascript" src="{THEME}/js/nocopy.js"></script>
</head>
<body>
	{AJAX}
	<!---Добавить в закладки-->
    [not-group=5]
    [not-aviable=main]
	
		<a rel="sidebar" href="http://www.alexl.7ci.ru/" onclick="window.external.AddFavorite ('http://www.alexl.7ci.ru/', "yes");" title="Clash Of Clans - МАЭСТРО">Добавить в закладки</a>
		
    [/not-aviable]
    [/not-group]
	<!--Добавить в закладки-->
	<div id="page_align" class="b3radius">
		<div id="header">
			<div id="header_nav">
				<ul>
					<li>
						<a href="/">Главаная</a>
					</li>
					<li>
						<a href="/yasitemap">Карта сайта</a>
					</li>
					<li>
						<a href="/m_build.html">Постройки</a>
					</li>
					<li>
						<a href="/clan.html"> <font color="7d4900" size="3"><b>Наш клан</b></font>
						</a>
					</li>
					<li>
						<a href="/m_army.html">Войско</a>
					</li>
					<li>
						<a href="/m_arrangement.html">Расстаноовки</a>
					</li>
					<li>
						<a href="/index.php?do=feedback">Обратная связь</a>
					</li>
				</ul>
                
				<form action="" method="POST" name="searchform">
					<input type="hidden" name="do" value="search">
					<input type="hidden" name="subaction" value="search">
					<input type="image" src="{THEME}/images/search.png" width="15" class="search_img f_right">
                    <input type="text" name="story" placeholder="Ищем что-то?" class="b3radius" id="story"></form>
			</div>
			<div id="header_cont">
				<h1 style="width: 275px;">
					<span style="color: #558b44">Clash oF Clans</span>
					-
					<span style="color: #7d4900">МАЭСТРО</span> <i></i>
				</h1>
				<span class="h1description">Дружный и отзывчивый клан</span>
				<div class="header_right f_right">{login}</div>
			</div>
		</div>
		<div id="sidebar" class="f_left">
			<div class="sb_header"> <i></i>
				Навигация
			</div>
			<div class="sb_nav">
				<ul>
					<li>
						<a href="/">
							<i></i>
							Главная
						</a>
					</li>
					<li>
						<a href="yasitemap">
							<i style="background-position: -22px 0"></i>
							Карта сайта
						</a>
						<!-- <span class="sb_num">123</span>
					-->
				</li>
				<li>
					<a href="m_build.html">
						<i style="background-position: -44px 0"></i>
						Постройки
					</a>
					<!-- <span class="sb_pink">68</span>
				-->
			</li>
			<li>
				<a href="clan.html">
					<i style="background-position: -66px 0"></i>
					Наш клан
				</a>
			</li>
			<li>
				<a href="m_army.html">
					<i style="background-position: -88px 0"></i>
					Войско
				</a>
			</li>
			<li>
				<a href="m_arrangement.html">
					<i style="background-position: -110px 0"></i>
					Расстановки
				</a>
			</li>
			<li>
				<a href="index.php?do=feedback">
					<i style="background-position: -132px 0"></i>
					Обратная связь
				</a>
			</li>

		</ul>
	</div>
	{include file="engine/modules/iChat/show.php"}
			{vote}
			{include file="add.tpl"}
			{include file="stats.tpl"}
	<div class="copyrights">Designed by webtheory, AleX_L</div>
</div>
<div id="content" class="f_right">
	{info}

	    [aviable=main]
	<div id="c_left" class="f_left">

		<div class="c_button">Правила клана</div>
		{custom template="qs" category="2" aviable="main" order="date"}
		<div class="v_news">
			<div class="c_button">Новости для соклановцев-старейшин</div>
			<div class="info_news">
				Новости доступны только заядлым соклановцам:
				<ul>
					<li>Находиться в клане > 1 месяца</li>
					<li>Помочь клану</li>
				</ul>
			</div>
			[not-group=4,5,6]
			{custom template="news_vip" category="60" aviable="main" order="date"}
			[/not-group]
		</div>

	</div>
	[/aviable]
	<!-- <div class="c_sep f_left"></div>
-->
<div id="c_right" class="f_right">
	[aviable=main]
	[group=1,2,3]
	<div class="plus_news">
		<a href="/addnews.html">Добавить материал на сайт</a>
	</div>
	[/group]
	 [/aviable]

	<!-- News 1 start-->
	[not-aviable=sitemap]{content}[/not-aviable]
	<!-- [aviable=sitemap]{include file='engine/modules/sitemap.php?cats_as_links=1&show_static=1&cats_sort=name&cats_msort=ASC&news_sort=title&news_msort=ASC&static_sort=name&static_msort=ASC'}[/aviable] -->
	<!-- News 1 end -->

</div>

</div>

<div class="clr"></div>
        <footer class="footer">Version: 0.9.2</footer>
</div>
<script src="{THEME}/js/main.js"></script>
<script type="text/javascript" src="{THEME}/js/social.js"></script>
<div id="social">
<div id="social_block">
<script type="text/javascript">social();</script>
</div>
</div>
      <div class=schet>
    <!--LiveInternet counter--><script type="text/javascript"><!--
document.write("<a href='//www.liveinternet.ru/click' "+
"target=_blank><img src='//counter.yadro.ru/hit?t21.2;r"+
escape(document.referrer)+((typeof(screen)=="undefined")?"":
";s"+screen.width+"*"+screen.height+"*"+(screen.colorDepth?
screen.colorDepth:screen.pixelDepth))+";u"+escape(document.URL)+
";"+Math.random()+
"' alt='' title='LiveInternet: показано число просмотров за 24"+
" часа, посетителей за 24 часа и за сегодня' "+
"border='0' width='88' height='31'><\/a>")
//--></script><!--/LiveInternet-->
    </div>
</body>
</html>