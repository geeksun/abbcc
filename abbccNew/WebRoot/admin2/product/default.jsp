<%@ page contentType="text/html; charset=GBK" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<title>��Ʒ����_�����Ʒ</title>
</head>
<script language="javascript">
function show_set(mylink)
{
  window.open(mylink,'new','top=110,left=280,width=200,height=60,scrollbars=no')
}
</script>
<body bgcolor="#FFFFFF" marginheight=0 marginwidth=0 leftmargin=0>
<form name="search" method="post" action="[]">
<table width="800" border=0 align="center" cellPadding=3 cellSpacing=0>
  <tr>
    <td height=30>
    <font color="#ff0000">�����Ϣ���������Ӧ����</font>
    </td>
    <td>
    <td><img border=0 src="../images/search.gif"></td>
    <td>&nbsp;�����ؼ���:<input type="text" name="SearchText" size="25">&nbsp;&nbsp;
    <input align=absMiddle border=0 src="../images/search1.gif" type=image>
    </td>
   </tr>
</table>
</form>
<form name="search" method="post" action="[]">
<table width=800 border=0 align="center" cellPadding=0 cellSpacing=0>
  <tr>
    <td vAlign=top>
      <table border=1 borderColor=#111111 borderColorDark=#acd6ff borderColorLight=#acd6ff cellPadding=3 cellSpacing=1 height=50 width="98%">
        <tr>
          <td width="52" bgColor=#ddeeff align=center>���</td>
          <td width="333" align="center" bgColor=#ddeeff>��Ʒ����</td>
          <td align=middle width="210" bgColor=#ddeeff>��������</td>
          <td width="43" align="center" bgColor=#ddeeff>���</td>
          <td width="45" align="center" bgColor=#ddeeff><input type='submit' name="sub1" value='����'></td>
          <td width="44" align="center" bgColor=#ddeeff><input type='submit' value='ɾ��'></td>
        </tr>
        <tr height="25" bgcolor="#ffffff"> 
          <td width="52" height="20" align=center><font face="Arial">[]</font></td>
          <td width="333" height="20"><a href=edit.asp?id=[]>[]</a></td>
          <td width="210" height="20" align=left>[]</td>
          <td width="43" height="20" align="center"><a href='javascript:show_set(&quot;attribute.asp?id=[]&quot;)'><img src="../images/m_news.gif" border=0></a></td>
          <td width="45" height="20" align="center"><input type='checkbox' name='selAnnounce1' value='[]'></td>
          <td width="44" height="20" align="center"><input type='checkbox' name='selAnnounce' value='[]'></td>
        </tr>
      </table>
    </td>
  </tr>
</table>
</form>
<form name="[]" action="[]" method="post">
 <table width="95%" border="0" align="center" cellpadding="0" cellspacing="0" borderColorLight=#808080 borderColorDark=#ffffff>
    <tr>
    <td width="41%" align="left">��ǰҳ0/0</td>
    <td width="46%" align="right"> <a href="default.asp?page=1&searchtext=[]">��ҳ</a>| 
     <a href="default.asp?page=[]&searchtext=[]">��ҳ</a>|
      <a href="default.asp?page=[]&searchtext=[]">��ҳ</a> |
      <a href="default.asp?page=[]&searchtext=[]">βҳ</a>|ת����
      <select name="sel_page" onChange="javascript:location=this.options[this.selectedIndex].value;">
       <option value="default.asp?page=[]&searchtext=[]" selected>[]</option>
       <option value="default.asp?page=[]&searchtext=[]">[]</option>
     </select>ҳ
    </td>
    </tr>
</table>
</form>
</body>
</html>