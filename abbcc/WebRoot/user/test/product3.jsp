<%@ page contentType="text/html; charset=gbk"%>
<%@ page import="java.util.List,java.util.Iterator"%>
<%@ page import="com.abbcc.util.product.ProductType"%>
<%@ page import="com.abbcc.common.AppConstants" %>

<%
String path = request.getContextPath();
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
	<head>
		<title>product</title> 
		<meta http-equiv="Content-Type" content="text/html; charset=gb2312"/>
		<meta name="description" content=""/>
		<meta name="keywords" content=""/>
	<!-- 	<script language="JavaScript" src="product_files/aliclick.js"></script>
		<script type="text/javascript"
			src="<%=path%>/user/product/product_files/search.js" charset="gb2312"></script>
		<script type="text/javascript"
			src="<%=path%>/user/product/product_files/AlicnTree.js"></script>
		<script language="JavaScript" src="<%=path%>/user/product/product_files/AutoMatchScript.js"></script>
		<script type="text/javascript" src="<%=path%>/user/product/product_files/alitalk2.js"></script> -->
   		<script src="<%=path%>/js/prototype.js"></script>
		<link rel="stylesheet" rev="stylesheet"
			href="<%=path%>/user/product/product_files/AlicnTree.css"
			type="text/css"/>
		<link rel="stylesheet" rev="stylesheet"
			href="<%=path%>/user/product/product_files/myali_search_v02.css"
			type="text/css"/>
		<link rel="stylesheet" rev="stylesheet"
			href="<%=path%>/user/product/product_files/mainframe.css"
			type="text/css"/>
		<link rel="stylesheet" rev="stylesheet"
			href="<%=path%>/user/product/product_files/content.css"
			type="text/css"/>
		<link rel="stylesheet" rev="stylesheet"
			href="<%=path%>/user/product/product_files/myalibaba.css"
			type="text/css"/>
		<link rel="stylesheet" rev="stylesheet"
			href="<%=path%>/user/product/product_files/myalibaba.css"
			type="text/css"/> 
		<style>
<!--
.tablestyle{
		border-top:#ffffff 3px solid; border-bottom:#e0e0e0 1px solid; background:#f6f6f6;
		}
.tablestylenobottomline{
		border-top:#ffffff 3px solid; background:#f6f6f6;
		}
.awake{
		padding:3px; border:#485E00 1px solid; background:#F7FFDD; color:#485e00;
		}
.normal{
		padding:3px; border:#ffffff 1px solid; background:#ffffff; color:#999999;
		}
.wrong{
		text-align:left;
		padding:2px;
		line-height:130%;
		background:#FFF8EE;
		border:#ff7300 1px solid;
		background-image:url("http://i03.c.aliimg.com/images/cn/common/icon/icon_noteawake_16x16.gif");
		background-repeat:no-repeat;
		background-position:3px 3px;
		margin:0px;
		border:1px solid #FFCB99;
		}
.wrongwords{
		margin-left:20px;
		margin-bottom:0px;
		margin-top:2px;
		font-size:12px;
		font-weight:normal;
		color:#000000;
		padding:0px;
		}
.M1 {font:bold 14px}
ul.callinglayout {
	display:block;
	margin:0px;
	padding:3px;
	list-style:none;
	text-align:left;
}

ul.callinglayout li {
	float:left;
	margin:0px 4px;
	white-space:nowrap;
}

	
	.OfferPostPic
	{
		height:55px
	}
	.OfferPostTitle
	{
		border-bottom:1px solid #D6D6D6;
		font-size:14px;
		word-break:break-all;
		padding-left:15px;
	}
	.OfferPost
	{
		border-bottom:1px solid #D6D6D6;
		font-size:12px;
		word-break:break-all;
		padding-left:15px;
		
	}
