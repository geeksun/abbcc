<%@ page language="java" import="java.util.*" pageEncoding="gbk"%>
<%
	String path = request.getContextPath();
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>公司详细信息</title>
	<link rel="stylesheet" type="text/css" href="/css/service.css">
	<script type="text/javascript">
		//blur/Click事件的控制函数打勾图片控制函数
		function blurEvent(img,dom){
			if(dom.value==''){
			rightImg(img,0);
			}else
			rightImg(img,1);
		}
		//打勾图片控制包括初始化
							function rightImg(cmd,state){
								if(cmd==999){
								blurEvent3();
								blurEvent4();
								for(var i=0;i<19;i++){
								if(document.getElementsByName('rightImg')[i])
								{
								document.getElementsByName('rightImg')[i].style.display = "none";}
								}
								}
								else if(state==0){
								 	if(document.getElementsByName('rightImg')[cmd])
									{
									document.getElementsByName('rightImg')[cmd].style.display = "none";}
									}
									else{
									if(document.getElementsByName('rightImg')[cmd])
									{
									document.getElementsByName('rightImg')[cmd].style.display = "";}
								   }
                            }
	</script>
  </head>
  
  <body>
    <p>
  	公司详细资料
  </p>
  <form action="detailInfo.do" name="basicInfoForm">
  	<input type="hidden" name="action">
  	<input type="hidden" name="">
    <table width="90%" border="1" cellspacing="0" cellpadding="2" align="CENTER" bordercolor="F0E68C"> 
    	<tr> 
    		<td align=right>注册资本：</td><td><input type="text" name="zczb" value="${leaguer.gsmc}" size="10">元<SPAN class=note>（最多选择2种经营模式）</SPAN> </td>
    	</tr>
    	<tr>
    		<td align=right>公司成立时间：</td><td><input type="text" name="gsclsj" value="${leaguer.gsmc}" size="10"><SPAN class=note>(年份，如：2004)</SPAN> </td>
    	</tr>
    	<tr>
    		<td align=right>公司注册地：</td><td><input type="text" name="gszcd" value="${leaguer.gsmc}" size="30"><SPAN class=note>(省份/城市)</SPAN> </td>
    	</tr>
    	<tr>
    		<td align=right>法定代表人/负责人：</td><td><input type="text" name="fddbr" value="${leaguer.gsmc}" size="30"> </td>
    	</tr>
    	<tr>
    		<td align=right>开户银行：</td><td><input type="text" name="khyh" value="${leaguer.gsmc}" size="30"> </td>
    	</tr>
    	<tr>
    		<td align=right>帐号：</td><td><input type="text" name="zh" value="${leaguer.gsmc}" size="30"> </td>
    	</tr>
    	<tr>
    		<td align=right>厂房面积：</td><td><input type="text" name="cfmj" value="${leaguer.gsmc}" size="30">（平方米）</td>
    	</tr>
    	<tr>
    		<td align=right>员工人数：</td>
    		<td>
    		<!--  <SELECT onchange=blurEvent(7,this) name=ygrs>  -->
    		<SELECT  name=ygrs>
    		<OPTION value="" selected>-- 请选择 --</OPTION> 
    		<OPTION value=1>5 人以下</OPTION> 
    		<OPTION value=2>5 - 10 人</OPTION>
    		<OPTION value=3>11 - 50 人</OPTION> 
            <OPTION value=4>51 - 100 人</OPTION>
            <OPTION value=8>101 - 200人</OPTION> 
            <OPTION value=5>201 - 300 人</OPTION> 
            <OPTION value=9>301 - 500 人</OPTION> 
            <OPTION value=6>501 - 1000 人</OPTION> 
            <OPTION value=7>1000 人以上</OPTION>
            </SELECT>
    		</td>
    	</tr>
    	<tr>
    		<td align=right>研发部门人数：</td>
    		<td>
    		<!--  <SELECT  onchange=blurEvent(8,this) name=_fmc.p._0.rn>  -->
    		<SELECT  name=yfbmrs>
    		<OPTION value="" selected>--请选择--</OPTION> 
    		<OPTION value=1>少于5 人</OPTION> 
    		<OPTION value=2>5 - 10 人</OPTION> 
    		<OPTION value=3>11 - 20 人</OPTION> 
            <OPTION value=4>21 - 30 人</OPTION> 
            <OPTION value=5>31 - 40 人</OPTION> 
            <OPTION value=6>41 - 50 人</OPTION> 
            <OPTION value=7>51 - 60 人</OPTION> 
            <OPTION value=8>61 - 70 人</OPTION> 
            <OPTION value=9>71 - 80 人</OPTION> 
            <OPTION value=10>81 - 90 人</OPTION> 
            <OPTION value=11>91 - 100 人</OPTION> 
            <OPTION value=20>100 人以上</OPTION>
            </SELECT>
    		</td>
    	</tr>
    	<tr>
    		<td align=right>品牌名称：</td><!-- 品牌名称 -->
    		<td><input type="text" name="jypp" value="${leaguer.gsmc}" size="30"></td>
    	</tr>
    	<tr>
    		<td align=right>品牌名称：</td>
    		<td><input type="text" name="jypp" value="${leaguer.gsmc}" size="30"></td>
    	</tr>
    </table>
    </form>
  </body>
</html>
