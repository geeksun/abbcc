<%@ page language="java" import="java.util.*" pageEncoding="gbk"%>
<%
	String path = request.getContextPath();
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>temp</title>

  </head>
  <frameset rows="80,*"> 
		<frame name="top" src="topMenu.jsp"> 
	<frameset cols="200,*"> 
		<frame name="lower_left" src="leftMenu.jsp" scrolling="NO" noresize> 
		<frame name="lower_right" src="main.jsp"> 
	</frameset> 
  </frameset> 
  <body>
  	<table>
        	<tr>
               	<td align=right>公司简介：<font color=red>*</font></td>
               	<td>
               		<SPAN class=note>请用中文详细说明贵司的成立历史、主营产品、品牌、服务等优势。</SPAN>
                    <TEXTAREA name= rows=10 cols=50 maxLength="1000"></TEXTAREA>
               	</td>
            </tr>
    </table>
  </body>
</html>
