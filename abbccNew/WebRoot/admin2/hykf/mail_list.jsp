<%@ page contentType="text/html; charset=GBK"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<title>��Ա�ͷ�_�ʼ��б�</title>
<script language=javascript>
	function ask()
	{
		return confirm("���Ҫɾ����");
	}
</script>
<link rel="stylesheet" href="../../../admin/style.css" type="text/css"></link>
</head>
<body text="#000000" leftmargin="0" topmargin="0" marginwidth="0"	marginheight="0">
<table width="580" border="0" cellspacing="0" cellpadding="0" align="center">
  <tr> 
    <td width="20%">&nbsp;</td>
    <td width="27%"><font size="3" color="#FF0000">�ͻ����ĵ��ʼ�</font></td>
    <td width="13%"><a href="mails.asp"><font size="3">�ʼ�Ⱥ��</font></a></td>
    <td width="20%"><font size="2"></font></td>
    <td width="20%" align="center">&nbsp;</td>
  </tr>
</table>
<Form name="search" method="POST" action="">
<table border=1 borderColor=#111111 borderColorDark=#acd6ff borderColorLight=#acd6ff cellPadding=3 cellSpacing=1 height=50 width="580" align="center">
  <tr> 
    <td width="50%" height="50" bgcolor="#ddeeff"> 
      <div align="center"><font size="2">�ʼ���ַ</font></div>
    </td>
    <td width="35%" align="center" height="50" bgcolor="#ddeeff"><font size="2">����ʱ��</font></td>
    <td width="15%" align="center" height="50" bgcolor="#ddeeff">
        <input type='submit' value='ɾ��' name="submit">
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
     <td width="13%" align="left">��ǰҳ[]/[]</td>
    <td width="41%" align="left">��ǰҳ0/0</td>
    <td width="46%" align="right"> <a href="admin_mail.asp?page=1"><font color="#000000">��ҳ</font></a><font color="#000000">| 
      </font> <a href="admin_mail.asp?page=[]"><font color="#000000">��ҳ</font></a><font color="#000000">| 
      <a href="admin_mail.asp?page=[]"><font color="#000000">��ҳ</font></a> | 
      <a href="admin_mail.asp?page=[]"><font color="#000000">βҳ</font></a>|</font>ת���� 
      <select name="sel_page" onchange="javascript:location=this.options[this.selectedIndex].value;">
        <option value="add_news.asp?page=[]" selected>[]</option>
        <option value="add_news.asp?page=[]">[]</option>
      </select>
      ҳ
    </td>
    </tr>
   </table>
</body>
</html>