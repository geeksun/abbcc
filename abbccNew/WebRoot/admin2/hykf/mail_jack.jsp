<%@ page contentType="text/html; charset=GBK"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
	<title>会员客服_邮件提醒</title>
<link rel="stylesheet" href="../../../admin/style.css" type="text/css"></link>
</head>
<body>
<p>&nbsp;</p>
<form action="sendtomails.asp" method=post>  
  <table width="629" border="0" align="center" cellpadding="5" cellspacing="1" bgcolor="#000000" class="T">
    <tr bgcolor="#ECFFFE" align="center"> 
      <td width="617">东方五金网会员未登录提醒邮件群发系统</td>
    </tr>    
    <tr bgcolor="#FFFFFF">
      <td>
	  选项
	    <select name="membertype">
	  	<option value="所有会员" selected="selected">所有会员</option>
		<option value="普通会员">普通会员</option>
		<option value="付费会员">付费会员</option>
      </select>
	  未登录天数：
        <select name="days">
	  	<option value="" selected>不限</option>
		<option value="1">1天内</option>
		<option value="2">2天内</option>
		<option value="3">3天内</option>
		<option value="4">4天内</option>
		<option value="5">5天内</option>
		<option value="6">6天内</option>
		<option value="7">7天内</option>
		<option value="8">8天内</option>
		<option value="9">9天内</option>
		<option value="10">10天内</option>
		<option value="15">15天内</option>
		<option value="20">20天内</option>
		<option value="30">30天内</option>
		<option value="45">45天内</option>
		<option value="60">60天内</option>
		<option value="70">70天内</option>
		<option value="80">80天内</option>
		<option value="90">90天内</option>
		<option value="365">365天内</option>
      </select>
        邮件发送间隔天数：
        <select name="dayss">
          <option value="" selected>不限</option>
          <option value="3">3天内</option>
          <option value="7">7天内</option>
          <option value="15">15天内</option>
          <option value="20">20天内</option>
          <option value="30">30天内</option>
        </select>
        <input type="submit" name="Submit" value="发送" onClick="if(confirm('确实要发邮件吗？')==false)return false;">
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
