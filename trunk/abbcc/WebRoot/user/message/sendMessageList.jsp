<%@ page contentType="text/html; charset=GBK" %>
<%@page import="java.util.List,java.util.Iterator" %>
<%@page import="com.abbcc.pojo.Message"%>
<%@page import="com.abbcc.common.AppConstants"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<%
		String path = request.getContextPath();	
		String messageTime=(String)request.getAttribute("messageTime");
	 %>
<head>
<title>�ҷ���������</title>
<SCRIPT language=JavaScript src="<%=path %>/user/message/link/aliclick.js"></SCRIPT>
<SCRIPT src="<%=path %>/user/message/link/search.js" type=text/javascript charset=gb2312></SCRIPT>
<SCRIPT src="<%=path %>/user/message/link/AlicnTree.js" type=text/javascript></SCRIPT>

<LINK rev=stylesheet href="<%=path %>/user/message/link/AlicnTree.css" type=text/css rel=stylesheet>
<LINK rev=stylesheet href="<%=path %>/user/message/link/myali_search_v02.css" type=text/css rel=stylesheet>
<LINK rev=stylesheet href="<%=path %>/user/message/link/mainframe.css" type=text/css rel=stylesheet>
<LINK rev=stylesheet href="<%=path %>/user/message/link/content.css" type=text/css rel=stylesheet>
<script type="text/javascript">
	function gotoMessageTime(){
		document.messageForm.action="<%=path %>/message.do?method=listSendMessage";
		document.messageForm.submit();
	}
	function gotoPageNum() {
       document.messageForm.action="<%=path %>/message.do?method=listSendMessage";
       document.messageForm.submit();
    }
</script>
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

<FORM style="MARGIN: 0px" name=messageForm  
action="<%=path %>/message.do?method=listSendMessage" method=post>
<TABLE cellSpacing=0 cellPadding=5 width="100%" border=0>
  <TBODY>
  <TR>
    <TD class=smalltitle>�������� </TD></TR></TBODY></TABLE>
<TABLE class=list_box cellSpacing=0 cellPadding=0 width="100%" border=0>
  <TBODY>
  <TR>
    <TD class=list_right_box width="100%"><INPUT 
      onclick="if(this.value == '���������Ա���Ĺؼ���'){ this.value='';}" type=hidden 
      maxLength=100 size=40 value=���������Ա���Ĺؼ��� name=keyword> 
      <SELECT onchange="gotoMessageTime()" name=messageTime> 
      	<OPTION value=1 <%=messageTime.equals("1")?"selected":" " %>>
				һ�������ڵ�����
		</OPTION>
		<OPTION value=2 <%=messageTime.equals("2")?"selected":" " %>>
				һ�����ڵ�����
		</OPTION>
		<OPTION value=3 <%=messageTime.equals("3")?"selected":" " %>>
				�������ڵ�����
		</OPTION>
		<OPTION value=4 <%=messageTime.equals("4")?"selected":" " %>>
				�����µ�һ���ڵ�����
		</OPTION>
		<OPTION value=5 <%=messageTime.equals("5")?"selected":" " %>>
				һ�����ϵ�����
		</OPTION>
      </SELECT> </TD></TR></TBODY></TABLE>
<TABLE class=list_lb_loca cellSpacing=0 cellPadding=0 width="100%" border=0>
  <TBODY>
  <TR>
    <TD class=list_lb_title>&nbsp;</TD>
    <TD class=list_lb_title>״̬</TD>
    <TD class=list_lb_title>����</TD>
    <TD class=list_lb_title>����</TD></TR>
  	<SCRIPT src="link/alitalk.js" type=text/javascript></SCRIPT>
