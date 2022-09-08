<div style="padding:4px;">
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
							<img class="action" onmouseover="iChat_copy_quote('{name}');" onclick="iChat_reply('{name}'); return false;" src="{THEME}/img/icons/reply-btn.png" alt="Ответить" />
							[/allow_reply]
[allow_edit]
							<img class="action" onclick="iChatEdit('{id}','site'); return false;" src="{THEME}/img/icons/edit-btn.png" alt="Редактировать"/>
							[/allow_edit]
[allow_delete]
							<img class="action" onclick="iChatDelete('{id}','site'); return false;" src="{THEME}/img/icons/del-btn.png" alt="Удалить"/>
							[/allow_delete]
						</div> <b>{author}</b>
						<br />
						<span class="small">{date}</span>
					</td>
				</tr>
			</tbody>
		</table>
		<div style="padding:3px 0px 3px 0px;color:#333;font-size:11px;">{message}</div>
	</span>
	<div class="hr"></div>
</div>