--></style>
	</head> 
	<body>   
		<table align="right" class="content_border" border="0" cellpadding="0"
			cellspacing="0" width="100%">
			<tbody>
				<tr>
					<td> 
						<form name="mainform" method="post">  
							<table width="100%">
								<tbody>
									<tr>
										<td>
											<div class="important_note" id="important_note">
												<div class="important_close"
													onclick="document.getElementById('important_note').style.display='none'; document.getElementById('Htab_on2').className='Htab_off2'">
													<img
														src="<%=path%>/user/product/product_files/Icon_close01_12x.gif" />
												</div>
												<strong>为了让买家能更精确找到您的产品，您可以做以下几步提高您的信息精度，获得更好的排名：</strong>
												<br />
												1、一条信息只发布一个产品；&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
												 

												<br />
												2、您的产品名称务必出现在标题中；&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
												3、发布的信息带图且填写产品属性。

												<br />
												<font class="ts_text">&nbsp;&nbsp;&nbsp;为了提高信息质量，请您注意不要发布重复信息，重复信息将无法成功发布上网！</font>（
												<a
													href="http://info.china.alibaba.com/helpcenter/tips/s5003008-d5470949.html?tracelog=chinagas_help"
													target="_blank">点此查看重复信息定义及处理规则</a>）
											</div>
											<div class="Htitle">
												<div class="H1">
													发布供求信息
												</div>
												<div class="Hright s2">
													（
													<span class="ora">*</span>为必填项）&nbsp;&nbsp;
													<span class="Htab_on2" id="Htab_on2"
														onclick="document.getElementById('important_note').style.display=='block'||document.getElementById('important_note').style.display==''?document.getElementById('important_note').style.display='none':document.getElementById('important_note').style.display='block'; document.getElementById('Htab_on2').className=='Htab_on2'?document.getElementById('Htab_on2').className='Htab_off2':document.getElementById('Htab_on2').className='Htab_on2'">重要提醒</span><a
														href="#" onclick="goToDisPost(mainform);return false;">分步式发布</a>&nbsp;|&nbsp;
													<span class="Htab_off" id="Htab"
														onmouseover="document.getElementById('toolbar').style.display = 'block';document.getElementById('Htab').className='Htab_on';"
														onmouseout="document.getElementById('toolbar').style.display = 'none';document.getElementById('Htab').className='Htab_off';"
														onmousemove="document.getElementById('toolbar').style.display = 'block';document.getElementById('Htab').className='Htab_on';">相关帮助
														<ul
															style="z-index: 100; background-color: rgb(255, 255, 255);"
															onmousemove="document.getElementById('toolbar').style.display = 'block';document.getElementById('Htab').className='Htab_on';"
															onmouseover="document.getElementById('toolbar').style.display = 'block';document.getElementById('Htab').className='Htab_on';"
															class="toolbar s2" id="toolbar">
															<li
																onmouseover="document.getElementById('toolbar').style.display = 'block';document.getElementById('Htab').className='Htab_on';"
																onmousemove="document.getElementById('toolbar').style.display = 'block';document.getElementById('Htab').className='Htab_on';">
																<a
																	href="http://page.china.alibaba.com/images/cn/news/bizcollege/c2/1/course01/sco_sets/sco03/player.htm"
																	target="_blank">发布教程</a>
															</li>
															<li
																onmouseover="document.getElementById('toolbar').style.display = 'block';document.getElementById('Htab').className='Htab_on';"
																onmousemove="document.getElementById('toolbar').style.display = 'block';document.getElementById('Htab').className='Htab_on';">
																<a
																	href="http://info.china.alibaba.com/helpcenter/tips/s5011168-d5550522.html"
																	target="_blank">发布规范</a>
															</li>
														</ul> </span>
												</div>
											</div>
										</td>
									</tr>
								</tbody>
							</table>

							<table cellpadding="0" cellspacing="0" width="100%">
								<tbody>
									<tr>
										<td>
											<div class="Tab">
												<!--<div class="TabOff2 s2">
													<a href="#" onclick="goToTradePost(mainform);return false;">一口价信息</a> 
													一口价信息
												</div> -->
												<div class="TabOn2">
													普通信息
												</div>
											</div>
										</td>
									</tr>
								</tbody>
							</table>
							<a name="flagKeyword"></a>
							<table class="list_box" cellpadding="0" cellspacing="0"
								width="100%">
								<tbody>
									<tr>
										<td colspan="2">
											<div class="FormBox">
												<div class="FTitle">
													基本信息
												</div>
											</div>
										</td>
									</tr>

									<tr>
										<td class="list_left_box" align="right" valign="top">
											<img
												src="<%=path%>/user/product/product_files/icon_right_19x19.gif"
												align="absmiddle" width="19" height="16" />
											&nbsp;

											<b>信息类型</b><font color="#ff0000">*</font>
										</td>
										<td class="list_right_box">
											<input value="<%=AppConstants.PRODUCT_SALE %>" name="xxlx" checked="checked"  type="radio"/>
											供应
											<input value="<%=AppConstants.PRODUCT_BUY %>" name="xxlx"   type="radio"/>
											求购
											<input value="<%=AppConstants.PRODUCT_QUICK_BUY %>" name="xxlx" type="radio"/>
											紧急求购
										</td>
									</tr>
									 
									<tr>
										<td class="list_left_box" align="right" valign="top">
											<img id="img_right__fmo.a._0.k"
												src="<%=path%>/user/product/product_files/icon_grayright_19x19.gif"
												align="absmiddle" width="19" height="16" />
											&nbsp;

											<b>产品名称</b><font color="#ff0000">*</font>
										</td>
										<td class="list_right_box" valign="top">
											<table border="0" cellpadding="3" cellspacing="0"
												width="100%">
												<tbody>
													<tr>
														<td class="s lh13 normal" valign="top">
															<input name="cpmc"  value="" maxlength="16" size="20"  type="text"/>
															<div class="MB_Menu" id="Banner_Menu"></div> 
														</td>
													</tr>
												</tbody>
											</table>
											<table border="0" bordercolor="#cccccc" cellpadding="3"
												cellspacing="0" width="100%">
												<tbody>
													<tr >
														<td class="s lh13 normal" valign="top">
															产品名称中请勿出现规格、型号、品牌等内容。
														</td>
													</tr>
													<tr id="" style="display: none;">
														<td class="s lh13 wrong" valign="top">
															<span class="wrongwords" id="">
															</span>
														</td>
													</tr>
													 
												</tbody>
											</table>
										</td>
									</tr>
									<tr>
										<td class="list_left_box" align="right" valign="top">
											<img id="img_right_category"
												src="<%=path%>/user/product/product_files/icon_grayright_19x19.gif"
												align="absmiddle" width="19" height="16" />
											<b> 产品所属类目</b><font color="#ff0000">*</font>

										</td>
										<td class="list_right_box">
											<div id="usedCategoryDiv"></div>
											<table id="handSelect" border="0" cellpadding="3"
												cellspacing="0" width="100%">
												<tbody>
													<tr>
														<td>
															<table>
															<tr>
															  <td  id="tdtopCatFormKey">
															  <select name="topCatFormKey" size="8"
																style="width: 129px;" id="topCatFormKey"
																onchange="onChangeTopCategory(this.value)">
																<%
																	List topCategory = (List) request.getAttribute("topCategory");
																	if (topCategory != null) {
																		Iterator iter = topCategory.iterator();
																		while (iter.hasNext()) {
																			ProductType productType = (ProductType) iter.next();
																			if (productType != null) {
																		String name = productType.getName();
																		String value = productType.getId();
																		boolean able = productType.isAble();
																		out.print("<option value=\"" + value + "\"");
																		if (able) {
																			out.print(" style=\"color: rgb(204, 204, 204);\" ");
																		}
																		out.println(">");
																		out.println(name);
																		out.println("</option>");

																			}
																		}
																	}
																%>

															</select>
															</td>
															<td  id="tdsecondCatFormKey">
															<select name="secondCatFormKey" size="8"
																style="width: 129px;" id="secondCatFormKey"
																onchange="onChangeSecondCategory(this.value)">
																<%
																	List secondCategory = (List) request.getAttribute("secondCategory");
																	if (secondCategory != null) {
																		Iterator iter = secondCategory.iterator();
																		while (iter.hasNext()) {
																			ProductType productType = (ProductType) iter.next();
																			if (productType != null) {
																		String name = productType.getName();
																		String value = productType.getId();
																		boolean able = productType.isAble();
																		out.print("<option value=\"" + value + "\"");
																		if (able) {
																			out.print(" style=\"color: rgb(204, 204, 204);\" ");
																		}
																		out.println(">");
																		out.println(name);
																		out.println("</option>");

																			}
																		}
																	}
																%>
															</select>
															</td>
															<td  id="tdleafCatFormKey">
															<select    name="leafCatFormKey" size="8"
																id="leafCatFormKey" style="width: 129px;"
																onchange="onChangeLeafCategory(this.value)">
																<%
																	List thirdCategory = (List) request.getAttribute("thirdCategory");
																	if (thirdCategory != null) {
																		Iterator iter = thirdCategory.iterator();
																		while (iter.hasNext()) {
																			ProductType productType = (ProductType) iter.next();
																			if (productType != null) {
																		String name = productType.getName();
																		String value = productType.getId();
																		boolean able = productType.isAble();
																		out.print("<option value=\"" + value + "\"");
																		if (able) {
																			out.print(" style=\"color: rgb(204, 204, 204);\" ");
																		}
																		out.println(">");
																		out.println(name);
																		out.println("</option>");

																			}
																		}
																	}
																%>
															</select>
															</td>
															</tr>
															</table> 
														</td>
													</tr>
													<tr>
														<td id="commendCategoryHtml" style="display: none;"
															align="left"></td>
													</tr>
												</tbody>
											</table>
											<table id="keywordSelect" style="display: none;" border="0"
												cellpadding="3" cellspacing="0" width="100%">
												<tbody>
													<tr>
														<td id="keywordSelectHtml">
															aa
														</td>
													</tr>
												</tbody>
											</table>
											<table border="0" cellpadding="3" cellspacing="0"
												width="100%">
												<tbody>
													<tr id="wrong_category" style="display: none;">
														<td class="s lh13 wrong" valign="top">
															<span class="wrongwords" id="wrong_words_category">请选择所属行业和产品类目！</span>
														</td>
													</tr>
												</tbody>
											</table>
										</td>
									</tr>
									<tr>
										<td class="list_left_box" align="right" valign="top">
											<img id="img_right__fmo.a._0.s"
												src="<%=path%>/user/product/product_files/icon_grayright_19x19.gif"
												align="absmiddle" width="19" height="16"/>
											<b> 信息标题</b><font color="#ff0000">*</font>
										</td>
										<td class="list_right_box" valign="top">
											<table border="0" cellpadding="3" cellspacing="0"
												width="100%">
												<tbody>
													<tr>
														<td>
															<input name="xxbt" value="供应" size="46"
																  maxlength="25" type="text" />
														</td>
													</tr>
												</tbody>
											</table>
											<table border="0" cellpadding="3" cellspacing="0" width="380">
												<tbody>
													<tr id="normal__fmo.a._0.s">
														<td class="s lh13 normal" valign="top">
															您的潜在客户首先关注信息标题，您可以在此基础上进行修改完善。
														</td>
													</tr>
													<tr id="awake__fmo.a._0.s" style="display: none;">
														<td class="s lh13 normal" valign="top">
															您的潜在客户首先关注信息标题，您可以在此基础上进行修改完善。
														</td>
													</tr>
													<tr id="wrong__fmo.a._0.s" style="display: none;">
														<td class="s lh13 wrong" valign="top">
															<span class="wrongwords" id="wrong_words__fmo.a._0.s">
															</span>
														</td>
													</tr>
													<tr id="right__fmo.a._0.s" style="display: none;">
														<td class="s lh13 normal" valign="top">
															您的潜在客户首先关注信息标题，您可以在此基础上进行修改完善。
														</td>
													</tr>
												</tbody>
											</table>
										</td>
									</tr>
									<tr>
										<td class="list_left_box" align="right" valign="top">
											<img
												src="<%=path%>/user/product/product_files/icon_right_19x19.gif"
												align="absmiddle" width="19" height="16" />
											&nbsp;

											<b>信息有效期</b><font color="#ff0000">*</font>
										</td>
										<td class="list_right_box">
											<div id="div_OfferExpire_normal">
												<input   value="10" name="xxyxq" type="radio"/>
												10天
												<input   value="20" name="xxyxq" type="radio"/>
												20天
												<input   value="30" name="xxyxq" type="radio"/>
												1个月
												<input  value="90"  name="xxyxq" type="radio" />
												3个月
												<input  value="180" checked="checked" name="xxyxq" type="radio"/>
												6个月
											</div>
											<div id="div_OfferExpire_QUICKBUY" style="display: none;">

												<table border="0" cellpadding="2" cellspacing="2"
													width="100%">
													<tbody>
														<tr>
															<td valign="top" width="1">
																&nbsp;
															</td>
															<td>
																<b><span class="note"><font color="#000000">3天</font>
																</span> </b>
															</td>
														</tr>
														<tr>
															<td valign="top">
																<span class="note"><font color="#ff0000">*</font>
																</span>
															</td>
															<td>
																<span class="note">紧急采购的有效期默认为3天；</span>
															</td>
														</tr>
													</tbody>
												</table>

											</div>
										</td>
									</tr>
									<tr>
										<td colspan="2" valign="top">
											<div class="FormBox">
												<div class="FTitle">
													详细信息
												</div>
											</div>
										</td>
									</tr>
									<tr id="tr_productfeature">
										<td valign="top">
											<a name="flagFeatures"></a>&nbsp;
										</td>
										<td class="s lh13 normal">
											<div class="pro_tips" style="text-indent: 0px;">
												详细填写产品属性，吸引更多客户，增加成交机会。
											</div>
										</td>
									</tr>
									<tr>
										<td colspan="2">
											<a name="flagDetail"></a>
											<style>
												#div_productfeature input{margin-right:6px}
											</style>
											<div style="padding-top: 5px;" id="div_productfeature"> 
											<%
												String productTemplate=(String)request.getAttribute("productTemplate");
												if(productTemplate!=null)
												{
													out.println(productTemplate);	
												}
												 
											%>
											</div>
										</td>
									</tr>

									<tr>
										<td class="list_left_box" align="right" valign="top">
											<a name="flagDetails"></a>
											<b>详细说明</b><span   style="display: none;"><font
												color="#ff0000">*</font> </span>
											 
										</td>
										<td class="list_right_box" valign="top">
											<div>
												<textarea id="description" name="xxsm" 
												style="width: 430px; height: 350px;"></textarea>
											</div>
											<table border="0" cellpadding="0" cellspacing="0"
												width="100%">
												<tbody>
													<tr id="normal__fmo.a._0.d">
														<td class="s lh13 normal">
															<div id="prompt__fmo.a._0.d" class="s lh13 awake"
																style="display: none;">
															</div>
														</td>
													</tr>
													<tr id="awake__fmo.a._0.d" style="display: none;">
														<td class="s lh13 awake">
															<span id="awake_words__fmo.a._0.d"> </span>
														</td>
													</tr>
													<tr id="wrong__fmo.a._0.d" style="display: none;">
														<td class="s lh13 wrong" valign="top">
															<span class="wrongwords" id="wrong_words__fmo.a._0.d">
															</span>
														</td>
													</tr>
													<tr id="right__fmo.a._0.d" style="display: none;">
														<td class="s lh13 normal" valign="top"></td>
													</tr>
												</tbody>
											</table>   
											<table style="display: block;" id="inforbox_1055"
												align="center" cellpadding="0" cellspacing="0" width="98%">
												<tbody>
													<tr>
														<td class="s lh13 normal">
															<span>1、建议从产品性能、用途、包装、售后服务等方面来描述；<br/> 
																	</span>
														</td>
													</tr>
												</tbody>
											</table>

										</td>
									</tr>
									<tr>
										<td class="list_left_box" align="right" valign="top">
											<b>上传图片</b>&nbsp;
										</td>
										<td class="list_right_box" valign="top"> 
											<div id="uploadpic" style="display: none;"></div>
											<div id="showpic" style=""></div>
											<table border="0" cellpadding="3" cellspacing="0" width="50%">
												<tbody>
													<tr>
														<td class="s" align="center" width="166" height="25">
															图片1
														</td>
														<td class="s" align="center" width="167">
															图片2
														</td>
														<td class="s" align="center" width="167">
															图片3
														</td>
													</tr>
													<tr>
														<td id="tdpic01" align="center" height="25">
															<img name="uploaded0"
																src="<%=path%>/user/product/product_files/detail_no_pic.gif"
																width="100" height="100" />
														</td>
														<td align="center">
															<img name="uploaded1"
																src="<%=path%>/user/product/product_files/detail_no_pic.gif"
																width="100" height="100" />
														</td>
														<td align="center">
															<img name="uploaded2"
																src="<%=path%>/user/product/product_files/detail_no_pic.gif"
																width="100" height="100" />
														</td>
													</tr>
													<tr>
														<td align="center" height="35">
															<input   value="上传"
																name="uploadPicBtn0" type="button" />
															&nbsp;

															<input onclick="delete_picture('0');" value="删除"
																name="delPicBtn0" type="button" />
														</td>
														<td align="center">
															<input   value="上传"
																name="uploadPicBtn1" type="button" />
															&nbsp;

															<input   value="删除"
																name="delPicBtn1" type="button" />
														</td>
														<td align="center">
															<input   value="上传"
																name="uploadPicBtn2" type="button" />
															&nbsp;

															<input onclick="delete_picture('2');" value="删除"
																name="delPicBtn2" type="button" />
														</td>
													</tr>
												</tbody>
											</table> 
				
							</td> </tr> </tbody>
							</table>
							<table id="tab_trade_productfeature" border="0" cellpadding="0"
								cellspacing="0" width="100%">
								<tbody>
									<tr>
										<td>
											<div class="FormBox">
												<div class="FTitle">
													交易条件
												</div>
											</div>
											<div class="hyprice s2" id="product_market"
												style="display: none;">
												<a id="product_market_url" target="_blank" href="#">查看同行报价</a>
											</div>
										</td>
									</tr>
								</tbody>
							</table>
							<table class="list_box" cellpadding="0" cellspacing="0"
								width="100%">
								<tbody>
									<tr id="tr_trade_productfeature">
										<td colspan="2" style="padding: 0px;" valign="top">
											<a name="tradeDetail"></a>
											<style> #div_trade_productfeature input{ margin-right:6px} </style>
											<div id="div_trade_productfeature">
												<table border="0" cellpadding="0" cellspacing="0"
													width="100%">
													<tbody>
														<tr>
															<td class="list_left_box" align="right" valign="top"></td>
															<td class="list_right_box" valign="top">
																<table style="margin: 6px 0px;" border="0"
																	cellpadding="0" cellspacing="0" width="100%">
																	<tbody>
																		<tr>
																			<td style="padding: 0px;">
																				<table class="s lh13 normal" style="padding: 0px;"
																					align="center" cellpadding="0" cellspacing="0"
																					width="100%">
																					<tbody>
																						<tr>
																							<td id="trade_prompt" style="padding: 0px;"
																								valign="middle">
																								1、如买家直接按标价购买，您必须按照交易条件履约，否则视为违约；
																								<br/>
																								2、买家如需还价，您可在买家出价后，到“交易管理”中修改价格，达成最后交易。
																							</td>
																						</tr>
																					</tbody>
																				</table>
																			</td>
																		</tr>
																	</tbody>
																</table>
															</td>
														</tr>
														<tr>
															<td class="list_left_box" align="right" valign="top"
																height="25">
																<img id="img_right_feature59238"
																	src="<%=path%>/user/product/product_files/icon_grayright_19x19.gif"
																	align="absmiddle" width="19" height="16"/>
																<b>计量单位</b>
															</td>
															<td class="list_right_box"> 
																<input class="tpf_input" name="jldw"
																	id="feature59238" value="" size="23" maxlength="12"
																	type="text"/>
																<span style="padding-left: 10px;"><span
																	id="wrong_feature59238" class="s lh13 wrong"
																	style="display: none; width: 110px;"> <span
																		class="wrongwords" id="wrong_words_feature59238">
																			带<font color="red">*</font>为必填项。 </span> </span> </span>
																<span style="padding-left: 10px;"><span
																	id="trade_wrong_feature59238" class="s lh13 wrong"
																	style="display: none; width: 260px;"> <br /> <font
																		color="#999999">请填写与单价相符的计量单位，如只、件、箱等</font> </span> </span>
															</td>
														</tr>
														<tr>
															<td class="list_left_box" align="right" valign="top"
																height="25">
																<img id="img_right_feature59240"
																	src="<%=path%>/user/product/product_files/icon_grayright_19x19.gif"
																	align="absmiddle" width="19" height="16"/>
																<b>产品单价</b>
															</td>
															<td class="list_right_box">
																 			<input class="tpf_input" name="cpdj"
																	id="feature59240" value="" size="23" maxlength="12"
																	 type="text" />
																元/
																<span id="trade_unit_price">单位</span>
																<span style="padding-left: 10px;"><span
																	id="wrong_feature59240" class="s lh13 wrong"
																	style="display: none; width: 110px;"> <span
																		class="wrongwords" id="wrong_words_feature59240">
																			带<font color="red">*</font>为必填项。 </span> </span> </span>
																<span style="padding-left: 10px;"><span
																	id="trade_wrong_feature59240" class="s lh13 wrong"
																	style="display: none; width: 260px;"> <br /> <font
																		color="#999999">请您填写不含运费的价格</font> </span> </span>
															</td>
														</tr>
														<tr>
															<td class="list_left_box" align="right" valign="top"
																height="25">
																<img id="img_right_feature59239"
																	src="<%=path%>/user/product/product_files/icon_grayright_19x19.gif"
																	align="absmiddle" width="19" height="16"/>
																<b>最小起订量</b>
															</td>
															<td class="list_right_box"> 
																<input class="tpf_input" name="zxqdl"
																	id="feature59239" value="" size="23" maxlength="12" 
																	type="text" />
																<span id="trade_unit_beginamount">单位</span>
																<span style="padding-left: 10px;"><span
																	id="wrong_feature59239" class="s lh13 wrong"
																	style="display: none; width: 110px;"> <span
																		class="wrongwords" id="wrong_words_feature59239">
																			带<font color="red">*</font>为必填项。 </span> </span> </span>
																<span style="padding-left: 10px;"><span
																	id="trade_wrong_feature59239" class="s lh13 wrong"
																	style="display: none; width: 260px;"> </span> </span>
															</td>
														</tr>
														<tr>
															<td class="list_left_box" align="right" valign="top"
																height="25">
																<img id="img_right_feature59241"
																	src="<%=path%>/user/product/product_files/icon_grayright_19x19.gif"
																	align="absmiddle" width="19" height="16"/>
																<b>供货总量</b>
															</td>
															<td class="list_right_box">
															  <input class="tpf_input" name="ghzl"
																	id="feature59241" value="" size="23" maxlength="12" 
																	type="text"/>
																<span id="trade_unit_amount">单位</span>
																<span style="padding-left: 10px;"><span
																	id="wrong_feature59241" class="s lh13 wrong"
																	style="display: none; width: 110px;"> <span
																		class="wrongwords" id="wrong_words_feature59241">
																			带<font color="red">*</font>为必填项。 </span> </span> </span>
																<span style="padding-left: 10px;"><span
																	id="trade_wrong_feature59241" class="s lh13 wrong"
																	style="display: none; width: 260px;"> </span> </span>
															</td>
														</tr>
														<tr>
															<td class="list_left_box" align="right" valign="top"
																height="25">
																<img id="img_right_feature59242"
																	src="<%=path%>/user/product/product_files/icon_grayright_19x19.gif"
																	align="absmiddle" width="19" height="16"/>
																<b>发货期限</b>
															</td>
															<td class="list_right_box"> 
																自买家付款之日起 
																<select name="fhqx" id="feature59242"
																	maxlength="80"    >
																	<option value="">
																		请选择
																	</option>
																	<option value="1">
																		1
																	</option>
																	<option value="2">
																		2
																	</option>
																	<option value="3">
																		3
																	</option>
																	<option value="4">
																		4
																	</option>
																	<option value="5">
																		5
																	</option>
																	<option value="6">
																		6
																	</option>
																	<option value="7">
																		7
																	</option>
																	<option value="8">
																		8
																	</option>
																	<option value="9">
																		9
																	</option>
																	<option value="10" selected="selected">
																		10
																	</option>
																	<option value="11">
																		11
																	</option>
																	<option value="12">
																		12
																	</option>
																	<option value="13">
																		13
																	</option>
																	<option value="14">
																		14
																	</option>
																	<option value="15">
																		15
																	</option>
																	<option value="20">
																		20
																	</option>
																	<option value="30">
																		30
																	</option>
																	<option value="60">
																		60
																	</option>
																</select>
																天内发货
																<span style="padding-left: 10px;"><span
																	id="wrong_feature59242" class="s lh13 wrong"
																	style="display: none; width: 110px;"> <span
																		class="wrongwords" id="wrong_words_feature59242">
																			带<font color="red">*</font>为必填项。 </span> </span> </span>
																<span style="padding-left: 10px;"><span
																	id="trade_wrong_feature59242" class="s lh13 wrong"
																	style="display: none; width: 260px;"> </span> </span>
															</td>
														</tr>
														<tr>
															<td class="list_left_box" align="right" valign="top"
																height="25">
																<img id="img_right_feature116330"
																	src="<%=path%>/user/product/product_files/icon_grayright_19x19.gif"
																	align="absmiddle" width="19" height="16"/>
																<b>供应商类型</b><font color="#ff0000">*</font>
															</td>
															<td class="list_right_box">
																 
																我是该产品的

																<select name="gyslx" id="feature116330"
																	maxlength="80"  >
																	<option value="">
																		请选择
																	</option>
																	<option value="自主生产厂商">
																		自主生产厂商
																	</option>
																	<option value="加工商">
																		加工商
																	</option>
																	<option value="代理商">
																		代理商
																	</option>
																	<option value="经销商">
																		经销商
																	</option>
																	<option value="其他">
																		其他
																	</option>
																</select>
																<span style="padding-left: 10px;"><span
																	id="wrong_feature116330" class="s lh13 wrong"
																	style="display: none; width: 110px;"> <span
																		class="wrongwords" id="wrong_words_feature116330">
																			带<font color="red">*</font>为必填项。 </span> </span> </span>
																<span style="padding-left: 10px;"><span
																	id="trade_wrong_feature116330" class="s lh13 wrong"
																	style="display: none; width: 260px;"> </span> </span>
															</td>
														</tr>
													</tbody>
												</table>

											</div>
										</td>
									</tr>
									<tr>
										<td>
											<table border="0" cellpadding="0" cellspacing="0"
												width="100%">
												<tbody>
													<tr style="display: none;" id="com_form">
														<td class="list_left_box" style="padding-top: 4px;"
															align="right" valign="top" height="13">
															<img
																src="<%=path%>/user/product/product_files/icon_grayright_19x19.gif"
																align="absmiddle" width="19" height="16" />
															&nbsp;

															<b>经销批发</b><font color="#ff0000">*</font>
														</td>
														<td class="list_right_box" valign="top">
															<input name="rBizType" value="checkbox"
																onclick="changeBizType('Y')" type="radio" />
															是&nbsp;

															<input name="rBizType" value="checkbox"
																onclick="changeBizType('N')" type="radio">
															否
															<table align="left" cellpadding="0" cellspacing="0"
																width="100%">
																<tbody>
																	<tr>
																		<td class="s lh13 normal">
																			<span
																				style="padding-top: 3px; display: inline-block;">经销批发：从事产品经销、批发、分销的商家。</span>
																		</td>
																	</tr>
																</tbody>
															</table>
														</td>
													</tr>
												</tbody>
											</table>
											 
										</td>
									</tr>

									<tr>
										<td>
											 

										</td>
									</tr>
								</tbody>
							</table>
							<br/>
							 
							<table border="0" cellpadding="0" cellspacing="0" width="100%">
								<tbody>
									<tr>
										<td>
											<div class="FormBox">
												<div class="FTitle">
													联系方式的确认与修改
												</div>
											</div>
										</td>
									</tr>
								</tbody>
							</table>
							<table class="list_box" border="0" cellpadding="0"
								cellspacing="0" width="100%">
								<tbody>
									<tr>
										<td rowspan="2" class="list_left_box">
											<b> </b><b></b>
										</td>
										<td>
											<div class="s lh13 normal s2">
												<a name="aegisAlipay5"></a>请确认您的联系方式，如有误将无法通过审核！
												<a name="aegisAlipay6"></a><a
													href="#" target="_blank">点此修改</a>
											</div>
										</td>
									</tr>
									<tr>
										<td>
											<div class="contact" id="mp_contact">
												<ul class="conTitle">
													<li>
														俞勇胜&nbsp; 先生
													</li>
													<li>
														永康市亘古园林机械有限公司
													</li>
												</ul>
												<ul class="conOther">
													<li>
														电话： 86 - 0579 - 87233656
													</li>
													<li>
														传真： 86 - 0579 - 87233652
													</li>
													<li>
														手机： 13967937457
													</li>
													<li>
														电子邮件：yys807@163.com
													</li>
												</ul>
											</div>
											<div style="height: 195px;" class="leftShadow"
												id="leftShadow"></div>
											<div class="bottomShadow"></div>
										</td>
									</tr>
								</tbody>
							</table>
							<br>
							<br>
							<table border="0" cellpadding="0" cellspacing="0" width="99%">
								<tbody>
									<tr>
										<td class="C lh15" id="serviceTerm" style="display: none;"
											align="center">
											<a target="_blank"
												href="http://page.china.alibaba.com/shtml/static/ab_xy.html"
												class="S">阅读服务条款</a>
										</td>
									</tr>
									<tr>
										<td class="C spc16" align="center">
											<input name="postsubmit"
												onmousedown="javascript:postOffer(bizTypeVar)"
												value="同意服务条款，我要发布" class="submitButton" type="button"/>
											<a href="#"
												onclick="previewPost(document.mainform);return false;">预览这条信息</a>
										</td>
									</tr>
								</tbody>
							</table>  
							<br/>
						</form> 
						<br/>
						<br/>
					</td>
				</tr>
			</tbody>
		</table>  
 <script language="JavaScript" type="text/javascript">
	 
	  

	var old_tdTradeObj_innerHTML="";
	//处理选择新的信息类型，在发布offer的时候有效，在修改offer的时候无效
	function doSelectType(typeObj){
		selectBizTypeWhenChangeType(typeObj.value);
	    changeTypeBuyMatch(typeObj.value);


	    if(typeWay(typeObj.value) == "BUY"){
	        if(needLockAlipayObj){
	            needLockAlipayObj.style.display="none";
	        }
						var detail_star = document.getElementById("detail_star");
			if(detail_star){
			    detail_star.style.display="";
			}
	        showHideContact(true);
	    }else{
			var detail_star = document.getElementById("detail_star");
			if(detail_star){
			    detail_star.style.display="none";
			}
	        if(needLockAlipayObj){
	            needLockAlipayObj.style.display="";
	        }
	        showHideContact(false);
	    }

	    try{
	        if(typeObj.value == "QUICKBUY" || typeObj.value == "QUICKBUY_28" || typeObj.value == "QUICKBUY_2805"){
	            div_OfferExpire_QUICKBUY.style.display="";
	            div_OfferExpire_normal.style.display="none";
	        }else{
	            div_OfferExpire_QUICKBUY.style.display="none";
	            div_OfferExpire_normal.style.display="";
	        }
	    }catch(e){}
	    //.设置产品参数
	    //只要供应方向才有产品参数
	    if(typeWay(typeObj.value) == "SALE"){
	        needFeature = true;
	    }else{
	        needFeature = false;
	    }
	    //自动匹配
	    doOnKeywordBlur(keywordsObj, true, true)

	    var leafCatId = getLeafCategoryId();
	    if(leafCatId == ""){
	        showTabTradeProductFeature();
	       // refreashUsedCategory();
	        return;
	    }

	    try{
		        var fpObj = document.all("div_productfeature");
		        var fpTradeObj = document.all("div_trade_productfeature");
		        var trTradeObj = document.all("tr_trade_productfeature");
		        var trProductObj = document.all("tr_productfeature");
		        var tdTradeObj = document.all("td_trade_productfeature");
		        if(needFeature){
		            if(featurePropertiesHtmlValue == "")
		                featurePropertiesHtmlValue = getOrderedCategoryHtml(leafCatId, needFeature);
		            fpObj.innerHTML = featurePropertiesHtmlValue;
		            if(featurePropertiesHtmlValue.length > 120){
		                trProductObj.style.display="";
		            }else{
		                trProductObj.style.display="none";
		            }
		            if(tradeFeaturePropertiesHtmlValue == ""){
		                tradeFeaturePropertiesHtmlValue = getCategoryTradeHtml(leafCatId, needFeature, bizTypeVar);
		            }
		            fpTradeObj.innerHTML = tradeFeaturePropertiesHtmlValue;
		            if(tradeFeaturePropertiesHtmlValue.length > 650){
		                trTradeObj.style.display="";
		                if(tdTradeObj){
			                if(old_tdTradeObj_innerHTML !=""){
			                	tdTradeObj.innerHTML = old_tdTradeObj_innerHTML;
			                }
		                }
		            }else{
		                
		                if(isTradeVar=="Y"){
		                	if(old_tdTradeObj_innerHTML == ""){
		                		old_tdTradeObj_innerHTML=tdTradeObj.innerHTML;
		                	}
		                    tdTradeObj.innerHTML = "很抱歉，该行业暂时无法发布一口价信息，但是您可以继续发布普通供应信息。<br/>请填写下表，完成供应信息的发布。";
		                }else{
		                    trTradeObj.style.display="none";
		                }
		            }
		        }else{
		            if(defaultFeaturePropertiesHtmlValue == ""){
		            	defaultFeaturePropertiesHtmlValue = getOrderedCategoryHtml(leafCatId, needFeature);
		            }
		            fpObj.innerHTML = defaultFeaturePropertiesHtmlValue;
		            fpTradeObj.innerHTML = "";
		            if(isTradeVar=="Y"){
	                	if(old_tdTradeObj_innerHTML == ""){
	                		old_tdTradeObj_innerHTML=tdTradeObj.innerHTML;
	                	}
		                tdTradeObj.innerHTML = "很抱歉，该行业暂时无法发布一口价信息，但是您可以继续发布普通供应信息。<br/>请填写下表，完成供应信息的发布。";
		            }else{
		                trTradeObj.style.display="none";
		            }
		            trProductObj.style.display="";
		        }
		    }catch(e){
		}
		showTabTradeProductFeature();
	//	refreashUsedCategory();
		

	}



	function showTabTradeProductFeature(){
	    var trTradeObj = document.all("tr_trade_productfeature");
	    var needLockAlipayObj = document.all("needLockAlipay");
		var bizTypeObj = document.getElementById("com_form");
	    try{
	        if(trTradeObj){
	            var tab_trade_productfeatureObj = document.all("tab_trade_productfeature");
	            if(tab_trade_productfeatureObj){
	                if(trTradeObj.style.display != "none"){
	                    tab_trade_productfeatureObj.style.display = ""
	                }else{
					    						if(bizTypeObj && bizTypeObj.style.display != "none"){
						    tab_trade_productfeatureObj.style.display = ""
						}else{
	                        if(!needLockAlipayObj || needLockAlipayObj.style.display == "none"){
	                           tab_trade_productfeatureObj.style.display="none";
	                        }else{
	                            tab_trade_productfeatureObj.style.display = ""
	                        }
						}
	                }
	            }
	        }
	    }catch(e){
	    }
	}

	function getOfferTypeValue(){

	    var offerTypeElement = form.item(typeKey);
	    
	    if(offerTypeElement.type=='hidden'){
	        return offerTypeElement.value;
	    }else{
	        for(var i=0;i<offerTypeElement.length;i++){
	            var item = offerTypeElement.item(i);
	            if(item.checked){
	                return item.value;
	            }
	        }
	    }
	    return "";
	}
	//打开自动匹配窗口
	function openCategoryMatch(){
	    if(checkKeyword(keywordsObj)){
	        alert("您输入的产品名称不合法,请重填");
	        return;
	    }
	    var url = 'searchOfferSumByKeyword.htm?tracelog=fb_poone_auto&infoType=' + getOfferTypeValue() + '&keyword=' + form.item(keywordsObj).value;
	    window.open(url ,'_blank' ,'width=640,height=500,top=70,left=80,toolbar=no,scrollbars=yes,resizable=yes,status=no,toolbar=no,menubar=no,location=no');
	    return;
	}
	//在匹配窗口中匹配到类目后改变本窗口的类目和keyword
	function matchCategory(keyword, idPath){

	    var typeValue = getSelectTypeValue();
	    var tradeType = getTradeType(typeValue);
	    if(tradeType != "1"){
	        setSelectByIdPath(idPath, true);
	    }else{
	        setSelectByIdPath(idPath, false);
	    }
	    if(form.leafCatFormKey.length > beginIndex){
	        form.leafCatFormKey.disabled = false;
	    }else{
	        form.leafCatFormKey.disabled = true;
	    }
	    form.item(keywordsObj).value = keyword;
	    setSubjectText(false,true);
	    showSelectPath();
	    setTimeout("makeFeatureProperties()", 100);
	    doOnBlurCommon("category",true);
	}

 
	 
	function doOnSubmit(thisform){
	    thisform.target="";
	    if(isEditVar=="true"){
	        thisform.action ="http://upload.china.alibaba.com/offer/adv_post.htm?action=offer_post_action&event_submit_do_process=submit";
	    }else{
	    		        thisform.action ="http://upload.china.alibaba.com/offer/adv_post.htm?action=offer_post_action&event_submit_do_process=submit";
	    }
	    var ret = post(thisform);
	    if(ret){
	        thisform.postsubmit.disabled = true;
	    }
	    return ret;
	}
	function previewPost(thisform){
	    var flag = checkAll(thisform, true);
	    if(!flag){
	        return flag;
	    }
	    if(setSubjectText(false,true)){
	        //设置图片上传状态
	        setUploadImageStatus();
	        	        
	        if((isEditVar!="true")||(isTBDInfoCanChange=="true")){
	            var leafCatId=getLeafCategoryId();
	            thisform.item(categoryId1Obj).value = leafCatId;
	        }
	        if(thisform.item(categoryId1Obj).value == "0"){
	            thisform.item(categoryId1Obj).value = "";
	        }
	        thisform.target="preview";
	        thisform.action="http://upload.china.alibaba.com/offer/adv_preview.htm"+"?action=AdvPreviewAction&event_submit_do_perform=submit";
	        var win = window.open("about:blank","preview","toolbar=no,directories=no,status=no,menubar=no,scrollbars=yes,resizable=no,width=600,height=500");
	        win.focus();
	        thisform.submit();
	        thisform.target="";
	    }
	}
	//提交、预览前检查有效性
	function checkAll(thisform, isShowError){
	    var result1 = doOnBlurCommon(keywordsObj,isShowError);
	    var result2 = doOnBlurCommon("category",isShowError);
	    var result3 = doOnBlurCommon(subjectObj,isShowError);
	    var result5 = doOnBlurCommon(detailsObj,isShowError);
	    var result4 = false;
	    var result6 = checkTradeInfo();
	    var result7 = false;//交易参数
	    var result8 = doOnBlurCommon(aegisAlipayObj,isShowError);
	    var result9 = checkQuickBuySellMatch();

	    //产品参数
	    if (isShowError && thisform.neededFeatures!=null && thisform.neededFeatures[0]!=null){
	        var len = thisform.neededFeatures.length;
	        for( var i = 0; i < len; i++ ){
	            var trObj = document.all("feature" + thisform.neededFeatures[i].value);
	            if (trObj!=null){
	                if (doOnBlurCommon("feature" + thisform.neededFeatures[i].value,isShowError)){
	                    result4 = true;
	                }
	            }
	        }
	    }else if (isShowError && thisform.neededFeatures !=null){//只有一个必填项的情况
	        var trObj = document.all("img_right_feature" + thisform.neededFeatures.value);
	        if (trObj!=null && doOnBlurCommon("feature" + thisform.neededFeatures.value,isShowError)){
	            result4 = true;
	        }
	    }

	    if (isShowError && thisform.feature_ints!=null && thisform.feature_ints[0]!=null){
	        var len = thisform.feature_ints.length;
	        for( var i = 0; i < len; i++ ){
	            var trObj = document.all("feature" + thisform.feature_ints[i].value);
	            if (trObj!=null){
	                if (doOnBlurCommon("feature" + thisform.feature_ints[i].value,isShowError)){
	                    result4 = true;
	                }
	            }
	        }
	    }else if (isShowError && thisform.feature_ints !=null){//只有一个必填项的情况
	        var trObj = document.all("img_right_feature" + thisform.feature_ints.value);
	        if (trObj!=null && doOnBlurCommon("feature" + thisform.feature_ints.value,isShowError)){
	            result4 = true;
	        }
	    }
	    if (result1){
	        window.location.href="#flagKeyword";
	        return false;
	    }else if (result2){
	        window.location.href="#flagKeyword";
	        return false;
	    }else if (result3){
	        window.location.href="#flagKeyword";
	        return false;
	    }else if (!result9){
	        window.location.href="#flagQuickBuySell";
	        return false;
	    }else if (result4){
	        window.location.href="#flagDetail";
	        return false;
	    }else if (result5){
	        window.location.href="#flagDetails";
	        return false;
	    }else if(!result6){
	        window.location.href="#tradeDetail";
	        return false;
	    }else if (result8){
	        window.location.href="#aegisAlipay";
	        return false;
	    }
	    return true;
	}
	function goToDisPost(thisform){
	    save();
	    thisform.step.value= "step1";
	    thisform.target="";
	    thisform.action = "http://upload.china.alibaba.com/offer/dis_post_step_1.htm?tracelog=fb_one_two&is_trade="+isTradeVar;
	    thisform.submit();
	}

	function goToAdvPost(thisform){
		save();
		thisform.isTrade.value="";
		thisform.isAegisTrade.value="false";
	    thisform.action = "http://upload.china.alibaba.com/offer/adv_post.htm?noShowSelectPage=true";
	    thisform.submit();
	}
	//切换到一口价
	function goToTradePost(thisform){
		save();
		thisform.isTrade.value="Y";
	    thisform.action = "http://upload.china.alibaba.com/offer/adv_post.htm?noShowSelectPage=true";
	    thisform.submit();

	}
	function goToSwitchTypePost(thisform, type){
		var tradeType = getTradeType(type);
		save();
	    thisform.target="";

	    if(tradeType == 2 || tradeType== 3 || tradeType == 4){
	    	thisform.isTrade.value="";
	    }
	    thisform.action = "http://upload.china.alibaba.com/offer/adv_post.htm?noShowSelectPage=true&type="+type;

	    thisform.submit();
	}



