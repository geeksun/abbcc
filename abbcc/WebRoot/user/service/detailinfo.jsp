<%@ page language="java" import="java.util.*" pageEncoding="gbk" contentType="text/html;charset=gbk"%>
<%@ taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core" %>
<%
	String path = request.getContextPath();
	request.setCharacterEncoding("gbk");
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
		<c:set var="gxxx" value="${gsxxxx}" scope="page"></c:set>
		<p>
			公司详细资料
		</p>
		<form action="traceDetailInfo.do" name="detailInfoForm">
			<input type="hidden" name="action">
			<table width="90%" border="1" cellspacing="0" cellpadding="2"
				align="CENTER" bordercolor="F0E68C">
				<tr>
					<td align=right>
						注册资本：
					</td>
					<td>
						<input type="text" name="zczb"  size="10" value="${gxxx.zczb }">
						元
						<SPAN class=note>（最多选择2种经营模式）</SPAN>
					</td>
				</tr>
				<tr>
					<td align=right>
						公司成立时间：
					</td>
					<td>
						<input type="text" name="gsclsj"  size="10" value="${gxxx.gsclsj }">
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
						（平方米）
					</td>
				</tr>
				<tr>
					<td align=right>
						员工人数：
					</td>
					<td>
						<SELECT name=ygrs>
							
							<OPTION value="0">
								-- 请选择 --
							</OPTION>
							<OPTION value=1>
								5 人以下
							</OPTION>
							<OPTION value=2>
								5 - 10 人
							</OPTION>
							<OPTION value=3>
								11 - 50 人
							</OPTION>
							<OPTION value=4>
								51 - 100 人
							</OPTION>
							<OPTION value=8>
								101 - 200人
							</OPTION>
							<OPTION value=5>
								201 - 300 人
							</OPTION>
							<OPTION value=9>
								301 - 500 人
							</OPTION>
							<OPTION value=6>
								501 - 1000 人
							</OPTION>
							<OPTION value=7>
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
						<!--  <SELECT  onchange=blurEvent(8,this) name=_fmc.p._0.rn>  -->
						<SELECT name=yfbmrs>
							<OPTION value="" selected>
								--请选择--
							</OPTION>
							<OPTION value=1>
								少于5 人
							</OPTION>
							<OPTION value=2>
								5 - 10 人
							</OPTION>
							<OPTION value=3>
								11 - 20 人
							</OPTION>
							<OPTION value=4>
								21 - 30 人
							</OPTION>
							<OPTION value=5>
								31 - 40 人
							</OPTION>
							<OPTION value=6>
								41 - 50 人
							</OPTION>
							<OPTION value=7>
								51 - 60 人
							</OPTION>
							<OPTION value=8>
								61 - 70 人
							</OPTION>
							<OPTION value=9>
								71 - 80 人
							</OPTION>
							<OPTION value=10>
								81 - 90 人
							</OPTION>
							<OPTION value=11>
								91 - 100 人
							</OPTION>
							<OPTION value=20>
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
						<INPUT maxLength=32 size=8 name=monthProduction >
						<SELECT name=unit>
							<OPTION value="" selected>
								--请选择--
							</OPTION>
							<OPTION value=1>
								台
							</OPTION>
							<OPTION value=2>
								粒
							</OPTION>
							<OPTION value=3>
								座
							</OPTION>
							<OPTION value=4>
								辆
							</OPTION>
							<OPTION value=5>
								只
							</OPTION>
							<OPTION value=6>
								支
							</OPTION>
							<OPTION value=7>
								枝
							</OPTION>
							<OPTION value=8>
								架
							</OPTION>
							<OPTION value=9>
								头
							</OPTION>
							<OPTION value=10>
								张
							</OPTION>
							<OPTION value=PCE>
								块
							</OPTION>
							<OPTION value=11>
								片
							</OPTION>
							<OPTION value=12>
								匹
							</OPTION>
							<OPTION value=13>
								件
							</OPTION>
							<OPTION value=14>
								根
							</OPTION>
							<OPTION value=15>
								条
							</OPTION>
							<OPTION value=16>
								把
							</OPTION>
							<OPTION value=17>
								卷
							</OPTION>
							<OPTION value=18>
								副
							</OPTION>
							<OPTION value=19>
								幅
							</OPTION>
							<OPTION value=PR>
								双
							</OPTION>
							<OPTION value=DOZ>
								一打
							</OPTION>
							<OPTION value=20>
								份
							</OPTION>
							<OPTION value=SET>
								套
							</OPTION>
							<OPTION value=21>
								棵
							</OPTION>
							<OPTION value=22>
								箱
							</OPTION>
							<OPTION value=23>
								袋
							</OPTION>
							<OPTION value=24>
								盒
							</OPTION>
							<OPTION value=25>
								包
							</OPTION>
							<OPTION value=26>
								捆
							</OPTION>
							<OPTION value=27>
								筐
							</OPTION>
							<OPTION value=28>
								瓶（罐）
							</OPTION>
							<OPTION value=MMT>
								毫米
							</OPTION>
							<OPTION value=CMT>
								厘米
							</OPTION>
							<OPTION value=MRT>
								米
							</OPTION>
							<OPTION value=KMT>
								千米
							</OPTION>
							<OPTION value=INH>
								英寸
							</OPTION>
							<OPTION value=FOT>
								英尺
							</OPTION>
							<OPTION value=GLI>
								加仑 (英)
							</OPTION>
							<OPTION value=GLL>
								加仑 (美)
							</OPTION>
							<OPTION value=GRM>
								克
							</OPTION>
							<OPTION value=KGM>
								千克
							</OPTION>
							<OPTION value=LBR>
								磅
							</OPTION>
							<OPTION value=MTN>
								公吨
							</OPTION>
							<OPTION value=LTN>
								吨 (英)
							</OPTION>
							<OPTION value=LTS>
								吨 (美)
							</OPTION>
							<OPTION value=MLT>
								毫升
							</OPTION>
							<OPTION value=LTR>
								公升
							</OPTION>
							<OPTION value=ONZ>
								盎司
							</OPTION>
							<OPTION value=QTI>
								夸脱
							</OPTION>
							<OPTION value=PTI>
								品脱 (英)
							</OPTION>
							<OPTION value=PTL>
								品脱 (美)
							</OPTION>
							<OPTION value=YRD>
								码
							</OPTION>
							<OPTION value=FTK>
								平方英尺
							</OPTION>
							<OPTION value=INK>
								平方英寸
							</OPTION>
							<OPTION value=MTK>
								平方米
							</OPTION>
							<OPTION value=YDK>
								平方码
							</OPTION>
							<OPTION value=MTC>
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
						<!--  <SELECT onchange="check('note3')" name=turnover>  -->
						<SELECT name=nyye>
							<OPTION value="" selected>
								--请选择--
							</OPTION>
							<OPTION value=8>
								人民币 10 万元/年以下
							</OPTION>
							<OPTION value=9>
								人民币 10 万元/年 - 30 万元/年
							</OPTION>
							<OPTION value=10>
								人民币 30 万元/年 - 50 万元/年
							</OPTION>
							<OPTION value=11>
								人民币 50 万元/年 - 100 万元/年
							</OPTION>
							<OPTION value=2>
								人民币 100 万元/年 - 200 万元/年
							</OPTION>
							<OPTION value=12>
								人民币 200 万元/年 - 300 万元/年
							</OPTION>
							<OPTION value=3>
								人民币 300 万元/年 - 500 万元/年
							</OPTION>
							<OPTION value=13>
								人民币 500 万元/年 - 700 万元/年
							</OPTION>
							<OPTION value=14>
								人民币 700 万元/年 - 1000 万元/年
							</OPTION>
							<OPTION value=15>
								人民币 1000 万元/年 - 2000 万元/年
							</OPTION>
							<OPTION value=16>
								人民币 2000 万元/年 - 3000 万元/年
							</OPTION>
							<OPTION value=17>
								人民币 3000 万元/年 - 5000 万元/年
							</OPTION>
							<OPTION value=6>
								人民币 5000 万元/年 - 1 亿元/年
							</OPTION>
							<OPTION value=7>
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
						<SELECT name=njke>
							<OPTION value="" selected>
								--请选择--
							</OPTION>
							<OPTION value=8>
								人民币 10 万元以下
							</OPTION>
							<OPTION value=9>
								人民币 10 万元 - 30 万元
							</OPTION>
							<OPTION value=10>
								人民币 30 万元 - 50 万元
							</OPTION>
							<OPTION value=11>
								人民币 50 万元 - 100 万元
							</OPTION>
							<OPTION value=2>
								人民币 100 万元 - 200 万元
							</OPTION>
							<OPTION value=12>
								人民币 200 万元 - 300 万元
							</OPTION>
							<OPTION value=3>
								人民币 300 万元 - 500 万元
							</OPTION>
							<OPTION value=13>
								人民币 500 万元 - 700 万元
							</OPTION>
							<OPTION value=14>
								人民币 700 万元 - 1000 万元
							</OPTION>
							<OPTION value=15>
								人民币 1000 万元 - 2000 万元
							</OPTION>
							<OPTION value=16>
								人民币 2000 万元 - 3000 万元
							</OPTION>
							<OPTION value=17>
								人民币 3000 万元 - 5000 万元
							</OPTION>
							<OPTION value=6>
								人民币 5000 万元 - 1 亿元
							</OPTION>
							<OPTION value=7>
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
						<!--  <SELECT  onchange=check('noteOut')  name=_fmc.p._0.annu>  -->
						<SELECT name=ncke>
							<OPTION value="" selected>
								--请选择--
							</OPTION>
							<OPTION value=8>
								人民币 10 万元以下
							</OPTION>
							<OPTION value=9>
								人民币 10 万元 - 30 万元
							</OPTION>
							<OPTION value=10>
								人民币 30 万元 - 50 万元
							</OPTION>
							<OPTION value=11>
								人民币 50 万元 - 100 万元
							</OPTION>
							<OPTION value=2>
								人民币 100 万元 - 200 万元
							</OPTION>
							<OPTION value=12>
								人民币 200 万元 - 300 万元
							</OPTION>
							<OPTION value=3>
								人民币 300 万元 - 500 万元
							</OPTION>
							<OPTION value=13>
								人民币 500 万元 - 700 万元
							</OPTION>
							<OPTION value=14>
								人民币 700 万元 - 1000 万元
							</OPTION>
							<OPTION value=15>
								人民币 1000 万元 - 2000 万元
							</OPTION>
							<OPTION value=16>
								人民币 2000 万元 - 3000 万元
							</OPTION>
							<OPTION value=17>
								人民币 3000 万元 - 5000 万元
							</OPTION>
							<OPTION value=6>
								人民币 5000 万元 - 1 亿元
							</OPTION>
							<OPTION value=7>
								人民币 1 亿元以上
							</OPTION>
						</SELECT>
						<br>
						<DIV class=note style="MARGIN-TOP: 5px">
							请准确选择您的年进出口额,同时“年出口额”不能大于“年营业额”
						</DIV>
					</td>
				</tr>
				<tr>
					<td align=right>
						管理体系认证：
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
						质量控制：
					</td>
					<td>
						<INPUT id=QaQc1 onclick=blurEvent(15,this) type=radio value=内部  name=zlkz>
						<LABEL for=QaQc1>
							内部
						</LABEL>
						<INPUT id=QaQc2 onclick=blurEvent(15,this) type=radio value=第三方 name=zlkz>
						<LABEL for=QaQc2>
							第三方
						</LABEL>
						<INPUT id=QaQc3 onclick=blurEvent(15,this) type=radio value=无	name=zlkz>
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
					</td>
				</tr>
				<tr>
				<td>主要客户群：</td>
				<td><INPUT onblur=blurEvent(17,this) maxLength=64 size=30 name=zykhq> 
				<SPAN class=note>如：超市、服装厂、印染厂</SPAN></td>
				</tr>
				<tr>
				<td>是否提供OEM代加工？</td>
				<td>
				<INPUT id=OemOdmYes onclick=blurEvent(18,this) type=radio value=y name=oem>
				<LABEL for=OemOdmYes>是</LABEL> 
				<INPUT id=OemOdmNo onclick=blurEvent(18,this) type=radio value=n name=oem>
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
