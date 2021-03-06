<!-- BEGIN: MAIN -->
{FILE "{PHP.cfg.themes_dir}/{PHP.cfg.defaulttheme}/warnings.tpl"}
<div class="row">
<!-- IF {PRJ_PERFORMER_ID} > 0 -->
<div class="span8  pull-right"><b>{PHP.L.offers_vibran_ispolnitel}</b></div>
<div class="span8 well tenter pull-right">
<table width="100%">
<tr>
<td rowspan="3" class="old" align="center"><a href="{PRJ_PERFORMER_DETAILSLINK}">{PRJ_PERFORMER_AVATAR}</a></td>
<td><p>{PRJ_PERFORMER_FEMILY} {PRJ_PERFORMER_NIME}<span class="date"><a href="{PRJ_PERFORMER_DETAILSLINK}">({PRJ_PERFORMER_NICKNAME}) {PRJ_PERFORMER_VRF_TITLE}</a></span>
<a href="{PRJ_PERFORMER_DETAILSLINK|cot_url('users', 'm=details&id='$this'&tab=reviews')}">
<span class="reyl">{PRJ_PERFORMER_REVIEWS_POZITIVE_SUMM}</span> /
<span class="red">{PRJ_PERFORMER_REVIEWS_NEGATIVE_SUMM}</span>
</a></p>
</td>
<td><p class="pull-right"><span class="date">
<img src="themes/{PHP.theme}/img/online{PRJ_PERFORMER_ONLINE}.png" /></span> {PRJ_PERFORMER_LASTLOG_STAMP|cot_date('j F  H:i', $this)}</p></td>
</tr>
<tr>
<td><p>{PHP.L.registret}<span class="date">{PRJ_PERFORMER_REGDATE_STAMP|cot_build_timeago($this)}</span></p></td>
<td><p class="pull-right"><!-- IF {PRJ_PERFORMER_ISPRO} --><span class="date">Профи</span><!-- ENDIF -->
{PHP.L.Riting} <span class="u_rating" title="Рейтинг:  {PRJ_PERFORMER_USERPOINTS}">
<span class="cur_rat" style="width: {PRJ_PERFORMER_USERPOINTS}%;"> </span>
</span></p></td>
</tr>
</table>
</div>
<!-- ENDIF -->

<div class="span12">
<!-- IF {PHP.usr.id} == 0 --><center><img src="themes/{PHP.theme}/img/alert/icon1.png"/><h4 class="width40">{PHP.L.offers_for_guest}</h4></center><!-- ENDIF -->
<!-- BEGIN: PROJECTFORPRO -->
<center><img src="themes/{PHP.theme}/img/alert/icon1.png"/><h4 class="width40">{PHP.L.paypro_warning_onlyforpro}</h4></center>
<!-- END: PROJECTFORPRO -->
<!-- BEGIN: OFFERSLIMITEMPTY -->
<center><img src="themes/{PHP.theme}/img/alert/icon1.png"/><h4 class="width40">{PHP.L.paypro_warning_offerslimit_empty}</h4></center>
<!-- END: OFFERSLIMITEMPTY -->

<!-- IF {OFFERSNAV_COUNT} > 0 -->
<div class="pagination"><ul>{OFFERSNAV_PAGES}</ul></div>
<!-- ENDIF -->

<!-- IF {ALLOFFERS_COUNT} == 0 -->
<center><img src="themes/{PHP.theme}/img/alert/icon1.png"/><h4 class="width40">{PHP.L.offers_empty}</h4></center>
<!-- ENDIF -->
<br/>

<h4>{PHP.L.offers_offers} {ALLOFFERS_COUNT}</h4>
<hr/>
</div>



<div id="offers">


