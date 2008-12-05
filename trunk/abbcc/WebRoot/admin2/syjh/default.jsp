<%@ page contentType="text/html; charset=GBK" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<title>商业机会_商业机会</title>
</head>
<script language="javascript">
function show_set(mylink)
{
  window.open(mylink,'new','top=110,left=280,width=200,height=60,scrollbars=no')
}
</script>
<body bgcolor="#FFFFFF" marginheight=0 marginwidth=0 leftmargin=0>
<center>
<form name="search" method="post" action="[]">
<table border=0 cellPadding=3 cellSpacing=0 width="600">
  <tr>
		<td height=30>
		<font color="#ff0000">点击信息标题进行相应操作</font>	</td>
		<td>
			<img border=0 src="../images/search.gif">		</td>
		<td>&nbsp;搜索关键字:<input type="text" name="SearchText" size="25">&nbsp;&nbsp;
			<input align=absMiddle border=0 src="../images/search1.gif" type=image></td>
   </tr>
  <tr>
    <td height=30 colspan="3"><font color="#079807"><a href="?i_type=0">供应</a>&nbsp; <a href="?i_type=1">求购</a></font>&nbsp;&nbsp; <font color="#079807"><a href="?i_type=2">代理</a>&nbsp;&nbsp; <a href="?i_type=3">合作</a></font></td>
    </tr>
</table>
</form>
</center>
<form name="search" method="post" action="[]">
<table width=700 border=0 align="center" cellPadding=0 cellSpacing=0>
<tr>
    <td vAlign=top>
      <table border=1 borderColor=#111111 borderColorDark=#acd6ff borderColorLight=#acd6ff cellPadding=3 cellSpacing=1 width="100%">      
        <tr>
          <td width="41" bgColor=#ddeeff align="center">编号</td>
          <td width="281" align="center" bgColor=#ddeeff>信息标题</td>
          <td width="74" align="center" bgColor=#ddeeff>发布人</td>
          <td width="116" align="center" bgColor=#ddeeff>发布日期</td>
          <td width="38" align="center" bgColor=#ddeeff>审核</td>
          <td width="42" align="center" bgColor=#ddeeff><input type='submit' name="sub1" value='批审'></td>
          <td width="42" align="center" bgColor=#ddeeff><input type='submit' name="sub2" value='删除'></td>
        </tr>
		</table>
		<table border=1 borderColor=#111111 borderColorDark=#acd6ff borderColorLight=#acd6ff cellPadding=3 cellSpacing=1 width="100%">
        <tr height="20" bgcolor="#ffffff"> 
          <td width="41" align="center">
		    <font face="Arial"><a href="[]" target="_blank">[]1</a></font></td>
          <td width="281">
		    <font color="#079807">
			【供应】
			【求购】
			【代理】
			【合作】
			</font><a href="edit.asp?Info_id=[]&pageid=[]">[]</a>
		</td>
        <td width="74" align="center">[]</td>
        <td width="116" align="center">[]</td>
        <td width="38" align="center">
		   <a href="javascript:show_set('attribute.asp?id=[]')"><img src="../images/m_news.gif" border=0></a></td>
          <td width="42" align="center"><input type="checkbox" name="selAnnounce1" value="[]"></td>
		  <td width="42" align="center"><input type="checkbox" name="selAnnounce" value="[]"></td>
        </tr>
</table>
    </td>
  </tr>
</table>
</form>
<table width="700" border="0" align="center" cellpadding="0" cellspacing="0">
  <tr>
    <td align="right"><strong>每页显示<font color="#ff6600">[]</font>条信息 &nbsp; 当前<font color="#ff6600">[]</font> 页&nbsp; 共<font color="#ff6600">[]</font> 页
	<font color="#666666"><a href="?page=[]&i_type=[]">上一页</a>上一页</font> 　 
    <font color="#666666"><a href="?page=[]&i_type=[]">下一页</a>下一页
	<select name="sel_page" onChange="javascript:location=this.options[this.selectedIndex].value;">
       <option value="default.asp?page=[]&i_type=[]" []selected[]>[]</option>
    </select>
    </font></strong></td>
  </tr>
</table>
</body>
</html>
