<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>My JSP 'check1.jsp' starting page</title>

  </head>
  <body>
  		<script type="text/javascript">
  			var zz = new Array();
  		</script>
      <%
      	String test = "0101,0102,0104,0106";
		if(test!=null)
		{
		String[] strArray = test.split(",");
		for( int i=0 ; i<strArray.length ; i++)
		{
		%>
		<script language="javascript">
		var aa = "<%=strArray[i]%>";
		//我得意思是下面的checkbox的值与aa相等的时候，就让该checkbox变成checked,我该怎么实现
		//这样子报找不到对象
		alert(aa);
		//alert(document.all.fabu.name.value);
		
		if(document.all("fabu").elements[<%=i%>].value==aa)
		{
			alert('oo');
			document.all("fabu").innerHTML = "checked";
		}
		</script>
		<%
		}
		}
		
		%>
		<script type="text/javascript">
			function check(values) {
			for(var c=0; c<values.length; c++) {
				isequals2(values[c] + '');
			}
		} // end check()
		
		function isequals2(v) {
			var chboxies = document.getElementsByName('fabu');
			if(chboxies.length) {
				for(var c=0; c<chboxies.length; c++) {
					if(v == chboxies[c].value) {
						chboxies[c].checked = 'checked';
					}
				}
			}
		}
		</script>
		<form name="sum">
		<INPUT type="checkbox" id="fabu" name="fabu" value="0101" >查看
		<INPUT type="checkbox" id="fabu" name="fabu" value="0102" >增加
		<INPUT type="checkbox" id="fabu" name="fabu" value="0103" >修改
		<INPUT type="checkbox" id="fabu" name="fabu" value="0104" >审核
		<INPUT type="checkbox" id="fabu" name="fabu" value="0105" >发布
		<INPUT type="checkbox" id="fabu" name="fabu" value="0106" >撤销发布
		<INPUT type="checkbox" id="fabu" name="fabu" value="0107" >删除
		</form>
		<a href="#" onclick="check(zz);">bbb</a>
  </body>
</html>
