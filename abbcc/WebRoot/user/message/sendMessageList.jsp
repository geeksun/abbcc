<%@ page contentType="text/html; charset=GBK" %>
<%@page import="java.util.List" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<%
		String path = request.getContextPath();	
 %>
<head>
<title>�ҷ���������</title>
<SCRIPT language=JavaScript src="link/aliclick.js"></SCRIPT>
<SCRIPT src="link/search.js" type=text/javascript charset=gb2312></SCRIPT>
<SCRIPT src="link/AlicnTree.js" type=text/javascript></SCRIPT>

<LINK rev=stylesheet href="link/AlicnTree.css" type=text/css rel=stylesheet>
<LINK rev=stylesheet href="link/myali_search_v02.css" type=text/css rel=stylesheet>
<LINK rev=stylesheet href="link/mainframe.css" type=text/css rel=stylesheet>
<LINK rev=stylesheet href="link/content.css" type=text/css rel=stylesheet>
</head>
<body>
<SCRIPT>
function clickTrace(tracelog) {
	(new Image()).src="http://page.china.alibaba.com/stat/stat1.html?tracelog="+tracelog;
}
</SCRIPT>

<DIV id=overDiv style="Z-INDEX: 1; POSITION: absolute"></DIV>
<SCRIPT language=JavaScript src="link/myalibaba.js"></SCRIPT>

<SCRIPT language=JavaScript>
	function openwindow(url) {
	window.open(url,"_self");
	}
	function opennewwindow(url) {
	window.open(url);
	}
</SCRIPT>

<SCRIPT language=JavaScript>
	/**
	* �� checkbox ���з���ѡ��
	*
	* @author: fh
	*/
	function checkAll(box1) {
		var ids = document.getElementsByName("messageIds");
		if (ids != null) {
			for (i=0; i<ids.length; i++) {
				var obj = ids(i);
				obj.checked = box1.checked;
			}
		}
	}
	
	/**
	* �ж��Ƿ�ѡ���� checkbox��
	*
	* @author: fh
	*/
	function deleteCheckedMessage() {
	
		var checkCount = 0;
		var ids = document.getElementsByName("messageIds");
		for(i=0; i<ids.length; i ++) {
			if (ids(i).checked) {
				checkCount ++;
			}
		}
		if (checkCount == 0) {
			alert("��ѡ��Ҫɾ�������ԣ�");
			return false;
		} else {
			if (confirm("��ȷ��Ҫɾ���� " + checkCount + " ��������")) {
				//document.messageForm.submit();
				clickTrace('po_messagesend_delete')
				document.messageForm.action.value = "message_action";
				document.messageForm.submit();
			} else {
				return false;
			}
		}
	}
	
	function onMessageSubmit(thisform){
		if(thisform.keyword.value == '���������Ա���Ĺؼ���'){
			thisform.keyword.value = '';
		}
		return true;
	}
</SCRIPT>

<TABLE cellSpacing=0 cellPadding=0 width="100%" border=0>
  <TBODY>
  <TR>
    <TD class=bigtitle width="53%">�ҷ���������</TD>
    <TD align=right width="47%">&nbsp;</TD></TR></TBODY></TABLE><BR>
<SCRIPT>
function clickTrace(tracelog) {
	(new Image()).src="http://page.china.alibaba.com/stat/stat1.html?tracelog="+tracelog;
}
</SCRIPT>

