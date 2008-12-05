<%@ page contentType="text/html; charset=GBK" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<title>会员管理_未审核未付费会员</title>
</head>
<body bgcolor="#FFFFFF" marginheight=0 marginwidth=0 leftmargin=0>
<script language="javascript">
function show_set(mylink)
{
  window.open(mylink,'new','top=110,left=280,width=240,height=60,scrollbars=no')
}
</script>
<form name="search" method="post" action="[]">
<table border=0 cellPadding=3 cellSpacing=1 width="600" align="center">
  <tr>    
    <td height=30>
    <font color="#ff0000">点击公司名称进行相应操作</font>
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
<center>
  <table border=0 cellPadding=0 cellSpacing=0 width=700>
  <tr>
    <td valign=top>
      <form name="search" method="POST" action="">
          <table border=1 borderColor=#111111 borderColorDark=#acd6ff borderColorLight=#acd6ff cellPadding=3 cellSpacing=1 height=50 width="98%"> 
            <tr> 
              <td width="35" bgColor=#ddeeff align="center">ID号</td>
              <td width="237" align="center" bgcolor=#ddeeff>公司名称</td>
              <td width="73" align="center" bgcolor=#ddeeff>开始日期</td>
              <td width="70" align="center" bgcolor=#ddeeff>结束日期</td>
              <td width="36" align="center" bgColor=#ddeeff>审核</td>
              <td width="54" align="center" bgcolor=#ddeeff>产品点击统计</td>
              <td width="66" align="center" bgcolor=#ddeeff> 
                <a href="Charge.asp?dl=t">登陆次数</a> 
              </td>
              <td width="43" align="center" bgColor=#ddeeff> 
                <input type='submit' value='删除'>
              </td>
            </tr>
            <tr height="20" bgcolor="#ffffff"> 
              <td width="35" align="center"><font face="Arial">[]</font></td>
              <td width="237">
                <table width="100%" border="0" cellspacing="0" cellpadding="0">
                  <tr>
                    <td width="88%"><a href=edit.asp?id=[]&menu=4>[]</a></td>
                    <td width="12%" align="right"><a href="sendfriend.asp?id=[]">发信</a></td>
                  </tr>
                </table>
              </td>
              <td width="73" align=center>[]</td>
              <td width="70" align=center>[]</td>
              <td width="36" align="center"><a href='javascript:show_set(&quot;attribute2.asp?id=[]&quot;)'><img border="0" alt="" src="../images/m_news.gif"></a></td>
              <td width="54" align="center">
                  <a href='javascript:show_set(&quot;pl_s.asp?id=[]&pl_s=[]&quot;)'>[]</a> </td>
              <td width="66" align="center">[]</td>
              <td width="43" align="center"> 
                <input type='checkbox' name='selAnnounce' value='[]'>
              </td>
            </tr>
          </table>
        </form>
    </td>
  </tr>
</table>
<!-- 这里分页 -->
</center>
</body>
</html>
