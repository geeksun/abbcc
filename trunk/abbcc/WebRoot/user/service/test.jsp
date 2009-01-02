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
              value="" selected>--请选择--</OPTION> <OPTION value=1>台</OPTION> 
              <OPTION value=2>粒</OPTION> <OPTION value=3>座</OPTION> <OPTION 
              value=4>辆</OPTION> <OPTION value=5>只</OPTION> <OPTION 
              value=6>支</OPTION> <OPTION value=7>枝</OPTION> <OPTION 
              value=8>架</OPTION> <OPTION value=9>头</OPTION> <OPTION 
              value=10>张</OPTION> <OPTION value=PCE>块</OPTION> <OPTION 
              value=11>片</OPTION> <OPTION value=12>匹</OPTION> <OPTION 
              value=13>件</OPTION> <OPTION value=14>根</OPTION> <OPTION 
              value=15>条</OPTION> <OPTION value=16>把</OPTION> <OPTION 
              value=17>卷</OPTION> <OPTION value=18>副</OPTION> <OPTION 
              value=19>幅</OPTION> <OPTION value=PR>双</OPTION> <OPTION 
              value=DOZ>一打</OPTION> <OPTION value=20>份</OPTION> <OPTION 
              value=SET>套</OPTION> <OPTION value=21>棵</OPTION> <OPTION 
              value=22>箱</OPTION> <OPTION value=23>袋</OPTION> <OPTION 
              value=24>盒</OPTION> <OPTION value=25>包</OPTION> <OPTION 
              value=26>捆</OPTION> <OPTION value=27>筐</OPTION> <OPTION 
              value=28>瓶（罐）</OPTION> <OPTION value=MMT>毫米</OPTION> <OPTION 
              value=CMT>厘米</OPTION> <OPTION value=MRT>米</OPTION> <OPTION 
              value=KMT>千米</OPTION> <OPTION value=INH>英寸</OPTION> <OPTION 
              value=FOT>英尺</OPTION> <OPTION value=GLI>加仑 (英)</OPTION> <OPTION 
              value=GLL>加仑 (美)</OPTION> <OPTION value=GRM>克</OPTION> <OPTION 
              value=KGM>千克</OPTION> <OPTION value=LBR>磅</OPTION> <OPTION 
              value=MTN>公吨</OPTION> <OPTION value=LTN>吨 (英)</OPTION> <OPTION 
              value=LTS>吨 (美)</OPTION> <OPTION value=MLT>毫升</OPTION> <OPTION 
              value=LTR>公升</OPTION> <OPTION value=ONZ>盎司</OPTION> <OPTION 
              value=QTI>夸脱</OPTION> <OPTION value=PTI>品脱 (英)</OPTION> <OPTION 
              value=PTL>品脱 (美)</OPTION> <OPTION value=YRD>码</OPTION> <OPTION 
              value=FTK>平方英尺</OPTION> <OPTION value=INK>平方英寸</OPTION> <OPTION 
              value=MTK>平方米</OPTION> <OPTION value=YDK>平方码</OPTION> <OPTION 
              value=MTC>立方米</OPTION></SELECT> </TD>
  </body>
</html>
