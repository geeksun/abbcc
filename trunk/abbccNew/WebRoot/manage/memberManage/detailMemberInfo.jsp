<%@ page language="java" import="java.util.*" pageEncoding="gbk"%>
<%@ taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jstl/fmt_rt" %>
<%
	String path = request.getContextPath();
%>
<html>
  <head>
    <title>会员详细信息</title>
  </head>
  <body>
  <p>
  	会员基本资料
  </p>
   	<c:set var="hyjbxx" value="${hyjbxx}" scope="page"></c:set>
   	<c:set var="gsjbxx" value="${gsjbxx}" scope="page"></c:set>
   	<form action="">
   	<table>
   	<tr>
   	<td>会员登录名：</td><td><input type="text" name="hydlm" value="${hyjbxx.hydlm}"></td>
   	<td>真实姓名：</td><td><input type="text" name="zsxm" value="${hyjbxx.zsxm}"></td>
   	</tr>
   	<tr>
   	<td>公司名称：</td><td><input type="text" name="gsmc" value="${hyjbxx.gsmc}" size="40"></td>
   	<td>固定电话：</td><td><input type="text" name="gddh" value="${hyjbxx.gddh }"></td>
   	</tr>
   	<tr>
   	<td>经营地址：</td><td><input type="text" name="jydz" value="${hyjbxx.jydz}" size="40"></td>
   	<td>职位：</td><td><input type="text" name="zw" value="${hyjbxx.zw}"></td>
   	</tr>
   	<tr>
   	<td>公司所在地：</td><td><input type="text" name="gsszd" value="${hyjbxx.gsszd}" size="40"></td>
   	<td>电子邮件：</td><td><input type="text" name="dzyx" value="${hyjbxx.dzyx}"></td>
   	</tr>
   	<tr>
   	<td>主营行业：</td>
   	<td>
   	<select name="zyhy">
		<option value="1" <c:if test="${hyjbxx.zyhy=='1'}">selected</c:if>>照明行业</option>
		<option value="2" <c:if test="${hyjbxx.zyhy=='2'}">selected</c:if>>电子行业</option>
	</select>
   	</td>
   	<td>主营方向：</td>
   	<td>
   	<INPUT id=zyfx type=radio value=1 name=zyfx <c:if test="${gsjbxx.zyfx=='1'}">checked</c:if>>销售
	<INPUT id=zyfx type=radio value=2 name=zyfx <c:if test="${gsjbxx.zyfx=='2'}">checked</c:if>>采购	
	<INPUT id=zyfx type=radio value=3 name=zyfx <c:if test="${gsjbxx.zyfx=='3'}">checked</c:if>>两者都有	
   	</td>
   	</tr>
   	<tr>
   	<td>会员类型：</td>
   	<td>
   	<select name="memberType">
		<option value="0" <c:if test="${hyjbxx.memberType=='0'}">selected</c:if>>免费会员</option>
		<option value="1" <c:if test="${hyjbxx.memberType=='1'}">selected</c:if>>普通会员</option>
		<option value="2" <c:if test="${hyjbxx.memberType=='2'}">selected</c:if>>互动会员</option>
		<option value="3" <c:if test="${hyjbxx.memberType=='3'}">selected</c:if>>精致型会员</option>
		<option value="4" <c:if test="${hyjbxx.memberType=='4'}">selected</c:if>>VIP定制型会员</option>
	</select>
   	</td>
   	<td>性别：</td>
   	<td>
   	<INPUT id=xb type=radio value=0 name=xb <c:if test="${hyjbxx.xb=='0'}">checked</c:if>>男
	<INPUT id=xb type=radio value=1 name=xb <c:if test="${hyjbxx.xb=='1'}">checked</c:if>>女			
   	</td>
   	</tr>
   	<tr>
   	<td>注册时间：</td><td><input type="text" name="registTime" value="<fmt:formatDate pattern="yyyy-MM-dd" value="${hyjbxx.registTime}"/>"/></td>
   	<td>到期时间：</td><td><input type="text" name="scsj" value="<fmt:formatDate pattern="yyyy-MM-dd" value="${hyjbxx.scsj}"/>"/></td>
   	</tr>
   	<tr>
   	<td>公司简介：</td>
   	<td colspan=3>
   	<textarea name="gsjs" rows=14 cols=80><c:out value="${gsjbxx.gsjs}"/></textarea>
   	</td>
   	</tr>
   	</table>
   	</form>
   	   
  </body>
</html>
