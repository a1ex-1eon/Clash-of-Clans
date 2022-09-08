<?PHP
/*
=====================================================
 DataLife Engine - by SoftNews Media Group
-----------------------------------------------------
 http://dle-news.ru/
-----------------------------------------------------
 Copyright (c) 2004,2011 SoftNews Media Group
=====================================================
 Данный код защищен авторскими правами
=====================================================
 Файл: bbcode.php
-----------------------------------------------------
 Назначение: подключение основных компонентов
=====================================================
*/
if(!defined('DATALIFEENGINE'))
{
  die("Hacking attempt!");
}

	$i = 0;
	$output = "<table cellpadding=\"0\" cellspacing=\"0\" border=\"0\" width=\"100%\"><tr>";

    $smilies = explode(",", $config['smilies']);
	$count_smilies = count($smilies);

    foreach($smilies as $smile)
    {
        $i++; $smile = trim($smile);

        $output .= "<td style=\"padding:2px;\" align=\"center\"><a href=\"#\" onclick=\"dle_smiley(':$smile:'); return false;\"><img style=\"border: none;\" alt=\"$smile\" src=\"".$config['http_home_url']."engine/data/emoticons/$smile.gif\" /></a></td>";

		if ($i%4 == 0 AND $i < $count_smilies) $output .= "</tr><tr>";

    }

	$output .= "</tr></table>";

