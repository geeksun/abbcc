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
               １.	共有<%=productInfoCount %>条供求信息 <br>
               ２.	<%=overTimeCount %>条已过期<br>
               ３.	<%=newProductInfoCount %>条新加<br>
            </tr>
             <tr>
                 留言  总共<%=messageCount %>条，<%=unreadMessageCount %>条未读，<%=readMessageCount%>条已读，<%=replayMessageCount %>条回复 。
            </tr>
             
         </table>
	</body>
</html>

