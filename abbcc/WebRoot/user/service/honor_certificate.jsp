<%@ page language="java" import="java.util.*" pageEncoding="gbk" contentType="text/html;charset=gbk"%>
<%@ taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="/WEB-INF/FCKeditor.tld" prefix="fck" %>

<%
	String path = request.getContextPath();
%>
<html>
  <head>
    <title>honor_certificate(����֤��)</title>
	<link rel="stylesheet" type="text/css" href="<%=path%>/css/service.css">
	<script src="<%=path%>/fckeditor.js"></script>
	
  </head>
  
  <body>
    <form action="fckdemo.jsp">
    <%
    	String content = request.getParameter("content");
    	if(content!=null){
    		content = content.replaceAll("\r\n","");
    		content = content.replaceAll("\r","");
    		content = content.replaceAll("\n","");
    		content = content.replaceAll("\"","");
    	}else{
    		content = "";
    	}
    
     %>
    <table width=100%>
	<tr>
	    <td colspan=4 style='text-align:center' width=100% height=50px>
	    <span>
	        <script type="text/javascript">
	            var oFCKeditor = new FCKeditor('content');  //�������Ϊ��Ԫ�أ���FCKeditor���ɵ�input��textarea����name
	            oFCKeditor.BasePath='/fckeditor/';			//ָ��FCKeditor��·����Ҳ����fckeditor.js���ڵ�·��
	            oFCKeditor.Height='100%';
	            oFCKeditor.ToolbarSet='Demo';				//ָ��������
	            oFCKeditor.Value="<%=content%>";			//Ĭ��ֵ
	            oFCKeditor.Create();
	        </script>
	    </span>
	    </td>
	</tr>
	<tr><td align=center><input type="submit" value="�ύ"></td></tr>
	<tr><td>&nbsp;</td></tr>
	<tr><td>ȡֵ����ֱ�ӱ��������ݿ⣩��</td></tr>
	<tr><td style="padding:10px;"><%=content%></td></tr>
	</table>
	    	
    
    </form>
    
  </body>
</html>
