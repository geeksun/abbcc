<%@ page contentType="text/html; charset=gbk" %> 
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
		<title></title>
	</head>
	<%
	int	productInfoCount = (Integer)request.getAttribute("productInfoCount" );
	int	overTimeCount=(Integer)request.getAttribute("overTimeCount" );
	int	newProductInfoCount=(Integer)request.getAttribute("newProductInfoCount" );
	int	messageCount=(Integer)request.getAttribute("messageCount" );
	int	readMessageCount=(Integer)request.getAttribute("readMessageCount" );
	int	unreadMessageCount=(Integer)request.getAttribute("unreadMessageCount" );
	int	replayMessageCount=(Integer)request.getAttribute("replayMessageCount" );
	
	
	 %>
	<body>
		<table width="100%" border="0" cellpadding="0" cellspacing="1" bgcolor="FFBB00">
            <tr>
               ��.	����<%=productInfoCount %>��������Ϣ <br>
               ��.	<%=overTimeCount %>���ѹ���<br>
               ��.	<%=newProductInfoCount %>���¼�<br>
            </tr>
             <tr>
                 ����  �ܹ�<%=messageCount %>����<%=unreadMessageCount %>��δ����<%=readMessageCount%>���Ѷ���<%=replayMessageCount %>���ظ� ��
            </tr>
             
         </table>
	</body>
</html>

