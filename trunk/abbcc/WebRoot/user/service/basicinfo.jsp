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
  	��˾��������
  	<c:set var="leaguer" value="${leaguer}" scope="page" ></c:set>
    <table width="80%" border="1" cellspacing="0" cellpadding="2" align="CENTER" bordercolor="F0E68C"> 
    	<tr>
    		<td>��˾���ƣ�*</td><td><input type="text" name="gsmc" value="${leaguer.gsmc}"></td>
    	</tr>
    	<!-- <tr>
    		<td> ��˾Ӣ�����ƣ�</td><td><input type="text"  name="enCorpName" size="40"></td>
    	</tr>
    	 -->
    	<tr>
    		<td>��ҵ���ͣ�*</td>
    		<td><select name="qylx" >
    			<option value="">����</option>
					<option value="1">�������ι�˾(����)</option>
					<option value="2">�ɷ����޹�˾(����)</option>
					<option value="3" >�ɷ����޹�˾(������)</option>
					<option value="4" >ȫ����������ҵ</option>
					<option value="5" >������������ҵ</option>
					<option value="6" >������ʾ�Ӫ��ҵ</option>
					<option value="7" >���������Ӫ��ҵ</option>
					<option value="8" >���̶�����ҵ</option>
					<option value="9" >˽Ӫ��ҵ</option>
    		</td>
    	</tr>
    	<tr>
    		<td>��Ӫģʽ��*</td>
    		<td>
    		<input type="checkbox" name="jyms"  value="1">�����ӹ�
    		<input type="checkbox" name="jyms"  value="2">��������
    		<input type="checkbox" name="jyms"  value="3">���̴���
    		<input type="checkbox" name="jyms"  value="4">��ҵ����
    		<input type="checkbox" name="jyms"  value="5">���϶����� <br>
    		�����ѡ��2�־�Ӫģʽ��
    		</td>
    	</tr>
    	<!--  
    	<tr>
    		<td>ע���ʱ���*</td><td>�����  ��</td>
    	</tr>
    	-->
    	<tr>
    		<td>��Ҫ��Ӫ�ص㣺*</td><td><input type="text" name="zyjydd" value="${leaguer.jydd }"></td>
    	</tr>
    	<tr>
    		<td></td><td></td>
    	</tr>
    </table>
  </body>
</html>
