<div class="recovery">
	<div class="pheading">
		<h2>������������ ������</h2>
	</div>
	<div class="baseform">
		<table class="tableform">
			<tr>
				<td class="rec">��� ����� ��� E-Mail �� �����:</td>
				<td>
					<input class="f_input" type="text" name="lostname" />
				</td>
			</tr>
			[sec_code]
			<tr>
				<td class="rec">
					������� ���
					<br />
					� ��������:
					<span class="impot">*</span>
				</td>
				<td>
					<div>{code}</div>
					<div>
						<input class="f_input" style="width:115px" maxlength="45" name="sec_code" size="14" />
					</div>
				</td>
			</tr>
			[/sec_code]
		[recaptcha]
			<tr>
				<td class="rec">
					������� ��� �����,
					<br />
					���������� �� �����������:
					<span class="impot">*</span>
				</td>
				<td>
					<div>{recaptcha}</div>
				</td>
			</tr>
			[/recaptcha]
		</table>
		<div class="fieldsubmit">
			<button name="submit" class="fbutton" type="submit">
				<span>���������</span>
			</button>
		</div>
	</div>
</div>