<%@ page contentType="text/html; charset=GBK"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
	<title>��Ա�ͷ�_�ʼ�����</title>
<link rel="stylesheet" href="../../../admin/style.css" type="text/css"></link>
</head>
<body>
<p>&nbsp;</p>
<form action="sendtomails.asp" method=post>  
  <table width="629" border="0" align="center" cellpadding="5" cellspacing="1" bgcolor="#000000" class="T">
    <tr bgcolor="#ECFFFE" align="center"> 
      <td width="617">�����������Աδ��¼�����ʼ�Ⱥ��ϵͳ</td>
    </tr>    
    <tr bgcolor="#FFFFFF">
      <td>
	  ѡ��
	    <select name="membertype">
	  	<option value="���л�Ա" selected="selected">���л�Ա</option>
		<option value="��ͨ��Ա">��ͨ��Ա</option>
		<option value="���ѻ�Ա">���ѻ�Ա</option>
      </select>
	  δ��¼������
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
        �ʼ����ͼ��������
        <select name="dayss">
          <option value="" selected>����</option>
          <option value="3">3����</option>
          <option value="7">7����</option>
          <option value="15">15����</option>
          <option value="20">20����</option>
          <option value="30">30����</option>
        </select>
        <input type="submit" name="Submit" value="����" onClick="if(confirm('ȷʵҪ���ʼ���')==false)return false;">
</td>
    </tr>
    <tr bgcolor="f7f7f7"> 
      <td>&nbsp; 
	  </td>
    </tr>
  </table>
</form>
</body>
</html>
