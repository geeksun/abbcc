<%@ page contentType="text/html; charset=GBK" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<title>人才市场_招聘信息</title>
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
    <font color="#ff0000">点击招聘岗位进行相应操作</font>
    </td>
    <td>
    <td><img border=0 src="../images/search.gif"></td>
    <td>&nbsp;搜索关键字:<input type="text" name="SearchText" size="25">&nbsp;&nbsp;
    <input align=absMiddle border=0 src="../images/search1.gif" type=image>
    </td>
   </tr>
</table>
</form>
<br>
<table width="600" border="0" cellspacing="0" cellpadding="3">
  <tr>
    <td>
    <img src="../images/li.gif"> <a href="default.asp?j_flag=1">已审核信息</a>&nbsp;&nbsp;&nbsp;<img src="../images/li.gif"> <a href="default.asp?j_flag=0">未审核信息</a>
   </td>
  </tr> 
</table>
<table border=0 cellPadding=0 cellSpacing=0 width=600>
  <tr>
    <td vAlign=top>
      <form name="search" method="POST" action="[]">
      <table border=1 borderColor=#111111 borderColorDark=#acd6ff borderColorLight=#acd6ff cellPadding=3 cellSpacing=1 height=50 width="98%">
        <tr>
          <td bgColor=#ddeeff height=23 width="26%" align=center>招聘职位</td>
          <td bgColor=#ddeeff height=23 width="29%" align=center>公司名称</td>
          <td bgColor=#ddeeff height=23 width="12%" align=center>发布日期</td>
          <td bgColor=#ddeeff width="7%" align="center">审核</td>
          <td bgColor=#ddeeff height=23 width="7%" align=center><input type='submit' value='删除'></td>
        </tr>
        <tr>
          <td bgColor=#ffffff height=23 width="26%"><A href='edit.asp?jobid=[]'>[]</A></td>
          <td bgColor=#ffffff height=23 width="29%">[]</td>
          <td bgColor=#ffffff height=23 width="12%" align=center>[]</td>
          <td align="center"><a href='javascript:show_set(&quot;attribute.asp?id=[]&quot;)'><img src="../images/m_news.gif" border=0><img src="../images/m_olds.gif" border=0></a></td>
          <td bgColor=#ffffff height=23 width="7%" align=center><input type='checkbox' name='selAnnounce' value='[]'></td>
        </tr>
      </table>
      </form>
    </td>
  </tr>
</table>
<table width="95%" border="0" cellpadding="4" cellspacing="0" borderColorLight=#808080 borderColorDark=#ffffff>
    <tr>
    <td width="41%" align="left">当前页0/0</td>
    <td width="46%" align="right"> <a href="default.asp?page=1&j_flag=1">首页</a>| 
     <a href="default.asp?page=[]&j_flag=1">上页</a>|
      <a href="default.asp?page=[]&j_flag=1">下页</a> |
      <a href="default.asp?page=[]&j_flag=1">尾页</a>|转到第
      <select name="sel_page" onChange="javascript:location=this.options[this.selectedIndex].value;">
       <option value="default.asp?page=[]&j_flag=1" selected>[]</option>
     </select>页
    </td>
    </tr>
   </table>
</center>
</body>
</html>