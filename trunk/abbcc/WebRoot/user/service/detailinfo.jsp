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
		<title>公司详细信息</title>
		<link rel="stylesheet" type="text/css" href="<%=path%>/css/service.css">
	</head>
	<body>
		<c:set var="gxxx" value="${gsxxxx}" scope="page"></c:set>
		<div><h3><font color="blue">
		公司介绍
		</font></h3></div>
		<c:set var="basicInfoUpdated" value="${basicInfoUpdated}" scope="page"></c:set>
		<c:if test="${basicInfoUpdated=='basicInfoUpdated'}">
		<TABLE class=tx_box cellSpacing=0 cellPadding=0 width="100%" align=center>
		<TBODY>
        	<TR>
          	<TD vAlign=top align=center width=80 rowSpan=2>
          	<IMG height=53 src="<%=path%>/images/service/icon3.gif" width=53></TD>
          	<TD class=tx_title height=20>提交成功：</TD></TR>
        	<TR><TD class=tx_content height=34>贵公司基本资料已提交，请继续填写公司详细资料！</TD></TR>
        </TBODY>
      	</TABLE>
		</c:if>
		<p>
			公司详细资料
		</p>
		<form action="traceDetailInfo.do" name="detailInfoForm" >
			<input type="hidden" name="action">
			<table width="90%" border="1" cellspacing="0" cellpadding="2"
				align="CENTER" bordercolor="F0E68C">
				<tr>
					<td align=right>
						注册资本：
					</td>
					<td>
						<input type="text" name="zczb"  size="14" value="${gxxx.zczb }">
						元
						<SPAN class=note>（最多选择2种经营模式）</SPAN>
					</td>
				</tr>
				<tr>
					<td align=right>
						公司成立时间：
					</td>
					<td>
						<input type="text" name="gsclsj"  size="14" value="${gxxx.gsclsj }">
						<SPAN class=note>(年份，如：2004)</SPAN>
					</td>
				</tr>
				<tr>
					<td align=right>
						公司注册地：
					</td>
					<td>
						<input type="text" name="gszcd"  size="30" value="${gxxx.gszcd }">
						<SPAN class=note>(省份/城市)</SPAN>
					</td>
				</tr>
				<tr>
					<td align=right>
						法定代表人/负责人：
					</td>
					<td>
						<input type="text" name="fddbr"  size="30" value="${gxxx.fddbr }">
					</td>
				</tr>
				<tr>
					<td align=right>
						开户银行：
					</td>
					<td>
						<input type="text" name="khyh"  size="30" value="${gxxx.khyh }">
					</td>
				</tr>
				<tr>
					<td align=right>
						帐号：
					</td>
					<td>
						<input type="text" name="zh"  size="30" value="${gxxx.zh }">
					</td>
				</tr>
				<tr>
					<td align=right>
						厂房面积：
					</td>
					<td>
						<input type="text" name="cfmj"  size="30" value="${gxxx.cfmj }">
						<SPAN class=note>（平方米）</SPAN>
					</td>
				</tr>
				<tr>
					<td align=right>
						员工人数：
					</td>
					<td>
					
						<SELECT name=ygrs>
							<OPTION value="0" <c:if test="${gsxxxx.ygrs=='0'}">selected</c:if>>
								-- 请选择 --
							</OPTION>
							<OPTION value=1 <c:if test="${gsxxxx.ygrs=='1'}">selected</c:if>>
								5 人以下
							</OPTION>
							<OPTION value=2 <c:if test="${gsxxxx.ygrs=='2'}">selected</c:if>>
								5 - 10 人
							</OPTION>
							<OPTION value=3 <c:if test="${gsxxxx.ygrs=='3'}">selected</c:if>>
								11 - 50 人
							</OPTION>
							<OPTION value=4 <c:if test="${gsxxxx.ygrs=='4'}">selected</c:if>>
								51 - 100 人
							</OPTION>
							<OPTION value=5 <c:if test="${gsxxxx.ygrs=='5'}">selected</c:if>>
								101 - 200人
							</OPTION>
							<OPTION value=6 <c:if test="${gsxxxx.ygrs=='6'}">selected</c:if>>
								201 - 300 人
							</OPTION>
							<OPTION value=7 <c:if test="${gsxxxx.ygrs=='7'}">selected</c:if>>
								301 - 500 人
							</OPTION>
							<OPTION value=8 <c:if test="${gsxxxx.ygrs=='8'}">selected</c:if>>
								501 - 1000 人
							</OPTION>
							<OPTION value=9 <c:if test="${gsxxxx.ygrs=='9'}">selected</c:if>>
								1000 人以上
							</OPTION>
						</SELECT>
					</td>
				</tr>
				<tr>
					<td align=right>
						研发部门人数：
					</td>
					<td>
						<SELECT name=yfbmrs>
							<OPTION value="0" <c:if test="${gsxxxx.yfbmrs=='0'}">selected</c:if>>
								--请选择--
							</OPTION>
							<OPTION value=1 <c:if test="${gsxxxx.yfbmrs=='1'}">selected</c:if>>
								少于5 人
							</OPTION>
							<OPTION value=2 <c:if test="${gsxxxx.yfbmrs=='2'}">selected</c:if>>
								5 - 10 人
							</OPTION>
							<OPTION value=3 <c:if test="${gsxxxx.yfbmrs=='3'}">selected</c:if>>
								11 - 20 人
							</OPTION>
							<OPTION value=4 <c:if test="${gsxxxx.yfbmrs=='4'}">selected</c:if>>
								21 - 30 人
							</OPTION>
							<OPTION value=5 <c:if test="${gsxxxx.yfbmrs=='5'}">selected</c:if>>
								31 - 40 人
							</OPTION>
							<OPTION value=6 <c:if test="${gsxxxx.yfbmrs=='6'}">selected</c:if>>
								41 - 50 人
							</OPTION>
							<OPTION value=7 <c:if test="${gsxxxx.yfbmrs=='7'}">selected</c:if>>
								51 - 60 人
							</OPTION>
							<OPTION value=8 <c:if test="${gsxxxx.yfbmrs=='8'}">selected</c:if>>
								61 - 70 人
							</OPTION>
							<OPTION value=9 <c:if test="${gsxxxx.yfbmrs=='9'}">selected</c:if>>
								71 - 80 人
							</OPTION>
							<OPTION value=10 <c:if test="${gsxxxx.yfbmrs=='10'}">selected</c:if>>
								81 - 90 人
							</OPTION>
							<OPTION value=11 <c:if test="${gsxxxx.yfbmrs=='11'}">selected</c:if>>
								91 - 100 人
							</OPTION>
							<OPTION value=12 <c:if test="${gsxxxx.yfbmrs=='12'}">selected</c:if>>
								100 人以上
							</OPTION>
						</SELECT>
					</td>
				</tr>
				<tr>
					<td align=right>
						品牌名称：
					</td>
					<td>
						<input type="text" name="jypp"  size="30" value="${gxxx.jypp }">
					</td>
				</tr>
				<tr>
					<td align=right>
						月产量：
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
					 
					 	<!-- 数字＋单位 -->
						<INPUT maxLength=32 size=8 name=monthProduction value="<%=month[0]%>">
						<SELECT name=unit>
							<OPTION value="0" <%=month[1].equals("0")?"selected":"" %>>
								--请选择--
							</OPTION>
							<OPTION value=1 <%=month[1].equals("1")?"selected":"" %>>
								台
							</OPTION>
							<OPTION value=2 <%=month[1].equals("2")?"selected":"" %>>
								粒
							</OPTION>
							<OPTION value=3 <%=month[1].equals("3")?"selected":"" %>>
								座
							</OPTION>
							<OPTION value=4 <%=month[1].equals("4")?"selected":"" %>>
								辆
							</OPTION>
							<OPTION value=5 <%=month[1].equals("5")?"selected":"" %>>
								只
							</OPTION>
							<OPTION value=6 <%=month[1].equals("6")?"selected":"" %>>
								支
							</OPTION>
							<OPTION value=7 <%=month[1].equals("7")?"selected":"" %>>
								枝
							</OPTION>
							<OPTION value=8 <%=month[1].equals("8")?"selected":"" %>>
								架
							</OPTION>
							<OPTION value=9 <%=month[1].equals("9")?"selected":"" %>>
								头
							</OPTION>
							<OPTION value=10 <%=month[1].equals("10")?"selected":"" %>>
								张
							</OPTION>
							<OPTION value=PCE <%=month[1].equals("PCE")?"selected":"" %>>
								块
							</OPTION>
							<OPTION value=11 <%=month[1].equals("11")?"selected":"" %>>
								片
							</OPTION>
							<OPTION value=12 <%=month[1].equals("12")?"selected":"" %>>
								匹
							</OPTION>
							<OPTION value=13<%=month[1].equals("13")?"selected":"" %>>
								件
							</OPTION>
							<OPTION value=14 <%=month[1].equals("14")?"selected":"" %>>
								根
							</OPTION>
							<OPTION value=15 <%=month[1].equals("15")?"selected":"" %>>
								条
							</OPTION>
							<OPTION value=16 <%=month[1].equals("16")?"selected":"" %>>
								把
							</OPTION>
							<OPTION value=17 <%=month[1].equals("17")?"selected":"" %>>
								卷
							</OPTION>
							<OPTION value=18 <%=month[1].equals("18")?"selected":"" %>>
								副
							</OPTION>
							<OPTION value=19 <%=month[1].equals("19")?"selected":"" %>>
								幅
							</OPTION>
							<OPTION value=PR <%=month[1].equals("PR")?"selected":"" %>>
								双
							</OPTION>
							<OPTION value=DOZ <%=month[1].equals("DOZ")?"selected":"" %>>
								一打
							</OPTION>
							<OPTION value=20 <%=month[1].equals("20")?"selected":"" %>>
								份
							</OPTION>
							<OPTION value=SET <%=month[1].equals("SET")?"selected":"" %>>
								套
							</OPTION>
							<OPTION value=21 <%=month[1].equals("21")?"selected":"" %>>
								棵
							</OPTION>
							<OPTION value=22 <%=month[1].equals("22")?"selected":"" %>>
								箱
							</OPTION>
							<OPTION value=23 <%=month[1].equals("23")?"selected":"" %>>
								袋
							</OPTION>
							<OPTION value=24 <%=month[1].equals("24")?"selected":"" %>>
								盒
							</OPTION>
							<OPTION value=25 <%=month[1].equals("25")?"selected":"" %>>
								包
							</OPTION>
							<OPTION value=26 <%=month[1].equals("26")?"selected":"" %>>
								捆
							</OPTION>
							<OPTION value=27 <%=month[1].equals("27")?"selected":"" %>>
								筐
							</OPTION>
							<OPTION value=28 <%=month[1].equals("28")?"selected":"" %>>
								瓶（罐）
							</OPTION>
							<OPTION value=MMT <%=month[1].equals("MMT")?"selected":"" %>>
								毫米
							</OPTION>
							<OPTION value=CMT <%=month[1].equals("CMT")?"selected":"" %>>
								厘米
							</OPTION>
							<OPTION value=MRT <%=month[1].equals("MRT")?"selected":"" %>>
								米
							</OPTION>
							<OPTION value=KMT <%=month[1].equals("KMT")?"selected":"" %>>
								千米
							</OPTION>
							<OPTION value=INH <%=month[1].equals("INH")?"selected":"" %>>
								英寸
							</OPTION>
							<OPTION value=FOT <%=month[1].equals("FOT")?"selected":"" %>>
								英尺
							</OPTION>
							<OPTION value=GLI <%=month[1].equals("GLI")?"selected":"" %>>
								加仑 (英)
							</OPTION>
							<OPTION value=GLL <%=month[1].equals("GLL")?"selected":"" %>>
								加仑 (美)
							</OPTION>
							<OPTION value=GRM <%=month[1].equals("GRM")?"selected":"" %>>
								克
							</OPTION>
							<OPTION value=KGM <%=month[1].equals("KGM")?"selected":"" %>>
								千克
							</OPTION>
							<OPTION value=LBR <%=month[1].equals("LBR")?"selected":"" %>>
								磅
							</OPTION>
							<OPTION value=MTN <%=month[1].equals("MTN")?"selected":"" %>>
								公吨
							</OPTION>
							<OPTION value=LTN <%=month[1].equals("LTN")?"selected":"" %>>
								吨 (英)
							</OPTION>
							<OPTION value=LTS <%=month[1].equals("LTS")?"selected":"" %>>
								吨 (美)
							</OPTION>
							<OPTION value=MLT <%=month[1].equals("MLT")?"selected":"" %>>
								毫升
							</OPTION>
							<OPTION value=LTR <%=month[1].equals("LTR")?"selected":"" %>>
								公升
							</OPTION>
							<OPTION value=ONZ <%=month[1].equals("ONZ")?"selected":"" %>>
								盎司
							</OPTION>
							<OPTION value=QTI <%=month[1].equals("QTI")?"selected":"" %>>
								夸脱
							</OPTION>
							<OPTION value=PTI <%=month[1].equals("PTI")?"selected":"" %>>
								品脱 (英)
							</OPTION>
							<OPTION value=PTL <%=month[1].equals("PTL")?"selected":"" %>>
								品脱 (美)
							</OPTION>
							<OPTION value=YRD <%=month[1].equals("YRD")?"selected":"" %>>
								码
							</OPTION>
							<OPTION value=FTK <%=month[1].equals("FTK")?"selected":"" %>>
								平方英尺
							</OPTION>
							<OPTION value=INK <%=month[1].equals("INK")?"selected":"" %>>
								平方英寸
							</OPTION>
							<OPTION value=MTK <%=month[1].equals("MTK")?"selected":"" %>>
								平方米
							</OPTION>
							<OPTION value=YDK <%=month[1].equals("YDK")?"selected":"" %>>
								平方码
							</OPTION>
							<OPTION value=MTC <%=month[1].equals("MTC")?"selected":"" %>>
								立方米
							</OPTION>
						</SELECT>
					</TD>
				</tr>
				<tr>
					<td align=right>
						年营业额：
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
								--请选择--
							</OPTION>
							<OPTION value=1 <%=nyye.equals("1")?"selected":"" %>>
								人民币 10 万元/年以下
							</OPTION>
							<OPTION value=2 <%=nyye.equals("2")?"selected":"" %>>
								人民币 10 万元/年 - 30 万元/年
							</OPTION>
							<OPTION value=3 <%=nyye.equals("3")?"selected":"" %>>
								人民币 30 万元/年 - 50 万元/年
							</OPTION>
							<OPTION value=4 <%=nyye.equals("4")?"selected":"" %>>
								人民币 50 万元/年 - 100 万元/年
							</OPTION>
							<OPTION value=5 <%=nyye.equals("5")?"selected":"" %>>
								人民币 100 万元/年 - 200 万元/年
							</OPTION>
							<OPTION value=6 <%=nyye.equals("6")?"selected":"" %>>
								人民币 200 万元/年 - 300 万元/年
							</OPTION>
							<OPTION value=7 <%=nyye.equals("7")?"selected":"" %>>
								人民币 300 万元/年 - 500 万元/年
							</OPTION>
							<OPTION value=8 <%=nyye.equals("8")?"selected":"" %>>
								人民币 500 万元/年 - 700 万元/年
							</OPTION>
							<OPTION value=9 <%=nyye.equals("9")?"selected":"" %>>
								人民币 700 万元/年 - 1000 万元/年
							</OPTION>
							<OPTION value=10 <%=nyye.equals("10")?"selected":"" %>>
								人民币 1000 万元/年 - 2000 万元/年
							</OPTION>
							<OPTION value=11 <%=nyye.equals("11")?"selected":"" %>>
								人民币 2000 万元/年 - 3000 万元/年
							</OPTION>
							<OPTION value=12 <%=nyye.equals("12")?"selected":"" %>>
								人民币 3000 万元/年 - 5000 万元/年
							</OPTION>
							<OPTION value=13 <%=nyye.equals("13")?"selected":"" %>>
								人民币 5000 万元/年 - 1 亿元/年
							</OPTION>
							<OPTION value=14 <%=nyye.equals("14")?"selected":"" %>>
								人民币 1 亿元/年以上
							</OPTION>
						</SELECT>
					</td>
				</tr>
				<tr>
					<td align=right>
						年进口额：
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
								--请选择--
							</OPTION>
							<OPTION value=8 <%=njke.equals("8")?"selected":"" %>>
								人民币 10 万元以下
							</OPTION>
							<OPTION value=9 <%=njke.equals("9")?"selected":"" %>>
								人民币 10 万元 - 30 万元
							</OPTION>
							<OPTION value=10 <%=njke.equals("10")?"selected":"" %>>
								人民币 30 万元 - 50 万元
							</OPTION>
							<OPTION value=11 <%=njke.equals("11")?"selected":"" %>>
								人民币 50 万元 - 100 万元
							</OPTION>
							<OPTION value=2 <%=njke.equals("2")?"selected":"" %>>
								人民币 100 万元 - 200 万元
							</OPTION>
							<OPTION value=12 <%=njke.equals("12")?"selected":"" %>>
								人民币 200 万元 - 300 万元
							</OPTION>
							<OPTION value=3 <%=njke.equals("3")?"selected":"" %>>
								人民币 300 万元 - 500 万元
							</OPTION>
							<OPTION value=13 <%=njke.equals("13")?"selected":"" %>>
								人民币 500 万元 - 700 万元
							</OPTION>
							<OPTION value=14 <%=njke.equals("14")?"selected":"" %>>
								人民币 700 万元 - 1000 万元
							</OPTION>
							<OPTION value=15 <%=njke.equals("15")?"selected":"" %>>
								人民币 1000 万元 - 2000 万元
							</OPTION>
							<OPTION value=16 <%=njke.equals("16")?"selected":"" %>>
								人民币 2000 万元 - 3000 万元
							</OPTION>
							<OPTION value=17 <%=njke.equals("17")?"selected":"" %>>
								人民币 3000 万元 - 5000 万元
							</OPTION>
							<OPTION value=6 <%=njke.equals("6")?"selected":"" %>>
								人民币 5000 万元 - 1 亿元
							</OPTION>
							<OPTION value=7 <%=njke.equals("7")?"selected":"" %>>
								人民币 1 亿元以上
							</OPTION>
						</SELECT>
					</td>
				</tr>
				<tr>
					<td align=right>
						年出口额：
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
								--请选择--
							</OPTION>
							<OPTION value=8 <%=ncke.equals("8")?"selected":"" %>>
								人民币 10 万元以下
							</OPTION>
							<OPTION value=9 <%=ncke.equals("9")?"selected":"" %>>
								人民币 10 万元 - 30 万元
							</OPTION>
							<OPTION value=10 <%=ncke.equals("10")?"selected":"" %>>
								人民币 30 万元 - 50 万元
							</OPTION>
							<OPTION value=11 <%=ncke.equals("11")?"selected":"" %>>
								人民币 50 万元 - 100 万元
							</OPTION>
							<OPTION value=2 <%=ncke.equals("2")?"selected":"" %>>
								人民币 100 万元 - 200 万元
							</OPTION>
							<OPTION value=12 <%=ncke.equals("12")?"selected":"" %>>
								人民币 200 万元 - 300 万元
							</OPTION>
							<OPTION value=3 <%=ncke.equals("3")?"selected":"" %>>
								人民币 300 万元 - 500 万元
							</OPTION>
							<OPTION value=13 <%=ncke.equals("13")?"selected":"" %>>
								人民币 500 万元 - 700 万元
							</OPTION>
							<OPTION value=14 <%=ncke.equals("14")?"selected":"" %>>
								人民币 700 万元 - 1000 万元
							</OPTION>
							<OPTION value=15 <%=ncke.equals("15")?"selected":"" %>>
								人民币 1000 万元 - 2000 万元
							</OPTION>
							<OPTION value=16 <%=ncke.equals("16")?"selected":"" %> >
								人民币 2000 万元 - 3000 万元
							</OPTION>
							<OPTION value=17 <%=ncke.equals("17")?"selected":"" %>>
								人民币 3000 万元 - 5000 万元
							</OPTION>
							<OPTION value=6 <%=ncke.equals("6")?"selected":"" %>>
								人民币 5000 万元 - 1 亿元
							</OPTION>
							<OPTION value=7 <%=ncke.equals("7")?"selected":"" %>>
								人民币 1 亿元以上
							</OPTION>
						</SELECT><br>
						<FONT class=note>
							（请准确选择您的年进出口额,同时“年出口额”不能大于“年营业额”）
						</FONT>
					</td>
				</tr>
				<tr>
					<td align=right>
						管理体系认证：
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
						质量控制：
					</td>
					<td>
						<INPUT id=QaQc1 type=radio value=内部  name=zlkz <c:if test="${gsxxxx.zlkz=='内部'}">checked</c:if>>
						<LABEL for=QaQc1>
							内部
						</LABEL>
						<INPUT id=QaQc2 type=radio value=第三方 name=zlkz <c:if test="${gsxxxx.zlkz=='第三方'}">checked</c:if>>
						<LABEL for=QaQc2>
							第三方
						</LABEL>
						<INPUT id=QaQc3 type=radio value=无	name=zlkz <c:if test="${gsxxxx.zlkz=='无'}">checked</c:if>>
						<LABEL for=QaQc3>
							无
						</LABEL>
					</td>
				</tr>
				<tr>
					<td align=right>
						主要市场：
						<FONT color=#999999>（请选最主要的3个）</FONT>
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
							大陆
						</LABEL>
						<INPUT id=TradeRegion2 type=checkbox value=2 name=zysc>
						<LABEL for=TradeRegion2>
							港澳台地区
						</LABEL>
						<INPUT id=TradeRegion3 type=checkbox value=4096 name=zysc>
						<LABEL for=TradeRegion3>
							日本
						</LABEL>
						<INPUT id=TradeRegion4 type=checkbox value=4 name=zysc>
						<LABEL for=TradeRegion4>
							北美
						</LABEL>
						<INPUT id=TradeRegion5 type=checkbox value=8 name=zysc>
						<LABEL for=TradeRegion5>
							南美
						</LABEL>
						<INPUT id=TradeRegion6 type=checkbox value=16 name=zysc>
						<LABEL for=TradeRegion6>
							西欧
						</LABEL>
						<INPUT id=TradeRegion7 type=checkbox value=32 name=zysc>
						<LABEL for=TradeRegion7>
							东欧
						</LABEL>
						<INPUT id=TradeRegion8 type=checkbox value=64 name=zysc>
						<LABEL for=TradeRegion8>
							东亚
						</LABEL>
						<INPUT id=TradeRegion9 type=checkbox value=128 name=zysc>
						<LABEL for=TradeRegion9>
							东南亚
						</LABEL>
						<INPUT id=TradeRegion10 type=checkbox value=256 name=zysc>
						<LABEL for=TradeRegion10>
							中东
						</LABEL>
						<INPUT id=TradeRegion11 type=checkbox value=512 name=zysc>
						<LABEL for=TradeRegion11>
							非洲
						</LABEL>
						<INPUT id=TradeRegion12 type=checkbox value=1024 name=zysc>
						<LABEL for=TradeRegion12>
							大洋洲
						</LABEL>
						<INPUT id=TradeRegion13 type=checkbox value=2048 name=zysc>
						<LABEL for=TradeRegion13>
							全球
						</LABEL>
						<script type="text/javascript">
							check2(zyscArray);
						</script>
					</td>
				</tr>
				<tr>
				<td>主要客户群：</td>
				<td><INPUT  maxLength=60 size=30 name=zykhq value="${gxxx.zykhq}" > 
				<SPAN class=note>如：超市、服装厂、印染厂</SPAN></td>
				</tr>
				<tr>
				<td>是否提供OEM代加工？</td>
				<td>
				<INPUT id=OemOdmYes type=radio value=y name=oem <c:if test="${gxxx.oem=='y'}">checked</c:if>>
				<LABEL for=OemOdmYes>是</LABEL> 
				<INPUT id=OemOdmNo  type=radio value=n name=oem <c:if test="${gxxx.oem=='n'}">checked</c:if>>
				<LABEL for=OemOdmNo>否</LABEL> 
				</td>
				</tr>
				<tr>
				<td colspan=2 align=center>
				<INPUT onmouseover="this.style.cursor='hand';"  type=button  value=" 确认提交！ " onclick="updateDetailInfo();">
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
