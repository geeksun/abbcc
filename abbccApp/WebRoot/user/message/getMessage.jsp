<%@ page contentType="text/html; charset=GBK" %>
<%@page import="java.util.List,com.abbcc.pojo.Message" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<%
		String path = request.getContextPath();	
 %>
 
<head>
<title>���յ�������</title>
<SCRIPT language=JavaScript src="<%=path%>/user/message/link/aliclick.js"></SCRIPT>
<SCRIPT src="<%=path%>/user/message/link/search.js" type=text/javascript charset=gb2312></SCRIPT>
<SCRIPT src="<%=path%>/user/message/link/AlicnTree.js" type=text/javascript></SCRIPT>

<LINK rev=stylesheet href="<%=path%>/user/message/link/AlicnTree.css" type=text/css rel=stylesheet>
<LINK rev=stylesheet href="<%=path%>/user/message/link/myali_search_v02.css" type=text/css rel=stylesheet>
<LINK rev=stylesheet href="<%=path%>/user/message/link/mainframe.css" type=text/css rel=stylesheet>
<LINK rev=stylesheet href="<%=path%>/user/message/link/content.css" type=text/css rel=stylesheet>
</head>
<body>
  <TABLE cellSpacing=0 cellPadding=0 width="100%" border=0>
  	<TBODY>
  	<TR>
    <TD class=bigtitle width="53%">���յ�������</TD>
    </TR></TBODY></TABLE>
  <TABLE class=list_box cellSpacing=0 cellPadding=5 width="100%" border=0>
  <TBODY>
  <% 
  Message show=(Message)request.getAttribute("showOne");
  if(show!=null){
  	String title=show.getTitle();
  	String content=show.getContent();
  	int fromid=show.getFromid();
  	long id=show.getId();
  %>
  
  <TR>
    <TD class=list_right_box 
      style="WORD-BREAK: break-all"><B>���⣺<%=title %></B><BR>ʱ�䣺2008��10��29�� 03:52:59 
      <HR SIZE=1>
      <STRONG>��Ҫ����</STRONG>��<BR><BR>
      <P><%=content %> 
       
      <BR><BR>
      <P><SENDCONTACT /></P><FONT color=#666666>˳ף����!
      <HR align=left width="40%" SIZE=1>
       
      <DIV id=alitalkLevel style="DISPLAY: inline">
      <A title=pjttiy href="http://china.alibaba.com/member/profile.htm?member_id=pjttiy" target=_blank><%=fromid %></A>(�ɹ�����)
      <SCRIPT src="<%=path%>/user/message/link/alitalk.js" type=text/javascript></SCRIPT>
      <IMG id=alitalkImg style="CURSOR: pointer" height=16 
      src="<%=path%>/user/message/link/list_mytlogo_offline.gif" width=16 align=absMiddle 
      border=0> <SPAN id=alitalkTxt></SPAN>
      <SCRIPT>
	var now = new Date();
    var param = new Alitalkparam();
    param.uid = "pjttiy";
    param.imgObj = $("alitalkImg");
    param.docObj = $("alitalkTxt");
    param.eventObjs.add($("alitalkImg"));
	param.size = 16;
	param.notInstalledDoc = "";
	param.onlineDoc = "";
	param.offlineDoc = "";
	param.telonlineDoc = "";
	
		param.moreProperties = "url1=http://amis1.sh1.china.alibaba.com/potentialContact.dll&url2=http://page.china.alibaba.com/others/feedbackfromalitalk.html?type=myalibaba#toid=pjttiy#fromid=yys580#memberLevel=common#time=" + now.getTime();
		
	Alitalk.initSingleStat(param);
</SCRIPT>

      <SCRIPT>	
	Alitalk.addListener(param);
</SCRIPT>
      ����<BR></DIV>
      <DIV title= style="DISPLAY: inline"><%=fromid %>(���徭Ӫ)</DIV>&nbsp;
      <SPAN class="S lh15">
      <IMG height=16 alt=" " src="<%=path%>/user/message/link/icon_qyxyss_white.gif" width=21 align=absMiddle></SPAN> <BR>
            ��ַ���й� ������ �˶��� ������ʡ��������п˶���<BR>�绰��86 0452 14767137 </FONT> 

      </TD></TR></TBODY></TABLE><BR>
<Form style="MARGIN: 0px" name="deleteForm" action="<%=path %>/message.do?method=deleteMessage&fromid=<%=fromid %>&id=<%=id %>" method=post>
<input type="submit"  name="sub" value="ɾ��������">

</Form>

<TABLE cellSpacing=0 cellPadding=0 width="100%" border=0>
  <TBODY>
  <TR>
    <TD><BR>
      <DIV id=reply_form><BR>
      <TABLE cellSpacing=0 cellPadding=0 width="100%" border=0>
        <TBODY>
        <TR>
          <TD class=smalltitle align=left><B>�ظ�����</B></TD>
        </TR></TBODY></TABLE>
      <SCRIPT language=JavaScript>
	function hideAttach(){
    	if (document.all("_fmme.f._0.se").checked ){
    		attach_message.style.display="";//�л�Ϊ��ʾ״̬
    	}else{
    		attach_message.style.display="none";//�л�Ϊ����״̬
    	}
	}
	function checkForm() {
		var formObject = document.feedbackForm;
		if (document.all("_fmme.f._0.t").value == "") {
			alert("�װ��Ļ�Ա������Ҫ��д���շ���Ա��¼�������ܰ����Է��͸��Է���");
			return false;
		}
		if (document.all("_fmme.f._0.ti").value == "") {
			alert("�װ��Ļ�Ա����������д���Ե����⣡");
			return false;
		}
				formObject.submit();
		return true;
	}
	function preSendMessage(tracelog){
 				    var result = checkForm();
				    if(result){
					    (new Image()).src="http://page.china.alibaba.com/stat/stat1.html?tracelog="+tracelog;
					   return true;
	                }
	            else{
	                return false;
	            }
    }
</SCRIPT>
<%

 %>
      <FORM style="MARGIN: 0px" name=feedbackForm 
      action="<%=path %>/message.do?method=huifuMessage&fromid=<%=fromid %>" 
      method=post>
      <INPUT type=hidden value=feedback name=action> 
      <INPUT type=hidden value=anything name=eventSubmitDoSend> 
      <INPUT type=hidden name=_fmme.f._0.as> 
      <INPUT type=hidden value=true name=_fmme.f._0.r> 
      <INPUT type=hidden value=<%=fromid %> name=_fmme.f._0.rep> 
      <INPUT type=hidden name=_fmme.f._0.repl> 
      <INPUT type=hidden name=_fmme.f._0.f> 
      <INPUT type=hidden value=124142992 name=_fmme.f._0.re> 
      <INPUT type=hidden value=true name=_fmme.f._0.se> 
      <INPUT type=hidden value=true name=_fmme.f._0.sa> 
      <INPUT type=hidden value=true name=_fmme.f._0.sen> 
      <INPUT type=hidden value=1234 name=_fmme.f._0.v> 
      <INPUT type=hidden value=false name=isSend> 
      <INPUT type=hidden value=124142992 name=id> 
      <TABLE class=list_box cellSpacing=0 cellPadding=0 width="100%" border=0>
        <TBODY>
        <TR>
          <TD class=list_left_box><STRONG>���͸���</STRONG></TD>
          <TD class=list_right_box align=left>
            <DIV id=overDiv style="Z-INDEX: 1; POSITION: absolute"></DIV>
            <SCRIPT language=JavaScript src="<%=path%>/user/message/link/myalibaba.js"></SCRIPT>
            <A onmouseover="drs('pjttiy'); return true;" 
            onmouseout="nd(); return true;" 
            href="http://pjttiy.profile.china.alibaba.com/" target=_blank><%=fromid %>
            </A>
            <INPUT type=hidden maxLength=20 size=15 value=pjttiy 
            name=ss> </TD></TR>
        <TR>
          <TD class=list_left_box><STRONG>���⣺</STRONG></TD>
          <TD class=list_right_box align=left>
          <INPUT maxLength=50 size=58 value=�ظ���������Ϣ����ע����ա� name=huifutitle> <BR>
          <SPAN class=note>�������޸����⣬�����Է�ע��,�õ����Ȼظ�!</SPAN> </TD></TR>
        <TR>
          <TD class=list_left_box><STRONG>���ģ�</STRONG></TD>
          <TD class=list_right_box align=left><TEXTAREA name=huifucontent rows=10 cols=58></TEXTAREA> 
            <BR><SPAN class=note>������ϵͳ��֧��html���룬�벻Ҫ���ı���������html����</SPAN> 
        </TD></TR>
        <INPUT type=hidden value=false name=_fmme.f._0.o> 
        <TR>
          <TD class=list_left_box><STRONG>������</STRONG></TD>
          <TD class=list_right_box align=left><SPAN>����һ�� <INPUT type=file 
            size=30 name=_fmme.f._0.a \> <INPUT style="WIDTH: 90px; HEIGHT: 20px" onclick=addfile() type=button value=�����������></SPAN> 
            <SPAN id=file2 style="DISPLAY: none">�������� <INPUT type=file size=30 
            name=_fmme.f._0.a \></SPAN> <SPAN id=file3 
            style="DISPLAY: none">�������� <INPUT type=file size=30 
            name=_fmme.f._0.a \></SPAN> <BR><SPAN 
            class=note>�����������3���������ܺͲ�����1M��<BR>������ֱ�ӷ��͵���������,�����յ����Ե�ͬʱ,ע����������ʼ�!</SPAN> 
          </TD></TR></TBODY></TABLE>
      <SCRIPT language=javascript>
                function addfile(){
                	if(document.all("file2").style.display=="none"){
                		document.all("file2").style.display="block";
                	}else{
                		if(document.all("file3").style.display=="none"){
                			document.all("file3").style.display="block";
                		}else{
                			alert("�����������3������!")
                		}
                
                	}
                }
            </SCRIPT>

      <TABLE cellSpacing=0 cellPadding=0 width="100%" border=0>
        <TBODY>
        <TR>
          <TD align=right height=30><A 
            href="http://china.alibaba.com/member/modify_member_info.htm" 
            target=_blank>����ҵ���ϵ��Ϣ�Ƿ�����</A></TD></TR>
        <TR>
          <TD align=middle height=15>
          <INPUT   type=submit value=�ظ����� name=send> 
            &nbsp;&nbsp; 
          <INPUT  type=reset value=" ���� " name=reset> 
          </TD></TR></TBODY></TABLE>
          </FORM></DIV><BR><BR><BR>
          </TD></TR></TBODY></TABLE><BR>
<SCRIPT src="<%=path%>/user/message/link/alitalk.js" type=text/javascript></SCRIPT>

<SCRIPT src="<%=path%>/user/message/link/alitalk2.js" type=text/javascript></SCRIPT>
  <%
  }
   %>
  
</body>
</html>