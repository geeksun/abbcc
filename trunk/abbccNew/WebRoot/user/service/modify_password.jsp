<%@ page language="java" import="java.util.*" pageEncoding="gbk" contentType="text/html;charset=gbk"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
	String path = request.getContextPath();
%>
<html>
   <head>
	<link rel="stylesheet" type="text/css" href="<%=path%>/css/service.css"/>
    <script src="<%=path%>/js/prototype.js"></script>
    <script type="text/javascript">
    	function change(){
    		if(checkOldPassword($("old_password"))
    		&&checkNewPassword($("new_password"))	
    		&&checkConfirmPassword($("confirm_password"))
    		&&checkContrast($("new_password"),$("confirm_password"))
    		){
    			document.modifyPassword.submit();
    		}
    	}
    	function changeProtect(){
    		document.setQuestionAboutPassword.submit();
    	}	
    	function checkContrast(obj1,obj2){
    		if(obj1.value!=obj2.value){
    			alert("确认密码和新密码不一致，请核实重新输入");
    			return false;
    		}else
    			return true;
    	}
    	function checkOldPassword(elem){
    		if(elem.value==""){
    			alert("旧密码不能为空，请输入5-20 个数字或英文字母");
    			return false;
    		}
			else if(validateUsername(elem) == 1){
				alert("旧密码不符合要求，请输入5-20 个数字或英文字母");
				return false;
			}else{
				return true;
			}
		}
    	function checkNewPassword(elem){
    		if(elem.value==""){
    			alert("新密码不能为空，请输入5-20 个数字或英文字母");
    			return false;
    		}
			else if(validateUsername(elem) == 1){
				alert("新密码不符合要求，请输入5-20 个数字或英文字母");
				return false;
			}else{
				return true;
			}
		}
		function checkConfirmPassword(elem){
    		if(elem.value==""){
    			alert("确认密码不能为空，请输入5-20 个数字或英文字母");
    			return false;
    		}
			else if(validateUsername(elem) == 1){
				alert("确认密码不符合要求，请输入5-20 个数字或英文字母");
				return false;
			}else{
				return true;
			}
		}
		/*
		 * 验证输入值是否为5-20位英文字母和数字
		 */
		function validateUsername(obj){
			var str = obj.value;
			var patn = /^[a-zA-Z0-9]+$/;
			if(!checkByteLength(str,5,20)) return 1;
			if(!patn.test(str)){
				return 1;
			}
			return 0; 
		}
		function checkByteLength(str,minlen,maxlen) {
			if (str == null) return false;
			var l = str.length;
			var blen = 0;
			for(i=0; i<l; i++) {
				if ((str.charCodeAt(i) & 0xff00) != 0) {
					blen ++;
				}
				blen ++;
			}
			if (blen > maxlen || blen < minlen) {
				return false;
			}
			return true;
		}
    </script>
  </head>
  <body>
  <c:set var="truename" value="${truename}" scope="page"></c:set>
  <c:set var="memberId" value="${memberId}" scope="page"></c:set>
  <TABLE cellSpacing=0 cellPadding=0 width="100%">
  <TBODY>
  <TR>
    <TD class=bigtitle width="53%">修改密码</TD>
    <TD align=right width="47%">
    </TD></TR>
    </TBODY>
    </TABLE><BR>
    <c:if test="${access_mark=='access_first'||access_mark=='access_question_password'}">
	<TABLE class=tx_box cellSpacing=0 cellPadding=0 width="100%" align=center>
	  <TBODY>
	  <TR>
	    <TD vAlign=top align=center width=80 rowSpan=2>
	    <IMG height=53 src="<%=path%>/images/service/icon1.gif" width=53></TD>
	    <TD class=tx_title height=20>您的姓名是：<c:out value="${truename}"></c:out>
	<BR>您的会员登录名是：<c:out value="${memberId}"></c:out></TD></TR></TBODY>
	</TABLE><BR>
	</c:if>	
    
  <c:if test="${promptPasswordInfo!=null}">
  <TABLE class=tx_box cellSpacing=0 cellPadding=0 width="100%" align=center>
  <TBODY>
  <TR>
    <TD vAlign=top align=middle width=80 rowSpan=2>
    <IMG height=53 src="<%=path%>/images/service/icon2.gif" width=53></TD>
    <TD class=tx_title height=20>对不起，您的提交失败了</TD></TR>
  <TR>
    <TD class=tx_content>
    ${promptPasswordInfo}
    </TD></TR></TBODY>
   </TABLE><BR>
  </c:if>
    
    <TABLE cellSpacing=0 cellPadding=0 width="100%">
    <TBODY>
    <TR>
    <TD class=smalltitle>修改密码：</TD></TR>
    </TBODY>
    </TABLE>
    <FORM style="PADDING-RIGHT: 0px; PADDING-LEFT: 0px; PADDING-BOTTOM: 0px; MARGIN: 0px; PADDING-TOP: 0px" 
