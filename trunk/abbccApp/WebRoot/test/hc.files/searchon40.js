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
try{//��װ
var xmlhttp1 = new ActiveXObject("HCLogin.DetectHcIM");
var ret;
if ((listType==3)){//�ɹ�   		
//window.open("http://my.b2b.hc360.com/b2b/turbine/template/my,pub,tmlist.html?totmusr="+toTmUsr, "_tmuser","toolbar=no,location=no,directories=no,status=no,menubar=no, scrollbars=yes,resizable=no,copyhistory=no,top=1000000,width=319,height=121");	
window.open("http://my.b2b.hc360.com/my/turbine/template/pubinfo,tm,tmlist.html?totmusr="+toTmUsr, "_tmuser","toolbar=no,location=no,directories=no,status=no,menubar=no, scrollbars=yes,resizable=no,copyhistory=no,top=1000000,width=319,height=121");
}
else{//�ǲɹ� �� �ɹ����ڳ���5��
ret = xmlhttp1.IMIsStart();
if(ret == 1){
alert("����ͨIMδ���У�������������ͨIM��");
}
else{
xmlhttp1.chat_with_friend(toTmUsr);	
}
}
}
catch(e){//û��װ
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
ListTmStr="<table id='tmtalk' border='0'cellpadding='0' cellspacing='0' height=10 width='48'><tr><td align=center><img alt='����ͨIM' src='http://www.search.hc360.com/images/b_online.gif' style='cursor:hand' onclick=javascript:IsInstallQQ('"+webcard+"','"+tmusr+"','"+listtype+"','"+YAuthened+"')></td></tr><tr><td align=center valign='bottom'><span style='font-size:9pt;cursor:hand;TEXT-DECORATION: underline' onClick=javascript:IsInstallQQ('"+webcard+"','"+tmusr+"','"+listtype+"','"+YAuthened+"')>����Ǣ̸</span></td></tr></table>";
else if( "3" == stl)
ListTmStr="<div><img alt='����ͨIM' src='http://www.search.hc360.com/images/b_online_12.gif' style='cursor:hand' onclick=javascript:IsInstallQQ('"+webcard+"','"+tmusr+"','"+listtype+"','"+YAuthened+"',1)></div>";
else if( "4" == stl)
ListTmStr="<div><TABLE cellSpacing=0 cellPadding=0 width=125 border=0><TR><TD width=32><img alt='����ͨIM' src='http://www.search.hc360.com/images/b_online.gif' style='cursor:hand' onclick=\"javascript:if(!IsInstallIM()){window.open('http://www.im.hc360.com/up.html', '','toolbar=no,location=no,directories=no,status=no,menubar=no, scrollbars=no,resizable=no,copyhistory=no,width=310,height=156');}else{if(confirm('ֻ������ͨ��Ա����������ͨ��IMǢ̸�����������Ϊ����ͨ��Ա��'))window.open('http://my.b2b.hc360.com/my/turbine/template/firstview,apply_mmt.html');}return false;\"></td><td><a href=\"http://my.b2b.hc360.com/my/turbine/template/firstview,apply_mmt.html\" onclick=\"javascript:if(!IsInstallIM()){window.open('http://www.im.hc360.com/up.html', '','toolbar=no,location=no,directories=no,status=no,menubar=no, scrollbars=no,resizable=no,copyhistory=no,width=310,height=156');}else{if(confirm('ֻ������ͨ��Ա����������ͨ��IMǢ̸�����������Ϊ����ͨ��Ա��'))window.open('http://my.b2b.hc360.com/my/turbine/template/firstview,apply_mmt.html');}return false;\">����������<BR>���Ϻ���Ǣ̸!</a></TD></TR></TABLE>";
else if( "5" == stl)
ListTmStr="<div><img alt='����ͨIM' src='http://www.search.hc360.com/images/b_online.gif' style='cursor:hand' onclick=javascript:IsInstallQQ('"+webcard+"','"+tmusr+"','"+listtype+"','"+YAuthened+"',1)></div><span style='font-size:9pt;cursor:hand;TEXT-DECORATION: underline' onClick=javascript:IsInstallQQ('"+webcard+"','"+tmusr+"','"+listtype+"','"+YAuthened+"',1)>����Ǣ̸</span>";
else  
ListTmStr="<div><img alt='����ͨIM' src='http://www.search.hc360.com/images/b_online.gif' style='cursor:hand' onclick=javascript:IsInstallQQ('"+webcard+"','"+tmusr+"','"+listtype+"','"+YAuthened+"')></div><span style='font-size:9pt;cursor:hand;TEXT-DECORATION: underline' onClick=javascript:IsInstallQQ('"+webcard+"','"+tmusr+"','"+listtype+"','"+YAuthened+"')>����Ǣ̸</span>";
}
else{
if (TmState=="0"){
if( "1" == stl)
ListTmStr="<table id='tmtalk' border='0'cellpadding='0' cellspacing='0' height=10 width='48'><tr><td align=center><img alt='����ͨIM' src='http://www.search.hc360.com/images/b_offline.gif' style='cursor:hand'  onClick=javascript:IsInstallQQ('"+webcard+"','"+tmusr+"','"+listtype+"','"+YAuthened+"')></td></tr><tr><td align=center valign=bottom><span style='font-size:9pt;cursor:hand;TEXT-DECORATION: underline' onclick=javascript:IsInstallQQ('"+webcard+"','"+tmusr+"','"+listtype+"','"+YAuthened+"')>��������</span></td></tr></table>";     
else if( "3" == stl)
ListTmStr="<div><img alt='����ͨIM' src='http://www.search.hc360.com/images/b_offline_12.gif' style='cursor:hand' onclick=javascript:IsInstallQQ('"+webcard+"','"+tmusr+"','"+listtype+"','"+YAuthened+"',1)></div>";
else if( "4" == stl)
ListTmStr="<div><img alt='����ͨIM' src='http://www.search.hc360.com/images/b_offline.gif' style='cursor:hand' onclick=\"javascript:if(!IsInstallIM()){window.open('http://www.im.hc360.com/up.html', '','toolbar=no,location=no,directories=no,status=no,menubar=no, scrollbars=no,resizable=no,copyhistory=no,width=310,height=156');}else{if(confirm('ֻ������ͨ��Ա����������ͨ��IMǢ̸�����������Ϊ����ͨ��Ա��'))window.open('http://my.b2b.hc360.com/my/turbine/template/firstview,apply_mmt.html');}return false;\"></div><span style='font-size:9pt;cursor:hand;TEXT-DECORATION: underline' onclick=\"javascript:if(!IsInstallIM()){window.open('http://www.im.hc360.com/up.html', '','toolbar=no,location=no,directories=no,status=no,menubar=no, scrollbars=no,resizable=no,copyhistory=no,width=310,height=156');}else{if(confirm('ֻ������ͨ��Ա����������ͨ��IMǢ̸�����������Ϊ����ͨ��Ա��'))window.open('http://my.b2b.hc360.com/my/turbine/template/firstview,apply_mmt.html');}return false;\">��������</span>";
else if( "5" == stl)
ListTmStr="<div><img alt='����ͨIM' src='http://www.search.hc360.com/images/b_offline.gif' style='cursor:hand'  onClick=javascript:IsInstallQQ('"+webcard+"','"+tmusr+"','"+listtype+"','"+YAuthened+"',1)></div><span style='font-size:9pt;cursor:hand;TEXT-DECORATION: underline' onclick=javascript:IsInstallQQ('"+webcard+"','"+tmusr+"','"+listtype+"','"+YAuthened+"',1)>��������</span>";     
else
ListTmStr="<div><img alt='����ͨIM' src='http://www.search.hc360.com/images/b_offline.gif' style='cursor:hand'  onClick=javascript:IsInstallQQ('"+webcard+"','"+tmusr+"','"+listtype+"','"+YAuthened+"')></div><span style='font-size:9pt;cursor:hand;TEXT-DECORATION: underline' onclick=javascript:IsInstallQQ('"+webcard+"','"+tmusr+"','"+listtype+"','"+YAuthened+"')>��������</span>";     
}
else
{
ListTmStr="<div>δ��װ</div>" ; 
}
}
}   //TMSHOW
return ListTmStr;
}
function dealURL(urlobj){//
}
function searchon(tmpword){
if (frmsearch.word.value==""){
alert("������ؼ��֣�");
frmsearch.word.focus();
return false;
}
frmsearch.word.value = tmpword + " " + frmsearch.word.value;
frmsearch.submit();}
function searchonsubmit(thisform){
if (thisform.word.value=="" || thisform.word.value=="����ؼ���"){
alert("������ؼ��֣�");
thisform.word.focus();
return false;
}
return true;
}