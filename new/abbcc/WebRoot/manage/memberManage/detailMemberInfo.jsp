<%@ page language="java" import="java.util.*" pageEncoding="gbk"%>
<%@ taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jstl/fmt_rt" %>
<%
	String path = request.getContextPath();
%>
<html>
  <head>
    <title>��Ա��ϸ��Ϣ</title>
  </head>
  <body>
  <p>
  	��Ա��������
  </p>
   	<c:set var="hyjbxx" value="${hyjbxx}" scope="page"></c:set>
   	<c:set var="gsjbxx" value="${gsjbxx}" scope="page"></c:set>
   	<form action="">
   	<table>
   	<tr>
   	<td>��Ա��¼����</td><td><input type="text" name="hydlm" value="${hyjbxx.hydlm}"></td>
   	<td>��ʵ������</td><td><input type="text" name="zsxm" value="${hyjbxx.zsxm}"></td>
   	</tr>
   	<tr>
   	<td>��˾���ƣ�</td><td><input type="text" name="gsmc" value="${hyjbxx.gsmc}" size="40"></td>
   	<td>�̶��绰��</td><td><input type="text" name="gddh" value="${hyjbxx.gddh }"></td>
   	</tr>
   	<tr>
   	<td>��Ӫ��ַ��</td><td><input type="text" name="jydz" value="${hyjbxx.jydz}" size="40"></td>
   	<td>ְλ��</td><td><input type="text" name="zw" value="${hyjbxx.zw}"></td>
   	</tr>
   	<tr>
   	<td>��˾���ڵأ�</td><td><input type="text" name="gsszd" value="${hyjbxx.gsszd}" size="40"></td>
   	<td>�����ʼ���</td><td><input type="text" name="dzyx" value="${hyjbxx.dzyx}"></td>
   	</tr>
   	<tr>
   	<td>��Ӫ��ҵ��</td>
   	<td>
   	<select name="zyhy">
		<option value="1" <c:if test="${hyjbxx.zyhy=='1'}">selected</c:if>>������ҵ</option>
		<option value="2" <c:if test="${hyjbxx.zyhy=='2'}">selected</c:if>>������ҵ</option>
	</select>
   	</td>
   	<td>��Ӫ����</td>
   	<td>
   	<INPUT id=zyfx type=radio value=1 name=zyfx <c:if test="${gsjbxx.zyfx=='1'}">checked</c:if>>����
	<INPUT id=zyfx type=radio value=2 name=zyfx <c:if test="${gsjbxx.zyfx=='2'}">checked</c:if>>�ɹ�	
	<INPUT id=zyfx type=radio value=3 name=zyfx <c:if test="${gsjbxx.zyfx=='3'}">checked</c:if>>���߶���	
   	</td>
   	</tr>
   	<tr>
   	<td>��Ա���ͣ�</td>
   	<td>
   	<select name="memberType">
		<option value="0" <c:if test="${hyjbxx.memberType=='0'}">selected</c:if>>��ѻ�Ա</option>
		<option value="1" <c:if test="${hyjbxx.memberType=='1'}">selected</c:if>>��ͨ��Ա</option>
		<option value="2" <c:if test="${hyjbxx.memberType=='2'}">selected</c:if>>������Ա</option>
		<option value="3" <c:if test="${hyjbxx.memberType=='3'}">selected</c:if>>�����ͻ�Ա</option>
		<option value="4" <c:if test="${hyjbxx.memberType=='4'}">selected</c:if>>VIP�����ͻ�Ա</option>
	</select>
   	</td>
   	<td>�Ա�</td>
   	<td>
   	<INPUT id=xb type=radio value=0 name=xb <c:if test="${hyjbxx.xb=='0'}">checked</c:if>>��
	<INPUT id=xb type=radio value=1 name=xb <c:if test="${hyjbxx.xb=='1'}">checked</c:if>>Ů			
   	</td>
   	</tr>
   	<tr>
   	<td>ע��ʱ�䣺</td><td><input type="text" name="registTime" value="<fmt:formatDate pattern="yyyy-MM-dd" value="${hyjbxx.registTime}"/>"/></td>
   	<td>����ʱ�䣺</td><td><input type="text" name="scsj" value="<fmt:formatDate pattern="yyyy-MM-dd" value="${hyjbxx.scsj}"/>"/></td>
   	</tr>
   	<tr>
   	<td>��˾��飺</td>
   	<td colspan=3>
   	<textarea name="gsjs" rows=14 cols=80><c:out value="${gsjbxx.gsjs}"/></textarea>
   	</td>
   	</tr>
   	</table>
   	</form>
   	   
  </body>
</html>
