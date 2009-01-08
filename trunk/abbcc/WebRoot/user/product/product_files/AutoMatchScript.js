var SB_menuItemArray = new Array();
var SB_menuItemSelectIndex = -1;
var SB_isMenuShow = false;
var SB_m_pageSize = 10;
var SB_m_page = 1;
var sg_cache = new Object();
var SB_objInput = null;
var SB_ctrlObj = null;
var SB_ctrlMenuID = null;
var SB_timeDelay = 1000;
var SB_lastRequestTime=new Date().getTime() - SB_timeDelay;
var SB_doneSign=true;
var SB_G_ctrlObj = null;
var SB_G_ctrlMenuID = null;
function SB_canDoSign(){
var lastRequestTime_tmp = new Date().getTime();
//1秒
if(lastRequestTime_tmp - SB_lastRequestTime > SB_timeDelay){
return true;
}else{
return false;
}
}
function SB_doTime_OnKeyUp(){
if(SB_ctrlObj != null && SB_ctrlMenuID != null && SB_doneSign){
var ctrlObj = SB_ctrlObj;
ctrlMenuID = SB_ctrlMenuID;
SB_ctrlObj	= null;
SB_ctrlMenuID = null;
SB_LoadMenuItemArray(ctrlObj, ctrlMenuID, true);
}
}
function SB_ShowMenu(ctrlObj, ctrlMenuID, show){
SB_objInput = ctrlObj;
var menu = document.getElementById(ctrlMenuID);
var ifrm = document.getElementById(ctrlMenuID + "_IFRAME");
if(show){
var btn = ctrlObj;
if(btn){
var x = btn.offsetLeft;
var y = btn.offsetTop;
while(btn = btn.offsetParent){
x += btn.offsetLeft;
y += btn.offsetTop;
}
menu.style.left = x;
menu.style.top = y + 22;
}
menu.style.display = "block";
SB_isMenuShow = true;
var objCtrlRange = ctrlObj.getClientRects();
var objRange = menu.getClientRects();
var widthX = objCtrlRange[0] .right - objCtrlRange[0] .left;
var heightX = objRange[0] .bottom - objRange[0] .top;
menu.style.width = widthX;
ifrm.style.width = widthX;
ifrm.style.height = heightX;
ifrm.style.top = menu.style.top;
ifrm.style.left = menu.style.left;
ifrm.style.display = "block";
try{
if(ctrlObj.showTracelog && ctrlObj.showTracelog.length>0){
aliclick(document, "?tracelog=" + ctrlObj.showTracelog);
}
}catch(e) {}
}else{
menu.style.display = "none";
ifrm.style.display = "none";
SB_isMenuShow = false;
SB_lastRequestTime -= SB_timeDelay;
}
}
function SB_OnDropDown(ctrlObj, ctrlMenuID){
SB_LoadMenuItemArray(ctrlObj, ctrlMenuID);
ctrlObj.focus();
}
function SB_OnBlur(ctrlObj, ctrlMenuID, event){
SB_ShowMenu(ctrlObj, ctrlMenuID, false);
SB_doneSign = false;
}
function SB_OnKeyDown(ctrlObj, ctrlMenuID, event){
// 13: ENTER
if((!SB_isMenuShow || SB_menuItemSelectIndex == -1) && event.keyCode == 13){
return true;
}
if(event.keyCode == 13 || event.keyCode == 24){
return false;
}else{
return true;
}
}
function SB_OnKeyUp(ctrlObj, ctrlMenuID, event){
var returnValue = false;
switch(event.keyCode){
case 38: // UP
SB_SetMenuItemSelectIndex("OFFSET", -1);
SB_RebuildMenuSelection(ctrlObj, ctrlMenuID);
break;
case 40: // DOWN
SB_SetMenuItemSelectIndex("OFFSET", 1);
SB_RebuildMenuSelection(ctrlObj, ctrlMenuID);
break;
case 13: // ENTER
SB_SelectMenuItem(ctrlObj, ctrlMenuID);
if(!SB_isMenuShow || SB_menuItemSelectIndex == -1){
returnValue = true;
}
break;
case 24: // ESC
SB_ShowMenu(ctrlObj, ctrlMenuID, false);
break;
default:
SB_doneSign = true;
SB_LoadMenuItemArray(ctrlObj, ctrlMenuID);
returnValue = true;
break;
}
return returnValue;
}
function SB_SelectMenuItem(ctrlObj, ctrlMenuID){
var text = "";
var menu = document.getElementById(ctrlMenuID);
var menuItemList = menu.childNodes;
for(var i=0; i< menuItemList.length; i++){
if(i == SB_menuItemSelectIndex){
text = menuItemList[i].innerHTML;
break;
}
}
if(text != "") ctrlObj.value = text;
try{
if(ctrlObj.selectTracelog && ctrlObj.selectTracelog.length>0){
aliclick(document, "?tracelog=" + ctrlObj.selectTracelog);
}
}catch(e) {}
SB_ShowMenu(SB_objInput, ctrlMenuID, false);
return false;
}
function SB_SetMenuItemSelectIndex(action, index){
if(action == "SET")
SB_menuItemSelectIndex = index;
if(action == "OFFSET")
SB_menuItemSelectIndex += index;
if(SB_menuItemSelectIndex < 0) SB_menuItemSelectIndex = SB_menuItemArray.length -1;
if(SB_menuItemArray == null || SB_menuItemSelectIndex >= SB_menuItemArray.length) SB_menuItemSelectIndex = 0;
}
function SB_RebuildMenu(ctrlObj, ctrlMenuID){
var html = "";
var start = 0;
if(SB_m_page <= 0) SB_m_page = 1;
var maxPage = parseInt((SB_menuItemArray.length + SB_m_pageSize - 1)/SB_m_pageSize);
if(SB_m_page > maxPage) SB_m_page = maxPage;
start = (SB_m_page - 1)* SB_m_pageSize;
for(var i= start; i<SB_menuItemArray.length && i < start + SB_m_pageSize; i++){
html += "<div";
html += " onmousedown=\"SB_SelectMenuItem(SB_objInput,'" + ctrlMenuID + "');\"";
html += " onMouseOver=\"SB_SetMenuItemSelectIndex('SET', " + i + "); SB_RebuildMenuSelection(this,'" + ctrlMenuID + "');\"";
html += " onBlur=\"return SB_ShowMenu(SB_objInput,'" + ctrlMenuID + "', true);\"";
html += ">";
html += SB_menuItemArray[i];
html += "</div>";
}
if(ctrlObj.isNewIntro && ctrlObj.isNewIntro=="true")html += "<div align=\"center\" style=\"margin-top:5px;color:#666;BACKGROUND-COLOR: #fde6da;border-top:1px solid #fdd2be;height:18px;font-size:12px;padding-top:2px;cursor:default\">阿里新功能：帮助您选择更准确的关键词</div>";
document.getElementById(ctrlMenuID).innerHTML = html;
SB_menuItemSelectIndex = -1;
}
function SB_RebuildMenuSelection(ctrlObj, ctrlMenuID){
var menu = document.getElementById(ctrlMenuID);
var menuItemList = menu.childNodes;
for(var i=0; i< menuItemList.length; i++){
if(i == SB_menuItemSelectIndex){
menuItemList[i].className = "MB_MenuSelectedItem";
}else{
menuItemList[i].className = "";
}
}
}
function SB_LoadMenuItemArray(ctrlObj, ctrlMenuID, timeDelay){
var v=ctrlObj.value;
if(v ==""){
SB_ShowMenu(ctrlObj, ctrlMenuID, false);
return;
}
if( v.length < 2 || v.length >5){
SB_ShowMenu(ctrlObj, ctrlMenuID, false);
return;
}
if(!SB_canDoSign() || !SB_doneSign){
if(!timeDelay){
SB_ctrlObj = ctrlObj;
SB_ctrlMenuID = ctrlMenuID;
setTimeout("SB_doTime_OnKeyUp()", SB_timeDelay);
}
return;
}
SB_doneSign = false;
var s ="";
if(typeof( sg_cache[v]) != 'undefined'){
s = unescape(sg_cache[v]);
}
SB_menuItemArray = s.split(",");
if(typeof SB_menuItemArray =="undefined" || s == ""){
SB_menuItemArray = null;
SB_LoadIt(ctrlObj, ctrlMenuID,v);
}else if(SB_menuItemArray && SB_menuItemArray.length > 0){
showMenuNeeded = true;
SB_RebuildMenu(ctrlObj, ctrlMenuID);
SB_ShowMenu(ctrlObj, ctrlMenuID, true);
SB_doneSign = true;
}
SB_lastRequestTime=new Date().getTime();
}
function SB_LoadIt2(ctrlObj, ctrlMenuID,v){
var httpRequest = SB_GetHttpRequest();
httpRequest.onreadystatechange = function()
{
if(httpRequest.readyState == 1)// 开始加载
{
//html = "数据载入中...";
}
if(httpRequest.readyState == 4)	// 调用完毕
{
if(httpRequest.status == 200) // 加载成功
{
var showMenuNeeded = false;
var txt = unescape(httpRequest.responseText);
try{
if(txt != null && txt.length >0){
var jo = eval('(' + txt + ')');
SB_menuItemArray = jo.words;
if(SB_menuItemArray && SB_menuItemArray.length > 0){
showMenuNeeded = true;
sg_cache[v] = escape(SB_menuItemArray.join());
}
}
}catch(e){}
if(showMenuNeeded){
SB_RebuildMenu(ctrlObj, ctrlMenuID);
SB_ShowMenu(ctrlObj, ctrlMenuID, true);
}
else{
SB_ShowMenu(ctrlObj, ctrlMenuID, false);
}
}
SB_doneSign = true;
SB_lastRequestTime=new Date().getTime();
}
}
var  url="http://" + window.location.host +"/domainproxy/auto_match.htm?iframe_delete=true&keywords=" + (v);
//var  url="http://china.alibaba.com/domainproxy/auto_match.htm?iframe_delete=true&keywords=" + (v);
//var  url="http://search.china.alibaba.com/search/auto_match.htm?iframe_delete=true&keywords=" + (v);
httpRequest.open("get", url, true);
//httpRequest.setRequestHeader("Content-Type","text/html; charset=gb2312");
httpRequest.send(null);
}
function SB_LoadIt(ctrlObj, ctrlMenuID, v){
if(ctrlObj == null || ctrlMenuID == null){
return;
}
SB_loadContent(ctrlObj, ctrlMenuID, v);
}
function SB_loadContent(ctrlObj, ctrlMenuID, keyword){
SB_G_ctrlObj = ctrlObj;
SB_G_ctrlMenuID = ctrlMenuID;
var str='http://search.china.alibaba.com/search/auto_match.htm?iframe_delete=true&keywords=' + keyword + '&type=script&t='+ (new Date().getTime());
var s=document.createElement('SCRIPT');
s.src=str;
document.body.appendChild(s);
}
function SB_callBack(){
if(SB_G_ctrlObj == null || SB_G_ctrlMenuID == null){
return;
}
SB_onLoadCompleted();
}
function SB_onLoadCompleted(){
var showMenuNeeded = false;
try{
if(SB_words != null && SB_words.length >0){
SB_menuItemArray = SB_words;
if(SB_menuItemArray && SB_menuItemArray.length > 0){
showMenuNeeded = true;
sg_cache[SB_keyword] = escape(SB_menuItemArray.join());
}
}
}catch(e){}
if(showMenuNeeded){
SB_RebuildMenu(SB_G_ctrlObj, SB_G_ctrlMenuID);
SB_ShowMenu(SB_G_ctrlObj, SB_G_ctrlMenuID, true);
}
else{
SB_ShowMenu(SB_G_ctrlObj, SB_G_ctrlMenuID, false);
}
SB_doneSign = true;
SB_lastRequestTime=new Date().getTime();
}
function SB_GetHttpRequest(){
var httpRequest;
if (window.XMLHttpRequest){ // Mozilla, Safari,...
httpRequest = new XMLHttpRequest();
if (httpRequest.overrideMimeType){
httpRequest.overrideMimeType('text/xml');
}
}
else if (window.ActiveXObject){ // IE
try{
httpRequest = new ActiveXObject("Msxml2.XMLHTTP");
}
catch(e){
try {
httpRequest = new ActiveXObject("Microsoft.XMLHTTP");
}
catch(e){}
}
}
return httpRequest;
}
