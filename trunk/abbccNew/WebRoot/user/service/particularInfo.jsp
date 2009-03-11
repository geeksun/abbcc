<%@ page language="java" import="java.util.*" pageEncoding="gbk"%>
<%
	String path = request.getContextPath();
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>公司详细信息</title>

  </head>
  
  <body>
  	 <table>
        	<tr>
               	<td align=right>公司简介：<font color=red>*</font></td>
               	<td>
               		<SPAN class=note>请用中文详细说明贵司的成立历史、主营产品、品牌、服务等优势。</SPAN>
                    <TEXTAREA name= rows=10 cols=50 maxLength="1000"></TEXTAREA>
               	</td>
            </tr>
    
     <tr>
    		<td align=right>主营产品：<font color=red>*</font></td>
    		<td>
    			<table>
    				<tr>
    					<td>
    					<INPUT id=productionService_0 maxLength=20 size=10 name=zycp value="${leaguer.xsdcp}">
    					<INPUT id=productionService_1 maxLength=20 size=10 name=zycp value="${leaguer.cgdcp}">
    					<INPUT id=productionService_1 maxLength=20 size=10 name=zycp>
    					<INPUT id=productionService_1 maxLength=20 size=10 name=zycp>
    					</td>
    				</tr>
    				<tr>
    					<td>
    					<INPUT id=productionService_0 maxLength=20 size=10 name=zycp>
    					<INPUT id=productionService_1 maxLength=20 size=10 name=zycp>
    					<INPUT id=productionService_1 maxLength=20 size=10 name=zycp>
    					<INPUT id=productionService_1 maxLength=20 size=10 name=zycp>
    					</td>
    				</tr>
    				<tr>
    					<td>
    					<INPUT id=productionService_0 maxLength=20 size=10 name=zycp>
    					<INPUT id=productionService_1 maxLength=20 size=10 name=zycp>
    					<INPUT id=productionService_1 maxLength=20 size=10 name=zycp>
    					<INPUT id=productionService_1 maxLength=20 size=10 name=zycp>
    					<br>
    				<span class=note>（每空限填１种产品名称，建议10个字以下，如：钮扣）</span>
    					</td>
    				</tr>
    			</table>
    		</td>
    	</tr>
    	</table>
  </body>
</html>