<%
	List list=(List)request.getAttribute("listSend");
	String currentPage=(String)request.getAttribute("currentPage");
	int _currentPage=Integer.valueOf(currentPage);
	if(list!=null){
		Iterator iter=list.iterator();
		while(iter.hasNext()){
			Message message=(Message)iter.next();
			
			String title=message.getTitle();
			String content=message.getContent();
			long id=message.getId();
			int toid=message.getToid();
			int state=message.getState();
			
			%>
			<TR>
    <TD class=list_lb_content align=middle><INPUT type=checkbox value=93072425 
      name=messageIds></TD>
    <td class=list_lb_content >
    <%
		if (AppConstants.MESSAGE_STATE_UN_READ == state) {
	%> �Է��Ѷ� <%
 		} else if (AppConstants.MESSAGE_STATE_READ == state) {
 		%> �Է�δ�� <%
 		}
 		%>
    </td>
    <TD class=list_lb_content><A href="<%=path%>/message.do?method=showMessage&id=<%=id%>" 
      target=right><%=title %></A> <BR> </TD>
    <TD class=list_lb_content><A title=jb939 href="" 
      target=_blank><%=toid %></A>&nbsp; <IMG id=alitalkImg1 style="CURSOR: pointer" 
      height=16 src="<%=path %>/user/message/link/list_mytlogo_offline.gif" width=16 align=absMiddle 
      border=0><SPAN id=alitalkTxt1></SPAN>
       &nbsp; <BR><A 
      href="http://china.alibaba.com/company/detail/jb939.html?tracelog=po_messagesend_company" 
      target=_blank>XX���޹�˾</A> </TD></TR>
			<%
		}
	}
 %>
  
  
  </TBODY></TABLE></FORM><BR>
<TABLE cellSpacing=0 cellPadding=0 width="100%" border=0>
  <TBODY>
  <TR>
    <TD vAlign=top width="61%"><INPUT onclick=javascript:checkAll(this) 
      type=checkbox value=checkbox name=selectAllBox>ȫѡ&nbsp;&nbsp;��ѡ�е���Ϣ &nbsp;<INPUT onclick="javascript:return deleteCheckedMessage()" type=button value=����ɾ�� name=delBtn> 
    </TD>
    <%
		Integer count=(Integer)request.getAttribute("count");
		Integer pageCount=(Integer)request.getAttribute("pageCount");			
	%>
    <TD style="PADDING-LEFT: 8px" align=right width="39%">�� <%=pageCount %> ҳ <%=count %> �� 
    </TD></TR></TBODY></TABLE>
    <%
			int previousPage=_currentPage-1;
			int nextPage=_currentPage+1;
			if(previousPage<0){
				previousPage=1;
			}
			if(nextPage>pageCount)
			{
				nextPage=pageCount;
			}
	%>
<TABLE cellSpacing=0 cellPadding=0 width="100%" border=0>
  <TBODY>
  <TR>
    <TD align=right><FONT color=#999999><a href="<%=path%>/message.do?method=listSendMessage&currentPage=<%=previousPage %>">��һҳ</a></FONT> 
    <B><%=_currentPage %></B> 
    <FONT color=#999999><a href="<%=path%>/message.do?method=listSendMessage&currentPage=<%=nextPage %>" >��һҳ</a></FONT> ����&nbsp;
      <INPUT class=s id=pageNum name='currentPage' maxLength=100 size=2>&nbsp;ҳ 
      <INPUT onclick=javascript:gotoPageNum() type=button value=ȷ�� name=goPageNum>
       
       </TD></TR></TBODY></TABLE><BR><BR>
<TABLE cellSpacing=0 cellPadding=0 width="100%" border=0>
  <TBODY>
  <TR>
    <TD>
      <HR style="HEIGHT: 1px">
       �����Ե���Ч��Ϊ<FONT 
      color=#ff0000><STRONG>2��</STRONG></FONT>��ϵͳ���Զ�ɾ��������Ч�ڵ����ԡ���ע�Ᵽ����Ҫ���ԣ�<BR>
      ������ѯ�绰��400-826-5188 <IMG height=15 
      src="<%=path %>/user/message/link/ind11_r8_c5.gif" width=15 align=absMiddle 
      border=0>&nbsp;
      </TD></TR></TBODY></TABLE><BR><BR>
</body>
</html>