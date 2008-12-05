<%@ page contentType="text/html; charset=GBK"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<title>会员客服_邮件列表</title>
<script language=javascript>
	function ask()
	{
		return confirm("真的要删除吗？");
	}
</script>
<link rel="stylesheet" href="../../../admin/style.css" type="text/css"></link>
</head>
<body text="#000000" leftmargin="0" topmargin="0" marginwidth="0"	marginheight="0">
<table width="580" border="0" cellspacing="0" cellpadding="0" align="center">
  <tr> 
    <td width="20%">&nbsp;</td>
    <td width="27%"><font size="3" color="#FF0000">客户订阅的邮件</font></td>
    <td width="13%"><a href="mails.asp"><font size="3">邮件群发</font></a></td>
    <td width="20%"><font size="2"></font></td>
    <td width="20%" align="center">&nbsp;</td>
  </tr>
</table>
<Form name="search" method="POST" action="">
<table border=1 borderColor=#111111 borderColorDark=#acd6ff borderColorLight=#acd6ff cellPadding=3 cellSpacing=1 height=50 width="580" align="center">
  <tr> 
    <td width="50%" height="50" bgcolor="#ddeeff"> 
      <div align="center"><font size="2">邮件地址</font></div>
    </td>
    <td width="35%" align="center" height="50" bgcolor="#ddeeff"><font size="2">发布时间</font></td>
    <td width="15%" align="center" height="50" bgcolor="#ddeeff">
        <input type='submit' value='删除' name="submit">
      </td>
  </tr>
  <tr[]> 
      <td width="50%" height="25"> <font size="2"><a href="mailto:[]"><font color="#000000">[]</font></a></font></td>
      <td width="35%" height="25"><font size="2" color="#000000">[]
        </font></td>
      <td width="15%" align="center" height="25"><font size="2">&nbsp;&nbsp; 
        <input type='checkbox' name='selAnnounce' value='[]'>
        </font></td>
  </tr>
</table>
</form>
<table width="580" border="0" cellpadding="4" cellspacing="0" borderColorLight=#808080 borderColorDark=#ffffff align="center">
  <tr>
     <td width="13%" align="left">当前页[]/[]</td>
    <td width="41%" align="left">当前页0/0</td>
    <td width="46%" align="right"> <a href="admin_mail.asp?page=1"><font color="#000000">首页</font></a><font color="#000000">| 
      </font> <a href="admin_mail.asp?page=[]"><font color="#000000">上页</font></a><font color="#000000">| 
      <a href="admin_mail.asp?page=[]"><font color="#000000">下页</font></a> | 
      <a href="admin_mail.asp?page=[]"><font color="#000000">尾页</font></a>|</font>转到第 
      <select name="sel_page" onchange="javascript:location=this.options[this.selectedIndex].value;">
        <option value="add_news.asp?page=[]" selected>[]</option>
        <option value="add_news.asp?page=[]">[]</option>
      </select>
      页
    </td>
    </tr>
   </table>
</body>
</html>