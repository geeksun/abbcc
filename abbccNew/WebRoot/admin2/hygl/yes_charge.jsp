<%@ page contentType="text/html; charset=GBK" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<title>��Ա����_�Ѹ��ѻ�Ա</title>
</head>
<body bgcolor="#FFFFFF" marginheight=0 marginwidth=0 leftmargin=0>
<script language="javascript">
function show_set(mylink)
{
  window.open(mylink,'new','top=110,left=280,width=340,height=150,scrollbars=no')
}
</script>
<form name="search" method="post" action="yp_serve.jsp">
<table border=0 cellPadding=3 cellSpacing=1 width="735" align="center">
  <tr>    
    <td width="28" height="30"><img border=0 src="../images/search.gif"></td>
    <td>�ؼ���:<input type="text" name="SearchText" size="25">δ��¼����
      <select name="days">
	  	<option value="" selected>����</option>
		<option value="1">1����</option>
		<option value="2">2����</option>
		<option value="3">3����</option>
		<option value="4">4����</option>
		<option value="5">5����</option>
		<option value="6">6����</option>
		<option value="7">7����</option>
		<option value="8">8����</option>
		<option value="9">9����</option>
		<option value="10">10����</option>
		<option value="15">15����</option>
		<option value="20">20����</option>
		<option value="30">30����</option>
		<option value="45">45����</option>
		<option value="60">60����</option>
		<option value="70">70����</option>
		<option value="80">80����</option>
		<option value="90">90����</option>
		<option value="365">365����</option>
      </select>
	  �����¼�Ļ�Ա
      <select name="dayss">
	  	<option value="" selected>����</option>
		<option value="1">1����</option>
		<option value="2">2����</option>
		<option value="3">3����</option>
		<option value="4">4����</option>
		<option value="5">5����</option>
		<option value="6">6����</option>
		<option value="7">7����</option>
		<option value="8">8����</option>
		<option value="9">9����</option>
		<option value="10">10����</option>
		<option value="15">15����</option>
		<option value="20">20����</option>
		<option value="30">30����</option>
		<option value="45">45����</option>
		<option value="60">60����</option>
      </select>
      <select name="inquery">
	  <option value="" selected>��ѯ���</option>
	  <option value="1">����ѯ</option>
	  <option value="2">��δ����ѯ</option>
      </select><input name="image" type=image src="../images/search1.gif" align=absMiddle border=0>
	</td> 
   </tr>
</table>
</form>
<br>
  <table width=735 border=0 align="center" cellPadding=0 cellSpacing=0>
  <tr>
    <td vAlign=top>   
	  <table border=1 bordercolor=#111111 bordercolordark=#acd6ff bordercolorlight=#acd6ff cellpadding=3 cellspacing=1 height=50 width="100%">
        <tr height=25 bgcolor="#e8f4ff">
          <td width="32" align="center" bgcolor=#ddeeff><a href="yp_serve.asp?orderflag=landcous&[]">ID��</a></td>
          <td width="186" align="center" bgcolor=#ddeeff>��˾����</td>
          <td width="61" align="center" bgcolor=#ddeeff>�ճ��ʼ�</td>
          <td width="54" align="center" bgcolor=#ddeeff>���͵�¼֪ͨ</td>
          <td width="50" align="center" bgcolor=#ddeeff>δ��¼����</td>
          <td width="34" align="center" bgcolor=#ddeeff>��־</td>
          <td width="39" align="center" bgcolor=#ddeeff>�ͻ���ѯ</td>
          <td width="37" align="center" bgcolor=#ddeeff><a href="yp_serve.asp?orderflag=landcous&[]">��½����</a></td>
          <td width="61" align="center" bgcolor=#ddeeff>����¼ʱ��</td>
          <td width="88" align="center" bgcolor=#ddeeff>��¼IP</td>
        </tr>
        <tr height="20" bgcolor="#ffffff">
          <td width="32" align="center"><font face="Arial">[]</font></td>
          <td width="186"><a href=edit.asp?id=[]&menu=4>[]</a></td>
          <td width="61" align=center><a href="sendfriend.asp?id=[]">����</a></td>
          <td width="54" align=center><a href="inform.asp?id=[]">����</a></td>
          <td width="50" align="center">[]��</td>
          <td width="34" align="center"> <a href='mem_log.asp?m_id=[]'>��־</a></td>
          <td width="39" align="center"> <a href="inquery.asp?m_id=[]">��ѯ</a></td>
          <td width="37" align="center">[]</td>
          <td width="61" align="center">[]</td>
		  <td align="center">[]</td>
        </tr>
      </table>
    </td>
  </tr>
</table>
<form name="form_page" action="[]" method="post">
<table width="735" height="30" border="0" align="center" cellPadding="0" cellSpacing="0" bgcolor="#EBEBEB" class="serchcss">
    <tr>
      <td colspan="2">
      </td>
    </tr>
    <tr>
      <td width="67%" align="right">
		<!-- �����Ƿ�ҳ -->
      </td>
      <td width="33%" align="center">&nbsp;&nbsp;ֱ�ӵ�
          <input name="pageno" size="5" maxlength="10">&nbsp;ҳ&nbsp;
          <input type="image" src="/images/button_small2_qw.gif" name="submit" value="images">
      </td>
    </tr>
</table>
</form>
</body>
</html>