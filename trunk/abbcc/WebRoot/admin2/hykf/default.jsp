<%@ page contentType="text/html; charset=GBK"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
	<title>会员客服_会员客服</title>
<link rel="stylesheet" href="../../../admin/style.css" type="text/css"></link>
</head>
<body bgcolor="#FFFFFF" marginheight=0 marginwidth=0 leftmargin=0>
<script language="javascript">
function show_set(mylink)
{
  window.open(mylink,'new','top=110,left=280,width=340,height=150,scrollbars=no')
}
</script>
		<form name="search" method="post" action="[]">
			<table border=0 cellPadding=3 cellSpacing=1 width="735"
				align="center">
				<tr>
					<td width="28" height="30">
						<img border=0 src="../images/search.gif">
					</td>
					<td>
						&nbsp;关键字:
						<input type="text" name="SearchText" size="25">
						&nbsp;未登录天数
						<select name="days">
							<option value="" selected>
								不限
							</option>
							<option value="1">
								1天内
							</option>
							<option value="2">
								2天内
							</option>
							<option value="3">
								3天内
							</option>
							<option value="4">
								4天内
							</option>
							<option value="5">
								5天内
							</option>
							<option value="6">
								6天内
							</option>
							<option value="7">
								7天内
							</option>
							<option value="8">
								8天内
							</option>
							<option value="9">
								9天内
							</option>
							<option value="10">
								10天内
							</option>
							<option value="15">
								15天内
							</option>
							<option value="20">
								20天内
							</option>
							<option value="30">
								30天内
							</option>
							<option value="45">
								45天内
							</option>
							<option value="60">
								60天内
							</option>
							<option value="70">
								70天内
							</option>
							<option value="80">
								80天内
							</option>
							<option value="90">
								90天内
							</option>
							<option value="365">
								365天内
							</option>
						</select>
						最近登录的会员
						<select name="dayss">
							<option value="" selected>
								不限
							</option>
							<option value="1">
								1天内
							</option>
							<option value="2">
								2天内
							</option>
							<option value="3">
								3天内
							</option>
							<option value="4">
								4天内
							</option>
							<option value="5">
								5天内
							</option>
							<option value="6">
								6天内
							</option>
							<option value="7">
								7天内
							</option>
							<option value="8">
								8天内
							</option>
							<option value="9">
								9天内
							</option>
							<option value="10">
								10天内
							</option>
							<option value="15">
								15天内
							</option>
							<option value="20">
								20天内
							</option>
							<option value="30">
								30天内
							</option>
							<option value="45">
								45天内
							</option>
							<option value="60">
								60天内
							</option>
						</select>
						<select name="inquery">
							<option value="" selected>
								咨询情况
							</option>
							<option value="1">
								有咨询
							</option>
							<option value="2">
								有未读咨询
							</option>
						</select>
						&nbsp;
						<input align=absMiddle border=0 src="../images/search1.gif"
							type="image">
					</td>
				</tr>
			</table>
		</form>
		<br>
		<table width=735 border=0 align="center" cellPadding=0 cellSpacing=0>
			<tr>
				<td vAlign=top>
					<table border=1 bordercolor=#111111 bordercolordark=#acd6ff
						bordercolorlight=#acd6ff cellpadding=3 cellspacing=1 height=50
						width="100%">
						<tr height=25 bgcolor="#e8f4ff">
							<td width="32" align="center" bgcolor=#ddeeff>
								<a href="np_serve.asp?orderflag=landcous&[]">ID号</a>
							</td>
							<td width="186" align="center" bgcolor=#ddeeff>
								公司名称
							</td>
							<td width="62" align="center" bgcolor=#ddeeff>
								日常邮件
							</td>
							<td width="55" align="center" bgcolor=#ddeeff>
								发送登录通知
							</td>
							<td width="45" align="center" bgcolor=#ddeeff>
								未登录天数
							</td>
							<td width="37" align="center" bgcolor=#ddeeff>
								日志
							</td>
							<td width="40" align="center" bgcolor=#ddeeff>
								客户咨询
							</td>
							<td width="33" align="center" bgcolor=#ddeeff>
								<a href="np_serve.asp?orderflag=landcous&[]">登陆次数</a>
							</td>
							<td width="63" align="center" bgcolor=#ddeeff>
								最后登录时间
							</td>
							<td width="89" align="center" bgcolor=#ddeeff>
								登录IP
							</td>
						</tr>
						<tr height="20" bgcolor="#ffffff">
							<td width="32" align="center">
								<font face="Arial">[]</font>
							</td>
							<td width="186">
								<a href=edit.asp?id=[]&menu=4>[]</a>
							</td>
							<td width="62" align=center>
								<a href="sendfriend.asp?id=[]">发送</a>
							</td>
							<td width="55" align=center>
								<a href="inform.asp?id=[]">发送</a>
							</td>
							<td width="45" align="center">
								[]天
							</td>
							<td width="37" align="center">
								<a href='mem_log.asp?m_id=[]'>日志</a>
							</td>
							<td width="40" align="center">
								<a href="inquery.asp?m_id=[]">咨询</a>
							</td>
							<td width="33" align="center">
								[]
							</td>
							<td width="63" align="center">
								[]
							</td>
							<td align="center">
								[]
							</td>
						</tr>
					</table>
				</td>
			</tr>
		</table>
		<form action="[]" method="post" name="form_page">
		<table width="735" height="30" border="0" align="center"
			cellPadding="0" cellSpacing="0" bgcolor="#EBEBEB" class="serchcss">
			<tr>
				<td colspan="2">
					当前是第&nbsp;&nbsp;页&nbsp;&nbsp;共&nbsp;&nbsp;页&nbsp;
					<font color=#ff0000>[]</font>&nbsp;条信息&nbsp;&nbsp;"
				</td>
			</tr>
			<tr>
				<td width="67%" align="right">
<!-- 这里分页 -->
				</td>
				<td width="33%" align="center">
					&nbsp;&nbsp;直接到
					<input name="pageno" size="5" maxlength="10">
					&nbsp;页&nbsp;
					<input type="image" src="/images/button_small2_qw.gif"
						name="submit" value="images">
				</td>
			</tr>
		</table>
		</form>
	</body>
</html>
