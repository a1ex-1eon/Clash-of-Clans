<div style="margin-top: -16px">
	<div class="dtop">&nbsp;</div>
	<div class="dcont">
		<div class="btl">
			<div class="sb_header"><i style="background-position: -17px 0"></i>Опрос</div>
			<form method="post" name="vote_result" action=''>
				<input type="hidden" name="vote_action" value="results" />
				<input type="hidden" name="vote_id" value="{vote_id}" />
			</form>
		</div>
		<p class="sb_subheader"> <b>{title}</b>
		</p>
		<div class="">
			[votelist]
			<form method="post" name="vote" action=''>
			[/votelist]
			{list}
				<br />
				[voteresult]
				<div class="v_vsego">
					<small>Всего проголосовало: {votes}</small>
				</div>
				[/voteresult]
			[votelist]
				<input type="hidden" name="vote_action" value="vote" />
				<input type="hidden" name="vote_id" id="vote_id" value="{vote_id}" />
				<button class="vbutton c_button" type="submit" onclick="doVote('vote'); return false;" >
					<span>Голосовать</span>
				</button>
				&nbsp;
				<button class="vbutton c_button" type="button" onclick="doVote('results'); return false;" >
					<span>Результаты</span>
				</button>
			</form>
			[/votelist]
		</div>
	</div>
	<div class="dbtm">&nbsp;</div>
</div>
