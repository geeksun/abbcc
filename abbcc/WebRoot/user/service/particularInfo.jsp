<%@ page language="java" import="java.util.*" pageEncoding="gbk"%>
<%
	String path = request.getContextPath();
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>��˾��ϸ��Ϣ</title>

  </head>
  
  <body>
  	 <table>
        	<tr>
               	<td align=right>��˾��飺<font color=red>*</font></td>
               	<td>
               		<SPAN class=note>����������ϸ˵����˾�ĳ�����ʷ����Ӫ��Ʒ��Ʒ�ơ���������ơ�</SPAN>
                    <TEXTAREA name= rows=10 cols=50 maxLength="1000"></TEXTAREA>
               	</td>
            </tr>
    
     <tr>
    		<td align=right>��Ӫ��Ʒ��<font color=red>*</font></td>
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
    				<span class=note>��ÿ������ֲ�Ʒ���ƣ�����10�������£��磺ť�ۣ�</span>
    					</td>
    				</tr>
    			</table>
    		</td>
    	</tr>
    	</table>
  </body>
</html>