<SCRIPT language=javascript>
<!--
bgColor = "#FEEEE0";
function clickcompareBox(countId,box) {
    var trTag = document.getElementById("checkColor"+countId);
    if(box.checked){
        trTag.bgColor=bgColor;
    } else {
      if(countId%2 != 0){
        trTag.bgColor="#ffffff";
      }else{
        trTag.bgColor="#f8f8f8";
      }
    }
}
function doSelectAllBox(total,box) {
    for (i = 1; i < (total+1); i++) {       
        var idCheckBox = document.getElementById("checkBox"+i);
        var id = idCheckBox.value;
        if(box.checked){
            if (!idCheckBox.checked) {
                idCheckBox.checked = true;
            }
        } else {
            if (idCheckBox.checked) {
                idCheckBox.checked = false;
            }
        }
    }
}
function cleanDefaultKeywords(keywordsElement) {
	if(keywordsElement.value=='���������Ա���Ĺؼ���'){
		keywordsElement.value='';
	}
}
function doSearch() {
	var openElement = document.getElementById("queryOpen");
	var replyElement = document.getElementById("queryReply");
	openElement.value = '';
	replyElement.value = '';
	var keywordsElement = document.getElementById("queryKeywords");
	cleanDefaultKeywords(keywordsElement);
  	document.messageSearchForm.submit();
}
function doFilter() {
	var replyElement = document.getElementById("queryReply");
	var openElementSelect = document.getElementById("queryOpenSelect");
	var replyElementSelect = document.getElementById("queryReplySelect");
	
	replyElement.value = replyElementSelect.value;
	
	var keywordsElement = document.getElementById("queryKeywords");
	cleanDefaultKeywords(keywordsElement);
  	document.messageSearchForm.submit();
}
function dealSelectedMessage(action) {
	var messageIds = document.dealForm.messageIds;	
	var selectedCount = 0;
	if(!messageIds.length){
		if(messageIds.checked){
			selectedCount++;
		}
	}else{
    	for(var i=0;i<messageIds.length;i++){
    	    if(messageIds[i].checked){
    			selectedCount++;
    		}
    	}
	}	
    if (selectedCount <= 0) {
	    var alertNoCount = '��ѡ����ҪתΪ���ڵ���Ϣ��';
		if(action=='delete'){
			alertNoCount = '��ѡ����Ҫ����ɾ������Ϣ��';
		}
		alert(alertNoCount);
        return false;
    }
	var confirmAlert = "����ѡ��" + selectedCount + "����Ϣ��";
	if(action=='delete'){
		confirmAlert = confirmAlert + "ȷ��Ҫ����ɾ����";
	}else if(action=='cancle'){
		confirmAlert = confirmAlert + "ȷ��ҪתΪ������Ϣ��";
	}
	
	if (confirm(confirmAlert)) {
		clickTrace('po_messageaccept_delete');
	    document.dealForm.submit();
	} else {
	    return false;
	}
}
//-->
</SCRIPT>

<FORM style="MARGIN: 0px" name=messageForm onsubmit="return onMessageSubmit(this)" 
action=http://china.alibaba.com/message/list_sent_message.htm method=post>
<INPUT type=hidden value=1 name=beginPage> 
<INPUT type=hidden value=valid name=showType> 
<INPUT type=hidden name=action> 
<INPUT type=hidden value=true name=isSearch> 
<INPUT type=hidden value=true name=isSend> 
<INPUT type=hidden value=http://china.alibaba.com/message/list_sent_message.htm?sent=over1year&amp;is_search=true 
name=doneUrl> 
<INPUT type=hidden value=anything name=event_submit_do_mutildelete> 
<TABLE cellSpacing=0 cellPadding=5 width="100%" border=0>
  <TBODY>
  <TR>
    <TD class=smalltitle>�������� </TD></TR></TBODY></TABLE>
<TABLE class=list_box cellSpacing=0 cellPadding=0 width="100%" border=0>
  <TBODY>
  <TR>
    <TD class=list_right_box width="100%"><INPUT 
      onclick="if(this.value == '���������Ա���Ĺؼ���'){ this.value='';}" type=hidden 
      maxLength=100 size=40 value=���������Ա���Ĺؼ��� name=keyword> <SELECT 
      onchange="javascript:clickTrace('po_messagesend_search');onMessageSubmit(this.form);this.form.submit();" 
      name=sent> <OPTION value=1week>һ�������ڵ�����</OPTION> <OPTION 
        value=1month>һ�����ڵ�����</OPTION> <OPTION value=3month>�������ڵ�����</OPTION> 
        <OPTION value=3month_to_1year>�����µ�һ���ڵ�����</OPTION> <OPTION 
        value=over1year selected>һ�����ϵ�����</OPTION></SELECT> </TD></TR></TBODY></TABLE>
<TABLE cellSpacing=0 cellPadding=0 width="100%" border=0>
  <TBODY>
  <TR>
    <TD class=s style="PADDING-LEFT: 5px" width="65%" height=30>�ҵ� 
      <STRONG><FONT color=#ff0000>3</FONT></STRONG> �� ���ԣ� </TD>
    <TD style="PADDING-LEFT: 8px" align=right width="35%"><FONT 
      color=#999999>��һҳ</FONT> <B>1</B> <FONT color=#999999>��һҳ</FONT> 
    </TD></TR></TBODY></TABLE>
