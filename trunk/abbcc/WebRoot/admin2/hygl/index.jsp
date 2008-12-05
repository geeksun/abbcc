<%@ page contentType="text/html; charset=GBK" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<title>会员管理_新注册用户</title>
<style type="text/css">
<!--
body,td,th {
	font-size: 12px;
}
-->
</style>
<script language="javascript">
function show_set(mylink)
{
  window.open(mylink,'new','top=110,left=280,width=240,height=100,scrollbars=no')
}
</script>
</head>
<body>
<form name="form1" action="[]" method="get">
<table width="99%" border="0" align="center" cellpadding="0" cellspacing="1" bgcolor="#A3B2CC">
  <tr>
    <td width="100" bgcolor="#FFFFFF">&nbsp;</td>
    <td height="20" bgcolor="#FFFFFF"><img border="0" src="../images/search.gif" /></td>
    <td bgcolor="#FFFFFF"><input name="textfield" type="text" value="[]"/>
      <input name="image" type="image" src="../images/search1.gif" align="absmiddle" border="0" /></td>
    <td width="100" bgcolor="#FFFFFF">&nbsp;</td>
  </tr>
</table>
</form>
<table width="99%" border="0" align="center" cellpadding="0" cellspacing="0">
  <tr>
    <td width="5%" height="22">id</td>
    <td width="25%">公司名称</td>
    <td width="15%" align="center">会员类型</td>
    <td width="20%">注册时间</td>
    <td width="20%">到期时间</td>
    <td width="10%">审核</td>
  </tr>
</table>
<table width="99%" border="0" align="center" cellpadding="0" cellspacing="1" bgcolor="#A3B2CC">
  <tr bgcolor="#<% If i mod 2 =0 Then %>f7f7f7[]ffffff[]">
    <td width="5%" height="22"><font face="Arial">[]</font>
    <input type='checkbox' name='selAnnounce' value='[]' /></td>
    <td width="25%"><table width="100%" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td width="85%"><a href="edit.asp?id=[]&amp;menu=4">[]</a></td>
        <td width="15%" align="right"><a href="sendfriend.asp?id=[]">发信</a></td>
      </tr>
    </table></td>
    <td width="15%" align="center">
    	<select name="hylx">
			<option selected="selected" value="免费会员">免费会员</option>
			<option value="普通会员">普通会员</option>
			<option value="互动会员">互动会员</option>
			<option value="精致型会员">精致型会员</option>
			<option value="VIP定制型会员">VIP定制型会员</option>
		</select>
	</td>
    <td width="20%" align="center">[]</td>
    <td width="20%" align="center">[]</td>
    <td width="10%" align="center"><a href="javascript:show_set('user_sh.asp?id=[]')"><img border="0" alt="" src="../images/m_news.gif" /></a></td>
  </tr>
</table>
<!-- 这里分页 -->
</body>
</html>