if (isset($addtype) AND $addtype == "addnews") {

   $startform = "short_story";
   $addform = "document.entryform";

   if ($is_logged AND $user_group[$member_id['user_group']]['allow_image_upload'] OR ($is_logged AND $member_id['user_group'] == 1))
   {
      $image_upload = "<span onclick=image_upload()><img title=\"$lang[bb_t_up]\" src=\"{THEME}/bbcodes/upload.png\"  alt=\"\" /></span>";
   }
   else {$image_upload = "";}

   $add_id = (isset($_REQUEST['id'])) ? intval($_REQUEST['id']) : '';

$code = <<<HTML
<div class="bbeditor">
  <span onclick="simpletag('b')">
    <img title="$lang[bb_t_b]" src="{THEME}/bbcodes/b.png" alt="">
  </span>
  <span onclick="simpletag('i')">
    <img title="$lang[bb_t_i]" src="{THEME}/bbcodes/i.png" alt="">
  </span>
  <span onclick="simpletag('u')">
    <img title="$lang[bb_t_u]" src="{THEME}/bbcodes/u.png" alt="">
  </span>
  <span onclick="simpletag('s')">
    <img title="$lang[bb_t_s]" src="{THEME}/bbcodes/s.png" alt="">
  </span>
  <img class="bbspacer" src="{THEME}/bbcodes/brkspace.png" alt="">
  <span onclick="tag_image()">
    <img title="$lang[bb_t_img]" src="{THEME}/bbcodes/image.png" alt="">
  </span>
 {$image_upload}
  <img class="bbspacer" src="{THEME}/bbcodes/brkspace.png" alt="">
  <span onclick="tag_url()">
    <img title="$lang[bb_t_url]" src="{THEME}/bbcodes/link.png" alt="">
  </span>
  <span onclick="tag_leech()">
    <img title="$lang[bb_t_leech]" src="{THEME}/bbcodes/leech.png" alt="">
  </span>
  <img class="bbspacer" src="{THEME}/bbcodes/brkspace.png" alt="">
  <span onclick="tag_email()">
    <img title="$lang[bb_t_m]" src="{THEME}/bbcodes/email.png" alt="">
  </span>
  <span onclick="tag_video()">
    <img title="$lang[bb_t_video]" src="{THEME}/bbcodes/mp.png" alt="">
  </span>
  <span onclick="tag_audio()">
    <img src="{THEME}/bbcodes/mp3.png" alt="">
  </span>
  <span onclick="simpletag('hide')">
    <img title="$lang[bb_t_hide]" src="{THEME}/bbcodes/hide.png" alt="">
  </span>
  <img class="bbspacer" src="{THEME}/bbcodes/brkspace.png" alt="">
  <span id="b_emo" onclick="ins_emo(this);">
    <img title="$lang[bb_t_emo]" src="{THEME}/bbcodes/emo.png" alt="">
  </span>
    <span id="b_color" onclick="ins_color(this);">
    <img src="{THEME}/bbcodes/color.png" alt="">
  </span>
  <img class="bbspacer" src="{THEME}/bbcodes/brkspace.png" alt="">
  <span onclick="tag_flash()">
    <img src="{THEME}/bbcodes/flash.png" alt="">
  </span>
  <span onclick="tag_youtube()">
    <img src="{THEME}/bbcodes/youtube.png" alt="">
  </span>
  <div class="clr"></div>
  <div class="bbselect">
    <select style="width: 80px" name="bbfont" onchange="insert_font(this.options[this.selectedIndex].value, 'font')">
      <option value="0">{$lang['bb_t_font']}</option>
      <option value="Arial">Arial</option>
      <option value="Arial Black">Arial Black</option>
      <option value="Century Gothic">Century Gothic</option>
      <option value="Courier New">Courier New</option>
      <option value="Georgia">Georgia</option>
      <option value="Impact">Impact</option>
      <option value="System">System</option>
      <option value="Tahoma">Tahoma</option>
      <option value="Times New Roman">Times</option>
      <option value="Verdana">Verdana</option>
    </select>
  </div>
  <div class="bbselect">
    <select name="bbsize" onchange="insert_font(this.options[this.selectedIndex].value, 'size')">
      <option value="0">{$lang['bb_t_size']}</option>
      <option value="1">1</option>
      <option value="2">2</option>
      <option value="3">3</option>
      <option value="4">4</option>
      <option value="5">5</option>
      <option value="6">6</option>
      <option value="7">7</option>
    </select>
  </div>
  <img class="bbspacer" src="{THEME}/bbcodes/brkspace.png" alt="">
  <span onclick="simpletag('left')">
    <img title="$lang[bb_t_l]" src="{THEME}/bbcodes/l.png" alt="">
  </span>
  <span onclick="simpletag('center')">
    <img title="$lang[bb_t_c]" src="{THEME}/bbcodes/c.png" alt="">
  </span>
  <span onclick="simpletag('right')">
    <img title="$lang[bb_t_r]" src="{THEME}/bbcodes/r.png" alt="">
  </span>
  <img class="bbspacer" src="{THEME}/bbcodes/brkspace.png" alt="">
  <span id="b_list" onclick="tag_list('list')">
    <img src="{THEME}/bbcodes/list.png" alt="">
  </span>
  <span id="b_ol" onclick="tag_list('ol')">
    <img src="{THEME}/bbcodes/ol.png" alt="">
  </span>
<img class="bbspacer" src="{THEME}/bbcodes/brkspace.png" alt="">
  <span onclick="simpletag('quote')">
    <img title="$lang[bb_t_quote]" src="{THEME}/bbcodes/quote.png" alt="">
  </span>
  <span onclick="simpletag('code')">
    <img title="$lang[bb_t_code]" src="{THEME}/bbcodes/code.png" alt="">
  </span>
  <img class="bbspacer" src="{THEME}/bbcodes/brkspace.png" alt="">
  <span onclick="pagebreak()">
    <img title="$lang[bb_t_br]" src="{THEME}/bbcodes/pbreak.png" alt="">
  </span>
  <span onclick="pagelink()">
    <img title="$lang[bb_t_p]" src="{THEME}/bbcodes/page.png" alt="">
  </span>
  <img class="bbspacer" src="{THEME}/bbcodes/brkspace.png" alt="">
  <span onclick="simpletag('spoiler')">
    <img src="{THEME}/bbcodes/spoiler.png" alt="">
  </span>
  <div class="clr"></div>
</div>

<div id="dle_emos" style="display: none;" title="{$lang['bb_t_emo']}"><div style="height:150px;overflow: auto;">{$output}</div></div>
HTML;

}
else {

  $startform = "comments";
  $addform = "document.getElementById( 'dle-comments-form' )";
  $add_id = false;

   if ($user_group[$member_id['user_group']]['allow_url'])
   {
      $url_link = "<span onclick=\"tag_url()\"><img title=\"$lang[bb_t_url]\" src=\"{THEME}/bbcodes/link.png\" alt=\"\" /></span><span  onclick=\"tag_leech()\"><img title=\"$lang[bb_t_leech]\" src=\"{THEME}/bbcodes/leech.png\"  alt=\"\" /></span>";
   }
   else $url_link = "";

   if ($user_group[$member_id['user_group']]['allow_image'])
   {
      $image_link = "<span onclick=\"tag_image()\"><img title=\"$lang[bb_b_img]\" src=\"{THEME}/bbcodes/image.png\"  alt=\"\" /></span>";
   }
   else $image_link = "";

$code = <<<HTML
<div style="width:100%; class="editor">
<div class="bbeditor">
  <span id="b_b" onclick="simpletag('b')">
    <img title="$lang[bb_t_b]" src="{THEME}/bbcodes/b.png" alt="">
  </span>
  <span id="b_i" onclick="simpletag('i')">
    <img title="$lang[bb_t_i]" src="{THEME}/bbcodes/i.png" alt="">
  </span>
  <span id="b_u" onclick="simpletag('u')">
    <img title="$lang[bb_t_u]" src="{THEME}/bbcodes/u.png" alt="">
  </span>
  <span id="b_s" onclick="simpletag('s')">
    <img title="$lang[bb_t_s]" src="{THEME}/bbcodes/s.png" alt="">
  </span>
  <img class="bbspacer" src="{THEME}/bbcodes/brkspace.png" alt="">
  <span id="b_left" onclick="simpletag('left')">
    <img title="$lang[bb_t_l]" src="{THEME}/bbcodes/l.png" alt="">
  </span>
  <span id="b_center" onclick="simpletag('center')">
    <img title="$lang[bb_t_c]" src="{THEME}/bbcodes/c.png" alt="">
  </span>
  <span id="b_right" onclick="simpletag('right')">
    <img title="$lang[bb_t_r]" src="{THEME}/bbcodes/r.png" alt="">
  </span>
  <img class="bbspacer" src="{THEME}/bbcodes/brkspace.png" alt="">
  <span id="b_emo" onclick="ins_emo(this);">
    <img title="$lang[bb_t_emo]" src="{THEME}/bbcodes/emo.png" alt="">
  </span>
 {$url_link}
{$image_link}
 <span id="b_email" onclick="tag_email();"><img src="{THEME}/bbcodes/email.png" alt=""></span>
  <span id="b_color" onclick="ins_color(this);">
    <img src="{THEME}/bbcodes/color.png" alt="">
  </span>
  <img class="bbspacer" src="{THEME}/bbcodes/brkspace.png" alt="">
  <span id="b_hide" onclick="simpletag('hide')">
    <img title="$lang[bb_t_hide]" src="{THEME}/bbcodes/hide.png" alt="">
  </span>
  <span id="b_quote" onclick="simpletag('quote')">
    <img title="$lang[bb_t_quote]" src="{THEME}/bbcodes/quote.png" alt="">
  </span>
  <span onclick="translit()">
    <img title="$lang[bb_t_btranslit]" src="{THEME}/bbcodes/translit.png" alt="">
  </span>
  <span id="b_spoiler" onclick="simpletag('spoiler')">
    <img src="{THEME}/bbcodes/spoiler.png" alt="">
  </span>
  <div class="clr"></div>
</div>

 <div id="dle_emos" style="display: none;" title="{$lang['bb_t_emo']}"><div style="height:150px;overflow: auto;">{$output}</div></div>
<textarea name="comments" id="comments" cols="" rows="" style="width:465px;height:156px;border:0px;margin: 0px 1px 0px 0px;padding: 0px;" onclick="setNewField(this.name, document.getElementById( 'dle-comments-form' ))">{text}</textarea>
</div>
HTML;
}

