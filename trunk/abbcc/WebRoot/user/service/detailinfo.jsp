<%@ page language="java" import="java.util.*" pageEncoding="gbk" contentType="text/html;charset=gbk"%>
<%@ taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core" %>
<%
	String path = request.getContextPath();
	request.setCharacterEncoding("gbk");
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
		<c:set var="gxxx" value="${gsxxxx}" scope="page"></c:set>
		<p>
			��˾��ϸ����
		</p>
		<form action="traceDetailInfo.do" name="detailInfoForm">
			<input type="hidden" name="action">
			<table width="90%" border="1" cellspacing="0" cellpadding="2"
				align="CENTER" bordercolor="F0E68C">
				<tr>
					<td align=right>
						ע���ʱ���
					</td>
					<td>
						<input type="text" name="zczb"  size="10" value="${gxxx.zczb }">
						Ԫ
						<SPAN class=note>�����ѡ��2�־�Ӫģʽ��</SPAN>
					</td>
				</tr>
				<tr>
					<td align=right>
						��˾����ʱ�䣺
					</td>
					<td>
						<input type="text" name="gsclsj"  size="10" value="${gxxx.gsclsj }">
						<SPAN class=note>(��ݣ��磺2004)</SPAN>
					</td>
				</tr>
				<tr>
					<td align=right>
						��˾ע��أ�
					</td>
					<td>
						<input type="text" name="gszcd"  size="30" value="${gxxx.gszcd }">
						<SPAN class=note>(ʡ��/����)</SPAN>
					</td>
				</tr>
				<tr>
					<td align=right>
						����������/�����ˣ�
					</td>
					<td>
						<input type="text" name="fddbr"  size="30" value="${gxxx.fddbr }">
					</td>
				</tr>
				<tr>
					<td align=right>
						�������У�
					</td>
					<td>
						<input type="text" name="khyh"  size="30" value="${gxxx.khyh }">
					</td>
				</tr>
				<tr>
					<td align=right>
						�ʺţ�
					</td>
					<td>
						<input type="text" name="zh"  size="30" value="${gxxx.zh }">
					</td>
				</tr>
				<tr>
					<td align=right>
						���������
					</td>
					<td>
						<input type="text" name="cfmj"  size="30" value="${gxxx.cfmj }">
						��ƽ���ף�
					</td>
				</tr>
				<tr>
					<td align=right>
						Ա��������
					</td>
					<td>
						<SELECT name=ygrs>
							
							<OPTION value="0">
								-- ��ѡ�� --
							</OPTION>
							<OPTION value=1>
								5 ������
							</OPTION>
							<OPTION value=2>
								5 - 10 ��
							</OPTION>
							<OPTION value=3>
								11 - 50 ��
							</OPTION>
							<OPTION value=4>
								51 - 100 ��
							</OPTION>
							<OPTION value=8>
								101 - 200��
							</OPTION>
							<OPTION value=5>
								201 - 300 ��
							</OPTION>
							<OPTION value=9>
								301 - 500 ��
							</OPTION>
							<OPTION value=6>
								501 - 1000 ��
							</OPTION>
							<OPTION value=7>
								1000 ������
							</OPTION>
						</SELECT>
					</td>
				</tr>
				<tr>
					<td align=right>
						�з�����������
					</td>
					<td>
						<!--  <SELECT  onchange=blurEvent(8,this) name=_fmc.p._0.rn>  -->
						<SELECT name=yfbmrs>
							<OPTION value="" selected>
								--��ѡ��--
							</OPTION>
							<OPTION value=1>
								����5 ��
							</OPTION>
							<OPTION value=2>
								5 - 10 ��
							</OPTION>
							<OPTION value=3>
								11 - 20 ��
							</OPTION>
							<OPTION value=4>
								21 - 30 ��
							</OPTION>
							<OPTION value=5>
								31 - 40 ��
							</OPTION>
							<OPTION value=6>
								41 - 50 ��
							</OPTION>
							<OPTION value=7>
								51 - 60 ��
							</OPTION>
							<OPTION value=8>
								61 - 70 ��
							</OPTION>
							<OPTION value=9>
								71 - 80 ��
							</OPTION>
							<OPTION value=10>
								81 - 90 ��
							</OPTION>
							<OPTION value=11>
								91 - 100 ��
							</OPTION>
							<OPTION value=20>
								100 ������
							</OPTION>
						</SELECT>
					</td>
				</tr>
				<tr>
					<td align=right>
						Ʒ�����ƣ�
					</td>
					<td>
						<input type="text" name="jypp"  size="30" value="${gxxx.jypp }">
					</td>
				</tr>
				<tr>
					<td align=right>
						�²�����
					</td>
					<td>
						<INPUT maxLength=32 size=8 name=monthProduction >
						<SELECT name=unit>
							<OPTION value="" selected>
								--��ѡ��--
							</OPTION>
							<OPTION value=1>
								̨
							</OPTION>
							<OPTION value=2>
								��
							</OPTION>
							<OPTION value=3>
								��
							</OPTION>
							<OPTION value=4>
								��
							</OPTION>
							<OPTION value=5>
								ֻ
							</OPTION>
							<OPTION value=6>
								֧
							</OPTION>
							<OPTION value=7>
								֦
							</OPTION>
							<OPTION value=8>
								��
							</OPTION>
							<OPTION value=9>
								ͷ
							</OPTION>
							<OPTION value=10>
								��
							</OPTION>
							<OPTION value=PCE>
								��
							</OPTION>
							<OPTION value=11>
								Ƭ
							</OPTION>
							<OPTION value=12>
								ƥ
							</OPTION>
							<OPTION value=13>
								��
							</OPTION>
							<OPTION value=14>
								��
							</OPTION>
							<OPTION value=15>
								��
							</OPTION>
							<OPTION value=16>
								��
							</OPTION>
							<OPTION value=17>
								��
							</OPTION>
							<OPTION value=18>
								��
							</OPTION>
							<OPTION value=19>
								��
							</OPTION>
							<OPTION value=PR>
								˫
							</OPTION>
							<OPTION value=DOZ>
								һ��
							</OPTION>
							<OPTION value=20>
								��
							</OPTION>
							<OPTION value=SET>
								��
							</OPTION>
							<OPTION value=21>
								��
							</OPTION>
							<OPTION value=22>
								��
							</OPTION>
							<OPTION value=23>
								��
							</OPTION>
							<OPTION value=24>
								��
							</OPTION>
							<OPTION value=25>
								��
							</OPTION>
							<OPTION value=26>
								��
							</OPTION>
							<OPTION value=27>
								��
							</OPTION>
							<OPTION value=28>
								ƿ���ޣ�
							</OPTION>
							<OPTION value=MMT>
								����
							</OPTION>
							<OPTION value=CMT>
								����
							</OPTION>
							<OPTION value=MRT>
								��
							</OPTION>
							<OPTION value=KMT>
								ǧ��
							</OPTION>
							<OPTION value=INH>
								Ӣ��
							</OPTION>
							<OPTION value=FOT>
								Ӣ��
							</OPTION>
							<OPTION value=GLI>
								���� (Ӣ)
							</OPTION>
							<OPTION value=GLL>
								���� (��)
							</OPTION>
							<OPTION value=GRM>
								��
							</OPTION>
							<OPTION value=KGM>
								ǧ��
							</OPTION>
							<OPTION value=LBR>
								��
							</OPTION>
							<OPTION value=MTN>
								����
							</OPTION>
							<OPTION value=LTN>
								�� (Ӣ)
							</OPTION>
							<OPTION value=LTS>
								�� (��)
							</OPTION>
							<OPTION value=MLT>
								����
							</OPTION>
							<OPTION value=LTR>
								����
							</OPTION>
							<OPTION value=ONZ>
								��˾
							</OPTION>
							<OPTION value=QTI>
								����
							</OPTION>
							<OPTION value=PTI>
								Ʒ�� (Ӣ)
							</OPTION>
							<OPTION value=PTL>
								Ʒ�� (��)
							</OPTION>
							<OPTION value=YRD>
								��
							</OPTION>
							<OPTION value=FTK>
								ƽ��Ӣ��
							</OPTION>
							<OPTION value=INK>
								ƽ��Ӣ��
							</OPTION>
							<OPTION value=MTK>
								ƽ����
							</OPTION>
							<OPTION value=YDK>
								ƽ����
							</OPTION>
							<OPTION value=MTC>
								������
							</OPTION>
						</SELECT>
					</TD>
				</tr>
				<tr>
					<td align=right>
						��Ӫҵ�
					</td>
					<td>
						<!--  <SELECT onchange="check('note3')" name=turnover>  -->
						<SELECT name=nyye>
							<OPTION value="" selected>
								--��ѡ��--
							</OPTION>
							<OPTION value=8>
								����� 10 ��Ԫ/������
							</OPTION>
							<OPTION value=9>
								����� 10 ��Ԫ/�� - 30 ��Ԫ/��
							</OPTION>
							<OPTION value=10>
								����� 30 ��Ԫ/�� - 50 ��Ԫ/��
							</OPTION>
							<OPTION value=11>
								����� 50 ��Ԫ/�� - 100 ��Ԫ/��
							</OPTION>
							<OPTION value=2>
								����� 100 ��Ԫ/�� - 200 ��Ԫ/��
							</OPTION>
							<OPTION value=12>
								����� 200 ��Ԫ/�� - 300 ��Ԫ/��
							</OPTION>
							<OPTION value=3>
								����� 300 ��Ԫ/�� - 500 ��Ԫ/��
							</OPTION>
							<OPTION value=13>
								����� 500 ��Ԫ/�� - 700 ��Ԫ/��
							</OPTION>
							<OPTION value=14>
								����� 700 ��Ԫ/�� - 1000 ��Ԫ/��
							</OPTION>
							<OPTION value=15>
								����� 1000 ��Ԫ/�� - 2000 ��Ԫ/��
							</OPTION>
							<OPTION value=16>
								����� 2000 ��Ԫ/�� - 3000 ��Ԫ/��
							</OPTION>
							<OPTION value=17>
								����� 3000 ��Ԫ/�� - 5000 ��Ԫ/��
							</OPTION>
							<OPTION value=6>
								����� 5000 ��Ԫ/�� - 1 ��Ԫ/��
							</OPTION>
							<OPTION value=7>
								����� 1 ��Ԫ/������
							</OPTION>
						</SELECT>
					</td>
				</tr>
				<tr>
					<td align=right>
						����ڶ
					</td>
					<td>
						<SELECT name=njke>
							<OPTION value="" selected>
								--��ѡ��--
							</OPTION>
							<OPTION value=8>
								����� 10 ��Ԫ����
							</OPTION>
							<OPTION value=9>
								����� 10 ��Ԫ - 30 ��Ԫ
							</OPTION>
							<OPTION value=10>
								����� 30 ��Ԫ - 50 ��Ԫ
							</OPTION>
							<OPTION value=11>
								����� 50 ��Ԫ - 100 ��Ԫ
							</OPTION>
							<OPTION value=2>
								����� 100 ��Ԫ - 200 ��Ԫ
							</OPTION>
							<OPTION value=12>
								����� 200 ��Ԫ - 300 ��Ԫ
							</OPTION>
							<OPTION value=3>
								����� 300 ��Ԫ - 500 ��Ԫ
							</OPTION>
							<OPTION value=13>
								����� 500 ��Ԫ - 700 ��Ԫ
							</OPTION>
							<OPTION value=14>
								����� 700 ��Ԫ - 1000 ��Ԫ
							</OPTION>
							<OPTION value=15>
								����� 1000 ��Ԫ - 2000 ��Ԫ
							</OPTION>
							<OPTION value=16>
								����� 2000 ��Ԫ - 3000 ��Ԫ
							</OPTION>
							<OPTION value=17>
								����� 3000 ��Ԫ - 5000 ��Ԫ
							</OPTION>
							<OPTION value=6>
								����� 5000 ��Ԫ - 1 ��Ԫ
							</OPTION>
							<OPTION value=7>
								����� 1 ��Ԫ����
							</OPTION>
						</SELECT>
					</td>
				</tr>
				<tr>
					<td align=right>
						����ڶ
					</td>
					<td>
						<!--  <SELECT  onchange=check('noteOut')  name=_fmc.p._0.annu>  -->
						<SELECT name=ncke>
							<OPTION value="" selected>
								--��ѡ��--
							</OPTION>
							<OPTION value=8>
								����� 10 ��Ԫ����
							</OPTION>
							<OPTION value=9>
								����� 10 ��Ԫ - 30 ��Ԫ
							</OPTION>
							<OPTION value=10>
								����� 30 ��Ԫ - 50 ��Ԫ
							</OPTION>
							<OPTION value=11>
								����� 50 ��Ԫ - 100 ��Ԫ
							</OPTION>
							<OPTION value=2>
								����� 100 ��Ԫ - 200 ��Ԫ
							</OPTION>
							<OPTION value=12>
								����� 200 ��Ԫ - 300 ��Ԫ
							</OPTION>
							<OPTION value=3>
								����� 300 ��Ԫ - 500 ��Ԫ
							</OPTION>
							<OPTION value=13>
								����� 500 ��Ԫ - 700 ��Ԫ
							</OPTION>
							<OPTION value=14>
								����� 700 ��Ԫ - 1000 ��Ԫ
							</OPTION>
							<OPTION value=15>
								����� 1000 ��Ԫ - 2000 ��Ԫ
							</OPTION>
							<OPTION value=16>
								����� 2000 ��Ԫ - 3000 ��Ԫ
							</OPTION>
							<OPTION value=17>
								����� 3000 ��Ԫ - 5000 ��Ԫ
							</OPTION>
							<OPTION value=6>
								����� 5000 ��Ԫ - 1 ��Ԫ
							</OPTION>
							<OPTION value=7>
								����� 1 ��Ԫ����
							</OPTION>
						</SELECT>
						<br>
						<DIV class=note style="MARGIN-TOP: 5px">
							��׼ȷѡ������������ڶ�,ͬʱ������ڶ���ܴ��ڡ���Ӫҵ�
						</DIV>
					</td>
				</tr>
				<tr>
					<td align=right>
						������ϵ��֤��
					</td>
					<td>
						<INPUT id=Certification1 type=checkbox value=1 name=gltxrz>
						<LABEL for=Certification1>
							ISO 9000
						</LABEL>
						<INPUT id=Certification2 type=checkbox value=2 name=gltxrz>
						<LABEL for=Certification2>
							ISO 9001
						</LABEL>
						<INPUT id=Certification3 type=checkbox value=4 name=gltxrz>
						<LABEL for=Certification3>
							ISO 9002
						</LABEL>
						<INPUT id=Certification4 type=checkbox value=8 name=gltxrz>
						<LABEL for=Certification4>
							ISO 9003
						</LABEL>
						<INPUT id=Certification5 type=checkbox value=16 name=gltxrz>
						<LABEL for=Certification5>
							ISO 9004
						</LABEL>
						<INPUT id=Certification6 type=checkbox value=32 name=gltxrz>
						<LABEL for=Certification6>
							ISO 14000
						</LABEL>
					</td>
				</tr>
				<tr>
					<td align=right>
						�������ƣ�
					</td>
					<td>
						<INPUT id=QaQc1 onclick=blurEvent(15,this) type=radio value=�ڲ�  name=zlkz>
						<LABEL for=QaQc1>
							�ڲ�
						</LABEL>
						<INPUT id=QaQc2 onclick=blurEvent(15,this) type=radio value=������ name=zlkz>
						<LABEL for=QaQc2>
							������
						</LABEL>
						<INPUT id=QaQc3 onclick=blurEvent(15,this) type=radio value=��	name=zlkz>
						<LABEL for=QaQc3>
							��
						</LABEL>
					</td>
				</tr>
				<tr>
					<td align=right>
						��Ҫ�г���
						<FONT color=#999999>����ѡ����Ҫ��3����</FONT>
					</td>
					<td>
						<INPUT id=TradeRegion1 type=checkbox value=1 name=zysc>
						<LABEL for=TradeRegion1>
							��½
						</LABEL>
						<INPUT id=TradeRegion2 type=checkbox value=2 name=zysc>
						<LABEL for=TradeRegion2>
							�۰�̨����
						</LABEL>
						<INPUT id=TradeRegion3 type=checkbox value=4096 name=zysc>
						<LABEL for=TradeRegion3>
							�ձ�
						</LABEL>
						<INPUT id=TradeRegion4 type=checkbox value=4 name=zysc>
						<LABEL for=TradeRegion4>
							����
						</LABEL>
						<INPUT id=TradeRegion5 type=checkbox value=8 name=zysc>
						<LABEL for=TradeRegion5>
							����
						</LABEL>
						<INPUT id=TradeRegion6 type=checkbox value=16 name=zysc>
						<LABEL for=TradeRegion6>
							��ŷ
						</LABEL>
						<INPUT id=TradeRegion7 type=checkbox value=32 name=zysc>
						<LABEL for=TradeRegion7>
							��ŷ
						</LABEL>
						<INPUT id=TradeRegion8 type=checkbox value=64 name=zysc>
						<LABEL for=TradeRegion8>
							����
						</LABEL>
						<INPUT id=TradeRegion9 type=checkbox value=128 name=zysc>
						<LABEL for=TradeRegion9>
							������
						</LABEL>
						<INPUT id=TradeRegion10 type=checkbox value=256 name=zysc>
						<LABEL for=TradeRegion10>
							�ж�
						</LABEL>
						<INPUT id=TradeRegion11 type=checkbox value=512 name=zysc>
						<LABEL for=TradeRegion11>
							����
						</LABEL>
						<INPUT id=TradeRegion12 type=checkbox value=1024 name=zysc>
						<LABEL for=TradeRegion12>
							������
						</LABEL>
						<INPUT id=TradeRegion13 type=checkbox value=2048 name=zysc>
						<LABEL for=TradeRegion13>
							ȫ��
						</LABEL>
					</td>
				</tr>
				<tr>
				<td>��Ҫ�ͻ�Ⱥ��</td>
				<td><INPUT onblur=blurEvent(17,this) maxLength=64 size=30 name=zykhq> 
				<SPAN class=note>�磺���С���װ����ӡȾ��</SPAN></td>
				</tr>
				<tr>
				<td>�Ƿ��ṩOEM���ӹ���</td>
				<td>
				<INPUT id=OemOdmYes onclick=blurEvent(18,this) type=radio value=y name=oem>
				<LABEL for=OemOdmYes>��</LABEL> 
				<INPUT id=OemOdmNo onclick=blurEvent(18,this) type=radio value=n name=oem>
				<LABEL for=OemOdmNo>��</LABEL> 
				</td>
				</tr>
				<tr>
				<td colspan=2 align=center>
				<INPUT onmouseover="this.style.cursor='hand';"  type=button  value=" ȷ���ύ�� " onclick="updateDetailInfo();">
				</td>
				</tr>
				
			</table>
			
		</form>
		<script type="text/javascript">
			function updateDetailInfo(){
				document.detailInfoForm.action.value = "updateDetailInfo";
				document.detailInfoForm.submit();
			}
		</script>
	</body>
</html>
