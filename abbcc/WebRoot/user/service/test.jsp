<%@ page language="java" import="java.util.*" pageEncoding="gbk"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>My JSP 'test.jsp' starting page</title>
    <script src="<%=path%>/js/prototype140.js"></script>
	<script type="text/javascript">
		function test(){
    		alert('ok');
    		//var url = "/traceInfo.do?action=displayBasicInfo";
    		var url = "<%=request.getContextPath()%>/checkName.do";
    		alert(url);
    		var pars = "topCatFormKey="+$("topCatFormKey").value;
    		alert(pars);
		    var myAjax = new Ajax.Request(url,{method: 'post', parameters: pars, onComplete: showChecked});
	  	alert('run');
	  	}
	  	function test2(){
	  		alert('333');
	  	}
	</script>
  </head>
  
  <body>
       <input type="button" onclick="test()" value="testajax" >
        <input type="button" onclick="test2()" value="test2x" >
        <TD class=list_right_box vAlign=top>
        <INPUT onblur=blurEvent2(10,this) maxLength=32 size=8 name=_fmc.p._0.pro> 
            <SELECT onblur=blurEvent2(10,this) name=_fmc.p._0.prod> <OPTION 
              value="" selected>--��ѡ��--</OPTION> <OPTION value=1>̨</OPTION> 
              <OPTION value=2>��</OPTION> <OPTION value=3>��</OPTION> <OPTION 
              value=4>��</OPTION> <OPTION value=5>ֻ</OPTION> <OPTION 
              value=6>֧</OPTION> <OPTION value=7>֦</OPTION> <OPTION 
              value=8>��</OPTION> <OPTION value=9>ͷ</OPTION> <OPTION 
              value=10>��</OPTION> <OPTION value=PCE>��</OPTION> <OPTION 
              value=11>Ƭ</OPTION> <OPTION value=12>ƥ</OPTION> <OPTION 
              value=13>��</OPTION> <OPTION value=14>��</OPTION> <OPTION 
              value=15>��</OPTION> <OPTION value=16>��</OPTION> <OPTION 
              value=17>��</OPTION> <OPTION value=18>��</OPTION> <OPTION 
              value=19>��</OPTION> <OPTION value=PR>˫</OPTION> <OPTION 
              value=DOZ>һ��</OPTION> <OPTION value=20>��</OPTION> <OPTION 
              value=SET>��</OPTION> <OPTION value=21>��</OPTION> <OPTION 
              value=22>��</OPTION> <OPTION value=23>��</OPTION> <OPTION 
              value=24>��</OPTION> <OPTION value=25>��</OPTION> <OPTION 
              value=26>��</OPTION> <OPTION value=27>��</OPTION> <OPTION 
              value=28>ƿ���ޣ�</OPTION> <OPTION value=MMT>����</OPTION> <OPTION 
              value=CMT>����</OPTION> <OPTION value=MRT>��</OPTION> <OPTION 
              value=KMT>ǧ��</OPTION> <OPTION value=INH>Ӣ��</OPTION> <OPTION 
              value=FOT>Ӣ��</OPTION> <OPTION value=GLI>���� (Ӣ)</OPTION> <OPTION 
              value=GLL>���� (��)</OPTION> <OPTION value=GRM>��</OPTION> <OPTION 
              value=KGM>ǧ��</OPTION> <OPTION value=LBR>��</OPTION> <OPTION 
              value=MTN>����</OPTION> <OPTION value=LTN>�� (Ӣ)</OPTION> <OPTION 
              value=LTS>�� (��)</OPTION> <OPTION value=MLT>����</OPTION> <OPTION 
              value=LTR>����</OPTION> <OPTION value=ONZ>��˾</OPTION> <OPTION 
              value=QTI>����</OPTION> <OPTION value=PTI>Ʒ�� (Ӣ)</OPTION> <OPTION 
              value=PTL>Ʒ�� (��)</OPTION> <OPTION value=YRD>��</OPTION> <OPTION 
              value=FTK>ƽ��Ӣ��</OPTION> <OPTION value=INK>ƽ��Ӣ��</OPTION> <OPTION 
              value=MTK>ƽ����</OPTION> <OPTION value=YDK>ƽ����</OPTION> <OPTION 
              value=MTC>������</OPTION></SELECT> </TD>
  </body>
</html>
