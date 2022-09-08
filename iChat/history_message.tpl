<div class="uChat_message">
	<span class="uChat-message-block">
		<table border="0" cellpadding="0" cellspacing="0" width="100%">
			<tbody>
				<tr>
					<td width="40">
						<span class="uChatAvatar">
							<img src="{foto}">
							</span>
					</td>
					<td style="font-size:8pt; color:#666; line-height:14px;">
						<div style="float:right; margin-right:5px;">
							[allow_reply]
                            <img class="action" onmouseover="iChat_copy_quote('{name}');" onclick="iChat_reply('{name}'); return false;" src="{THEME}/templates/clash/img/icons/reply-btn.png" alt="Ответить" />
							[/allow_reply]
[allow_edit]
							<img class="action" onclick="iChatEdit('{id}','site'); return false;" src="{THEME}/templates/clash/img/icons/edit-btn.png" alt="Редактировать"/>
							[/allow_edit]
[allow_delete]
							<img class="action" onclick="iChatDelete('{id}','site'); return false;" src="{THEME}/templates/clash/img/icons/del-btn.png" alt="Удалить"/>
							[/allow_delete]
						</div> <b>{author}</b>
						<br />
						<span class="small">{date}</span>
					</td>
				</tr>
			</tbody>
		</table>
		<div style="padding:3px 0px 3px 0px;">{message}</div>
	</span>
	<div class="hr"></div>
</div>

<style>
.uChat-message-block {display:block;}
.uChat-message-block:hover .chat-button {opacity:0.4;}
.uChatAvatar {display:block;float:left;position:relative;font-size:0px;margin-right:5px;width:36px;height:36px;}
.uChatAvatar:after {position:absolute;top:0px;left:0px;bottom:0px;right:0px;box-shadow:0px 1px 3px rgba(0,0,0,0.5) inset;-moz-box-shadow:0px 1px 3px rgba(0,0,0,0.5) inset;-webkit-box-shadow:0px 1px 3px rgba(0,0,0,0.5) inset;	content:"";border-radius:3px;-moz-border-radius:3px;-webkit-border-radius:3px;}
.uChatAvatar img {width:36px;height:36px;border-radius:3px;-moz-border-radius:3px;-webkit-border-radius:3px;}
div.hr{margin:4px 0px}
</style>