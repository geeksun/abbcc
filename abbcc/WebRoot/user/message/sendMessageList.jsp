<%@ page contentType="text/html; charset=GBK" %>
<%@page import="java.util.List" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<%
		String path = request.getContextPath();	
 %>
<head>
<title>我发出的留言</title>
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
	* 对 checkbox 进行反向选择。
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
	* 判断是否选择了 checkbox。
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
			alert("请选中要删除的留言！");
			return false;
		} else {
			if (confirm("您确认要删除这 " + checkCount + " 条留言吗？")) {
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
		if(thisform.keyword.value == '请输入留言标题的关键词'){
			thisform.keyword.value = '';
		}
		return true;
	}
</SCRIPT>

<TABLE cellSpacing=0 cellPadding=0 width="100%" border=0>
  <TBODY>
  <TR>
    <TD class=bigtitle width="53%">我发出的留言</TD>
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
	if(keywordsElement.value=='请输入留言标题的关键词'){
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
	    var alertNoCount = '请选择需要转为过期的信息！';
		if(action=='delete'){
			alertNoCount = '请选择需要永久删除的信息！';
		}
		alert(alertNoCount);
        return false;
    }
	var confirmAlert = "您已选中" + selectedCount + "条信息，";
	if(action=='delete'){
		confirmAlert = confirmAlert + "确定要永久删除吗？";
	}else if(action=='cancle'){
		confirmAlert = confirmAlert + "确定要转为过期信息吗？";
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
    <TD class=smalltitle>所有留言 </TD></TR></TBODY></TABLE>
<TABLE class=list_box cellSpacing=0 cellPadding=0 width="100%" border=0>
  <TBODY>
  <TR>
    <TD class=list_right_box width="100%"><INPUT 
      onclick="if(this.value == '请输入留言标题的关键词'){ this.value='';}" type=hidden 
      maxLength=100 size=40 value=请输入留言标题的关键词 name=keyword> <SELECT 
      onchange="javascript:clickTrace('po_messagesend_search');onMessageSubmit(this.form);this.form.submit();" 
      name=sent> <OPTION value=1week>一个星期内的留言</OPTION> <OPTION 
        value=1month>一个月内的留言</OPTION> <OPTION value=3month>三个月内的留言</OPTION> 
        <OPTION value=3month_to_1year>三个月到一年内的留言</OPTION> <OPTION 
        value=over1year selected>一年以上的留言</OPTION></SELECT> </TD></TR></TBODY></TABLE>
<TABLE cellSpacing=0 cellPadding=0 width="100%" border=0>
  <TBODY>
  <TR>
    <TD class=s style="PADDING-LEFT: 5px" width="65%" height=30>找到 
      <STRONG><FONT color=#ff0000>3</FONT></STRONG> 条 留言！ </TD>
    <TD style="PADDING-LEFT: 8px" align=right width="35%"><FONT 
      color=#999999>上一页</FONT> <B>1</B> <FONT color=#999999>下一页</FONT> 
    </TD></TR></TBODY></TABLE>
<TABLE class=list_lb_loca cellSpacing=0 cellPadding=0 width="100%" border=0>
  <TBODY>
  <TR>
    <TD class=list_lb_title>&nbsp;</TD>
    <TD class=list_lb_title>状态</TD>
    <TD class=list_lb_title>标题</TD>
    <TD class=list_lb_title>发给</TD></TR>
  	<SCRIPT src="link/alitalk.js" type=text/javascript></SCRIPT>

  <SCRIPT>
                	var paramArr = new Array();
                </SCRIPT>

  <TR>
    <TD class=list_lb_content align=middle><INPUT type=checkbox value=93072425 
      name=messageIds></TD>
    <TD class=list_lb_content>对方已读 </TD>
    <TD class=list_lb_content><A title=可以能坐二人单价格1600 
      href="http://china.alibaba.com/message/show_feed_back.htm?id=93072425&amp;is_send=true&amp;tracelog=po_messagesend_detail" 
      target=_blank>回复：我对您在阿里巴巴发布的“供应汽动充气船”很感兴趣</A> <BR>2007-06-20 09:46:47 </TD>
    <TD class=list_lb_content><A title=jb939 
      href="http://jb939.profile.china.alibaba.com/?tracelog=po_messagesend_member" 
      target=_blank>朱家兵</A>&nbsp; <IMG id=alitalkImg1 style="CURSOR: pointer" 
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
      target=_blank>扬州佳宾旅游用品有限公司</A> </TD></TR>
  <TR>
    <TD class=list_lb_content align=middle><INPUT type=checkbox value=87388650 
      name=messageIds></TD>
    <TD class=list_lb_content><FONT color=#ff0000>对方未读</FONT> </TD>
    <TD class=list_lb_content><A title=毛重：38kg载重：200kg2.0匹马力单价1600元 
      href="http://china.alibaba.com/message/show_feed_back.htm?id=87388650&amp;is_send=true&amp;tracelog=po_messagesend_detail" 
      target=_blank>回复：我对您在阿里巴巴发布的“汽动冲气船”很感兴趣</A> <BR>2007-04-01 20:10:10 </TD>
    <TD class=list_lb_content><A title=xhs1005 
      href="http://xhs1005.profile.china.alibaba.com/?tracelog=po_messagesend_member" 
      target=_blank>杨玲</A>&nbsp; <IMG id=alitalkImg2 style="CURSOR: pointer" 
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
      <DIV title=该公司尚未在阿里巴巴发布公司介绍>凤凰县环卫路</DIV></TD></TR>
  <TR>
    <TD class=list_lb_content align=middle><INPUT type=checkbox value=87018132 
      name=messageIds></TD>
    <TD class=list_lb_content>对方已读 </TD>
    <TD class=list_lb_content><A title=wo我有几百台沙漠王子汽动滑板车库存希望与您合作 
      href="http://china.alibaba.com/message/show_feed_back.htm?id=87018132&amp;is_send=true&amp;tracelog=po_messagesend_detail" 
      target=_blank>我对您在阿里巴巴发布的“求购库存汽动滑板车”很感兴趣！</A> <BR>2007-03-26 20:45:41 </TD>
    <TD class=list_lb_content><A title=szjhmy007 
      href="http://szjhmy007.profile.china.alibaba.com/?tracelog=po_messagesend_member" 
      target=_blank>胡迪</A>&nbsp; <IMG id=alitalkImg3 style="CURSOR: pointer" 
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
      target=_blank>深圳市吉海瑞华进出口有限公司</A> </TD></TR></TBODY></TABLE></FORM><BR>
<TABLE cellSpacing=0 cellPadding=0 width="100%" border=0>
  <TBODY>
  <TR>
    <TD vAlign=top width="61%"><INPUT onclick=javascript:checkAll(this) 
      type=checkbox value=checkbox name=selectAllBox>全选&nbsp;&nbsp;将选中的信息 &nbsp;<INPUT onclick="javascript:return deleteCheckedMessage()" type=button value=永久删除 name=delBtn> 
    </TD>
    <TD style="PADDING-LEFT: 8px" align=right width="39%">共 1 页 3 条 本页显示 1－3 条 
    </TD></TR></TBODY></TABLE>
<TABLE cellSpacing=0 cellPadding=0 width="100%" border=0>
  <TBODY>
  <TR>
    <TD align=right><FONT color=#999999>上一页</FONT> <B>1</B> <FONT 
      color=#999999>下一页</FONT> 到第&nbsp;<INPUT class=s id=pageNum maxLength=10 
      size=2>&nbsp;页 <INPUT onclick=javascript:gotoPageNum() type=button value=确定 name=goPageNum>
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
       ·留言的有效期为<FONT 
      color=#ff0000><STRONG>2年</STRONG></FONT>，系统将自动删除超出有效期的留言。请注意保存重要留言！<BR>
      ·您可基于留言直接发起网上订单，请打开有明确交易意向的留言，点击“<A 
      href="http://china.alibaba.com/message/list_sent_message.htm?sent=over1year&amp;is_search=true#">给该客户发订单</A>”<BR>
     ·建议您通过支付宝进行交易，有效保障交易安全 <BR>·！咨询电话：400-826-5188 <IMG height=15 
      src="link/ind11_r8_c5.gif" width=15 align=absMiddle 
      border=0>&nbsp;
      </TD></TR></TBODY></TABLE><BR><BR>
</body>
</html>