/*
* 函数说明：选择搜索类型
* 参数：	actionUrl:搜索目标页面　　tracelog:跟踪参数
* 返回值：	无
* 时间：2005-5-12
*modify
*时间:20061109
*说明:修正getElementById
*modify
*时间:20061123
*说明:结构化搜索3个方法
*/
var searchActivedItem=1;
var tracelogStr="";
var otherParamStr="";
var searchFormObj = null;
var tracelogInput = null;
//结构化搜索
function SB_OnBlur_x(ctrlObj,ctrlMenuID, event){
if(searchActivedItem == 1){
return SB_OnBlur(ctrlObj,ctrlMenuID, event)
}else{
return true;
}
}
function SB_OnKeyDown_x(ctrlObj,ctrlMenuID, event){
if(searchActivedItem == 1){
return SB_OnKeyDown(ctrlObj,ctrlMenuID, event)
}else{
return true;
}
}
function SB_OnKeyUp_x(ctrlObj,ctrlMenuID, event){
if(searchActivedItem == 1){
return SB_OnKeyUp(ctrlObj,ctrlMenuID, event)
}else{
return true;
}
}
function searchInit(num,tracelog,otherParam){
tracelogStr = tracelog;
otherParamStr = otherParam;
document.searchform.method=="get";
if(document.getElementById("searchform")!=null){
searchFormObj = document.getElementById("searchform");
}else{
if(document.getElementsByName("searchform").length!=0){
searchFormObj = document.getElementsByName("searchform")[0];
}
}
if(document.searchform.tracelog){
}else{
tracelogInput = document.createElement("input");
tracelogInput.setAttribute("name","tracelog");
tracelogInput.setAttribute("type","hidden");
document.searchform.appendChild(tracelogInput);
}
doclick(document.getElementById("node"+num),num);
}
function doclick(srcObj,searchID){
var tabList = srcObj.parentNode.getElementsByTagName("li");
if(srcObj.className=="activedTab")return;
for(var i=0;i<tabList.length;i++){
if(tabList[i].className=="activedTab")tabList[i].className="nTab";
}
searchActivedItem = searchID;
srcObj.className = "activedTab";//TAB切换
if(document.getElementById("linkKwords"))document.getElementById("linkKwords").innerHTML = linkKeywords[searchID-1].surl//热门关键字付值
var v = searchFormObj.keywords.value;
if(trim(v) == "" || v.substring(0,3) =="请输入"){searchFormObj.keywords.value = data[searchID-1].title;searchFormObj.keywords.title = data[searchID-1].title}
}
function checkform(){
var v = trim(searchFormObj.keywords.value);
if(v.length > 100){
alert("您输入的关键字过长！");
return false;
}
if(v == ""  || v.substring(0,3) =="请输入") {
alert("请输入关键字！");
return false;
}
var s ="&";
if((data[searchActivedItem-1].surl).indexOf("?")==-1)s="?";
if(searchActivedItem == 11){
var action_url = data[searchActivedItem-1].surl + "?keywords="+searchFormObj.keywords.value+"&action=BusinessFriendSearchBar&event_submit_do_searchFriendBar=true&searchType=1&tracelog="+tracelogStr+data[searchActivedItem-1].tracelog+otherParamStr;}
else{
var action_url = data[searchActivedItem-1].surl + s + "keywords=" + searchFormObj.keywords.value + "&tracelog="+tracelogStr+data[searchActivedItem-1].tracelog+otherParamStr;}
searchFormObj.action = action_url; //给form的action付值
if(tracelogInput!=null)tracelogInput.value=tracelogStr+data[searchActivedItem-1].tracelog;//给form的tracelog付值
}
/*
* 函数说明：去除头尾空格
* 参数：	字符串
* 返回值：	无
* 时间：2005-5-12
*/
function trim(inputString) {
return inputString.replace(/^ +/,"").replace(/ +$/,"");
}
function focusit(o){
if("请输入"==o.value.substring(0,3)){
o.value = "";
}
}
function blurit(o){
if(""==o.value){
o.value =o.title;
}
}
/*
* 函数说明：取cookie值
* 参数：	cookie字段名
* 返回值：	cookie值
* 时间：2005-5-12
*/
function getCookie(sName) {
var aCookie = document.cookie.split("; ");
for (var i=0; i < aCookie.length; i++)
{
var aCrumb = aCookie[i].split("=");
if (sName == aCrumb[0])
return unescape(aCrumb[1]);
}
return null;
}
/*搜索配置*/
var data = [
{id:1,name:"供应",surl:"http://search.china.alibaba.com/search/offer_search.htm" , title:"请输入您感兴趣的产品名称！" , tracelog:"searchbuyer"},
{id:2,name:"求购",surl:"http://search.china.alibaba.com/search/search.htm" , title:"请输入您感兴趣的产品名称！", tracelog:"searchsale"},
{id:3,name:"公司",surl:"http://search.china.alibaba.com/search/company_search.htm" , title:"请输入产品名或公司名关键词！" , tracelog:"searchcom"},
{id:4,name:"行情",surl:"http://search.china.alibaba.com/search/news_search.htm",title:"请输入产品关键字，查看最新的产品行情！" , tracelog:"searchinfor"},
{id:5,name:"经验",surl:"http://search.china.alibaba.com/search/forum_search.htm" , title:"请输入商业经验关键词，查看网商经营之道！" , tracelog:"searchclub"},
{id:6,name:"博客",surl:"http://search.china.alibaba.com/search/blog_search.htm" , title:"请输入您感兴趣的关键词查找帖子！",tracelog:"searchblog"},
{id:7,name:"报价",surl:"http://search.china.alibaba.com/search/business_search.htm" , title:"请输入产品关键词查找相关报价信息！" , tracelog:"searchbaojia"},
{id:8,name:"代理",surl:"http://search.china.alibaba.com/search/offer_search.htm?categoryId=51" , title:"请输入产品关键词查找相关代理信息！" , tracelog:"searchdaili"},
{id:9,name:"加工",surl:"http://search.china.alibaba.com/search/offer_search.htm?categoryId=2805" , title:"请输入产品关键词查找相关加工信息！" , tracelog:"searchjiagong"},
{id:10,name:"产品",surl:"http://search.china.alibaba.com/search/sample_search.htm" , title:"请输入产品关键词查找相关产品信息！" , tracelog:"searchsample"},
{id:11,name:"商友",surl:"http://search.china.alibaba.com/search/profile_search.htm" , title:"请输入商友的名称公司行业等属性关键词，找到您想找的人！" , tracelog:"searchfriend"},
{id:12,name:"阿里帮帮",surl:"http://search.china.alibaba.com/search/iask_search.htm" , title:"请输入您的问题关键字，千万网商帮你解答！" , tracelog:"searchhelp"}
]
/*热门关键字*/
var linkKeywords = [
{id:1,name:"供应",surl:"热门关键字：<a href=\"http://search.china.alibaba.com/selloffer/%E5%9D%AF%E5%B8%83.html\" target=_blank onMouseDown=\"return aliclick(this,'?tracelog=ui_homepage_searchbuykey');\" class=textwhite>坯布</a> <a href=\"http://search.china.alibaba.com/selloffer/%E5%B7%A5%E8%89%BA%E5%93%81.html\" target=_blank onMouseDown=\"return aliclick(this,'?tracelog=ui_homepage_searchbuykey');\" class=textwhite>工艺品</a> <a href=\"http://search.china.alibaba.com/selloffer/%E6%9A%96%E6%B0%94%E7%89%87.html\" target=_blank onMouseDown=\"return aliclick(this,'?tracelog=ui_homepage_searchbuykey');\" class=textwhite>暖气片</a>  <a href=\"http://search.china.alibaba.com/selloffer/%E9%92%A3%E9%87%91.html\" target=_blank onMouseDown=\"return aliclick(this,'?tracelog=ui_homepage_searchbuykey');\" class=textwhite>钣金</a> <a href=\"http://search.china.alibaba.com/selloffer/%E5%B0%BC%E9%BE%99%E7%AE%A1.html\" target=_blank onMouseDown=\"return aliclick(this,'?tracelog=ui_homepage_searchbuykey');\" class=textwhite>尼龙管</a>"},
{id:2,name:"求购",surl:"热门关键字：<a href=\"http://search.china.alibaba.com/buyoffer/%E8%B8%8F%E6%AD%A5%E6%9C%BA.html?bidding=hothome\" target=_blank onMouseDown=\"return aliclick(this,'?tracelog=ui_homepage_searchsellerkey');\" class=textwhite>踏步机</a> <a href=\"http://search.china.alibaba.com/buyoffer/MP3.html?bidding=hothome\" target=_blank onMouseDown=\"return aliclick(this,'?tracelog=ui_homepage_searchsellerkey');\" class=textwhite>MP3</a> <a href=\"http://search.china.alibaba.com/buyoffer/%E7%A4%BC%E5%93%81.html?bidding=hothome\" target=_blank onMouseDown=\"return aliclick(this,'?tracelog=ui_homepage_searchsellerkey');\" class=textwhite>礼品</a> <a href=\"http://search.china.alibaba.com/buyoffer/%E5%8E%8B%E7%BC%A9%E6%AF%9B%E5%B7%BE.html?bidding=hothome\" target=_blank onMouseDown=\"return aliclick(this,'?tracelog=ui_homepage_searchsellerkey');\" class=textwhite>压缩毛巾</a> </a><a href=\"http://search.china.alibaba.com/buyoffer/%E6%A8%A1%E5%85%B7.html?bidding=hothome\" target=_blank onMouseDown=\"return aliclick(this,'?tracelog=ui_homepage_searchsellerkey');\" class=textwhite>模具</a> <a href=\"http://search.china.alibaba.com/buyoffer/%E6%89%8B%E8%A1%A8.html?bidding=hothome\" target=_blank onMouseDown=\"return aliclick(this,'?tracelog=ui_homepage_searchsellerkey');\" class=textwhite>手表</a> <a href=\"http://search.china.alibaba.com/buyoffer/MP4.html?bidding=hothome\" target=_blank onMouseDown=\"return aliclick(this,'?tracelog=ui_homepage_searchsellerkey');\" class=textwhite>MP4</a> "},
{id:3,name:"公司",surl:'热门关键字：<a href="http://china.alibaba.com/company/index.html" target=_blank onMouseDown="return aliclick(this,\'?tracelog=ui_homepage_searchcompanykey\');"  class=textwhite>所有行业分类</a> <a href="http://search.china.alibaba.com/search/company_search.htm?province=%C9%CF%BA%A3&biztype=1" target=_blank onMouseDown="return aliclick(this,\'?tracelog=ui_homepage_searchcompanykey\');" class=textwhite>上海生产型企业</a> <a href="http://search.china.alibaba.com/search/company_search.htm?keywords=%B7%FE%D7%B0" target=_blank onMouseDown="return aliclick(this,\'?tracelog=ui_homepage_searchcompanykey\');" class=textwhite>服装</a> <a href="http://search.china.alibaba.com/search/company_search.htm?keywords=%C0%F1%C6%B7" target=_blank onMouseDown="return aliclick(this,\'?tracelog=ui_homepage_searchcompanykey\');" class=textwhite>礼品</a>'},
{id:4,name:"行情",surl:'热门关键字： <a href="http://p-104304.hotnews.alibaba.com.cn/" target=_blank onMouseDown="return aliclick(this,\'?ui_homepage_searchnewskey\');" class=textwhite>塑料</a> <a href="http://p-cotton.hotnews.alibaba.com.cn/" target=_blank onMouseDown="return aliclick(this,\'?tracelog=ui_homepage_searchnewskey\');" class=textwhite>棉花</a> <a href="http://b-112446.hotnews.alibaba.com.cn/" target=_blank onMouseDown="return aliclick(this,\'?tracelog=ui_homepage_searchnewskey\');" class=textwhite>人才</a> <a href="http://b-112251.hotnews.alibaba.com.cn/" target=_blank onMouseDown="return aliclick(this,\'?tracelog=ui_homepage_searchnewskey\');" class=textwhite>订单</a> <a href="http://b-111663.hotnews.alibaba.com.cn/" target=_blank onMouseDown="return aliclick(this,\'?tracelog=ui_homepage_searchnewskey\');" class=textwhite>理财</a> <a href="http://b-112105.hotnews.alibaba.com.cn/" target=_blank onMouseDown="return aliclick(this,\'?tracelog=ui_homepage_searchnewskey\');" class=textwhite>创业</a> <a href="http://b-112586.hotnews.alibaba.com.cn/" target=_blank onMouseDown="return aliclick(this,\'?tracelog=ui_homepage_searchnewskey\');" class=textwhite>骗术</a> <a href="http://hotnews.alibaba.com.cn/" target=_blank onMouseDown="return aliclick(this,\'?tracelog=ui_homepage_searchnewskey\');" class=textwhite>更多</a>'},
{id:5,name:"经验",surl:'热门关键字： <a href="http://club.china.alibaba.com/club/post/search?keyword=创业" target=_blank onMouseDown="return aliclick(this,\'?tracelog=ui_homepage_searchclubkey\');" class=textwhite>创业</a> <a href="http://club.china.alibaba.com/club/post/search?keyword=财富" target=_blank onMouseDown="return aliclick(this,\'?tracelog=ui_homepage_searchclubkey\');" class=textwhite>财富</a> <a href="http://club.china.alibaba.com/club/post/search?keyword=贸易" target=_blank onMouseDown="return aliclick(this,\'?tracelog=ui_homepage_searchclubkey\');" class=textwhite>贸易</a> <a href="http://club.china.alibaba.com/club/post/search?keyword=物流" target=_blank onMouseDown="return aliclick(this,\'?tracelog=ui_homepage_searchclubkey\');" class=textwhite>物流</a> <a href="http://club.china.alibaba.com/club/post/search?keyword=翻译" target=_blank onMouseDown="return aliclick(this,\'?tracelog=ui_homepage_searchclubkey\');" class=textwhite>翻译</a></a> <a href="http://club.china.alibaba.com/club/post/search?keyword=营销" target=_blank onMouseDown="return aliclick(this,\'?tracelog=ui_homepage_searchclubkey\');" class=textwhite>营销</a> <a href="http://club.china.alibaba.com/club/post/search?keyword=赚钱" target=_blank onMouseDown="return aliclick(this,\'?tracelog=ui_homepage_searchclubkey\');" class=textwhite>赚钱</a> <a href="http://club.china.alibaba.com/html/bbs-paihang.html" target=_blank onMouseDown="return aliclick(this,\'?tracelog=ui_homepage_searchclubkey\');" class=textwhite>更多</a>'},
{id:6,name:"博客",surl:'热门关键字： '},
{id:7,name:"报价",surl:'热门关键字：<a href="http://search.china.alibaba.com/search/business_search.htm?search_type=&keywords=%C0%F1%C6%B7&categoryId=&tracelog=auction_exchannel_search" target=_blank onMouseDown="return aliclick(this,\'?tracelog=ui_homepage_searchbaojiakey\');" class=textwhite>礼品</a> <a href="http://search.china.alibaba.com/search/business_search.htm?search_type=&keywords=%B9%A4%D2%D5%C6%B7&categoryId=&tracelog=auction_exchannel_search" target=_blank onMouseDown="return aliclick(this,\'?tracelog=ui_homepage_searchbaojiakey\');" class=textwhite>工艺品</a> <a href="http://search.china.alibaba.com/search/business_search.htm?search_type=&keywords=T%D0%F4&categoryId=&tracelog=auction_exchannel_search" target=_blank onMouseDown="return aliclick(this,\'?tracelog=ui_homepage_searchbaojiakey\');" class=textwhite>T恤</a> <a href="http://search.china.alibaba.com/search/business_search.htm?search_type=&keywords=%B5%E7%C4%D4&categoryId=&tracelog=auction_exchannel_search" target=_blank onMouseDown="return aliclick(this,\'?tracelog=ui_homepage_searchbaojiakey\');" class=textwhite>电脑</a> <a href="http://search.china.alibaba.com/search/business_search.htm?search_type=&keywords=MP3&categoryId=&tracelog=auction_exchannel_search" target=_blank onMouseDown="return aliclick(this,\'?tracelog=ui_homepage_searchbaojiakey\');" class=textwhite>MP3</a> <a href="http://page.china.alibaba.com/shtml/exchange/exchannel.shtml" target=_blank onMouseDown="return aliclick(this,\'?tracelog=ui_homepage_searchbaojiakey\');" class=textwhite>更多</a>'},
{id:8,name:"代理",surl:'热门关键字：<a href="http://search.china.alibaba.com/search/offer_search.htm?keywords=%BC%D2%BE%D3&direction=sale&categoryId=51" target=_blank onMouseDown="return aliclick(this,\'?tracelog=ui_homepage_searchdailikey\');" class=textwhite>家居</a>  <a href="http://search.china.alibaba.com/search/offer_search.htm?keywords=%B1%A3%BD%A1%C6%B7&direction=sale&categoryId=51" target=_blank onMouseDown="return aliclick(this,\'?tracelog=ui_homepage_searchdailikey\');" class=textwhite>保健品</a> <a href="http://search.china.alibaba.com/search/offer_search.htm?keywords=%C6%FB%C4%A6&direction=sale&categoryId=51" target=_blank onMouseDown="return aliclick(this,\'?tracelog=ui_homepage_searchdailikey\');" class=textwhite>汽摩</a> <a href="http://search.china.alibaba.com/search/offer_search.htm?keywords=%BD%F8%B3%F6%BF%DA&direction=sale&categoryId=51" target=_blank onMouseDown="return aliclick(this,\'?tracelog=ui_homepage_searchdailikey\');" class=textwhite>进出口</a><a href="http://china.alibaba.com/buy/trade/51.html" target=_blank onMouseDown="return aliclick(this,\'?tracelog=ui_homepage_searchdailikey\');" class=textwhite>更多</a>'},
{id:9,name:"加工",surl:'热门关键字：<a href="http://search.china.alibaba.com/search/offer_search.htm?keywords=%B0%FC%D7%B0%D3%A1%CB%A2&direction=sale&categoryId=2805" target="_blank" onMouseDown="return aliclick(this,\'?tracelog=ui_homepage_searchjiagongkey\');" class=textwhite>包装印刷</a> <a href="http://search.china.alibaba.com/search/offer_search.htm?keywords=%CE%E5%BD%F0%BC%D3%B9%A4&direction=sale&categoryId=2805" target="_blank" onMouseDown="return aliclick(this,\'?tracelog=ui_homepage_searchjiagongkey\');" class=textwhite>五金加工</a> <a href="http://search.china.alibaba.com/search/offer_search.htm?keywords=%D0%E5%BB%A8%BC%D3%B9%A4&direction=sale&categoryId=2805" target="_blank" onMouseDown="return aliclick(this,\'?tracelog=ui_homepage_searchjiagongkey\');" class=textwhite>绣花加工</a><a href="http://china.alibaba.com/buy/trade/2805.html" target=_blank onMouseDown="return aliclick(this,\'?tracelog=ui_homepage_searchjiagongkey\');" class="textwhite">更多</a>'},
{id:10,name:"产品",surl:'热门关键字： '},
{id:11,name:"商友",surl:'热门关键字：<a href="http://search.china.alibaba.com/search/profile_search.htm?province=广东" title="广东商友" target="_blank">广东商友</a> <a href="http://search.china.alibaba.com/search/profile_search.htm?province=浙江&city=杭州" title="杭州商友"  target="_blank">杭州商友</a> <a href="http://search.china.alibaba.com/search/profile_search.htm?province=广东&city=深圳" title="深圳商友"  target="_blank">深圳商友</a> <a href="http://search.china.alibaba.com/search/profile_search.htm?goodField=1" title="外贸专家"  target="_blank">外贸专家</a> '},
{id:12,name:"阿里帮帮",surl:'热门关键字：<a href="http://search.china.alibaba.com/search/iask_search.htm?keywords=%BF%CD%BB%A7" target="_blank" >客户</a> <a href="http://search.china.alibaba.com/search/iask_search.htm?keywords=%B7%C0%C6%AD" target="_blank">防骗</a> <a href="http://search.china.alibaba.com/search/iask_search.htm?keywords=%B3%F6%BF%DA" target="_blank">出口</a> <a href="http://search.china.alibaba.com/search/iask_search.htm?keywords=%B6%A9%B5%A5" target="_blank" >订单</a> <a href="http://search.china.alibaba.com/search/iask_search.htm?keywords=%B4%B4%D2%B5" target="_blank" >创业</a> <a href="http://search.china.alibaba.com/search/iask_search.htm?keywords=%BA%CF%CD%AC" target="_blank" >合同</a> <a href="http://search.china.alibaba.com/search/iask_search.htm?keywords=%B2%C9%B9%BA" target="_blank" >采购</a>'}
]
var keys_str = getCookie('h_keys');
if(keys_str != null  )
{
var keys_array = keys_str.split("#");
if(keys_array.length >= 3){
var strlen =0;
var str="最近搜索记录：";
for(var i=0;i<keys_array.length && i<6;i++){
var key = keys_array[i];
if(key.indexOf("[") != -1 && key.indexOf("]") != -1) {
// 兼容老的cookie格式
key = key.substring(0, key.length - 3);
}
strlen = strlen + key.length;
if(strlen < 18){
str+=" <a target=_blank href=http://search.china.alibaba.com/selloffer/"+encodeURI(key)+".html?tracelog=jy_homepage_historyky class=textwhite onMouseDown=\"return aliclick(this,'?tracelog=ui_homepage_searchbuy');\">"+ key +"</a> ";
}
}
linkKeywords[0].surl=str;
linkKeywords[1].surl=str;
}
}
