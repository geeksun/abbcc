function PageListTm(listtype,count,style){
var pagesize=count;
var TMSt=0;
var YAuthened = "0";
var stl  = "";
if(null == style)
stl = "1";
else
stl =style;
for(i=0;i<pagesize;i++){
var  TmState="";
var TListTmStr="";
var WriteStr="";
var TmUsr=ArrayTmUsr[i];
YAuthened = Array3Days[i];
if (TmUsr!="") {
TmState=online[TMSt];	  
TMSt=TMSt+1;}
else{
TmState="";}
TListTmStr=TmRtxInc(ArrayTmUsr[i],listtype,TmState,YAuthened,stl);
var aa=document.getElementById("TmLayer"+i);
if (aa!=null){
aa.innerHTML=TListTmStr;
}
TmState="";
}
}
function IsInstallIM(){
try{
var im  = new ActiveXObject("HCLogin.DetectHcIM");
var ret = im.IMIsStart();
}
catch(e){
return false;
}
return true;
}
function IsInstallQQ(WebCardUrl,toTmUsr,listType,YAuthened,PopStyle){
try{//安装
var xmlhttp1 = new ActiveXObject("HCLogin.DetectHcIM");
var ret;
if ((listType==3)){//采购   		
//window.open("http://my.b2b.hc360.com/b2b/turbine/template/my,pub,tmlist.html?totmusr="+toTmUsr, "_tmuser","toolbar=no,location=no,directories=no,status=no,menubar=no, scrollbars=yes,resizable=no,copyhistory=no,top=1000000,width=319,height=121");	
window.open("http://my.b2b.hc360.com/my/turbine/template/pubinfo,tm,tmlist.html?totmusr="+toTmUsr, "_tmuser","toolbar=no,location=no,directories=no,status=no,menubar=no, scrollbars=yes,resizable=no,copyhistory=no,top=1000000,width=319,height=121");
}
else{//非采购 或 采购日期超过5天
ret = xmlhttp1.IMIsStart();
if(ret == 1){
alert("买卖通IM未运行，请先运行买卖通IM！");
}
else{
xmlhttp1.chat_with_friend(toTmUsr);	
}
}
}
catch(e){//没安装
//if(1 == PopStyle)
window.open("http://www.im.hc360.com/up.html");
//Else
//window.open("http://www.im.hc360.com/up.html", "","toolbar=no,location=no,directories=no,status=no,menubar=no, scrollbars=no,resizable=no,copyhistory=no,width=310,height=156");

//window.open("http://www.im.hc360.com/IM/files/help.html");
}
return false;
}
function TmRtxInc(tmusr,listtype,TmState,YAuthened,style){
var TmShow="1";
//var YAuthened="0";
var ListTmStr="";
var stl = "";
if(null == style)
stl = "1";
else
stl = style;
var webcard="http://my.b2b.hc360.com/b2b/turbine/template/my,pub,tmcard.html?tmusr="+tmusr;
var Sendwebcard=webcard;
if (YAuthened==null){
YAuthened="0";
}
if (TmShow=="1")
{
if (TmState=="1"){      
if( "1" == stl)
ListTmStr="<table id='tmtalk' border='0'cellpadding='0' cellspacing='0' height=10 width='48'><tr><td align=center><img alt='买卖通IM' src='http://www.search.hc360.com/images/b_online.gif' style='cursor:hand' onclick=javascript:IsInstallQQ('"+webcard+"','"+tmusr+"','"+listtype+"','"+YAuthened+"')></td></tr><tr><td align=center valign='bottom'><span style='font-size:9pt;cursor:hand;TEXT-DECORATION: underline' onClick=javascript:IsInstallQQ('"+webcard+"','"+tmusr+"','"+listtype+"','"+YAuthened+"')>跟我洽谈</span></td></tr></table>";
else if( "3" == stl)
ListTmStr="<div><img alt='买卖通IM' src='http://www.search.hc360.com/images/b_online_12.gif' style='cursor:hand' onclick=javascript:IsInstallQQ('"+webcard+"','"+tmusr+"','"+listtype+"','"+YAuthened+"',1)></div>";
else if( "4" == stl)
ListTmStr="<div><TABLE cellSpacing=0 cellPadding=0 width=125 border=0><TR><TD width=32><img alt='买卖通IM' src='http://www.search.hc360.com/images/b_online.gif' style='cursor:hand' onclick=\"javascript:if(!IsInstallIM()){window.open('http://www.im.hc360.com/up.html', '','toolbar=no,location=no,directories=no,status=no,menubar=no, scrollbars=no,resizable=no,copyhistory=no,width=310,height=156');}else{if(confirm('只有买卖通会员才能与此买家通过IM洽谈，立即申请成为买卖通会员！'))window.open('http://my.b2b.hc360.com/my/turbine/template/firstview,apply_mmt.html');}return false;\"></td><td><a href=\"http://my.b2b.hc360.com/my/turbine/template/firstview,apply_mmt.html\" onclick=\"javascript:if(!IsInstallIM()){window.open('http://www.im.hc360.com/up.html', '','toolbar=no,location=no,directories=no,status=no,menubar=no, scrollbars=no,resizable=no,copyhistory=no,width=310,height=156');}else{if(confirm('只有买卖通会员才能与此买家通过IM洽谈，立即申请成为买卖通会员！'))window.open('http://my.b2b.hc360.com/my/turbine/template/firstview,apply_mmt.html');}return false;\">我正在网上<BR>马上和我洽谈!</a></TD></TR></TABLE>";
else if( "5" == stl)
ListTmStr="<div><img alt='买卖通IM' src='http://www.search.hc360.com/images/b_online.gif' style='cursor:hand' onclick=javascript:IsInstallQQ('"+webcard+"','"+tmusr+"','"+listtype+"','"+YAuthened+"',1)></div><span style='font-size:9pt;cursor:hand;TEXT-DECORATION: underline' onClick=javascript:IsInstallQQ('"+webcard+"','"+tmusr+"','"+listtype+"','"+YAuthened+"',1)>跟我洽谈</span>";
else  
ListTmStr="<div><img alt='买卖通IM' src='http://www.search.hc360.com/images/b_online.gif' style='cursor:hand' onclick=javascript:IsInstallQQ('"+webcard+"','"+tmusr+"','"+listtype+"','"+YAuthened+"')></div><span style='font-size:9pt;cursor:hand;TEXT-DECORATION: underline' onClick=javascript:IsInstallQQ('"+webcard+"','"+tmusr+"','"+listtype+"','"+YAuthened+"')>跟我洽谈</span>";
}
else{
if (TmState=="0"){
if( "1" == stl)
ListTmStr="<table id='tmtalk' border='0'cellpadding='0' cellspacing='0' height=10 width='48'><tr><td align=center><img alt='买卖通IM' src='http://www.search.hc360.com/images/b_offline.gif' style='cursor:hand'  onClick=javascript:IsInstallQQ('"+webcard+"','"+tmusr+"','"+listtype+"','"+YAuthened+"')></td></tr><tr><td align=center valign=bottom><span style='font-size:9pt;cursor:hand;TEXT-DECORATION: underline' onclick=javascript:IsInstallQQ('"+webcard+"','"+tmusr+"','"+listtype+"','"+YAuthened+"')>给我留言</span></td></tr></table>";     
else if( "3" == stl)
ListTmStr="<div><img alt='买卖通IM' src='http://www.search.hc360.com/images/b_offline_12.gif' style='cursor:hand' onclick=javascript:IsInstallQQ('"+webcard+"','"+tmusr+"','"+listtype+"','"+YAuthened+"',1)></div>";
else if( "4" == stl)
ListTmStr="<div><img alt='买卖通IM' src='http://www.search.hc360.com/images/b_offline.gif' style='cursor:hand' onclick=\"javascript:if(!IsInstallIM()){window.open('http://www.im.hc360.com/up.html', '','toolbar=no,location=no,directories=no,status=no,menubar=no, scrollbars=no,resizable=no,copyhistory=no,width=310,height=156');}else{if(confirm('只有买卖通会员才能与此买家通过IM洽谈，立即申请成为买卖通会员！'))window.open('http://my.b2b.hc360.com/my/turbine/template/firstview,apply_mmt.html');}return false;\"></div><span style='font-size:9pt;cursor:hand;TEXT-DECORATION: underline' onclick=\"javascript:if(!IsInstallIM()){window.open('http://www.im.hc360.com/up.html', '','toolbar=no,location=no,directories=no,status=no,menubar=no, scrollbars=no,resizable=no,copyhistory=no,width=310,height=156');}else{if(confirm('只有买卖通会员才能与此买家通过IM洽谈，立即申请成为买卖通会员！'))window.open('http://my.b2b.hc360.com/my/turbine/template/firstview,apply_mmt.html');}return false;\">给我留言</span>";
else if( "5" == stl)
ListTmStr="<div><img alt='买卖通IM' src='http://www.search.hc360.com/images/b_offline.gif' style='cursor:hand'  onClick=javascript:IsInstallQQ('"+webcard+"','"+tmusr+"','"+listtype+"','"+YAuthened+"',1)></div><span style='font-size:9pt;cursor:hand;TEXT-DECORATION: underline' onclick=javascript:IsInstallQQ('"+webcard+"','"+tmusr+"','"+listtype+"','"+YAuthened+"',1)>给我留言</span>";     
else
ListTmStr="<div><img alt='买卖通IM' src='http://www.search.hc360.com/images/b_offline.gif' style='cursor:hand'  onClick=javascript:IsInstallQQ('"+webcard+"','"+tmusr+"','"+listtype+"','"+YAuthened+"')></div><span style='font-size:9pt;cursor:hand;TEXT-DECORATION: underline' onclick=javascript:IsInstallQQ('"+webcard+"','"+tmusr+"','"+listtype+"','"+YAuthened+"')>给我留言</span>";     
}
else
{
ListTmStr="<div>未安装</div>" ; 
}
}
}   //TMSHOW
return ListTmStr;
}
function dealURL(urlobj){//
}
function searchon(tmpword){
if (frmsearch.word.value==""){
alert("请输入关键字！");
frmsearch.word.focus();
return false;
}
frmsearch.word.value = tmpword + " " + frmsearch.word.value;
frmsearch.submit();}
function searchonsubmit(thisform){
if (thisform.word.value=="" || thisform.word.value=="输入关键字"){
alert("请输入关键字！");
thisform.word.focus();
return false;
}
return true;
}