name=modifyPassword action="modifyPassword.do" method=post>
<TABLE style="BORDER-RIGHT: #dddddd 1px solid; BORDER-TOP: #dddddd 1px solid; BORDER-LEFT: #dddddd 1px solid; BORDER-BOTTOM: #dddddd 1px solid" 
cellSpacing=0 cellPadding=0 width="100%" border=0>
<INPUT type="hidden" value="ModifyPasswordHandle" name="action"> 
<INPUT type="hidden" value="${truename }" name="truename"> 
<INPUT type="hidden" value="${memberId }" name="memberId"> 
  <TBODY>
  <TR>
    <TD class=list_left_box vAlign=top>旧密码：</TD>
    <TD class=list_right_box>
    <INPUT type=password maxLength=20 size=30 name=old_password></TD>
    </TR>
  <TR>
    <TD class=list_left_box vAlign=top>新的密码：</TD>
    <TD class=list_right_box>
    <INPUT type=password maxLength=20 size=30 name=new_password>
    <br><FONT class=note>5-20 个字符，只允许数字和英文字母，有大小写区分。</FONT>
    </TD>
  </TR>
  <TR>
    <TD class=list_left_box vAlign=top>请确认密码：</TD>
    <TD class=list_right_box>
    <INPUT type=password maxLength=20 size=30 name=confirm_password></TD>
  </TR>
  <TR>
    <TD>&nbsp;</TD>
    <TD style="PADDING-LEFT: 5px" height=35>&nbsp;
    <INPUT onclick="change();" type=button value="确 定" name=Change>
    </TD>
  </TR>
 </TBODY>
 </TABLE>
 </FORM><br><br>
 
 <c:if test="${promptQuestionInfo!=null}">
  <TABLE class=tx_box cellSpacing=0 cellPadding=0 width="100%" align=center>
  <TBODY>
  <TR>
    <TD vAlign=top align=middle width=80 rowSpan=2>
    <IMG height=53 src="<%=path%>/images/service/icon2.gif" width=53></TD>
    <TD class=tx_title height=20>对不起，您的提交失败了，请按照以下提示修改后重新提交</TD></TR>
  <TR>
    <TD class=tx_content>
    ${promptQuestionInfo}
    </TD></TR></TBODY>
   </TABLE><BR>
  </c:if>
 
 <TABLE cellSpacing=0 cellPadding=0 width="100%">
  <TBODY>
  <TR>
    <TD class=smalltitle>设置密码保护问题：</TD></TR>
  </TBODY>
 </TABLE>
 <FORM style="PADDING-RIGHT: 0px; PADDING-LEFT: 0px; PADDING-BOTTOM: 0px; MARGIN: 0px; PADDING-TOP: 0px" 
name=setQuestionAboutPassword action="modifyPassword.do" method=post>
<TABLE style="BORDER-RIGHT: #dddddd 1px solid; BORDER-TOP: #dddddd 1px solid; BORDER-LEFT: #dddddd 1px solid; BORDER-BOTTOM: #dddddd 1px solid" 
cellSpacing=0 cellPadding=0 width="100%" border=0>
  <INPUT type="hidden" value="questionAboutPasswordAction" name="action"> 
  <input type="hidden" value="${truename}" name="truename">
  <input type="hidden" value="${memberId}" name="memberId">
  <TR>
    <TD class=list_left_box vAlign=top>密码保护问题：</TD>
    <TD class=list_right_box>
    <INPUT id=password_question maxLength=50 size=30 name=password_question><BR>
    <FONT class=note>50个字符以内，建议用记忆深刻的问题，比如最亲密的人的名字</FONT></TD>
  </TR>
  <TR>
    <TD class=list_left_box vAlign=top>密码保护答案：</TD>
    <TD class=list_right_box>
    <INPUT id=password_answer maxLength=50 size=30 name=password_answer></TD>
  </TR>
  <TR>
    <TD class=list_left_box vAlign=top>确认密码保护答案：</TD>
    <TD class=list_right_box>
    <INPUT id=confirmAnswer maxLength=50 size=30 name=confirmAnswer><BR>
    <FONT class=note>重新输入密码保护答案</FONT></TD>
  </TR>
  <TR>
    <TD>&nbsp;</TD>
    <TD style="PADDING-LEFT: 5px" height=35>&nbsp;
    <INPUT onclick="changeProtect()" type=button value="确 定" name=ChangeProtect>
    </TD>
  </TR>
 </TABLE>
 </FORM>
 
  </body>
</html>