function doOnSelectCategory(catObj) {
	var catValue = catObj.value;
	if(catValue < 0){
		document.getElementById("msg_focus_category").value=catObj.name;
		var tradeTypeName = getTradeTypeName(catValue);
		var catPath = getSelectPath();
		document.getElementById("msg_hint_info").innerHTML="您选择的“"+catPath+"”类目属于“"+tradeTypeName+"信息”,请到“"+tradeTypeName+"信息”类型中发布！";
		document.getElementById("submitSwitch").value="去“"+tradeTypeName+"信息”继续发布";

		showSwitchTradeTypeTips();
	}else{
		closeSwitchTradeTypeTips();
	}
}

function doMsgSwitchTradeType(){
	var msg_scName=document.getElementById("msg_focus_category").value;
	var catObj=document.getElementById(msg_scName);
	if(catObj){
		var catValue = catObj.value;
		var type=getOfferInfoType(catValue, typeWayVar);
		goToSwitchTypePost(document.mainform, type);
	}
	closeSwitchTradeTypeTips();
}

function doMsgReSelect(){
	var msg_scName=document.getElementById("msg_focus_category").value;
	var catObj=document.getElementById(msg_scName);
	if(catObj){
		catObj.value="";
	}
	closeSwitchTradeTypeTips();
}
function showSwitchTradeTypeTips(){
	if(document.all){
   		document.getElementById("msg_gg").getElementsByTagName("table")[0].style.height=document.body.scrollHeight;
  	}else{
   		document.getElementById("msg_gg").getElementsByTagName("table")[0].setAttribute("style","height:"+window.screen.height+"px")
  	}

	document.getElementById('msg_gg').style.display='block';
	document.getElementById('msg_cont').style.display='block';
}

