/*
* ����˵����ѡ����������
* ������	actionUrl:����Ŀ��ҳ�桡��tracelog:���ٲ���
* ����ֵ��	��
* ʱ�䣺2005-5-12
*modify
*ʱ��:20061109
*˵��:����getElementById
*modify
*ʱ��:20061123
*˵��:�ṹ������3������
*/
var searchActivedItem=1;
var tracelogStr="";
var otherParamStr="";
var searchFormObj = null;
var tracelogInput = null;
//�ṹ������
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
srcObj.className = "activedTab";//TAB�л�
if(document.getElementById("linkKwords"))document.getElementById("linkKwords").innerHTML = linkKeywords[searchID-1].surl//���Źؼ��ָ�ֵ
var v = searchFormObj.keywords.value;
if(trim(v) == "" || v.substring(0,3) =="������"){searchFormObj.keywords.value = data[searchID-1].title;searchFormObj.keywords.title = data[searchID-1].title}
}
function checkform(){
var v = trim(searchFormObj.keywords.value);
if(v.length > 100){
alert("������Ĺؼ��ֹ�����");
return false;
}
if(v == ""  || v.substring(0,3) =="������") {
alert("������ؼ��֣�");
return false;
}
var s ="&";
if((data[searchActivedItem-1].surl).indexOf("?")==-1)s="?";
if(searchActivedItem == 11){
var action_url = data[searchActivedItem-1].surl + "?keywords="+searchFormObj.keywords.value+"&action=BusinessFriendSearchBar&event_submit_do_searchFriendBar=true&searchType=1&tracelog="+tracelogStr+data[searchActivedItem-1].tracelog+otherParamStr;}
else{
var action_url = data[searchActivedItem-1].surl + s + "keywords=" + searchFormObj.keywords.value + "&tracelog="+tracelogStr+data[searchActivedItem-1].tracelog+otherParamStr;}
searchFormObj.action = action_url; //��form��action��ֵ
if(tracelogInput!=null)tracelogInput.value=tracelogStr+data[searchActivedItem-1].tracelog;//��form��tracelog��ֵ
}
/*
* ����˵����ȥ��ͷβ�ո�
* ������	�ַ���
* ����ֵ��	��
* ʱ�䣺2005-5-12
*/
function trim(inputString) {
return inputString.replace(/^ +/,"").replace(/ +$/,"");
}
function focusit(o){
if("������"==o.value.substring(0,3)){
o.value = "";
}
}
function blurit(o){
if(""==o.value){
o.value =o.title;
}
}
/*
* ����˵����ȡcookieֵ
* ������	cookie�ֶ���
* ����ֵ��	cookieֵ
* ʱ�䣺2005-5-12
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
/*��������*/
var data = [
{id:1,name:"��Ӧ",surl:"http://search.china.alibaba.com/search/offer_search.htm" , title:"������������Ȥ�Ĳ�Ʒ���ƣ�" , tracelog:"searchbuyer"},
{id:2,name:"��",surl:"http://search.china.alibaba.com/search/search.htm" , title:"������������Ȥ�Ĳ�Ʒ���ƣ�", tracelog:"searchsale"},
{id:3,name:"��˾",surl:"http://search.china.alibaba.com/search/company_search.htm" , title:"�������Ʒ����˾���ؼ��ʣ�" , tracelog:"searchcom"},
{id:4,name:"����",surl:"http://search.china.alibaba.com/search/news_search.htm",title:"�������Ʒ�ؼ��֣��鿴���µĲ�Ʒ���飡" , tracelog:"searchinfor"},
{id:5,name:"����",surl:"http://search.china.alibaba.com/search/forum_search.htm" , title:"��������ҵ����ؼ��ʣ��鿴���̾�Ӫ֮����" , tracelog:"searchclub"},
{id:6,name:"����",surl:"http://search.china.alibaba.com/search/blog_search.htm" , title:"������������Ȥ�Ĺؼ��ʲ������ӣ�",tracelog:"searchblog"},
{id:7,name:"����",surl:"http://search.china.alibaba.com/search/business_search.htm" , title:"�������Ʒ�ؼ��ʲ�����ر�����Ϣ��" , tracelog:"searchbaojia"},
{id:8,name:"����",surl:"http://search.china.alibaba.com/search/offer_search.htm?categoryId=51" , title:"�������Ʒ�ؼ��ʲ�����ش�����Ϣ��" , tracelog:"searchdaili"},
{id:9,name:"�ӹ�",surl:"http://search.china.alibaba.com/search/offer_search.htm?categoryId=2805" , title:"�������Ʒ�ؼ��ʲ�����ؼӹ���Ϣ��" , tracelog:"searchjiagong"},
{id:10,name:"��Ʒ",surl:"http://search.china.alibaba.com/search/sample_search.htm" , title:"�������Ʒ�ؼ��ʲ�����ز�Ʒ��Ϣ��" , tracelog:"searchsample"},
{id:11,name:"����",surl:"http://search.china.alibaba.com/search/profile_search.htm" , title:"���������ѵ����ƹ�˾��ҵ�����Թؼ��ʣ��ҵ������ҵ��ˣ�" , tracelog:"searchfriend"},
{id:12,name:"������",surl:"http://search.china.alibaba.com/search/iask_search.htm" , title:"��������������ؼ��֣�ǧ�����̰�����" , tracelog:"searchhelp"}
]
/*���Źؼ���*/
var linkKeywords = [
{id:1,name:"��Ӧ",surl:"���Źؼ��֣�<a href=\"http://search.china.alibaba.com/selloffer/%E5%9D%AF%E5%B8%83.html\" target=_blank onMouseDown=\"return aliclick(this,'?tracelog=ui_homepage_searchbuykey');\" class=textwhite>����</a> <a href=\"http://search.china.alibaba.com/selloffer/%E5%B7%A5%E8%89%BA%E5%93%81.html\" target=_blank onMouseDown=\"return aliclick(this,'?tracelog=ui_homepage_searchbuykey');\" class=textwhite>����Ʒ</a> <a href=\"http://search.china.alibaba.com/selloffer/%E6%9A%96%E6%B0%94%E7%89%87.html\" target=_blank onMouseDown=\"return aliclick(this,'?tracelog=ui_homepage_searchbuykey');\" class=textwhite>ů��Ƭ</a>  <a href=\"http://search.china.alibaba.com/selloffer/%E9%92%A3%E9%87%91.html\" target=_blank onMouseDown=\"return aliclick(this,'?tracelog=ui_homepage_searchbuykey');\" class=textwhite>�ӽ�</a> <a href=\"http://search.china.alibaba.com/selloffer/%E5%B0%BC%E9%BE%99%E7%AE%A1.html\" target=_blank onMouseDown=\"return aliclick(this,'?tracelog=ui_homepage_searchbuykey');\" class=textwhite>������</a>"},
{id:2,name:"��",surl:"���Źؼ��֣�<a href=\"http://search.china.alibaba.com/buyoffer/%E8%B8%8F%E6%AD%A5%E6%9C%BA.html?bidding=hothome\" target=_blank onMouseDown=\"return aliclick(this,'?tracelog=ui_homepage_searchsellerkey');\" class=textwhite>̤����</a> <a href=\"http://search.china.alibaba.com/buyoffer/MP3.html?bidding=hothome\" target=_blank onMouseDown=\"return aliclick(this,'?tracelog=ui_homepage_searchsellerkey');\" class=textwhite>MP3</a> <a href=\"http://search.china.alibaba.com/buyoffer/%E7%A4%BC%E5%93%81.html?bidding=hothome\" target=_blank onMouseDown=\"return aliclick(this,'?tracelog=ui_homepage_searchsellerkey');\" class=textwhite>��Ʒ</a> <a href=\"http://search.china.alibaba.com/buyoffer/%E5%8E%8B%E7%BC%A9%E6%AF%9B%E5%B7%BE.html?bidding=hothome\" target=_blank onMouseDown=\"return aliclick(this,'?tracelog=ui_homepage_searchsellerkey');\" class=textwhite>ѹ��ë��</a> </a><a href=\"http://search.china.alibaba.com/buyoffer/%E6%A8%A1%E5%85%B7.html?bidding=hothome\" target=_blank onMouseDown=\"return aliclick(this,'?tracelog=ui_homepage_searchsellerkey');\" class=textwhite>ģ��</a> <a href=\"http://search.china.alibaba.com/buyoffer/%E6%89%8B%E8%A1%A8.html?bidding=hothome\" target=_blank onMouseDown=\"return aliclick(this,'?tracelog=ui_homepage_searchsellerkey');\" class=textwhite>�ֱ�</a> <a href=\"http://search.china.alibaba.com/buyoffer/MP4.html?bidding=hothome\" target=_blank onMouseDown=\"return aliclick(this,'?tracelog=ui_homepage_searchsellerkey');\" class=textwhite>MP4</a> "},
{id:3,name:"��˾",surl:'���Źؼ��֣�<a href="http://china.alibaba.com/company/index.html" target=_blank onMouseDown="return aliclick(this,\'?tracelog=ui_homepage_searchcompanykey\');"  class=textwhite>������ҵ����</a> <a href="http://search.china.alibaba.com/search/company_search.htm?province=%C9%CF%BA%A3&biztype=1" target=_blank onMouseDown="return aliclick(this,\'?tracelog=ui_homepage_searchcompanykey\');" class=textwhite>�Ϻ���������ҵ</a> <a href="http://search.china.alibaba.com/search/company_search.htm?keywords=%B7%FE%D7%B0" target=_blank onMouseDown="return aliclick(this,\'?tracelog=ui_homepage_searchcompanykey\');" class=textwhite>��װ</a> <a href="http://search.china.alibaba.com/search/company_search.htm?keywords=%C0%F1%C6%B7" target=_blank onMouseDown="return aliclick(this,\'?tracelog=ui_homepage_searchcompanykey\');" class=textwhite>��Ʒ</a>'},
{id:4,name:"����",surl:'���Źؼ��֣� <a href="http://p-104304.hotnews.alibaba.com.cn/" target=_blank onMouseDown="return aliclick(this,\'?ui_homepage_searchnewskey\');" class=textwhite>����</a> <a href="http://p-cotton.hotnews.alibaba.com.cn/" target=_blank onMouseDown="return aliclick(this,\'?tracelog=ui_homepage_searchnewskey\');" class=textwhite>�޻�</a> <a href="http://b-112446.hotnews.alibaba.com.cn/" target=_blank onMouseDown="return aliclick(this,\'?tracelog=ui_homepage_searchnewskey\');" class=textwhite>�˲�</a> <a href="http://b-112251.hotnews.alibaba.com.cn/" target=_blank onMouseDown="return aliclick(this,\'?tracelog=ui_homepage_searchnewskey\');" class=textwhite>����</a> <a href="http://b-111663.hotnews.alibaba.com.cn/" target=_blank onMouseDown="return aliclick(this,\'?tracelog=ui_homepage_searchnewskey\');" class=textwhite>���</a> <a href="http://b-112105.hotnews.alibaba.com.cn/" target=_blank onMouseDown="return aliclick(this,\'?tracelog=ui_homepage_searchnewskey\');" class=textwhite>��ҵ</a> <a href="http://b-112586.hotnews.alibaba.com.cn/" target=_blank onMouseDown="return aliclick(this,\'?tracelog=ui_homepage_searchnewskey\');" class=textwhite>ƭ��</a> <a href="http://hotnews.alibaba.com.cn/" target=_blank onMouseDown="return aliclick(this,\'?tracelog=ui_homepage_searchnewskey\');" class=textwhite>����</a>'},
{id:5,name:"����",surl:'���Źؼ��֣� <a href="http://club.china.alibaba.com/club/post/search?keyword=��ҵ" target=_blank onMouseDown="return aliclick(this,\'?tracelog=ui_homepage_searchclubkey\');" class=textwhite>��ҵ</a> <a href="http://club.china.alibaba.com/club/post/search?keyword=�Ƹ�" target=_blank onMouseDown="return aliclick(this,\'?tracelog=ui_homepage_searchclubkey\');" class=textwhite>�Ƹ�</a> <a href="http://club.china.alibaba.com/club/post/search?keyword=ó��" target=_blank onMouseDown="return aliclick(this,\'?tracelog=ui_homepage_searchclubkey\');" class=textwhite>ó��</a> <a href="http://club.china.alibaba.com/club/post/search?keyword=����" target=_blank onMouseDown="return aliclick(this,\'?tracelog=ui_homepage_searchclubkey\');" class=textwhite>����</a> <a href="http://club.china.alibaba.com/club/post/search?keyword=����" target=_blank onMouseDown="return aliclick(this,\'?tracelog=ui_homepage_searchclubkey\');" class=textwhite>����</a></a> <a href="http://club.china.alibaba.com/club/post/search?keyword=Ӫ��" target=_blank onMouseDown="return aliclick(this,\'?tracelog=ui_homepage_searchclubkey\');" class=textwhite>Ӫ��</a> <a href="http://club.china.alibaba.com/club/post/search?keyword=׬Ǯ" target=_blank onMouseDown="return aliclick(this,\'?tracelog=ui_homepage_searchclubkey\');" class=textwhite>׬Ǯ</a> <a href="http://club.china.alibaba.com/html/bbs-paihang.html" target=_blank onMouseDown="return aliclick(this,\'?tracelog=ui_homepage_searchclubkey\');" class=textwhite>����</a>'},
{id:6,name:"����",surl:'���Źؼ��֣� '},
{id:7,name:"����",surl:'���Źؼ��֣�<a href="http://search.china.alibaba.com/search/business_search.htm?search_type=&keywords=%C0%F1%C6%B7&categoryId=&tracelog=auction_exchannel_search" target=_blank onMouseDown="return aliclick(this,\'?tracelog=ui_homepage_searchbaojiakey\');" class=textwhite>��Ʒ</a> <a href="http://search.china.alibaba.com/search/business_search.htm?search_type=&keywords=%B9%A4%D2%D5%C6%B7&categoryId=&tracelog=auction_exchannel_search" target=_blank onMouseDown="return aliclick(this,\'?tracelog=ui_homepage_searchbaojiakey\');" class=textwhite>����Ʒ</a> <a href="http://search.china.alibaba.com/search/business_search.htm?search_type=&keywords=T%D0%F4&categoryId=&tracelog=auction_exchannel_search" target=_blank onMouseDown="return aliclick(this,\'?tracelog=ui_homepage_searchbaojiakey\');" class=textwhite>T��</a> <a href="http://search.china.alibaba.com/search/business_search.htm?search_type=&keywords=%B5%E7%C4%D4&categoryId=&tracelog=auction_exchannel_search" target=_blank onMouseDown="return aliclick(this,\'?tracelog=ui_homepage_searchbaojiakey\');" class=textwhite>����</a> <a href="http://search.china.alibaba.com/search/business_search.htm?search_type=&keywords=MP3&categoryId=&tracelog=auction_exchannel_search" target=_blank onMouseDown="return aliclick(this,\'?tracelog=ui_homepage_searchbaojiakey\');" class=textwhite>MP3</a> <a href="http://page.china.alibaba.com/shtml/exchange/exchannel.shtml" target=_blank onMouseDown="return aliclick(this,\'?tracelog=ui_homepage_searchbaojiakey\');" class=textwhite>����</a>'},
{id:8,name:"����",surl:'���Źؼ��֣�<a href="http://search.china.alibaba.com/search/offer_search.htm?keywords=%BC%D2%BE%D3&direction=sale&categoryId=51" target=_blank onMouseDown="return aliclick(this,\'?tracelog=ui_homepage_searchdailikey\');" class=textwhite>�Ҿ�</a>  <a href="http://search.china.alibaba.com/search/offer_search.htm?keywords=%B1%A3%BD%A1%C6%B7&direction=sale&categoryId=51" target=_blank onMouseDown="return aliclick(this,\'?tracelog=ui_homepage_searchdailikey\');" class=textwhite>����Ʒ</a> <a href="http://search.china.alibaba.com/search/offer_search.htm?keywords=%C6%FB%C4%A6&direction=sale&categoryId=51" target=_blank onMouseDown="return aliclick(this,\'?tracelog=ui_homepage_searchdailikey\');" class=textwhite>��Ħ</a> <a href="http://search.china.alibaba.com/search/offer_search.htm?keywords=%BD%F8%B3%F6%BF%DA&direction=sale&categoryId=51" target=_blank onMouseDown="return aliclick(this,\'?tracelog=ui_homepage_searchdailikey\');" class=textwhite>������</a><a href="http://china.alibaba.com/buy/trade/51.html" target=_blank onMouseDown="return aliclick(this,\'?tracelog=ui_homepage_searchdailikey\');" class=textwhite>����</a>'},
{id:9,name:"�ӹ�",surl:'���Źؼ��֣�<a href="http://search.china.alibaba.com/search/offer_search.htm?keywords=%B0%FC%D7%B0%D3%A1%CB%A2&direction=sale&categoryId=2805" target="_blank" onMouseDown="return aliclick(this,\'?tracelog=ui_homepage_searchjiagongkey\');" class=textwhite>��װӡˢ</a> <a href="http://search.china.alibaba.com/search/offer_search.htm?keywords=%CE%E5%BD%F0%BC%D3%B9%A4&direction=sale&categoryId=2805" target="_blank" onMouseDown="return aliclick(this,\'?tracelog=ui_homepage_searchjiagongkey\');" class=textwhite>���ӹ�</a> <a href="http://search.china.alibaba.com/search/offer_search.htm?keywords=%D0%E5%BB%A8%BC%D3%B9%A4&direction=sale&categoryId=2805" target="_blank" onMouseDown="return aliclick(this,\'?tracelog=ui_homepage_searchjiagongkey\');" class=textwhite>�廨�ӹ�</a><a href="http://china.alibaba.com/buy/trade/2805.html" target=_blank onMouseDown="return aliclick(this,\'?tracelog=ui_homepage_searchjiagongkey\');" class="textwhite">����</a>'},
{id:10,name:"��Ʒ",surl:'���Źؼ��֣� '},
{id:11,name:"����",surl:'���Źؼ��֣�<a href="http://search.china.alibaba.com/search/profile_search.htm?province=�㶫" title="�㶫����" target="_blank">�㶫����</a> <a href="http://search.china.alibaba.com/search/profile_search.htm?province=�㽭&city=����" title="��������"  target="_blank">��������</a> <a href="http://search.china.alibaba.com/search/profile_search.htm?province=�㶫&city=����" title="��������"  target="_blank">��������</a> <a href="http://search.china.alibaba.com/search/profile_search.htm?goodField=1" title="��óר��"  target="_blank">��óר��</a> '},
{id:12,name:"������",surl:'���Źؼ��֣�<a href="http://search.china.alibaba.com/search/iask_search.htm?keywords=%BF%CD%BB%A7" target="_blank" >�ͻ�</a> <a href="http://search.china.alibaba.com/search/iask_search.htm?keywords=%B7%C0%C6%AD" target="_blank">��ƭ</a> <a href="http://search.china.alibaba.com/search/iask_search.htm?keywords=%B3%F6%BF%DA" target="_blank">����</a> <a href="http://search.china.alibaba.com/search/iask_search.htm?keywords=%B6%A9%B5%A5" target="_blank" >����</a> <a href="http://search.china.alibaba.com/search/iask_search.htm?keywords=%B4%B4%D2%B5" target="_blank" >��ҵ</a> <a href="http://search.china.alibaba.com/search/iask_search.htm?keywords=%BA%CF%CD%AC" target="_blank" >��ͬ</a> <a href="http://search.china.alibaba.com/search/iask_search.htm?keywords=%B2%C9%B9%BA" target="_blank" >�ɹ�</a>'}
]
var keys_str = getCookie('h_keys');
if(keys_str != null  )
{
var keys_array = keys_str.split("#");
if(keys_array.length >= 3){
var strlen =0;
var str="���������¼��";
for(var i=0;i<keys_array.length && i<6;i++){
var key = keys_array[i];
if(key.indexOf("[") != -1 && key.indexOf("]") != -1) {
// �����ϵ�cookie��ʽ
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