<!-- BEGIN: ROWS -->
<div class="span8">
<div class="becgraund">
<table width="100%">
<tr>
<td rowspan="3" class="old" align="center"><a href="{OFFER_ROW_OWNER_DETAILSLINK}">{OFFER_ROW_OWNER_AVATAR}</a></td>
<td><p>{OFFER_ROW_OWNER_FEMILY} {OFFER_ROW_OWNER_NIME}<span class="date"><a href="{OFFER_ROW_OWNER_DETAILSLINK}">({OFFER_ROW_OWNER_NICKNAME})</a>
{OFFER_ROW_OWNER_VRF_TITLE}</span>
<a href="{OFFER_ROW_OWNER_DETAILSLINK|cot_url('users', 'm=details&id='$this'&tab=reviews')}">
<span class="reyl">{OFFER_ROW_OWNER_REVIEWS_POZITIVE_SUMM}</span> / <span class="red">{OFFER_ROW_OWNER_REVIEWS_NEGATIVE_SUMM}</span>
</a>
<span class="date"><img src="themes/{PHP.theme}/img/online{OFFER_ROW_OWNER_ONLINE}.png" /></span></p></td>
<td><p class="pull-right">
<!-- BEGIN: CHOISE -->	
<!-- IF {OFFER_ROW_CHOISE} != "refuse" --><a href="{OFFER_ROW_REFUSE}" class="btn btn-small">{PHP.L.offers_otkazat}</a> <!-- ENDIF -->
<!-- IF {OFFER_ROW_CHOISE} != "performer" AND {PERFORMER_USERID} == "" -->
<a href="{OFFER_ROW_SETPERFORMER}" class="btn btn-small">{PHP.L.offers_ispolnitel}</a> <!-- ENDIF -->
<!-- IF {OFFER_ROW_CHOISE} != "refuse" AND {PHP.cot_plugins_active.sbr} -->
<a href="{OFFER_ROW_SBRCREATELINK}" class="btn btn-small">{PHP.L.sbr_createlink}</a> 
<a class="btn btn-small" href="{PHP.usr.id|cot_url('users', 'm=details&id='$this'&tab=reviews')}">Добавить отзыв</a><!-- ENDIF -->
<!-- END: CHOISE -->
</p></td>
</tr>
<tr>
<td><p>{PHP.L.registret}<span class="date">{OFFER_ROW_OWNER_REGDATE_STAMP|cot_build_timeago($this)}</span></p></td>
<td><p class="pull-right"><!-- IF {OFFER_ROW_OWNER_ISPRO} --><span class="date">Профи</span><!-- ENDIF -->
{PHP.L.Riting} <span class="u_rating" title="Рейтинг:  {OFFER_ROW_OWNER_USERPOINTS}">
<span class="cur_rat" style="width: {OFFER_ROW_OWNER_USERPOINTS}%;"> </span>
</span></p></td>
</tr>
</table>
</div>


<div class="well"><p class="text">{OFFER_ROW_TEXT}</p></div>
<!-- IF {OFFER_ROW_ID|cot_files_count('project_offer', $this)} > 0 -->
{OFFER_ROW_ID|cot_files_display('project_offer', $this, '', 'files.project.offer')}
<!-- ENDIF -->
</div>


<div class="span4 pull-right">	
<div class="becgraund">{OFFER_ROW_DATE_STAMP|cot_date('j F Y', $this)} &nbsp; {OFFER_ROW_DATE_STAMP|cot_date('H:i', $this)} &nbsp; {OFFER_ROW_EDIT}</div>

<table class="table">
<tr>
<td class="width40"><span class="small">{PHP.L.offers_budget}: </span></td>
<td><h4 class="textright"><!-- IF {OFFER_ROW_COSTMAX} == {OFFER_ROW_COSTMIN} AND {OFFER_ROW_COSTMIN} != 0 OR {OFFER_ROW_COSTMAX} == 0 AND {OFFER_ROW_COSTMIN} != 0 -->
{OFFER_ROW_COSTMIN} {PHP.cfg.payments.valuta}<!-- ENDIF --></h4></td>
</tr>
<tr>
<td><span class="small">{PHP.L.offers_sroki}: </span></td>
<td><h4 class="textright"><!-- IF {OFFER_ROW_TIMEMAX} == {OFFER_ROW_TIMEMIN} AND {OFFER_ROW_TIMEMIN} != 0 OR {OFFER_ROW_TIMEMAX} == 0 AND {OFFER_ROW_TIMEMIN} != 0 -->
{OFFER_ROW_TIMEMIN} {OFFER_ROW_TIMETYPE}<!-- ENDIF --></h4></td>
</tr>
</table>
</div>