function closeSwitchTradeTypeTips(){
	document.getElementById('msg_gg').style.display='none';
	document.getElementById('msg_cont').style.display='none';
}

	function post(thisform){
	    if (checkAll(thisform, true)){
	        //设置图片上传状态
	        setUploadImageStatus();
	        setSubjectText(false,true);
	        	        
	        if((isEditVar!="true")||(isTBDInfoCanChange=="true")){
	            var leafCatId=getLeafCategoryId();
	            thisform.item(categoryId1Obj).value = leafCatId;
	        }
	        if(thisform.item(categoryId1Obj).value == "0"){
	            thisform.item(categoryId1Obj).value = "";
	        }
	        return true;
	    }
	    return false;
	}
	//根据预定的规则生成标题, always:是否总是根据信息类型和关键字化
	function setSubjectText(always,isChecked){
	    
	    if((isEditVar!="true")||(isTBDInfoCanChange=="true")){
	        if(always)
	            document.mainform.subjectModifyFlag.value = "false";
	        if(form.subjectModifyFlag.value == "true")
	            return true;
	        var keyword = trim(document.mainform.item(keywordsObj).value);
	        if (keyword != "" && checkKeyword(keywordsObj)){//如果产品名称校验不合格,则不自动给标题赋值
	            return true;
	        }
	        var offerTypeValue = getOfferTypeValue();
	        var postTitle="", postTitle2="";
	        if(offerTypeValue == "SALE"){
	            postTitle = "供应";
	        }else if(offerTypeValue == "BUY"){
	            postTitle = "求购";
	        }else if(offerTypeValue == "QUICKBUY"){
	            postTitle = "紧急求购";
	        }else if(offerTypeValue == "SALE_28"){
	            postTitle = "提供";
	            postTitle2 = "服务";
	        }else if(offerTypeValue == "BUY_28"){
	            postTitle = "寻求";
	            postTitle2 = "服务";
	        }else if(offerTypeValue == "QUICKBUY_28"){
	            postTitle = "紧急寻求";
	            postTitle2 = "服务";
	        }else if(offerTypeValue == "SALE_2805"){
	            postTitle = "提供";
	            postTitle2 = "加工";
	        }else if(offerTypeValue == "BUY_2805"){
	            postTitle = "寻求";
	            postTitle2 = "加工";
	        }else if(offerTypeValue == "QUICKBUY_2805"){
	            postTitle = "紧急需求";
	            postTitle2 = "加工";
	        }else if(offerTypeValue == "BUY_51"){
	            postTitle = "愿做";
	            postTitle2 = "代理加盟";
	        }else if(offerTypeValue == "SALE_51"){
	            postTitle = "诚招";
	            postTitle2 = "代理加盟";
	        }else if(offerTypeValue == "2903"){
	            postTitle = "寻求";
	            postTitle2 = "合作";
			}else if(offerTypeValue == "WHOLESALE"){
				 postTitle = "批发供应";
			}
	        if(keyword == "")
	            postTitle2 = "";

	        if(keyword != "勿填规格、型号、品牌等"){
	        	document.mainform.item(subjectObj).value = postTitle + keyword + postTitle2;
	        }
	        if (keyword!="" && isChecked){
	            doOnBlur(subjectObj, true);
	        }
	        return true;
	   }
	    return true;
	}
	function doModifySubject(subjectObj){
	    if(subjectObj.value == ""){
	        form.subjectModifyFlag.value = "false";
	    }else{
	        form.subjectModifyFlag.value = "true";
	    }
	}
	function showHideContact(isShow){
	    if(isShow){
	        document.all("tr_HideContact").style.display="";
	    }else{
	        document.all("tr_HideContact").style.display="none";
	    }
	}
	function funcSelectOther(featureId){
	    var featureObj = document.getElementById("feature" + featureId);
	    var featureSelfObj = document.getElementById("featureSelf" + featureId);
	    var featureOtherObj = document.getElementById("featureOther" + featureId);
	    if(featureObj && featureObj.value == "其他"){
	        if(featureSelfObj && featureOtherObj){
	            featureOtherObj.style.display="";
	            featureSelfObj.value = "";
	        }
	    }else{
	        if(featureSelfObj && featureOtherObj){
	            featureOtherObj.style.display="none";
	            featureSelfObj.value = "";
	        }
	    }
	}
	//auction add
	function postOffer(bizType){
	    if(isEditVar!= "true"){
    		if(bizType == "WHOLESALE"){
    		    aliclick(null, '?tracelog=pfpost_post_tijiao');
    		}
		}
	    if(doOnSubmit(document.mainform)){
		    
		    if(isEditVar=="true"){
		        document.mainform.action ="http://upload.china.alibaba.com/offer/adv_post.htm?action=offer_post_action&event_submit_do_process=submit";
		    }else{
		    			        document.mainform.action= "http://upload.china.alibaba.com/offer/adv_post.htm?action=offer_post_action&event_submit_do_process=submit";
		    }
		    document.mainform.submit();
		}
		return;
	}
	function getTypeValue(){
	    return getOfferTypeValue();
	}
