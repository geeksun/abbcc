<%@ page language="java" import="java.util.*" pageEncoding="gbk"%>
<%
	String path = request.getContextPath();
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>��˾��ϸ��Ϣ</title>
	<link rel="stylesheet" type="text/css" href="/css/service.css">
	<script type="text/javascript">
		//blur/Click�¼��Ŀ��ƺ�����ͼƬ���ƺ���
		function blurEvent(img,dom){
			if(dom.value==''){
			rightImg(img,0);
			}else
			rightImg(img,1);
		}
		//��ͼƬ���ư�����ʼ��
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
  	��˾��ϸ����
  </p>
  <form action="detailInfo.do" name="basicInfoForm">
  	<input type="hidden" name="action">
  	<input type="hidden" name="">
    <table width="90%" border="1" cellspacing="0" cellpadding="2" align="CENTER" bordercolor="F0E68C"> 
    	<tr> 
    		<td align=right>ע���ʱ���</td><td><input type="text" name="zczb" value="${leaguer.gsmc}" size="10">Ԫ<SPAN class=note>�����ѡ��2�־�Ӫģʽ��</SPAN> </td>
    	</tr>
    	<tr>
    		<td align=right>��˾����ʱ�䣺</td><td><input type="text" name="gsclsj" value="${leaguer.gsmc}" size="10"><SPAN class=note>(��ݣ��磺2004)</SPAN> </td>
    	</tr>
    	<tr>
    		<td align=right>��˾ע��أ�</td><td><input type="text" name="gszcd" value="${leaguer.gsmc}" size="30"><SPAN class=note>(ʡ��/����)</SPAN> </td>
    	</tr>
    	<tr>
    		<td align=right>����������/�����ˣ�</td><td><input type="text" name="fddbr" value="${leaguer.gsmc}" size="30"> </td>
    	</tr>
    	<tr>
    		<td align=right>�������У�</td><td><input type="text" name="khyh" value="${leaguer.gsmc}" size="30"> </td>
    	</tr>
    	<tr>
    		<td align=right>�ʺţ�</td><td><input type="text" name="zh" value="${leaguer.gsmc}" size="30"> </td>
    	</tr>
    	<tr>
    		<td align=right>���������</td><td><input type="text" name="cfmj" value="${leaguer.gsmc}" size="30">��ƽ���ף�</td>
    	</tr>
    	<tr>
    		<td align=right>Ա��������</td>
    		<td>
    		<!--  <SELECT onchange=blurEvent(7,this) name=ygrs>  -->
    		<SELECT  name=ygrs>
    		<OPTION value="" selected>-- ��ѡ�� --</OPTION> 
    		<OPTION value=1>5 ������</OPTION> 
    		<OPTION value=2>5 - 10 ��</OPTION>
    		<OPTION value=3>11 - 50 ��</OPTION> 
            <OPTION value=4>51 - 100 ��</OPTION>
            <OPTION value=8>101 - 200��</OPTION> 
            <OPTION value=5>201 - 300 ��</OPTION> 
            <OPTION value=9>301 - 500 ��</OPTION> 
            <OPTION value=6>501 - 1000 ��</OPTION> 
            <OPTION value=7>1000 ������</OPTION>
            </SELECT>
    		</td>
    	</tr>
    	<tr>
    		<td align=right>�з�����������</td>
    		<td>
    		<!--  <SELECT  onchange=blurEvent(8,this) name=_fmc.p._0.rn>  -->
    		<SELECT  name=yfbmrs>
    		<OPTION value="" selected>--��ѡ��--</OPTION> 
    		<OPTION value=1>����5 ��</OPTION> 
    		<OPTION value=2>5 - 10 ��</OPTION> 
    		<OPTION value=3>11 - 20 ��</OPTION> 
            <OPTION value=4>21 - 30 ��</OPTION> 
            <OPTION value=5>31 - 40 ��</OPTION> 
            <OPTION value=6>41 - 50 ��</OPTION> 
            <OPTION value=7>51 - 60 ��</OPTION> 
            <OPTION value=8>61 - 70 ��</OPTION> 
            <OPTION value=9>71 - 80 ��</OPTION> 
            <OPTION value=10>81 - 90 ��</OPTION> 
            <OPTION value=11>91 - 100 ��</OPTION> 
            <OPTION value=20>100 ������</OPTION>
            </SELECT>
    		</td>
    	</tr>
    	<tr>
    		<td align=right>Ʒ�����ƣ�</td><!-- Ʒ������ -->
    		<td><input type="text" name="jypp" value="${leaguer.gsmc}" size="30"></td>
    	</tr>
    	<tr>
    		<td align=right>Ʒ�����ƣ�</td>
    		<td><input type="text" name="jypp" value="${leaguer.gsmc}" size="30"></td>
    	</tr>
    </table>
    </form>
  </body>
</html>