<TABLE class=list_lb_loca cellSpacing=0 cellPadding=0 width="100%" border=0>
  <TBODY>
  <TR>
    <TD class=list_lb_title>&nbsp;</TD>
    <TD class=list_lb_title>״̬</TD>
    <TD class=list_lb_title>����</TD>
    <TD class=list_lb_title>����</TD></TR>
  	<SCRIPT src="link/alitalk.js" type=text/javascript></SCRIPT>

  <SCRIPT>
                	var paramArr = new Array();
                </SCRIPT>

  <TR>
    <TD class=list_lb_content align=middle><INPUT type=checkbox value=93072425 
      name=messageIds></TD>
    <TD class=list_lb_content>�Է��Ѷ� </TD>
    <TD class=list_lb_content><A title=�����������˵��۸�1600 
      href="http://china.alibaba.com/message/show_feed_back.htm?id=93072425&amp;is_send=true&amp;tracelog=po_messagesend_detail" 
      target=_blank>�ظ����Ҷ����ڰ���Ͱͷ����ġ���Ӧ�������������ܸ���Ȥ</A> <BR>2007-06-20 09:46:47 </TD>
    <TD class=list_lb_content><A title=jb939 
      href="http://jb939.profile.china.alibaba.com/?tracelog=po_messagesend_member" 
      target=_blank>��ұ�</A>&nbsp; <IMG id=alitalkImg1 style="CURSOR: pointer" 
      height=16 src="link/list_mytlogo_offline.gif" width=16 align=absMiddle 
      border=0><SPAN id=alitalkTxt1></SPAN>
    <SCRIPT>
    var now = new Date();
    var param1 = new Alitalkparam();
		    param1.uid = "jb939";
	
    param1.imgObj = $("alitalkImg1");

	    	param1.eventObjs.add($("alitalkImg1"));
		param1.size = 16;
    param1.docObj = $("alitalkTxt1");
	param1.notInstalledDoc = "";
	param1.onlineDoc = "";
	param1.offlineDoc = "";
	param1.telonlineDoc = "";
		param1.moreProperties = "url1=http://amis1.sh1.china.alibaba.com/potentialContact.dll&url2=http://page.china.alibaba.com/others/feedbackfromalitalk.html?type=myalibaba#toid=jb939#fromid=yys580#memberLevel=pm#time=" + now.getTime();
		paramArr.add(param1);
</SCRIPT>
       &nbsp;<IMG height=14 src="link/trust.gif" width=22 
      align=absMiddle> <BR><A 
      href="http://china.alibaba.com/company/detail/jb939.html?tracelog=po_messagesend_company" 
      target=_blank>���ݼѱ�������Ʒ���޹�˾</A> </TD></TR>
  <TR>
    <TD class=list_lb_content align=middle><INPUT type=checkbox value=87388650 
      name=messageIds></TD>
    <TD class=list_lb_content><FONT color=#ff0000>�Է�δ��</FONT> </TD>
    <TD class=list_lb_content><A title=ë�أ�38kg���أ�200kg2.0ƥ��������1600Ԫ 
      href="http://china.alibaba.com/message/show_feed_back.htm?id=87388650&amp;is_send=true&amp;tracelog=po_messagesend_detail" 
      target=_blank>�ظ����Ҷ����ڰ���Ͱͷ����ġ��������������ܸ���Ȥ</A> <BR>2007-04-01 20:10:10 </TD>
    <TD class=list_lb_content><A title=xhs1005 
      href="http://xhs1005.profile.china.alibaba.com/?tracelog=po_messagesend_member" 
      target=_blank>����</A>&nbsp; <IMG id=alitalkImg2 style="CURSOR: pointer" 
      height=16 src="link/list_mytlogo_offline.gif" width=16 align=absMiddle 
      border=0><SPAN id=alitalkTxt2></SPAN>
      <SCRIPT>
    var now = new Date();
    var param2 = new Alitalkparam();
		    param2.uid = "xhs1005";
	
    param2.imgObj = $("alitalkImg2");

	    	param2.eventObjs.add($("alitalkImg2"));
		param2.size = 16;
    param2.docObj = $("alitalkTxt2");
	param2.notInstalledDoc = "";
	param2.onlineDoc = "";
	param2.offlineDoc = "";
	param2.telonlineDoc = "";
		param2.moreProperties = "url1=http://amis1.sh1.china.alibaba.com/potentialContact.dll&url2=http://page.china.alibaba.com/others/feedbackfromalitalk.html?type=myalibaba#toid=xhs1005#fromid=yys580#memberLevel=common#time=" + now.getTime();
		paramArr.add(param2);
