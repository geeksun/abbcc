<%@ page contentType="text/html; charset=GBK" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<title>会员管理_未审核普通会员</title>
<link rel="stylesheet" href="../../style.css" type="text/css"></link>
</head>
<body bgcolor="#FFFFFF" marginheight=0 marginwidth=0 leftmargin=0>
<center>
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
    <td>搜索关键字:
     <input type="text" name="SearchText" size="25" >
     <input align=absMiddle border=0 src="../images/search1.gif" type=image>
    </td> 
   </tr>
</table>
</form>
<br>
<form name="search1" method="post" action="[]">
<table border=0 cellPadding=0 cellSpacing=0 width=90%>
  <tr>
    <td vAlign=top>
   		  <table border=1 borderColor=#111111 borderColorDark=#acd6ff borderColorLight=#acd6ff cellPadding=3 cellSpacing=1 height=50 width="98%">
            <tr> 
              <td width="46" bgColor=#ddeeff align=center>ID号</td>
              <td width="263" align="center" bgColor=#ddeeff>公司名称</td>
              <td width="67" align="center" bgColor=#ddeeff>用户名</td>
              <td width="41" align="center" bgColor=#ddeeff>密码</td>
              <td width="44" align="center" bgColor=#ddeeff>审核</td>
              <td width="73" align="center" bgColor=#ddeeff>
                <a href="default.asp?dl=t&searchtext=[]">登陆次数</a>
                <a href="default.asp?dl=t">登陆次数</a>
              </td>
              <td width="86" align="center" bgColor=#ddeeff>
                <input type='submit' name="sub1" value='批审'>
				</td>
              <td width="50" align="center" bgColor=#ddeeff> 
                <input type='submit' value='删除'>
              </td>
            </tr>		
            <tr height="20" bgcolor="#ffffff"> 
              <td width="46" align="center"><font face="Arial">[]</font></td>
              <td width="263"><a href=edit.asp?id=[]&menu=1> </a><a href=edit.asp?id=[]&menu=1> 
                </a>
                <table width="100%" border="0" cellspacing="0" cellpadding="0">
                  <tr> 
                    <td width="88%"><a href=edit.asp?id=[]&menu=1> 
                      </a></td>
                    <td width="12%" align="right"><a href="sendfriend.asp?id=[]">发信</a></td>
                  </tr>
                </table>
              </td>
              <td width="67"><a href="mailto:[]">[]</a></td>
              <td width="41"><a href=edit.asp?id=[]&menu=1> </a>[]</td>
              <td width="44" align="center"><a href='javascript:show_set(&quot;attribute.asp?id=[]&quot;)'><img border="0" alt="" src="../images/m_news.gif"></a></td>
              <td width="73" align="center">[]0[]</td>
              <td width="86" align="center">
               <input type="checkbox" name="selAnnounce1"  id="selAnnounce1" value='[]'></td>
             <td width="50" align="center"> 
                <input type="checkbox" name="selAnnounce" value='[]'> </td>
            </tr>
      </table>
    </td>
  </tr>
</table>
</form>
<!-- 这里分页 -->
</center>
</body>
</html>