<div class="span8">
<!-- BEGIN: POSTS -->
<h5>{PHP.L.offers_posts_title}</h5>
<div id="projectsposts">
<table class="table">
<!-- BEGIN: POSTS_ROWS -->
<tr class="tenter">
<td class="oldn" align="center"><a href="{POST_ROW_OWNER_DETAILSLINK}">{POST_ROW_OWNER_AVATAR}</a></td>
<td><p>{POST_ROW_OWNER_FEMILY} {POST_ROW_OWNER_NIME}<span class="date"><a href="{POST_ROW_OWNER_DETAILSLINK}">({POST_ROW_OWNER_NICKNAME})</a></span>
<a href="{POST_ROW_OWNER_DETAILSLINK|cot_url('users', 'm=details&id='$this'&tab=reviews')}">
<span class="reyl">{POST_ROW_OWNER_REVIEWS_POZITIVE_SUMM}</span> /
<span class="red">{POST_ROW_OWNER_REVIEWS_NEGATIVE_SUMM}</span>
</a>
</p></td>
<td><p class="pull-right"> {POST_ROW_DATE_STAMP|cot_date('j F   H:i', $this)} &nbsp; {POST_ROW_EDIT_URL}</p></td>
</tr>
<tr>
<td colspan="3">{POST_ROW_TEXT}
{POST_ROW_ID|cot_files_display('project_offer_post', $this, '', 'files.project.offer')}    
</td>
</tr>
<!-- END: POSTS_ROWS -->

<tr>
<td colspan="3"><!-- BEGIN: POSTFORM -->
<div id="postform{ADDPOST_OFFERID}">
<form action="{ADDPOST_ACTION_URL}" method="post">
{ADDPOST_TEXT} <br/>
{PHP|cot_files_filebox('project_offer_post', 0, '',  'all', -1, 'files.project.offer.filebox')}
<input type="submit" name="submit" class="btn btn-success" value="{PHP.L.Submit}" />
</form>
</div>
</td>
</tr>
<!-- END: POSTFORM -->
</table>
</div>
<!-- END: POSTS -->
</div>
<!-- END: ROWS -->
</div>





<!-- BEGIN: ADDOFFERFORM -->
<div id="addofferform" class="customform span12">
<h4>{PHP.L.offers_ostavit_predl}</h3>
</br>
<form action="{OFFER_FORM_ACTION_URL}" method="post" enctype="multipart/form-data">
<table class="table">
<tr>
<td width="150" align="right">{PHP.L.offers_budget}:</td>
<td> {OFFER_FORM_COSTMIN} {PHP.cfg.payments.valuta}</td>
</tr>
<tr>
<td align="right">{PHP.L.offers_sroki}:</td>
<td> {OFFER_FORM_TIMEMIN} {OFFER_FORM_TIMETYPE}</td>
</tr>
<tr>
<td align="right" class="top">{PHP.L.offers_text_predl}:</td>
<td>{OFFER_FORM_TEXT}</td>
</tr>
<tr>
    <td align="left">Файлы</td>
    <td>{PHP|cot_files_filebox('project_offer', 0)}</td>
</tr>
<tr>
<td align="left"></td>
<td><div class="pull-right"><input type="submit" name="submit" class="btn btn-success" value="{PHP.L.offers_add_predl}" /></div>{OFFER_FORM_HIDDEN}</td>
</tr>
</table>
</form>
</br>
</div>

<!-- END: ADDOFFERFORM -->
</br>
</div>

<!-- END: MAIN -->