</script>

		<script language="JavaScript" type="text/javascript">
    var userdCategory =0;
    var keyword_value = "";

    //产品名称失去焦点，自动匹配类目
    function doOnKeywordBlur(objName, isChecked, isAwayCheck){
        doOnBlur(objName, isChecked);
        var objKeyword = document.getElementById(objName);
        var objKeywordSelect = document.getElementById("keywordSelect");
        var objHandSelect = document.getElementById("handSelect");
        var objCommendCategoryHtml = document.getElementById("commendCategoryHtml");
        var objKeywordSelectHtml = document.getElementById("keywordSelectHtml");

        if(objKeyword && objKeyword.value.length > 0 && objKeywordSelect && objHandSelect && objCommendCategoryHtml && objKeywordSelectHtml){
            if(keyword_value == objKeyword.value && !isAwayCheck){
                return;
            }else{
                keyword_value = objKeyword.value;
            }
            var categoryHtml ="";// getCategoryByKeywordHtml(getOfferTypeValue(), objKeyword.value)
            categoryHtml = trim(categoryHtml)
            if(categoryHtml.length > 30 && userdCategory<=0){
                objHandSelect.style.display="none";
                objKeywordSelect.style.display="";
            }else{
                objHandSelect.style.display="";
                objKeywordSelect.style.display="none";
            }
            objKeywordSelectHtml.innerHTML=categoryHtml;
            setCommentCategory(objCommendCategoryHtml);
            if(userdCategory<=0){
                setSelectFirstKeywordCategory();
            }
        }
    }

    //默认选中第一个匹配结果
    function setSelectFirstKeywordCategory(){
        var objSearchCatIdPaths = document.getElementsByName("searchCatIdPath");
        if(objSearchCatIdPaths && objSearchCatIdPaths.length > 0){
            objSearchCatIdPaths[0].checked = true;
            activedCategoryTd(objSearchCatIdPaths[0]);
            doOnCheckKeywordCategory(objSearchCatIdPaths[0].value)
        }
    }

    //设置推荐类目
    function setCommentCategory(objCommendCategoryHtml){
        var objCatValues = document.getElementsByName("searchCatValue");
        var objSearchCatIdPaths = document.getElementsByName("searchCatIdPath");
        var objKeyword = document.getElementById(keywordsObj);

        if (objCatValues && objCatValues.length > 0){
            var len = objCatValues.length;
            var commentHtml = "<div style=\"float:left;margin-top:3px;height:10xp;\"><b>推荐类目：</b></div><div style=\"float:left;\"><ul class=\"callinglayout\">";
            for (var j=0; j<len; j++){
                var catValues = objCatValues[j].value.split("/");
                if(catValues.length > 0){
                    var hrefHtml='<li><a href=\'javascript:matchCategory(\"' + objKeyword.value + '\", \"' + objSearchCatIdPaths[j].value + '")\'>' + catValues[catValues.length -1 ] + '</a></li>';
                    commentHtml += hrefHtml;
                }
            }
            commentHtml += "</ul></div>";
            objCommendCategoryHtml.innerHTML = commentHtml;
            objCommendCategoryHtml.style.display="";
            aliclick(null,'?tracelog=fb_sort_match');
        }else{
            objCommendCategoryHtml.style.display="none";
        }
    }

    //选择推荐类目
    function selectCommentCategory(keyword, catIdPaths){
        matchCategory(keyword, catIdPaths);
        aliclick(null,'?tracelog=fb_sort_else');
    }

    //点击选择其他类目
    function selectOtherCategory(){
        var objKeywordSelect = document.getElementById("keywordSelect");
        var objHandSelect = document.getElementById("handSelect");

        if(objKeywordSelect && objHandSelect){
            objHandSelect.style.display="";
            objKeywordSelect.style.display="none";
        }

        aliclick(null,'?tracelog=fb_sort_commend');
    }

    //点击选择匹配类目
    function doOnCheckKeywordCategory(idPath){
        var objKeyword = document.getElementById(keywordsObj);
        matchCategory(objKeyword.value, idPath);
    }
</script>


		<script language="JavaScript">
if(iskeywordsExist == "Y"){
    //doOnKeywordBlur(keywordsObj,true);
 }   
</script>

		<script language="JavaScript">
if(isNeedSubmit == "true"){
   postOffer();
   }
</script>

		<script language="JavaScript">
if(isAtBackOffice=="false"){
   showTemplateDiv();
}
</script>
		<script language="JavaScript">
	if(bizTypeVar == "WHOLESALE"){
		if(mixWholesaleVar== "Y"){
        	var mix = document.getElementById("checkMixWholesale");
    		if(mix){
    		    mix.checked = true;
    		}		
		}
		else{			
			var mix = document.getElementById("checkMixWholesale");
       			if(mix){
       			    mix.checked = false;
       			}
		}
		setMixWholesale(mix);
	}
</script>
		<script language="javascript" type="text/javascript">
	var mpobj = document.getElementById("mp_contact");
	if(mpobj){
		var now_height = mpobj.offsetHeight;			
		var lfobj = document.getElementById("leftShadow");
		lfobj.style.height = now_height-2+"px";
	}
</script>
<script language="JavaScript" type="text/javascript">
		 
    	function onChangeTopCategory(value){
    		var paramname = value; 
    		var url = "<%=path%>/product.do?method=productSecondCategory";  
    		var pars = "key=" + paramname; 
		    var myAjax = new Ajax.Request(url,{method: 'post', parameters: pars, onComplete: showTopChecked});
	  	}
	  	 
	    function showTopChecked(originalRequest){
			var result= originalRequest.responseText;	    
		    var secondCatForm=document.getElementById("tdsecondCatFormKey"); 
		     secondCatForm.innerHTML=result;
	  
	  	} 
		function onChangeSecondCategory(value){
			var paramname = value; 
    		var url = "<%=path%>/product.do?method=productThirdCategory";  
    		var pars = "key=" + paramname; 
		    var myAjax = new Ajax.Request(url,{method: 'post', parameters: pars, onComplete: showSecondChecked});
	
		}
		function showSecondChecked(originalRequest){
			var result= originalRequest.responseText;	    
		    var secondCatForm=document.getElementById("tdleafCatFormKey"); 
		     secondCatForm.innerHTML=result;
	  
	  	} 
		
		function onChangeLeafCategory(value){
			var paramname = value; 
    		var url = "<%=path%>/product.do?method=productTemplate";  
    		var pars = "key=" + paramname; 
		    var myAjax = new Ajax.Request(url,{method: 'post', parameters: pars, onComplete: showLeafChecked});
	
		} 
		function showLeafChecked(originalRequest){
			var result= originalRequest.responseText;	    
		    var secondCatForm=document.getElementById("div_productfeature");  
		     secondCatForm.innerHTML=result;
	  
	  	} 
	  	function showMore(value){  									
	  			var display=document.getElementById('table_more').style.display;
	  			 
	  			if(display=='block')
	  			{ 
	  				document.getElementById('table_more').style.display='none';
	  			     value.className='Htab2_on';  
	  			  
	  			}
	  			else  if(display=='none')
	  			{ 
	  				document.getElementById('table_more').style.display='block';
	  			     value.className='Htab2_off'; 
	  			   
	  			} 
	  	} 
	  	</script>
	  	<script language="JavaScript" type="text/javascript">
	var bizType = "SALE";
	function trim(value) {
	    return value.replace(/(^\s*)|(\s*$)/g, "");
	}
	//检查标题
	function checkSubject(fieldName) {
	    var obj = document.getElementById(fieldName);
	    var temp = "";
	    if (obj != null) {
	        temp = trim(obj.value);
	    }
	
	    if (obj == null || temp == "") {
	        document.getElementById("wrong_words_" + fieldName).innerHTML = '请填写您的信息标题。';
	        return true;
	    }
	
	    //标题不能超过25个字符
	    if (temp.length > 25) {
	        document.getElementById("wrong_words_" + fieldName).innerHTML = '信息标题不能超过25个汉字。';
	        return true;
	    }
	
	    //检查标点符号
	    var pword = checkPunctuation2(temp);
	    if (pword != "") {
	        document.getElementById("wrong_words_" + fieldName).innerHTML = "您的填写有误：信息标题中不能出现标点符号。";
	        return true;
	    }
	
	    var sword = checkSensitiveWords(temp);
	    if (sword != "") {
	        document.getElementById("wrong_words_" + fieldName).innerHTML = "对不起，您的信息标题中的“" + sword + "”，属于网上禁售产品。";
	        return true;
	    }
	
	    return false;

}
 
//检查产品名称
function checkKeyword(fieldName) {
    var temp = trim(document.getElementById(fieldName).value);
    if (temp == "") {
        document.getElementById("wrong_words_" + fieldName).innerHTML = '请填写产品名称。';
        return true;
    }
    changeQuickMatch();
    //产品名称不能超过16个字符
    if (temp.length > 16) {
        document.getElementById("wrong_words_" + fieldName).innerHTML = '名称不能超过16个汉字。';
        return true;
    }

    var pword = checkPunctuation(temp);
    if (pword != "") {
        document.getElementById("wrong_words_" + fieldName).innerHTML = "您的填写有误：产品名称中不能出现标点符号。";
        return true;
    }

    var verbWord = checkVerbWord(temp);
    if (verbWord != "") {
        document.getElementById("wrong_words_" + fieldName).innerHTML = '您的填写有误：产品名称中不能出现 "供应""采购"等字眼。';
        return true;
    }

    var sword = checkSensitiveWords(temp);
    if (sword != "") {
        document.getElementById("wrong_words_" + fieldName).innerHTML = "对不起，产品名称中的“" + sword + "”，属于网上禁售产品。";
        return true;
    }

    return false;
}

