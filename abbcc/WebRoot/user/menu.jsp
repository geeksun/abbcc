 <%@ page language="java"  pageEncoding="gbk"%>
<%@page import="com.abbcc.common.AppConstants" %>
<%
	String path = request.getContextPath();
%> 
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>welcome to abbcc</title> 
	  <style type="text/css">
			dl{	background-color:#FFDAB9;color:#000E00;width:200px;}
			dt{ cursor:pointer;width:100%;background-color:#F0E68C;}
			.expand {overflow:visible;}
			.collapse {height:16px;overflow:hidden;}
		</style>
		<script type="text/javascript">
			function toggleDl(dt){
				var dl = dt.parentNode;
				if("collapse" == dl.className) dl.className = "expand";
				else dl.className = "collapse";	
			}
		</script>
  </head> 
  <body>
     <dl>
     	<dt onclick="toggleDl(this)">������Ϣ����</dt>
     	<dd><a href="<%=path%>/traceInfo.do?action=displayBasicInfo" target="right">�������Ϲ���</a></dd>
     	<dd>��̨�����޸�</dd>
     	<dd><a href="<%=path%>/traceInfo.do?action=displayDetailInfo" target="right">��˾���</a></dd> 
     	<dd>����֤��</dd>
     	<dd>����ʵ��</dd>
     	<dd>�ϴ���˾��־</dd>
     </dl>
     <dl>
     	<dt onclick="toggleDl(this)">�������</dt>
     	<dd><a href="<%=path%>/user/product/category.jsp" target="right">������Ϣ</a></dd>
     	<dd><a href="<%=path%>/productInfo.do?method=productList&auditType=<%=AppConstants.CPGQXX_SFYX_1 %>&orderType=<%=AppConstants.CPGQXX_SFYX_1 %>&overdue=<%=AppConstants.CPGOXX_UN_OVERDUE %>" target="right">��������Ϣ</a></dd>
     </dl>
     <dl>	
     	<dt onclick="toggleDl(this)">��Ʒ����</dt>
     </dl>
      <dl>
     	<dt onclick="toggleDl(this)">�ҵ����</dt>
     	<dd><a href="<%=path%>/user/comment/comment.jsp" target="right">���۶������</a></dd>
     	<dd>���ʻ����� </dd>
     	<dd>�������</dd>
     	<dd>�ӽ��4</dd>
 
     </dl>
     <dl>
     	<dt onclick="">���Թ���</dt>
     	<dd><a href="<%=path %>/user/message/addMessage.jsp" target="right">����</a></dd>
     	<dd><a href="<%=path%>/message.do?method=listAllMessage&currentPage=1" target="right">���յ�������</a></dd>
     	<dd><a href="<%=path %>/message.do?method=listSendMessage" target="right">�ҷ���������</a></dd>
     	<dd><a href="<%=path %>/message.do?method=listSellMessage&type=1" target="right">��Ӧ��Ϣ����</a></dd>
     	<dd><a href="<%=path %>/message.do?method=listBuyMessage&type=2" target="right">����Ϣ����</a></dd>
 		<dd><a href="<%=path %>/message.do?method=userList" target="right">���Բ���</a></dd>
     	<dt onclick="toggleDl(this)">ϵͳ��̨��Ʒ</dt>
     	<dd><a href="<%=path%>/admin/product.do?method=showProduct" target="right">��Ӳ�Ʒ</a></dd>
     	<dd><a href="<%=path%>/admin/productType.do?method=showProductType" target="right">��Ӳ�Ʒ��Ŀ</a></dd>
     	<dd><a href="<%=path%>/admin/product.do?method=productInfoList&auditType=<%=AppConstants.CPGQXX_SFYX_2 %>&overdue=<%=AppConstants.CPGOXX_UN_OVERDUE %>" target="right">��Ʒ�б�</a></dd>
     	<dd>�ӽ��3</dd>
     	<dd>�ӽ��4</dd>
 
     </dl>
     <dl>
     	<dt onclick="toggleDl(this)">���Թ���</dt>
     </dl>
  </body>
</html>
 