</SCRIPT>
       <BR>
      <DIV title=�ù�˾��δ�ڰ���Ͱͷ�����˾����>����ػ���·</DIV></TD></TR>
  <TR>
    <TD class=list_lb_content align=middle><INPUT type=checkbox value=87018132 
      name=messageIds></TD>
    <TD class=list_lb_content>�Է��Ѷ� </TD>
    <TD class=list_lb_content><A title=wo���м���̨ɳĮ�����������峵���ϣ���������� 
      href="http://china.alibaba.com/message/show_feed_back.htm?id=87018132&amp;is_send=true&amp;tracelog=po_messagesend_detail" 
      target=_blank>�Ҷ����ڰ���Ͱͷ����ġ��󹺿���������峵���ܸ���Ȥ��</A> <BR>2007-03-26 20:45:41 </TD>
    <TD class=list_lb_content><A title=szjhmy007 
      href="http://szjhmy007.profile.china.alibaba.com/?tracelog=po_messagesend_member" 
      target=_blank>����</A>&nbsp; <IMG id=alitalkImg3 style="CURSOR: pointer" 
      height=16 src="link/list_mytlogo_offline.gif" width=16 align=absMiddle 
      border=0><SPAN id=alitalkTxt3></SPAN>
      <SCRIPT>
    var now = new Date();
    var param3 = new Alitalkparam();
		    param3.uid = "szjhmy007";
	
    param3.imgObj = $("alitalkImg3");

	    	param3.eventObjs.add($("alitalkImg3"));
		param3.size = 16;
    param3.docObj = $("alitalkTxt3");
	param3.notInstalledDoc = "";
	param3.onlineDoc = "";
	param3.offlineDoc = "";
	param3.telonlineDoc = "";
		param3.moreProperties = "url1=http://amis1.sh1.china.alibaba.com/potentialContact.dll&url2=http://page.china.alibaba.com/others/feedbackfromalitalk.html?type=myalibaba#toid=szjhmy007#fromid=yys580#memberLevel=pm#time=" + now.getTime();
		paramArr.add(param3);
</SCRIPT>
       &nbsp;<IMG height=14 src="link/trust.gif" width=22 
      align=absMiddle> <BR><A 
      href="http://china.alibaba.com/company/detail/szjhmy007.html?tracelog=po_messagesend_company" 
      target=_blank>�����м����𻪽��������޹�˾</A> </TD></TR></TBODY></TABLE></FORM><BR>
<TABLE cellSpacing=0 cellPadding=0 width="100%" border=0>
  <TBODY>
  <TR>
    <TD vAlign=top width="61%"><INPUT onclick=javascript:checkAll(this) 
      type=checkbox value=checkbox name=selectAllBox>ȫѡ&nbsp;&nbsp;��ѡ�е���Ϣ &nbsp;<INPUT onclick="javascript:return deleteCheckedMessage()" type=button value=����ɾ�� name=delBtn> 
    </TD>
    <TD style="PADDING-LEFT: 8px" align=right width="39%">�� 1 ҳ 3 �� ��ҳ��ʾ 1��3 �� 
    </TD></TR></TBODY></TABLE>
<TABLE cellSpacing=0 cellPadding=0 width="100%" border=0>
  <TBODY>
  <TR>
    <TD align=right><FONT color=#999999>��һҳ</FONT> <B>1</B> <FONT 
      color=#999999>��һҳ</FONT> ����&nbsp;<INPUT class=s id=pageNum maxLength=10 
      size=2>&nbsp;ҳ <INPUT onclick=javascript:gotoPageNum() type=button value=ȷ�� name=goPageNum>
      <SCRIPT language=javascript>
     function gotoPageNum() {
     	var args=1;
       	args = document.getElementById("pageNum").value
		if(args > 1){
			args = 1;
		}
		if(args<1){
			args=1;
		}
        window.location.href = "http://china.alibaba.com/message/list_sent_message.htm?sent=over1year&revert=&keyword=&beginPage=" + args;
     }
</SCRIPT>
       </TD></TR></TBODY></TABLE><BR><BR>
<TABLE cellSpacing=0 cellPadding=0 width="100%" border=0>
  <TBODY>
  <TR>
    <TD>
      <HR style="HEIGHT: 1px">
       �����Ե���Ч��Ϊ<FONT 
      color=#ff0000><STRONG>2��</STRONG></FONT>��ϵͳ���Զ�ɾ��������Ч�ڵ����ԡ���ע�Ᵽ����Ҫ���ԣ�<BR>
      �����ɻ�������ֱ�ӷ������϶������������ȷ������������ԣ������<A 
      href="http://china.alibaba.com/message/list_sent_message.htm?sent=over1year&amp;is_search=true#">���ÿͻ�������</A>��<BR>
     ��������ͨ��֧�������н��ף���Ч���Ͻ��װ�ȫ <BR>������ѯ�绰��400-826-5188 <IMG height=15 
      src="link/ind11_r8_c5.gif" width=15 align=absMiddle 
      border=0>&nbsp;
      </TD></TR></TBODY></TABLE><BR><BR>
</body>
</html>