//检查产品名称的动词
function checkVerbWord(content) {
    var wordsArray = new Array("供应", "提供", "求购", "采购", "合作", "代理", "承接","诚招","愿做","寻求");
    var len = wordsArray.length;
    for (var i = 0; i < len; i++) {
        if (content.indexOf(wordsArray[i]) != -1) {
            return wordsArray[i];
        }
    }
    return "";
}

function checkFeature(fieldName) {
    //产品参数必填项
    var featureId = fieldName.replace('feature','');
    var obj = document.getElementById(fieldName);
    var trObj = document.getElementById("wrong_" + fieldName);

    // int 产品参数check
    var needCheckInt = false;
    var mutil = isMutilObject(fieldName);
    if(!mutil){
        if (document.mainform.feature_ints!=null && document.mainform.feature_ints[0]!=null){
            var len = document.mainform.feature_ints.length;
            for(var i = 0; i < len; i++ ){
                if(featureId == document.mainform.feature_ints[i].value){
                    needCheckInt = true;
                }
            }
        }else if (document.mainform.feature_ints !=null){//只有一个必填项的情况
            if(featureId == document.mainform.feature_ints.value){
                needCheckInt = true;
            }
        }
        if(needCheckInt){
            var trIntObj = document.getElementById("wrong_feature_int" + featureId);
            if(obj.value!=null && trim(obj.value) != ""){
                if(trIntObj != null && typeof(trIntObj) == "object" ){
                    if(isNaN(obj.value)){
                        trIntObj.style.display = "";
                        if (trObj != null && typeof(trObj) == "object"){
                            trObj.style.display = "none";
                        }
                        return true;
                    }else{
                        trIntObj.style.display = "none";
                    }
                }
            }else{
                trIntObj.style.display = "none";
            }
        }
    }


    var featureSelfObj = document.getElementById("featureSelf" + fieldName.substring(7));

    var hadNotValue = isEmptyValueObject(fieldName);
    if (hadNotValue || (obj.value == "其他" && featureSelfObj && trim(featureSelfObj.value) == "")) {
        if(document.getElementById("neededFeatures_" + featureId)){
            if (trObj != null && typeof(trObj) == "object"){
                trObj.style.display = "";
            }
            return true;
        }
    }
    if (trObj != null && typeof(trObj) == "object"){
        trObj.style.display = "none";
    }

    return false;
}

//验证是否多选控件
function isMutilObject(objName){
    var objs = document.getElementsByName(objName);
    if(objs.length > 1){
        return true;
    }
    return false;
}

//验证控件是否填写或者选择
function isEmptyValueObject(objName){
    var objs = document.getElementsByName(objName);

    if(objs.length == 0){
        return true;
    }else if(objs.length == 1){
        if((objs[0].type == "radio" || objs[0].type == "checkbox")){
            if(objs[0].checked){
                return false;
            }else{
                return true;
            }
        }else if(objs[0].value != null && trim(objs[0].value).length > 0){
            return false;
        }else{
            return true;
        }
    }
    if(objs[0].type == "radio" || objs[0].type == "checkbox"){
        for(i=0;i<objs.length;i++){
            if(objs[i].checked){
                return false;
            }
        }
    }
    return true;
}

//aegisAlipay
function checkAegisAlipay(fieldName) {
    var needLockAlipayObj = document.getElementById('needLockAlipay');
    var obj0 = document.getElementById(fieldName+'_0');
    var obj1 = document.getElementById(fieldName+'_1');
    var checked = false;
    if((needLockAlipayObj == null) || (needLockAlipayObj.style.display=="none")){
        return false;
    }
    if (obj0 != null) {
        if(obj0.checked){
            checked = true;
        }
    }
    if (obj1 != null) {
        if(obj1.checked){
            checked = true;
        }
    }
    if((obj0 != null) && (obj1 != null) && (!checked)) {
        document.getElementById("wrong_words_" + fieldName).innerHTML = '请选择是否使用支付宝';
        return true;
    }
    return false;
}

//检查详细描述
function checkDetails(fieldName) {
    var obj = document.getElementById(fieldName);
    var temp = "";
    if (obj != null) {
        temp = trim(obj.value);
    }

    re = /(<P>|\&nbsp;|<\/P>|\r|\n|<BR>)*/g
    var result = obj.value.replace(re,"");
    if ((obj == null || temp == "" || temp == "<P>&nbsp;</P>" || trim(result) == "")) {
    	//如果不是供应，才去判断是否必填
		if(typeWay(getOfferTypeValue())!="SALE"){
			document.getElementById("wrong_words_" + fieldName).innerHTML = '请填写产品信息的详细说明。';
        	return true;
		}
    } else 
    
    if (temp.length > maxCountWord) {
        document.getElementById("wrong_words_" + fieldName).innerHTML = '当前<font color=red>' + temp.length + '</font>字，最多<font color=red>' + maxCountWord + '</font>个字，建议<a href="#" onclick="garbageFilter();return false" title="垃圾代码：从word、excel等处拷贝过来的文案，可能包含了大量的html或其他垃圾代码，从而会导致内容过大。">点此过滤垃圾代码</a>来尝试发布，如果过滤后仍然超过' + maxCountWord + '字，请适当的减少一些内容以保证发布成功！<a href="#" onclick="garbageFilter();return false"><img src="http://i03.c.aliimg.com/images/cn/market/myalibaba/button_gl.gif" align="absmiddle" alt="" border="0"\/><\/a>';
        return true;
    } else {
        var sword = checkSensitiveWords(temp);
        if (sword != "") {
            document.getElementById("wrong_words_" + fieldName).innerHTML = "对不起，您的详细说明中的“" + sword + "”，属于网上禁售产品。";
            return true;
        }
    }

    return false;
}
 

function localFilterHTML(oldString) {
    var newString = oldString;

    //清理word，excel里面复制过来的table html垃圾代码

    newString = newString.replace("x:str", "");
    newString = newString.replace(/(<\w+[^ </>]*) ([^<>]*@[^</>]*)(>)/gi, "$1$3");
    newString = newString.replace(/(<\w+[^ </>]*) ([^<>]*@[^</>]*)(\/>)/gi, "$1$3");

    newString = newString.replace("border=0", "border=1");
    newString = newString.replace(/<(\w[^>]*) style="([^"]*)"/gi,  "<$1")
    newString = newString.replace(/<\/?SPAN[^>]*>/gi,  ""  ); //Remove  all  SPAN  tags
    newString = newString.replace(/<(\w[^>]*) lang=([^ |>]*)([^>]*)/gi, "<$1$3") ;//  Remove Lang attributes
    newString = newString.replace(/<(\w[^>]*) class=([^ |>]*)([^>]*)/gi, "<$1$3");//  Remove Class attributes
    newString = newString.replace(/'/g, "&#39;");

    //trim string
    newString = trim(newString);
    return newString;
}

