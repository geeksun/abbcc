<%@ page language="java" import="java.util.*,com.abbcc.pojo.Gsxxxx" pageEncoding="gbk" contentType="text/html;charset=gbk"%>
<%@ taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%
	String path = request.getContextPath();
	request.setCharacterEncoding("gbk");
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	<head>
		<title>��˾��ϸ��Ϣ</title>
		<link rel="stylesheet" type="text/css" href="<%=path%>/css/service.css">
	</head>
	<body>
		<c:set var="gxxx" value="${gsxxxx}" scope="page"></c:set>
		<div><h3><font color="blue">
		��˾����
		</font></h3></div>
		<c:set var="basicInfoUpdated" value="${basicInfoUpdated}" scope="page"></c:set>
		<c:if test="${basicInfoUpdated=='basicInfoUpdated'}">
		<TABLE class=tx_box cellSpacing=0 cellPadding=0 width="100%" align=center>
		<TBODY>
        	<TR>
          	<TD vAlign=top align=center width=80 rowSpan=2>
          	<IMG height=53 src="<%=path%>/images/service/icon3.gif" width=53></TD>
          	<TD class=tx_title height=20>�ύ�ɹ���</TD></TR>
        	<TR><TD class=tx_content height=34>��˾�����������ύ���������д��˾��ϸ���ϣ�</TD></TR>
        </TBODY>
      	</TABLE>
		</c:if>
		<p>
			��˾��ϸ����
		</p>
		<form action="traceDetailInfo.do" name="detailInfoForm" >
			<input type="hidden" name="action">
			<table width="90%" border="1" cellspacing="0" cellpadding="2"
				align="CENTER" bordercolor="F0E68C">
				<tr>
					<td align=right>
						ע���ʱ���
					</td>
					<td>
						<input type="text" name="zczb"  size="14" value="${gxxx.zczb }">
						Ԫ
						<SPAN class=note>�����ѡ��2�־�Ӫģʽ��</SPAN>
					</td>
				</tr>
				<tr>
					<td align=right>
						��˾����ʱ�䣺
					</td>
					<td>
						<input type="text" name="gsclsj"  size="14" value="${gxxx.gsclsj }">
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
						<SPAN class=note>��ƽ���ף�</SPAN>
					</td>
				</tr>
				<tr>
					<td align=right>
						Ա��������
					</td>
					<td>
					
						<SELECT name=ygrs>
							<OPTION value="0" <c:if test="${gsxxxx.ygrs=='0'}">selected</c:if>>
								-- ��ѡ�� --
							</OPTION>
							<OPTION value=1 <c:if test="${gsxxxx.ygrs=='1'}">selected</c:if>>
								5 ������
							</OPTION>
							<OPTION value=2 <c:if test="${gsxxxx.ygrs=='2'}">selected</c:if>>
								5 - 10 ��
							</OPTION>
							<OPTION value=3 <c:if test="${gsxxxx.ygrs=='3'}">selected</c:if>>
								11 - 50 ��
							</OPTION>
							<OPTION value=4 <c:if test="${gsxxxx.ygrs=='4'}">selected</c:if>>
								51 - 100 ��
							</OPTION>
							<OPTION value=5 <c:if test="${gsxxxx.ygrs=='5'}">selected</c:if>>
								101 - 200��
							</OPTION>
							<OPTION value=6 <c:if test="${gsxxxx.ygrs=='6'}">selected</c:if>>
								201 - 300 ��
							</OPTION>
							<OPTION value=7 <c:if test="${gsxxxx.ygrs=='7'}">selected</c:if>>
								301 - 500 ��
							</OPTION>
							<OPTION value=8 <c:if test="${gsxxxx.ygrs=='8'}">selected</c:if>>
								501 - 1000 ��
							</OPTION>
							<OPTION value=9 <c:if test="${gsxxxx.ygrs=='9'}">selected</c:if>>
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
						<SELECT name=yfbmrs>
							<OPTION value="0" <c:if test="${gsxxxx.yfbmrs=='0'}">selected</c:if>>
								--��ѡ��--
							</OPTION>
							<OPTION value=1 <c:if test="${gsxxxx.yfbmrs=='1'}">selected</c:if>>
								����5 ��
							</OPTION>
							<OPTION value=2 <c:if test="${gsxxxx.yfbmrs=='2'}">selected</c:if>>
								5 - 10 ��
							</OPTION>
							<OPTION value=3 <c:if test="${gsxxxx.yfbmrs=='3'}">selected</c:if>>
								11 - 20 ��
							</OPTION>
							<OPTION value=4 <c:if test="${gsxxxx.yfbmrs=='4'}">selected</c:if>>
								21 - 30 ��
							</OPTION>
							<OPTION value=5 <c:if test="${gsxxxx.yfbmrs=='5'}">selected</c:if>>
								31 - 40 ��
							</OPTION>
							<OPTION value=6 <c:if test="${gsxxxx.yfbmrs=='6'}">selected</c:if>>
								41 - 50 ��
							</OPTION>
							<OPTION value=7 <c:if test="${gsxxxx.yfbmrs=='7'}">selected</c:if>>
								51 - 60 ��
							</OPTION>
							<OPTION value=8 <c:if test="${gsxxxx.yfbmrs=='8'}">selected</c:if>>
								61 - 70 ��
							</OPTION>
							<OPTION value=9 <c:if test="${gsxxxx.yfbmrs=='9'}">selected</c:if>>
								71 - 80 ��
							</OPTION>
							<OPTION value=10 <c:if test="${gsxxxx.yfbmrs=='10'}">selected</c:if>>
								81 - 90 ��
							</OPTION>
							<OPTION value=11 <c:if test="${gsxxxx.yfbmrs=='11'}">selected</c:if>>
								91 - 100 ��
							</OPTION>
							<OPTION value=12 <c:if test="${gsxxxx.yfbmrs=='12'}">selected</c:if>>
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
					<%
						Gsxxxx gsxxxx = (Gsxxxx)request.getAttribute("gsxxxx");
						String ycl = null;
						if(gsxxxx!=null)
						ycl = gsxxxx.getYcl();
						String[] month = {"",""};
						if(ycl!=null&&ycl.length()>0){
							String[] ytemp = ycl.split("/");
							month[0] = ytemp[0];	
							if(ycl.length()>1)month[1] = ytemp[1];
						}
					 %>
					 
					 	<!-- ���֣���λ -->
						<INPUT maxLength=32 size=8 name=monthProduction value="<%=month[0]%>">
						<SELECT name=unit>
							<OPTION value="0" <%=month[1].equals("0")?"selected":"" %>>
								--��ѡ��--
							</OPTION>
							<OPTION value=1 <%=month[1].equals("1")?"selected":"" %>>
								̨
							</OPTION>
							<OPTION value=2 <%=month[1].equals("2")?"selected":"" %>>
								��
							</OPTION>
							<OPTION value=3 <%=month[1].equals("3")?"selected":"" %>>
								��
							</OPTION>
							<OPTION value=4 <%=month[1].equals("4")?"selected":"" %>>
								��
							</OPTION>
							<OPTION value=5 <%=month[1].equals("5")?"selected":"" %>>
								ֻ
							</OPTION>
							<OPTION value=6 <%=month[1].equals("6")?"selected":"" %>>
								֧
							</OPTION>
							<OPTION value=7 <%=month[1].equals("7")?"selected":"" %>>
								֦
							</OPTION>
							<OPTION value=8 <%=month[1].equals("8")?"selected":"" %>>
								��
							</OPTION>
							<OPTION value=9 <%=month[1].equals("9")?"selected":"" %>>
								ͷ
							</OPTION>
							<OPTION value=10 <%=month[1].equals("10")?"selected":"" %>>
								��
							</OPTION>
							<OPTION value=PCE <%=month[1].equals("PCE")?"selected":"" %>>
								��
							</OPTION>
							<OPTION value=11 <%=month[1].equals("11")?"selected":"" %>>
								Ƭ
							</OPTION>
							<OPTION value=12 <%=month[1].equals("12")?"selected":"" %>>
								ƥ
							</OPTION>
							<OPTION value=13<%=month[1].equals("13")?"selected":"" %>>
								��
							</OPTION>
							<OPTION value=14 <%=month[1].equals("14")?"selected":"" %>>
								��
							</OPTION>
							<OPTION value=15 <%=month[1].equals("15")?"selected":"" %>>
								��
							</OPTION>
							<OPTION value=16 <%=month[1].equals("16")?"selected":"" %>>
								��
							</OPTION>
							<OPTION value=17 <%=month[1].equals("17")?"selected":"" %>>
								��
							</OPTION>
							<OPTION value=18 <%=month[1].equals("18")?"selected":"" %>>
								��
							</OPTION>
							<OPTION value=19 <%=month[1].equals("19")?"selected":"" %>>
								��
							</OPTION>
							<OPTION value=PR <%=month[1].equals("PR")?"selected":"" %>>
								˫
							</OPTION>
							<OPTION value=DOZ <%=month[1].equals("DOZ")?"selected":"" %>>
								һ��
							</OPTION>
							<OPTION value=20 <%=month[1].equals("20")?"selected":"" %>>
								��
							</OPTION>
							<OPTION value=SET <%=month[1].equals("SET")?"selected":"" %>>
								��
							</OPTION>
							<OPTION value=21 <%=month[1].equals("21")?"selected":"" %>>
								��
							</OPTION>
							<OPTION value=22 <%=month[1].equals("22")?"selected":"" %>>
								��
							</OPTION>
							<OPTION value=23 <%=month[1].equals("23")?"selected":"" %>>
								��
							</OPTION>
							<OPTION value=24 <%=month[1].equals("24")?"selected":"" %>>
								��
							</OPTION>
							<OPTION value=25 <%=month[1].equals("25")?"selected":"" %>>
								��
							</OPTION>
							<OPTION value=26 <%=month[1].equals("26")?"selected":"" %>>
								��
							</OPTION>
							<OPTION value=27 <%=month[1].equals("27")?"selected":"" %>>
								��
							</OPTION>
							<OPTION value=28 <%=month[1].equals("28")?"selected":"" %>>
								ƿ���ޣ�
							</OPTION>
							<OPTION value=MMT <%=month[1].equals("MMT")?"selected":"" %>>
								����
							</OPTION>
							<OPTION value=CMT <%=month[1].equals("CMT")?"selected":"" %>>
								����
							</OPTION>
							<OPTION value=MRT <%=month[1].equals("MRT")?"selected":"" %>>
								��
							</OPTION>
							<OPTION value=KMT <%=month[1].equals("KMT")?"selected":"" %>>
								ǧ��
							</OPTION>
							<OPTION value=INH <%=month[1].equals("INH")?"selected":"" %>>
								Ӣ��
							</OPTION>
							<OPTION value=FOT <%=month[1].equals("FOT")?"selected":"" %>>
								Ӣ��
							</OPTION>
							<OPTION value=GLI <%=month[1].equals("GLI")?"selected":"" %>>
								���� (Ӣ)
							</OPTION>
							<OPTION value=GLL <%=month[1].equals("GLL")?"selected":"" %>>
								���� (��)
							</OPTION>
							<OPTION value=GRM <%=month[1].equals("GRM")?"selected":"" %>>
								��
							</OPTION>
							<OPTION value=KGM <%=month[1].equals("KGM")?"selected":"" %>>
								ǧ��
							</OPTION>
							<OPTION value=LBR <%=month[1].equals("LBR")?"selected":"" %>>
								��
							</OPTION>
							<OPTION value=MTN <%=month[1].equals("MTN")?"selected":"" %>>
								����
							</OPTION>
							<OPTION value=LTN <%=month[1].equals("LTN")?"selected":"" %>>
								�� (Ӣ)
							</OPTION>
							<OPTION value=LTS <%=month[1].equals("LTS")?"selected":"" %>>
								�� (��)
							</OPTION>
							<OPTION value=MLT <%=month[1].equals("MLT")?"selected":"" %>>
								����
							</OPTION>
							<OPTION value=LTR <%=month[1].equals("LTR")?"selected":"" %>>
								����
							</OPTION>
							<OPTION value=ONZ <%=month[1].equals("ONZ")?"selected":"" %>>
								��˾
							</OPTION>
							<OPTION value=QTI <%=month[1].equals("QTI")?"selected":"" %>>
								����
							</OPTION>
							<OPTION value=PTI <%=month[1].equals("PTI")?"selected":"" %>>
								Ʒ�� (Ӣ)
							</OPTION>
							<OPTION value=PTL <%=month[1].equals("PTL")?"selected":"" %>>
								Ʒ�� (��)
							</OPTION>
							<OPTION value=YRD <%=month[1].equals("YRD")?"selected":"" %>>
								��
							</OPTION>
							<OPTION value=FTK <%=month[1].equals("FTK")?"selected":"" %>>
								ƽ��Ӣ��
							</OPTION>
							<OPTION value=INK <%=month[1].equals("INK")?"selected":"" %>>
								ƽ��Ӣ��
							</OPTION>
							<OPTION value=MTK <%=month[1].equals("MTK")?"selected":"" %>>
								ƽ����
							</OPTION>
							<OPTION value=YDK <%=month[1].equals("YDK")?"selected":"" %>>
								ƽ����
							</OPTION>
							<OPTION value=MTC <%=month[1].equals("MTC")?"selected":"" %>>
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
					<%
						String nyye = null;
						if(gsxxxx!=null)
							nyye = gsxxxx.getNyye();
							nyye = nyye==null?"0":nyye;
					 %>
						<SELECT name=nyye>
							<OPTION value="0" <%=nyye.equals("0")?"selected":"" %>>
								--��ѡ��--
							</OPTION>
							<OPTION value=1 <%=nyye.equals("1")?"selected":"" %>>
								����� 10 ��Ԫ/������
							</OPTION>
							<OPTION value=2 <%=nyye.equals("2")?"selected":"" %>>
								����� 10 ��Ԫ/�� - 30 ��Ԫ/��
							</OPTION>
							<OPTION value=3 <%=nyye.equals("3")?"selected":"" %>>
								����� 30 ��Ԫ/�� - 50 ��Ԫ/��
							</OPTION>
							<OPTION value=4 <%=nyye.equals("4")?"selected":"" %>>
								����� 50 ��Ԫ/�� - 100 ��Ԫ/��
							</OPTION>
							<OPTION value=5 <%=nyye.equals("5")?"selected":"" %>>
								����� 100 ��Ԫ/�� - 200 ��Ԫ/��
							</OPTION>
							<OPTION value=6 <%=nyye.equals("6")?"selected":"" %>>
								����� 200 ��Ԫ/�� - 300 ��Ԫ/��
							</OPTION>
							<OPTION value=7 <%=nyye.equals("7")?"selected":"" %>>
								����� 300 ��Ԫ/�� - 500 ��Ԫ/��
							</OPTION>
							<OPTION value=8 <%=nyye.equals("8")?"selected":"" %>>
								����� 500 ��Ԫ/�� - 700 ��Ԫ/��
							</OPTION>
							<OPTION value=9 <%=nyye.equals("9")?"selected":"" %>>
								����� 700 ��Ԫ/�� - 1000 ��Ԫ/��
							</OPTION>
							<OPTION value=10 <%=nyye.equals("10")?"selected":"" %>>
								����� 1000 ��Ԫ/�� - 2000 ��Ԫ/��
							</OPTION>
							<OPTION value=11 <%=nyye.equals("11")?"selected":"" %>>
								����� 2000 ��Ԫ/�� - 3000 ��Ԫ/��
							</OPTION>
							<OPTION value=12 <%=nyye.equals("12")?"selected":"" %>>
								����� 3000 ��Ԫ/�� - 5000 ��Ԫ/��
							</OPTION>
							<OPTION value=13 <%=nyye.equals("13")?"selected":"" %>>
								����� 5000 ��Ԫ/�� - 1 ��Ԫ/��
							</OPTION>
							<OPTION value=14 <%=nyye.equals("14")?"selected":"" %>>
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
					<%
						String njke = null;
						if(gsxxxx!=null)
							njke = gsxxxx.getNjke();
							njke = njke==null?"0":njke;
					 %>
						<SELECT name=njke>
							<OPTION value="0" <%=njke.equals("0")?"selected":"" %>>
								--��ѡ��--
							</OPTION>
							<OPTION value=8 <%=njke.equals("8")?"selected":"" %>>
								����� 10 ��Ԫ����
							</OPTION>
							<OPTION value=9 <%=njke.equals("9")?"selected":"" %>>
								����� 10 ��Ԫ - 30 ��Ԫ
							</OPTION>
							<OPTION value=10 <%=njke.equals("10")?"selected":"" %>>
								����� 30 ��Ԫ - 50 ��Ԫ
							</OPTION>
							<OPTION value=11 <%=njke.equals("11")?"selected":"" %>>
								����� 50 ��Ԫ - 100 ��Ԫ
							</OPTION>
							<OPTION value=2 <%=njke.equals("2")?"selected":"" %>>
								����� 100 ��Ԫ - 200 ��Ԫ
							</OPTION>
							<OPTION value=12 <%=njke.equals("12")?"selected":"" %>>
								����� 200 ��Ԫ - 300 ��Ԫ
							</OPTION>
							<OPTION value=3 <%=njke.equals("3")?"selected":"" %>>
								����� 300 ��Ԫ - 500 ��Ԫ
							</OPTION>
							<OPTION value=13 <%=njke.equals("13")?"selected":"" %>>
								����� 500 ��Ԫ - 700 ��Ԫ
							</OPTION>
							<OPTION value=14 <%=njke.equals("14")?"selected":"" %>>
								����� 700 ��Ԫ - 1000 ��Ԫ
							</OPTION>
							<OPTION value=15 <%=njke.equals("15")?"selected":"" %>>
								����� 1000 ��Ԫ - 2000 ��Ԫ
							</OPTION>
							<OPTION value=16 <%=njke.equals("16")?"selected":"" %>>
								����� 2000 ��Ԫ - 3000 ��Ԫ
							</OPTION>
							<OPTION value=17 <%=njke.equals("17")?"selected":"" %>>
								����� 3000 ��Ԫ - 5000 ��Ԫ
							</OPTION>
							<OPTION value=6 <%=njke.equals("6")?"selected":"" %>>
								����� 5000 ��Ԫ - 1 ��Ԫ
							</OPTION>
							<OPTION value=7 <%=njke.equals("7")?"selected":"" %>>
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
					<%
						String ncke = null;
						if(gsxxxx!=null)
							ncke = gsxxxx.getNcke();
							ncke = ncke==null?"0":ncke;
					 %>
						<SELECT name=ncke>
							<OPTION value="0" <%=ncke.equals("0")?"selected":"" %>>
								--��ѡ��--
							</OPTION>
							<OPTION value=8 <%=ncke.equals("8")?"selected":"" %>>
								����� 10 ��Ԫ����
							</OPTION>
							<OPTION value=9 <%=ncke.equals("9")?"selected":"" %>>
								����� 10 ��Ԫ - 30 ��Ԫ
							</OPTION>
							<OPTION value=10 <%=ncke.equals("10")?"selected":"" %>>
								����� 30 ��Ԫ - 50 ��Ԫ
							</OPTION>
							<OPTION value=11 <%=ncke.equals("11")?"selected":"" %>>
								����� 50 ��Ԫ - 100 ��Ԫ
							</OPTION>
							<OPTION value=2 <%=ncke.equals("2")?"selected":"" %>>
								����� 100 ��Ԫ - 200 ��Ԫ
							</OPTION>
							<OPTION value=12 <%=ncke.equals("12")?"selected":"" %>>
								����� 200 ��Ԫ - 300 ��Ԫ
							</OPTION>
							<OPTION value=3 <%=ncke.equals("3")?"selected":"" %>>
								����� 300 ��Ԫ - 500 ��Ԫ
							</OPTION>
							<OPTION value=13 <%=ncke.equals("13")?"selected":"" %>>
								����� 500 ��Ԫ - 700 ��Ԫ
							</OPTION>
							<OPTION value=14 <%=ncke.equals("14")?"selected":"" %>>
								����� 700 ��Ԫ - 1000 ��Ԫ
							</OPTION>
							<OPTION value=15 <%=ncke.equals("15")?"selected":"" %>>
								����� 1000 ��Ԫ - 2000 ��Ԫ
							</OPTION>
							<OPTION value=16 <%=ncke.equals("16")?"selected":"" %> >
								����� 2000 ��Ԫ - 3000 ��Ԫ
							</OPTION>
							<OPTION value=17 <%=ncke.equals("17")?"selected":"" %>>
								����� 3000 ��Ԫ - 5000 ��Ԫ
							</OPTION>
							<OPTION value=6 <%=ncke.equals("6")?"selected":"" %>>
								����� 5000 ��Ԫ - 1 ��Ԫ
							</OPTION>
							<OPTION value=7 <%=ncke.equals("7")?"selected":"" %>>
								����� 1 ��Ԫ����
							</OPTION>
						</SELECT><br>
						<FONT class=note>
							����׼ȷѡ������������ڶ�,ͬʱ������ڶ���ܴ��ڡ���Ӫҵ���
						</FONT>
					</td>
				</tr>
				<tr>
					<td align=right>
						������ϵ��֤��
					</td>
					<td>
					<script type="text/javascript">
						var gltxrzArray = [];
						<%
						String gltx = "";
						if(gsxxxx!=null)
							gltx = gsxxxx.getGltxrz();
							if(gltx!=null&&!gltx.equals("")){
								String[] gltStr = gltx.split(",");
								for(int i=0;i<gltStr.length;i++){
							%>
								gltxrzArray.length = <%=gltStr.length%>;
								gltxrzArray[<%=i%>] = <%=gltStr[i]%>;
							<%
								}
							}
							%>
						
						function check(values) {
							for(var c=0; c<values.length; c++) {
								isequals(values[c] + '');
							}
						}
						function isequals(v) {
							var chboxes = document.getElementsByName('gltxrz'); 
							if(chboxes.length) {
								for(var c=0; c<chboxes.length; c++) {
									if(v == chboxes[c].value) {
										chboxes[c].checked = 'checked';
									}
								}
							}
						}
					</script>
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
						<script type="text/javascript">
							check(gltxrzArray);
						</script>
					</td>
				</tr>
				<tr>
					<td align=right>
						�������ƣ�
					</td>
					<td>
						<INPUT id=QaQc1 type=radio value=�ڲ�  name=zlkz <c:if test="${gsxxxx.zlkz=='�ڲ�'}">checked</c:if>>
						<LABEL for=QaQc1>
							�ڲ�
						</LABEL>
						<INPUT id=QaQc2 type=radio value=������ name=zlkz <c:if test="${gsxxxx.zlkz=='������'}">checked</c:if>>
						<LABEL for=QaQc2>
							������
						</LABEL>
						<INPUT id=QaQc3 type=radio value=��	name=zlkz <c:if test="${gsxxxx.zlkz=='��'}">checked</c:if>>
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
					<script type="text/javascript">
						var zyscArray = new Array();
						<%
							String zysc = "";
							if(gsxxxx!=null)zysc = gsxxxx.getZysc();
								if(zysc!=null&&!zysc.equals("")){
									String[] zyscStr = zysc.split(",");
									for(int i=0;i<zyscStr.length;i++){
						%>
									zyscArray.length = <%=zyscStr.length%>;
									zyscArray[<%=i%>] = <%=zyscStr[i]%>;						
						<%
								}
							}
						%>
						function check2(values) {
							for(var c=0; c<values.length; c++) {
								isequals2(values[c] + '');
							}
						}
						function isequals2(v) {
							var chboxes = document.getElementsByName('zysc'); 
							if(chboxes.length) {
								for(var c=0; c<chboxes.length; c++) {
									if(v == chboxes[c].value) {
										chboxes[c].checked = 'checked';
									}
								}
							}
						}
					</script>
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
						<script type="text/javascript">
							check2(zyscArray);
						</script>
					</td>
				</tr>
				<tr>
				<td>��Ҫ�ͻ�Ⱥ��</td>
				<td><INPUT  maxLength=60 size=30 name=zykhq value="${gxxx.zykhq}" > 
				<SPAN class=note>�磺���С���װ����ӡȾ��</SPAN></td>
				</tr>
				<tr>
				<td>�Ƿ��ṩOEM���ӹ���</td>
				<td>
				<INPUT id=OemOdmYes type=radio value=y name=oem <c:if test="${gxxx.oem=='y'}">checked</c:if>>
				<LABEL for=OemOdmYes>��</LABEL> 
				<INPUT id=OemOdmNo  type=radio value=n name=oem <c:if test="${gxxx.oem=='n'}">checked</c:if>>
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