if ( isset($allow_subscribe) AND $allow_subscribe ) $code .= "<br /><input type=\"checkbox\" name=\"allow_subscribe\" id=\"allow_subscribe\" value=\"1\" /><label for=\"allow_subscribe\">&nbsp;" . $lang['c_subscribe'] . "</label><br />";

$js_array[] = "engine/classes/js/bbcodes.js";


$bb_code = <<<HTML
<script language="javascript" type="text/javascript">
<!--
var text_enter_url       = "$lang[bb_url]";
var text_enter_size       = "$lang[bb_flash]";
var text_enter_flash       = "$lang[bb_flash_url]";
var text_enter_page      = "$lang[bb_page]";
var text_enter_url_name  = "$lang[bb_url_name]";
var text_enter_page_name = "$lang[bb_page_name]";
var text_enter_image    = "$lang[bb_image]";
var text_enter_email    = "$lang[bb_email]";
var text_code           = "$lang[bb_code]";
var text_quote          = "$lang[bb_quote]";
var error_no_url        = "$lang[bb_no_url]";
var error_no_title      = "$lang[bb_no_title]";
var error_no_email      = "$lang[bb_no_email]";
var prompt_start        = "$lang[bb_prompt_start]";
var img_title   		= "$lang[bb_img_title]";
var email_title  	    = "$lang[bb_email_title]";
var text_pages  	    = "$lang[bb_bb_page]";
var image_align  	    = "{$config['image_align']}";
var bb_t_emo  	        = "{$lang['bb_t_emo']}";
var bb_t_col  	        = "{$lang['bb_t_col']}";
var text_enter_list     = "{$lang['bb_list_item']}";

var selField  = "{$startform}";
var fombj    = {$addform};

function image_upload()
{

window.open('{$config['http_home_url']}engine/images.php?area=' + selField + '&add_id={$add_id}', '_Addimage', 'toolbar=0,location=0,status=0, left=0, top=0, menubar=0,scrollbars=yes,resizable=0,width=640,height=550');

}
-->
</script>
{$code}
HTML;
?>