<%@ page language="java" import="java.util.*" pageEncoding="gbk"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
	String path = request.getContextPath();
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>basicinfo of company</title>
	
  </head>
  
  <body>
  	公司基本资料
  	<c:set var="leaguer" value="${leaguer}" scope="page" ></c:set>
    <table width="80%" border="1" cellspacing="0" cellpadding="2" align="CENTER" bordercolor="F0E68C"> 
    	<tr>
    		<td>公司名称：*</td><td><input type="text" name="gsmc" value="${leaguer.gsmc}"></td>
    	</tr>
    	<!-- <tr>
    		<td> 公司英文名称：</td><td><input type="text"  name="enCorpName" size="40"></td>
    	</tr>
    	 -->
    	<tr>
    		<td>企业类型：*</td>
    		<td><select name="qylx" >
    			<option value="">其他</option>
					<option value="1">有限责任公司(独资)</option>
					<option value="2">股份有限公司(上市)</option>
					<option value="3" >股份有限公司(非上市)</option>
					<option value="4" >全民所有制企业</option>
					<option value="5" >集体所有制企业</option>
					<option value="6" >中外合资经营企业</option>
					<option value="7" >中外合作经营企业</option>
					<option value="8" >外商独资企业</option>
					<option value="9" >私营企业</option>
    		</td>
    	</tr>
    	<tr>
    		<td>经营模式：*</td>
    		<td>
    		<input type="checkbox" name="jyms"  value="1">生产加工
    		<input type="checkbox" name="jyms"  value="2">经销批发
    		<input type="checkbox" name="jyms"  value="3">招商代理
    		<input type="checkbox" name="jyms"  value="4">商业服务
    		<input type="checkbox" name="jyms"  value="5">以上都不是 <br>
    		（最多选择2种经营模式）
    		</td>
    	</tr>
    	<!--  
    	<tr>
    		<td>注册资本：*</td><td>人民币  万</td>
    	</tr>
    	-->
    	<tr>
    		<td>主要经营地点：*</td><td><input type="text" name="zyjydd" value="${leaguer.jydd }"></td>
    	</tr>
    	<tr>
    		<td></td><td></td>
    	</tr>
    </table>
  </body>
</html>