function localSimpleFilterHTML(oldString) {
    var newString = oldString;

    //清理word，excel里面复制过来的table html垃圾代码

    newString = newString.replace("x:str", "");
    newString = newString.replace(/(<\w+[^ </>]*) ([^<>]*@[^</>]*)(>)/gi, "$1$3");
    newString = newString.replace(/(<\w+[^ </>]*) ([^<>]*@[^</>]*)(\/>)/gi, "$1$3");

    newString = newString.replace(/<\/?SPAN[^>]*>/gi,  ""  ); //Remove  all  SPAN  tags
    newString = newString.replace(/<(\w[^>]*) lang=([^ |>]*)([^>]*)/gi, "<$1$3") ;//  Remove Lang attributes
    newString = newString.replace(/'/g, "&#39;");

    //trim string
    newString = trim(newString);
    return newString;
}


//检查标点符号，用于产品名称
function checkPunctuation(content) {
    var wordsArray = new Array(";","；",":","：","*","“","”","\"","‘","’","‘","’","●","▲","■","@","＠","◎","★","※","＃","〓","＼","§","☆","○","◇","◆","□","△","＆","＾","￣","＿");
    var len = wordsArray.length;
    for (var i = 0; i < len; i++) {
        if (content.indexOf(wordsArray[i]) != -1) {
            return wordsArray[i];
        }
    }
    return "";
}
//检查标点符号,用于标题
function checkPunctuation2(content) {
    var wordsArray = new Array(":", "：", "*", "●", "▲", "■", "@", "＠", "◎", "★", "※", "＃", "〓", "＼", "§", "☆", "○", "◇", "◆", "□", "△", "＆", "＾", "￣", "＿");
    var len = wordsArray.length;
    for (var i = 0; i < len; i++) {
        if (content.indexOf(wordsArray[i]) != -1) {
            return wordsArray[i];
        }
    }
    return "";
}

//检查敏感词
function checkSensitiveWords(content) {
    if (content == null || trim(content) == "") return "";
    var wordsArrays = new Array();
    wordsArrays[0] = new Array("伟哥","西力士","窃听","窃照","间谍器材","针孔摄像机","手机窃听器","透视照相机","赌具","透明麻将","透明扑克","电动筛子","抗生素药品","戒毒药品","枪支","弹药","反雷达测速仪","反测速雷达","翻新手机","水货","麻醉药品","精神药品","毒性药品","放射性药品","透视眼镜","气枪","氰化物","批文","仿A");
    wordsArrays[1] = new Array("醋托啡","Acetorphine","乙酰阿法甲基芬太尼","Acetylalphamethylfentanyl","醋美沙朵","Acetylmethadol","阿芬太尼","Alfentanil","烯丙罗定","Allylprodine","阿醋美沙朵","Alphacetylmethadol","阿法美罗定","Alphameprodine","阿法美沙朵","Alphamethadol","阿法甲基芬太尼","Alphamethylfentanyl","阿法甲基硫代芬太尼","Alphamethylthiofentanyl","阿法罗定","Alphaprodine","阿尼利定","Anileridine","苄替啶","Benzethidine","苄吗啡","Benzylmorphine","倍醋美沙朵","Betacetylmethadol","倍他羟基芬太尼","Betahydroxyfentanyl","倍他羟基-3-甲基芬太尼","Betahydroxy-3-methylfentanyl","倍他美罗定","Betameprodine","倍他美沙朵","Betamethadol","倍他罗定","Betaprodine","贝齐米特","Bezitramide","大麻与大麻树脂","Cannabis and Cannabis resin","氯尼他秦","Clonitazene","古柯叶","Coca Leaf","可卡因","Cocaine","可多克辛","Codoxime","罂粟秆浓缩物","Concentrate of poppy straw","地索吗啡","Desomorphine","右吗拉胺","Dextromoramide","地恩丙胺","Diampromide");
    wordsArrays[2] = new Array("二乙噻丁","Diethylthiambutene","地芬诺辛","Difenoxin","二氢埃托啡","Dihydroetorphine","双氢吗啡","Dihydromorphine","地美沙朵","Dimenoxadol","地美庚醇","Dimepheptanol","二甲噻丁","Dimethylthiambutene","吗苯丁酯","Dioxaphetyl butyrate","地芬诺酯","Diphenoxylate","地匹哌酮","Dipipanone","羟蒂巴酚","Drotebanol","芽子碱","Ecgonine","乙甲噻丁","Ethylmethylthiambutene","依托尼秦","Etonitazene","埃托啡","Etorphine","依托利定","Etoxeridine","芬太尼","Fentanyl","呋替啶","Furethidine","海洛因","Heroin","氢可酮","Hydrocodone","氢吗啡醇","Hydromorphinol","氢吗啡酮","Hydromorphone","羟哌替啶","Hydroxypethidine","异美沙酮","Isomethadone","凯托米酮","Ketobemidone","左美沙芬","Levomethorphan","左吗拉胺","Levomoramide","左芬啡烷","Levophenacylmorphan","左啡诺","Levorphanol","美他佐辛","Metazocine","美沙酮","Methadone","美沙酮中间体","Methadone intermediate","甲地索啡","Methyldesorphine","甲二氢吗啡","Methyldihydromorphine");
    wordsArrays[3] = new Array("3-甲基芬太尼","3-methylfentanyl","3-甲基硫代芬太尼","3-methylthiofentanyl","美托酮","Metopon","吗拉胺中间体","Moramide intermediate","吗哌利定","Morpheridine","吗啡","Morphine","吗啡甲溴化物及其它五价氮吗啡衍生物","Morphine Methobromide and other pentavalent nitrogen morphine derivatives","吗啡-Ｎ-氧化物","Morphine-N-oxide","1-甲基-4-苯基-4-哌啶丙酸酯","MPPP","麦罗啡","Myrophine","尼可吗啡","Nicomorphine","诺美沙朵","Noracymethadol","去甲左啡诺","Norlevorphanol","去甲美沙酮","Normethadone","去甲吗啡","Normorphine","诺匹哌酮","Norpipanone","阿片","Opium","羟考酮","Oxycodone","羟吗啡酮","Oxymorphone","对氟芬太尼","Parafluorofentanyl","１-苯乙基-４-苯基-４-哌啶乙酸酯","PEPAP","哌替啶","Pethidine","哌替啶中间体Ａ","Pethidine intermediate A","哌替啶中间体Ｂ","Pethidine intermediate B","哌替啶中间体Ｃ","Pethidine intermediate C","苯吗庚酮","Phenadoxone","非那丙胺","Phenampromide","非那佐辛","Phenazocine","非诺啡烷");
    wordsArrays[4] = new Array("Phenomorphan","苯哌利定","Phenoperidine","匹米诺定","Piminodine","哌腈米特","Piritramide","罂粟壳","Poppy Shell","普罗庚嗪","Proheptazine","丙哌利定","Properidine","消旋甲啡烷","Racemethorphan","消旋吗拉胺","Racemoramide","消旋啡烷","Racemorphan","瑞芬太尼","Remifentanil","舒芬太尼","Sufentanil","醋氢可酮","Thebacon","蒂巴因","Thebaine","硫代芬太尼","Thiofentanyl","替利定","Tilidine","三甲利定","Trimeperidine","醋氢可待因","Acetyldihydrocodeine","布桂嗪","Bucinnazine","可待因","Codeine","复方樟脑酊","Compound Camphor Tincture","右丙氧芬","Dextropropoxyphene","双氢可待因","Dihydrocodeine","乙基吗啡","Ethylmorphine","尼可待因","Nicocodine","尼二氢可待因","Nicodicodine","去甲可待因","Norcodeine","福尔可定","Pholcodine","丙吡兰","Propiram","布苯丙胺","Brolamfetamine (DOB)","卡西酮","Cathinone","二乙基色胺","二甲氧基安非他明","2,5-dimethoxyamfetamine (DMA)","（１，２-二甲基庚基）羟基四氢甲基二苯吡喃","DMHP");
    wordsArrays[5] = new Array("二甲基色胺","二甲氧基乙基安非他明","DOET","乙环利定","Eticyclidine","乙色胺","Etryptamine","麦角二乙胺","(+)-Lysergide","二亚甲基双氧安非他明","MDMA","麦司卡林","Mescaline","甲卡西酮","Methcathinone","甲米雷司","4-methylaminorex","甲羟芬胺","MMDA","乙芬胺","N-ethyl,MDA","羟芬胺","N-hydroxy, MDA","六氢大麻酚","Parahexyl","副甲氧基安非他明","Parametoxyamphetamine (PMA)","赛洛新","Psilocine","赛洛西宾","Psilocybine","咯环利定","Rolicyclidine","二甲氧基甲苯异丙胺","STP,DOM","替苯丙胺","Tenamfetamine (MDA)","替诺环定","Tenocyclidine","四氢大麻酚","Tetrahydrocannabinol","三甲氧基安非他明","TMA","4-甲基硫基安非他明","4-methylthoamfetamine","苯丙胺","Amfetamine","安非拉酮","Amfepramone","安咪奈丁","Amineptine","2,5-二甲氧基-4-溴苯已胺","4bromo-2,5-dimethoxyphenethlamine(2-CB)","丁丙诺啡","Buprenorphine","右苯丙胺","Dexamfetamine","二甲基安非他明","Dimethylamphetamine","芬乙茶碱","Fenetylline","氯胺酮");
    wordsArrays[6] = new Array("Ketamine","左苯丙胺","Levamfetamine","左甲苯丙胺","Levomethamphetamine","马吲哚","Mazindol","甲氯喹酮","Mecloqualone","去氧麻黄碱","Metamfetamine","去氧麻黄碱外消旋体","Metamfetamine Racemate","甲喹酮","Methaqualone","哌醋甲酯","Methylphenidate","莫达非尼","Modafinil","苯环利定","Phencyclidine","芬美曲秦","Phenmetrazine","司可巴比妥","Secobarbital","δ-9-四氢大麻酚及其立体化学变体","Delta-9-tetrahydrocannabinol And its stereochemical variants","三唑仑","Triazolam","齐培丙醇","Zipeprol","异戊巴比妥","Amobarbital","布他比妥","Butalbital","布托啡诺及其注射剂","Butorphanol and its injection","咖啡因","Caffeine","去甲伪麻黄碱","Cathine","安钠咖","环已巴比妥","Cyclobarbital","地佐辛及其注射剂","Dezocine and its injection","右旋芬氟拉明","Dexfenfluramine","芬氟拉明","Fenfluramine","氟硝西泮","Flunitrazepam","格鲁米特","Glutethimide","呋芬雷司","Furfennorex","喷他佐辛","Pentazocine","戊巴比妥","Pentobarbital");
    wordsArrays[7] = new Array("丙己君","Propylhexedrine","阿洛巴比妥","Allobarbital","阿普唑仑","Alprazolam","阿米雷司","Aminorex","巴比妥","Barbital","苄非他明","Benzfetamine","溴西泮","Bromazepam","溴替唑仑","Brotizolam","丁巴比妥","Butobarbital","卡马西泮","Camazepam","氯氮卓","Chlordiazepoxide","氯巴占","Clobazam","氯硝西泮","Clonazepam","氯拉卓酸","Clorazepate","氯噻西泮","Clotiazepam","氯口恶唑仑","Cloxazolam","地洛西泮","Delorazepam","地西泮","Diazepam","艾司唑仑","Estazolam","乙氯维诺","Ethchlorvynol","炔已蚁胺","Ethinamate","氯氟卓乙酯","Ethyl Loflazepate","乙非他明","Etilamfetamine","芬坎法明","Fencamfamin","芬普雷司","Fenproporex","氟地西泮","Fludiazepam","氟西泮","Flurazepam","γ-羟丁酸","γ-hydroxybutyrate (GHB)","哈拉西泮","Halazepam","卤沙唑仑","Haloxazolam","凯他唑仑","Ketazolam","利非他明","Lefetamine","氯普唑仑","Loprazolam","劳拉西泮","Lorazepam","氯甲西泮","Lormetazepam","美达西泮","Medazepam","美芬雷司","Mefenorex");
    wordsArrays[8] = new Array("甲丙氨酯","Meprobamate","美索卡","Mesocarb","甲苯巴比妥","Methylphenobarbital","甲乙哌酮","Methyprylon","咪达唑仑","Midazolam","纳布啡及其注射剂","Nalbuphine and its injection","尼美西泮","Nimetazepam","硝西泮","Nitrazepam","去甲西泮","Nordazepam","奥沙西泮","Oxazepam","奥沙唑仑","Oxazolam","匹莫林","Pemoline","苯甲曲秦","Phendimetrazine","苯巴比妥","Phenobarbital","芬特明","Phentermine","匹那西泮","Pinazepam","哌苯甲醇","Pipradrol","普拉西泮","Prazepam","吡咯戊酮","Pyrovalerone","仲丁比妥","Secbutabarbital","替马西泮","Temazepam","四氢西泮","Tetrazepam","乙烯比妥","Vinylbital","唑吡坦","Zolpiden","扎来普隆","Zaleplone","麦角胺咖啡因");
    wordsArrays[9] = new Array("赌毯","牌九","赌桌","透视麻将","透视药水","透视眼镜");
    wordsArrays[10] = new Array("大麻酯","屈大麻酚","右吗拉米","阿屈非尼","艾捉非尼","二乙胺苯丙酮","阿米苯唑","安非他尼","布罗曼坦","卡非多 ","氯苄雷司","莰苯乙胺","依替福林","美芬丁胺","麦索卡","苯咯戊烷","司立吉林","尼可刹咪","莫达芬尼","尼可刹米","苯双甲吗啉","二甲苯吗啉","苯甲吗啉","苯丁胺","普罗林坦","司来吉兰","麻黄碱","甲基麻黄碱","士的宁");

    for(var k=0;k<wordsArrays.length;k++){
        var wordsArray = wordsArrays[k];
        var len = wordsArray.length;
        for(var i = 0; i < len; i++ ){
            if (content.indexOf(wordsArray[i])!=-1){
                return wordsArray[i];
            }
        }
    }
    return "";
}
//检查是否有联系信息
function checkContactInfo(content) {
    if (content == null || trim(content) == "") return false;
    var lxArray = new Array("@", "＠", "联系方法：", "联系方式：", "联系人：", "联系方法:", "联系方式:", "联系人:", "地址：", "地址:", "电话:", "手机:", "传真:", "网址：", "电话：", "手机：", "传真：");
    for (var i = 0; i < lxArray.length; i++) {
        if (content.indexOf(lxArray[i]) != -1) {
            return true;
        }
    }
    return false;
}
    function showTradeError(nameObj, show, errMsg){
        var oldwrong = document.getElementById("wrong_" + nameObj);
        if(show && oldwrong){
            oldwrong.style.display="none";
        }
        var nowwrong = document.getElementById("trade_wrong_" + nameObj);
        if(nowwrong){
            nowwrong.innerHTML=errMsg;
            if(show)
                nowwrong.style.display="";
            else
                nowwrong.style.display="none";
        }
        showTradeValid(nameObj,show);
    }
    function showTradeValid(nameObj,show){
        var rightImagObj = document.getElementById("img_right_" + nameObj);
        var valueObj = document.getElementById(nameObj);


        if(rightImagObj){
            if(show){
                rightImagObj.src = "http://i01.c.aliimg.com/images/cn/market/myalibaba/icon_grayright_19x19.gif";
            }else{
                if((valueObj)&&(valueObj.value)&&(valueObj.value.length>0)){	
				
                    rightImagObj.src = "http://i01.c.aliimg.com/images/cn/member/icon_right_19x19.gif";
                }else{
                    rightImagObj.src = "http://i01.c.aliimg.com/images/cn/market/myalibaba/icon_grayright_19x19.gif";
					
                }
            }
        }
    }

    function getFieldFlagName(featureId){

    }

    //检查交易信息
    function checkTradeInfo(featureId){
        var nameObj;
        var valueObj;
        var errMsg;
        var result = true;
        var fieldAll = true;
        var isTrade = false;
        var showOther = true;
        		if(bizType == "WHOLESALE"){
			isTrade = true;
		}
        nameObj = document.getElementById("fieldFlagName_unit");

        if (nameObj && (!featureId || featureId.name == nameObj.value)){
            valueObj = document.getElementById(nameObj.value);
            if(valueObj){
                var temp = trim(valueObj.value).toLowerCase();
                if(temp == "" && isTrade){
                    showTradeError(nameObj.value, true, "<span class=\"wrongwords\">带<font color=\"red\">*</font>为必填项</span>");
                    result = false;
                }else if(temp != "" && !isNaN(temp)){
                    showTradeError(nameObj.value, true, "<span class=\"wrongwords\">请用汉字填写，如：\"只\"、\"件\"、\"箱\"等。</span>");
                    result = false;
                }else if(temp != "" && (temp.indexOf("<td") >= 0 || temp.indexOf("<script") >=0 || temp.indexOf("java") >=0)){
                    showTradeError(nameObj.value, true, "<span class=\"wrongwords\">计量单位含有非法字符</span>");
                    result = false;
                }else{
                    showTradeError(nameObj.value, false, "<span class=\"wrongwords\">计量单位含有非法字符</span>");
                }
            }
        }
		var amountMsg;
		if(bizType == "WHOLESALE"){
			amountMsg = "供货总量必须大于等于最小起批";
		}
		else{
			amountMsg = "供货总量必须大于等于最小起订量";
		}
        nameObj = document.getElementById("fieldFlagName_beginamount");
        if(nameObj && (!featureId || featureId.name == nameObj.value)){
            valueObj = document.getElementById(nameObj.value);
            if(valueObj){
                if(trim(valueObj.value) == "" && isTrade){
                    showTradeError(nameObj.value, true, "<span class=\"wrongwords\">带<font color=\"red\">*</font>为必填项</span>");
                    result = false;
                }else if(trim(valueObj.value) != ""){
                    if(!isInteger(valueObj.value) || parseInt(valueObj.value) >= 1000000000){
                        showTradeError(nameObj.value, true, "<span class=\"wrongwords\">请填写大于0小于10亿的整数</span>");
                        result = false;
                    }else{
                        showTradeError(nameObj.value, false, "");
                        var beginamount = parseInt(valueObj.value);
                        nameObj = document.getElementById("fieldFlagName_amount");
                        if(nameObj){
                            valueObj = document.getElementById(nameObj.value);
                            if(valueObj && isInteger(valueObj.value)){
                                if(parseInt(valueObj.value) >= beginamount){
                                    showTradeError(nameObj.value, false, "");
                                }else{
                                    showTradeError(nameObj.value, true, "<span class=\"wrongwords\">" + amountMsg + "</span>");
                                    result = false;
                                }
                            }
                        }

                    }
                }
                else{
                    showTradeError(nameObj.value, false, "<span class=\"wrongwords\">请填写大于0小于10亿的整数</span>");
                }
            }
        }

        nameObj = document.getElementById("fieldFlagName_amount");
        if(nameObj && (!featureId || featureId.name == nameObj.value)){
            valueObj = document.getElementById(nameObj.value);
            if(valueObj){
                if(trim(valueObj.value) == "" && isTrade){
                    showTradeError(nameObj.value, true, "<span class=\"wrongwords\">带<font color=\"red\">*</font>为必填项</span>");
                    result = false;
                }else if(trim(valueObj.value) != "" ){
                    if((!isInteger(valueObj.value) || parseInt(valueObj.value) >= 1000000000)){
                        showTradeError(nameObj.value, true, "<span class=\"wrongwords\">请填写大于0小于10亿的整数</span>");
                        result = false;
                    }else{
                        showTradeError(nameObj.value, false, "");
                        var amount = parseInt(valueObj.value);
                        var oldnameObj = nameObj;
                        nameObj = document.getElementById("fieldFlagName_beginamount");
                        if(nameObj){
                            valueObj = document.getElementById(nameObj.value);
                            if(valueObj && isInteger(valueObj.value) && parseInt(valueObj.value) > amount){
                                showTradeError(oldnameObj.value, true, "<span class=\"wrongwords\">" + amountMsg + "</span>");
                                result = false;
                            }
                        }
                    }
                }
                else{
                    showTradeError(nameObj.value, false, "<span class=\"wrongwords\">请填写大于0小于10亿的整数</span>");
                }
            }
        }

        nameObj = document.getElementById("fieldFlagName_sendlimit");
        if(nameObj && (!featureId || featureId.name == nameObj.value)){
            valueObj = document.getElementById(nameObj.value);
            if(valueObj){
                if(trim(valueObj.value) == "" && isTrade){
                    showTradeError(nameObj.value, true, "<span class=\"wrongwords\">带<font color=\"red\">*</font>为必填项</span>");
                    result = false;
                }else if(trim(valueObj.value) != "" && (!isInteger(valueObj.value) || parseInt(valueObj.value) <= 0)){
                    showTradeError(nameObj.value, true, "<span class=\"wrongwords\">发货期限必需是大于0的整数</span>");
                    result = false;
                }
                else{
                    showTradeError(nameObj.value, false, "<span class=\"wrongwords\">发货期限必需是大于0的整数</span>");
                }
            }
        }

        nameObj = document.getElementById("fieldFlagName_price");
        if(nameObj){
            valueObj = document.getElementById(nameObj.value);
            if(valueObj){
                if(!featureId || featureId.name == nameObj.value){
                    if(trim(valueObj.value) == "" && isTrade){
                        showTradeError(nameObj.value, true, "<span class=\"wrongwords\">带<font color=\"red\">*</font>为必填项</span>");
                        result = false;
                    }else if(isNaN(valueObj.value) || (valueObj.value.length > 0 && trim(valueObj.value.charAt(0)) == "+") || parseFloat(valueObj.value) <= 0 || parseFloat(valueObj.value) >= 1000000000){
                        showTradeError(nameObj.value, true, "<span class=\"wrongwords\">请填写大于0小于10亿的整数</span>");
                        result = false;
                    }else if(valueObj.value.indexOf(".") > -1 && valueObj.value.substring(valueObj.value.indexOf(".")+1).length >2){
						showTradeError(nameObj.value, true, "<span class=\"wrongwords\">产品单价只能以人民币统计到小数点后 2 位</span>");
                        result = false;
					}else{
                        showTradeError(nameObj.value, false, "<span class=\"wrongwords\">请填写大于0小于10亿的整数</span>");
                    }
                }

                //关联检查
                //if(!isTrade && valueObj.value.length>0){
                if(valueObj.value.length>0){

                    showTradeValid(nameObj.value,false);
                    var unitNameObj = document.getElementById("fieldFlagName_unit");
                    var unitValueObj = document.getElementById(unitNameObj.value);
                    if(unitValueObj.value.length<=0 && (!featureId || featureId.name == unitNameObj.value)){
                        showTradeError(unitNameObj.value, true, "<span class=\"wrongwords\">请填写 计量单位</span>");
                        result = false;
                    }
                }
            }
        }

        nameObj = document.getElementById("fieldFlagName_providertype");
        if (nameObj && (!featureId || featureId.name == nameObj.value)){
            valueObj = document.getElementById(nameObj.value);
            if(valueObj){
                if(isEmptyValueObject(nameObj.value)){
                    showTradeError(nameObj.value, true, "<span class=\"wrongwords\">请选择供应商类型</span>");
                    result = false;
                }else{
                    showTradeError(nameObj.value, false, "<span class=\"wrongwords\">请选择供应商类型</span>");
                }
            }
        }

        return result;
    }

    // 交易属性获得焦点 隐掉提示信息
    function doOnFocusOfTrade(objName,type){
        var trObj = document.getElementById("trade_wrong_" + objName);
        if(trObj != null && typeof(trObj) == "object")
            trObj.style.display="none";
		var hunpiObj = document.getElementById("wrongword_hunpi");
		if(hunpiObj){
		    hunpiObj.style.display = "none";
		}
    }
  
    //交易条件全角转半角
    function transferTradeNumber(){
        var nameObj = document.getElementById("fieldFlagName_amount");
        var valueObj;
        if(nameObj){
            valueObj = document.getElementById(nameObj.value);
            if(valueObj){
                valueObj.value = tot(valueObj.value);
            }
        }

        nameObj = document.getElementById("fieldFlagName_beginamount");
        if(nameObj){
            valueObj = document.getElementById(nameObj.value);
            if(valueObj){
                valueObj.value = tot(valueObj.value);
            }
        }

        nameObj = document.getElementById("fieldFlagName_price");
        if(nameObj){
            valueObj = document.getElementById(nameObj.value);
            if(valueObj){
                valueObj.value = tot(valueObj.value);
            }
        }


    }
    //全角转半角
    function tot(mobnumber){
        while(mobnumber.indexOf("。")!=-1){
            mobnumber = mobnumber.replace("。",".");
        }
        while(mobnumber.indexOf("．")!=-1){
            mobnumber = mobnumber.replace("．",".");
        }
        while(mobnumber.indexOf("０")!=-1){
            mobnumber = mobnumber.replace("０","0");
        }
        while(mobnumber.indexOf("１")!=-1){
            mobnumber = mobnumber.replace("１","1");}
        while(mobnumber.indexOf("２")!=-1){
            mobnumber = mobnumber.replace("２","2");}
        while(mobnumber.indexOf("３")!=-1){
            mobnumber = mobnumber.replace("３","3");}
        while(mobnumber.indexOf("４")!=-1){
            mobnumber = mobnumber.replace("４","4");}
        while(mobnumber.indexOf("５")!=-1){
            mobnumber = mobnumber.replace("５","5");}
        while(mobnumber.indexOf("６")!=-1){
            mobnumber = mobnumber.replace("６","6");}
        while(mobnumber.indexOf("７")!=-1){
            mobnumber = mobnumber.replace("７","7");}
        while(mobnumber.indexOf("８")!=-1){
            mobnumber = mobnumber.replace("８","8");}
        while(mobnumber.indexOf("９")!=-1){
            mobnumber = mobnumber.replace("９","9");}
        return mobnumber;

    }


    function changeTradeUnit(){

        setTradeUnit("price");
        setTradeUnit("beginamount");
        setTradeUnit("amount");
    }

    function setTradeUnit(name){
        var obj = document.getElementById("trade_unit_" + name);
        if(obj){
            var nameObj = document.getElementById("fieldFlagName_unit");
            if(!nameObj){
                return ;
            }
            var valueObj = document.getElementById(nameObj.value);
            if(valueObj && trim(valueObj.value) != ""){
                obj.innerHTML = trim(valueObj.value)
            }else{
                obj.innerHTML = "单位"
            }
        }
    }

    function checkTradeField(objName){
        var nameObj = document.getElementById(objName);
        if(!nameObj){
            return false;
        }

        var valueObj = document.getElementById(nameObj.value);
        if(!valueObj || trim(valueObj.value) == ""){
            return false;
        }
        return true;
    }

    //大于0等整数
    function isInteger(value){
        return (!isNaN(value) && trim(value) != "" && value.indexOf(".") == -1 && parseInt(value) > 0)
    }
    function getHttpRequest(){
        var httpRequest;
        if (window.XMLHttpRequest){ // Mozilla, Safari,...
            httpRequest = new XMLHttpRequest();
            if (httpRequest.overrideMimeType){
                httpRequest.overrideMimeType('text/xml');
            }
        }else if (window.ActiveXObject){ // IE
            try{
                httpRequest = new ActiveXObject("Msxml2.XMLHTTP");
            }catch(e){
                try {
                    httpRequest = new ActiveXObject("Microsoft.XMLHTTP");
                }catch(e){}
            }
        }
        return httpRequest;
    }
    var activedCategoryObj = null;
    function activedCategoryTd(obj){
        if(activedCategoryObj!=null){
            if(activedCategoryObj.parentNode !=null){
                activedCategoryObj.parentNode.className="defaultItem";
            }
        }
        if(obj!=null && obj.parentNode!=null){
            obj.parentNode.className="activedItem";
        }
        activedCategoryObj=obj;
    }
    
	function getTradeType(type){
		if(type == "SALE_51" || type == "BUY_51"){
			return 3;//代理加盟
		}else if(type == "2903"){
			return 4;//合作
		}else if(type == "SALE_28" || type == "BUY_28" || type == "QUICKBUY_28"){
			return 5;//服务
		}else if(type == "SALE_2805" || type == "BUY_2805" || type == "QUICKBUY_2805"){
			return 2;//加工
		}else{
			return 1;
		}
	}
	
	function getTradeTypeName(tradeTypeReverse){
		if(tradeTypeReverse == -3){
			return "代理加盟";
		}else if(tradeTypeReverse == -4){
			return "合作";
		}else if(tradeTypeReverse == -5){
			return "服务";
		}else if(tradeTypeReverse == -2){
			return "加工";
		}else{
			return "产品";
		}
	} 
	 
</script>
	  	 <script language="JavaScript" type="text/javascript">
	 
//校验类目
function checkCategory() {

if((isEditVar!="true")||(isTBDInfoCanChange=="true")){
    if (form.topCatFormKey.selectedIndex == -1) {
	    document.getElementById("wrong_words_category").innerHTML = "请选择所属行业和产品类目！";
	    return true;
    }
    if (form.secondCatFormKey.options.length > 0 && form.secondCatFormKey.selectedIndex == -1) {
	    document.getElementById("wrong_words_category").innerHTML = "您的类目没有选择完整，请继续选产品大类。";
	    return true;
    }
    if (form.leafCatFormKey.options.length > 0 && form.leafCatFormKey.selectedIndex == -1) {
	    document.getElementById("wrong_words_category").innerHTML = "您的类目没有选择完整，请继续选择产品子类。";
	    return true;
    }
    return false;
}else{
    return false;
}
}

function showProductMarket(show,keywordsObjName){
    var objMarket = document.getElementById("product_market");
    if(objMarket!=null){
        if(show){
            var objMarketUrl = document.getElementById("product_market_url");
            var keywordsObj = document.getElementById(keywordsObjName);
            if(keywordsObj!=null && keywordsObj.value!='' && keywordsObj.value!='勿填规格、型号、品牌等' && objMarketUrl!=null){
                objMarketUrl.href=businessSearch+'?keywords='+keywordsObj.value+'&tracelog='+showProductMarketTraceLog;
                objMarket.style.display="inline";
            }
        }else{
            objMarket.style.display="none";
        }
    }
}


	function changeType(type){
		
		if(isPostSearchVar=="true"){
			document.getElementById('bizexpressType').innerHTML=type;
		}else{
			return;
		}
	}
					
	function changBizexpressKeywords(obj){
		if(isPostSearchVar=="true"){
			var keyObj = document.getElementById('bizexpressKeywords');
			if(keyObj){
				keyObj.innerHTML=obj.value;
			}
		}else{
			return;
		}
	}

 
</script>
	</body>
</html>
