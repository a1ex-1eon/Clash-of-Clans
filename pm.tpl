<div style="margin: 8px;">
	[pmlist]
	<div class="uheader">
		������ ��������� [new_pm]
		<span class="new-message f_right">����� ���������</span>
	</div>
	[/pmlist]
[newpm]
	<div class="uheader">
		����� ��������� [new_pm]
		<span class="new-message f_right">����� ���������</span>
	</div>
	[/newpm]
[readpm]
	<div class="uheader">
		���� ��������� [new_pm]
		<span class="new-message f_right">����� ���������</span>
	</div>
	[/readpm]
	<div class="basecont">
		<div class="dpad">
			<div class="tabs_bg">
				[inbox]
				<span class="tab" id="inbox">��������</span>
				[/inbox]
			[outbox]
				<span class="tab" id="outbox">������������</span>
				[/outbox]
			</div>
		</div>
		<div class="clr"></div>
		[pmlist]
		<div class="pm_stats">{pmlist}</div>
		[/pmlist]
[newpm]
		<div class="baseform">
			<table class="tableform">
				<tr>
					<td class="label" width="40">����:
					<span class="impot">*</span>
					</td>
					<td>
						<input type="text" name="name" value="{author}" class="f_input f_newpm" />
					</td>
				</tr>
				<tr>
					<td class="label">
						����:
						<span class="impot">*</span>
					</td>
					<td>
						<input type="text" name="subj" value="{subj}" class="f_input f_newpm" />
					</td>
				</tr>
				<tr>
					<td class="label">
						���������:
						<span class="impot">*</span>
					</td>
					<td class="editorcomm">
						{editor}
						<br />
						<div class="checkbox_s">
							<input type="checkbox" id="outboxcopy" name="outboxcopy" value="1" />
							<label for="outboxcopy">��������� ��������� � ����� "������������"</label>
						</div>
					</td>
				</tr>
				[sec_code]
				<tr>
					<td class="label">
						���:
						<span class="impot">*</span>
					</td>
					<td>
						<div>{sec_code}</div>
						<div>
							<input type="text" name="sec_code" id="sec_code" style="width:115px" class="f_input" />
						</div>
					</td>
				</tr>
				[/sec_code]
		[recaptcha]
				<tr>
					<td class="label">
						������� ��� �����, ���������� �� �����������:
						<span class="impot">*</span>
					</td>
					<td>
						<div>{recaptcha}</div>
					</td>
				</tr>
				[/recaptcha]
		[question]
				<tr>
					<td class="label">������:</td>
					<td>
						<div>{question}</div>
					</td>
				</tr>
				<tr>
					<td class="label">
						�����:
						<span class="impot">*</span>
					</td>
					<td>
						<div>
							<input type="text" name="question_answer" id="question_answer" class="f_input" />
						</div>
					</td>
				</tr>
				[/question]
			</table>
			<div class="fieldsubmit">
				<button type="submit" name="add" class="fbutton">
					<span>���������</span>
				</button>
				<!-- <input type="button" class="fbutton" onclick="dlePMPreview()" title="��������" value="��������" />
				-->
			</div>
		</div>
		[/newpm]
[readpm]
		<div class="mrt">
			<div class="border_pm">
				<div class="f_left">
					<img src="{foto}" alt="" width="60" class="reply-img"></div>
				<div class="f_left mrt2">
					<h5>{subj}</h5>
					<span class="read-message">{text}</span>
					<span class="reply">
						{date} | [reply] <b style="display: block">��������</b>
						[/reply]
					</span>
				</div>
				<div class="clr"></div>
			</div>
			<ul class="pm_option">
				<li>[complaint]������������[/complaint]</li>
				<li>[ignore]������������[/ignore]</li>
				<li>[del]�������[/del]</li>
			</ul>
		</div>
		[/readpm]
	</div>
</div>