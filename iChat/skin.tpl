<div class="sb_header"><i style="background-position: 36px 0"></i>Чат</div>
[group=5]
<div class="chat_box">Гость не может писать в чат и видеть сообщения!</div>
[/group]


[not-group=5]
<form  method="post" name="iChat_form" id="iChat_form" class="iChat" action="/">
	<link media="screen" href="{THEME}/css/style.css" type="text/css" rel="stylesheet" />
	<script type="text/javascript" src="{THEME}/js/jquery.mousewheel.js"></script>
	<script type="text/javascript" src="{THEME}/js/jquery.jscrollpane.min.js"></script>
	<script type="text/javascript" src="{THEME}/js/action.js"></script>
	<script type="text/javascript" src="{THEME}/js/uChat.js"></script>

	<div id="iChat-style" style="width:max;height:300px; overflow:auto;">
		<div class="uScroll" align="left">
			<div id="iChat-messages">{messages}</div>
		</div>
	</div>
	<br />

	<center>
		<div style="border-radius:2px;" class="uChat_panel" align="center">
			<span class="uChat_panel-button button-archive tipsy-top" title="Архив" onclick="iChatHistory(); return false;"></span>
			<span style="width:85px;" class="uChat_panel-button uChat-send-button" onclick="$('#iChat-write-form').toggle(500);$('.uChat_panel').toggle(500);return false;">Написать</span>
			<span class="uChat_panel-button button-rules tipsy-top" title="Правила" onclick="iChatRules(); return false;"></span>
		</div>
	</center>

	<center>
		<div id="iChat-write-form" style="display:none" class="uMessage">
			<div class="uChat-editor" style="border:0px;">
				<div style="background-color:#EBEBEB; height:20px;">
					<div class="editor_button" onclick="iChat_simpletag('b')">
						<img title="Полужирный" src="{THEME}/img/bbcode/bold.png" width="16" height="16" border="0" alt="" />
					</div>
					<div class="editor_button" onclick="iChat_simpletag('i')">
						<img title="Курсив" src="{THEME}/img/bbcode/italic.png" width="16" height="16" border="0" alt="" />
					</div>
					<div class="editor_button" onclick="iChat_simpletag('u')">
						<img title="Подчёркнутый текст" src="{THEME}/img/bbcode/underline.png" width="16" height="16" border="0" alt="" />
					</div>
					<div class="editor_button" onclick="iChat_simpletag('s')">
						<img title="Зачеркнутый текст" src="{THEME}/img/bbcode/stroke.png" width="16" height="16" border="0" alt="" />
					</div>
					<div class="editor_button" onclick="iChat_ins_emo(this);">
						<img title="Вставка смайликов" src="{THEME}/img/bbcode/emoticon.png" width="16" height="16" border="0" alt="" />
					</div>
					<div class="editor_button" onclick="iChat_tag_leech()">
						<img title="Вставка гиперссылки" src="{THEME}/img/bbcode/link.png" width="16" height="16" border="0" alt="" />
					</div>
					<div class="editor_button" onclick="iChat_ins_color(this);">
						<img src="{THEME}/img/bbcode/colors.png" width="16" height="16" border="0" alt="" />
					</div>
					<div class="editor_button" onclick="iChat_simpletag('quote')">
						<img title="Вставка цитаты" src="{THEME}/img/bbcode/quotes.png" width="16" height="16" border="0" alt="" />
					</div>
				</div>
				<textarea name="message" id="message" class="f_input" style="width:99%; height:60px; resize:vertical; background:#fff; padding:0px; border:1px solid #DDDDDD; border-width:1px 0px 0px 0px;font-family:Tahoma;font-size:11px;"></textarea>
			</div>
			<div class="button-panel" style="border-radius:0px 0px 2px 2px">
				<a class="button" onclick="iChatAdd('site'); return false;" href="javascript://">Отправить</a>
				<a class="button" onclick="$('#iChat-write-form').toggle(500);$('.uChat_panel').toggle(500);return false;" href="javascript://">Отмена</a>

			</div>
		</div>
	</center>
</form>
	[/not-group]