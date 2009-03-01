<%@ page contentType="text/html; charset=GBK" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<title>网站系统_网站基本信息</title>
</head>
<body>
<center>
<table border=0 cellPadding=0 cellSpacing=0 width=100%>
  <tr>
    <td valign=top>
      <table border="0" cellpadding="0" cellspacing="0" width="100%" height=40>
        <tr>
          <td width="62%"><b>&nbsp;<img border="0" src="../images/job.gif"> 网站基本信息设置</b></td>
          <td width="38%" align=right><font color=#ff6600>【</font><font color="#FF6600">*</font><font color=#ff6600>为必填写】</font></td>
        </tr>
      </table>
      <form method="post" action="[]" name="Form1">
      <table border="0" cellpadding="4" cellspacing="0" width="100%">
        <tr>
          <td align=right width=193 height="27" bgcolor="#ACD6FF">网站名称：</td>
          <td height="25" bgcolor="#ACD6FF">&nbsp;<input type="text" size="30" name="webname" value="[]">&nbsp;<font color="#FF6600">*</font></td>
          <td align="right" width="193" height="25" bgcolor="#ACD6FF">网&nbsp;&nbsp;&nbsp;&nbsp;址：</td>
          <td height="25" bgcolor="#ACD6FF">&nbsp;<input type="text" size="30" name="weburl" value="[]">&nbsp;<font color="#FF6600">*</font></td>
        </tr>
        <tr>
          <td align="right" width="193" height="25" bgcolor="#EEF7FF">公司名称：</td>
          <td height="25" bgcolor="#EEF7FF">&nbsp;<input type="text" size="30" name="company" value="[]"> <font color="#FF6600">*</font></td>
          <td align="right" width="193" height="25" bgcolor="#EEF7FF">邮&nbsp;&nbsp;&nbsp;&nbsp;编：</td>
          <td height="25" bgcolor="#EEF7FF">&nbsp;<input type="text" size="15" name="zip" value="[]">&nbsp;<font color="#FF6600">*</font></td>
        </tr>
        <tr> 
          <td align="right" width="193" height="25" bgcolor="#ACD6FF">联系电话：</td>
          <td height="25" bgcolor="#ACD6FF">&nbsp;<input type="text" size="30" name="phone" value="[]"> <font color="#FF6600">*</font></td>
          <td align="right" width="193" height="25" bgcolor="#ACD6FF">传&nbsp;&nbsp;&nbsp;&nbsp;真：</td>
          <td height="25" bgcolor="#ACD6FF">&nbsp;<input type="text" size="30" name="fax" value="[]"> <font color="#FF6600">*</font></td>
        </tr>
        <tr>
          <td align="right" width="193" height="25" bgcolor="#EEF7FF">Email(S)：</td>
          <td height="25" bgcolor="#EEF7FF">&nbsp;<input type="text" size="30" name="SMTPServer" value="[]"> <font color="#FF6600">*</font></td>
          <td align="right" width=193 height="25" bgcolor="#EEF7FF">Email(T)：</td>
          <td height="25" bgcolor="#EEF7FF">&nbsp;<input type="text" size="30" name="SystemEmail" value="[]"> <font color="#FF6600">*</font></td>
        </tr>
        <tr>
          <td align="right" width="193" height="28" bgcolor="#ACD6FF">联&nbsp;系&nbsp;人：</td>
          <td width=554 height="28" bgcolor="#ACD6FF">&nbsp;<input type="text" size="11" name="name" value="[]"> <font color="#FF6600">*</font></td>
          <td align="right" width="193" height="28" bgcolor="#ACD6FF">QQ号：</td>
          <td width=554 height="28" bgcolor="#ACD6FF">&nbsp;<input type="text" size="11" name="QQ" value="[]"> <font color="#FF6600">*</font></td>
        </tr>
        <tr> 
          <td align="center" height="28" bgcolor="#EEF7FF">会员审核：</td>
          <td bgcolor="#EEF7FF">&nbsp;<input name="usercheck" type="radio" value="0">需要审核 <input name="usercheck" type="radio" value="1">不需审核</td>
          <td align="center" height="28" bgcolor="#EEF7FF">信息审核：</td>
          <td bgcolor="#EEF7FF">&nbsp;<input name="infocheck" type="radio" value="0">需要审核 <input name="infocheck" type="radio" value="1">不需审核</td>
        </tr>
        <tr> 
          <td align="center" height="28" bgcolor="#ACD6FF">产品审核：</td>
          <td bgcolor="#ACD6FF">&nbsp;<input name="productcheck"  type="radio" value="0">需要审核 <input name="productcheck" type="radio" value="1">不需审核</td>
          <td align="center" height="28" bgcolor="#ACD6FF">招聘审核：</td>
          <td bgcolor="#ACD6FF">&nbsp;<input name="jobcheck" type="radio" value="0">需要审核 <input name="jobcheck" type="radio" value="1">不需审核</td>
        </tr>
        <tr>
          <td colspan="4" align="center" width="750" height="21">
          <input type="submit" value="确 定">&nbsp;&nbsp;&nbsp;&nbsp;<input type="button" value="返 回">
          </td>
        </tr>
      </table>
      </form>
    </td>
  </tr>
</table>
</center>
</body>
</html>