<%@ page language="java" import="java.util.*" pageEncoding="gbk" contentType="text/html;charset=gbk"%>
<%@ taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="/WEB-INF/FCKeditor.tld" prefix="fck" %>
<%
	String path = request.getContextPath();
%>
<html>
  <head>
    <title>honor_certificate(����֤��)</title>
    <meta http-equiv="Content-Type" content="text/html; charset=gbk">
	<link rel="stylesheet" type="text/css" href="<%=path%>/css/service.css">
	<script type="text/javascript" src="<%=path%>/FCKeditor/fckeditor.js"></script>
	<script type="text/javascript" src="<%=path %>/js/common.js"></script>
	<script type="text/javascript">
		function checkHonor(){
			var frmHonor = document.honorCertificateForm;
			var oEditor = FCKeditorAPI.GetInstance('content');
			var topiccontent = oEditor.GetXHTML(true);
			if( trim(topiccontent)==""){
				alert("�������ݲ���Ϊ�գ�");
				return false;
			}
			if(topiccontent.length>=5000){
				alert("����������ӹ������������ݵĳ��Ȳ��ܳ���5000���֣�");
				return false;
			}
			frmHonor.submit();
		}
	</script>
  </head>
  <body>
  <c:if test="${checkfile_Info!=null}">
  <TABLE class=tx_box cellSpacing=0 cellPadding=0 width="100%" align=center>
  <TBODY>
  <TR>
    <TD vAlign=top align=middle width=80 rowSpan=2>
    <IMG height=53 src="<%=path%>/images/service/icon2.gif" width=53></TD>
    <TD class=tx_title height=20>�Բ��������ϴ�ʧ����</TD></TR>
  <TR>
    <TD class=tx_content>
    ${checkfile_Info}
    </TD></TR></TBODY>
   </TABLE><BR>
  </c:if>
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
  <TABLE cellSpacing=0 cellPadding=0 width="100%">
  <TBODY>
  <TR>
    <TD class=bigtitle width="53%">�༭����֤��</TD>
    <TD align=right width="47%">
    </TD></TR>
    </TBODY>
  </TABLE><BR>
  
  <form action="<%=path%>/strengthInfo.do" name="honorCertificateForm" method="post" enctype="multipart/form-data">
  	<input type="hidden" name="action" value="honorTest">
   <table border="0" width="700">
   <tr>
   <td>
	<textarea id="content" name="content" style="WIDTH: 100%; HEIGHT: 400px">input</textarea>
	<script type="text/javascript">
		var oFCKeditor = new FCKeditor('content') ;		//�������Ϊ��Ԫ�أ���FCKeditor���ɵ�input��textarea����name
		oFCKeditor.BasePath = "<%=path%>/FCKeditor/" ;  //ָ��FCKeditor��·����Ҳ����fckeditor.js���ڵ�·��
		oFCKeditor.Height = 400;
		oFCKeditor.ToolbarSet = "Default" ;				//ָ�������� Default
		//oFCKeditor.Value="<%=content%>";			      //Ĭ��ֵ
		//oFCKeditor.Create();
		oFCKeditor.ReplaceTextarea();					//Ĭ��ֵ
	</script>
	</td></tr>
	<tr><td align="center">
	<input type="button" onClick="checkHonor()" value=" �� �� ">&nbsp;<input type="button" onClick="FCKeditorAPI.GetInstance('content').SetHTML('')" value=" �� �� ">
	</td></tr>
	</table>
	</form>
	
	
  </body>
</html>
