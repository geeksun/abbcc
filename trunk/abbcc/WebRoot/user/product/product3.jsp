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
												<strong>Ϊ��������ܸ���ȷ�ҵ����Ĳ�Ʒ�������������¼������������Ϣ���ȣ���ø��õ�������</strong>
												<br />
												1��һ����Ϣֻ����һ����Ʒ��&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
												 

												<br />
												2�����Ĳ�Ʒ������س����ڱ����У�&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
												3����������Ϣ��ͼ����д��Ʒ���ԡ�

												<br />
												<font class="ts_text">&nbsp;&nbsp;&nbsp;Ϊ�������Ϣ����������ע�ⲻҪ�����ظ���Ϣ���ظ���Ϣ���޷��ɹ�����������</font>��
												<a
													href="http://info.china.alibaba.com/helpcenter/tips/s5003008-d5470949.html?tracelog=chinagas_help"
													target="_blank">��˲鿴�ظ���Ϣ���弰�������</a>��
											</div>
											<div class="Htitle">
												<div class="H1">
													����������Ϣ
												</div>
												<div class="Hright s2">
													��
													<span class="ora">*</span>Ϊ�����&nbsp;&nbsp;
													<span class="Htab_on2" id="Htab_on2"
														onclick="document.getElementById('important_note').style.display=='block'||document.getElementById('important_note').style.display==''?document.getElementById('important_note').style.display='none':document.getElementById('important_note').style.display='block'; document.getElementById('Htab_on2').className=='Htab_on2'?document.getElementById('Htab_on2').className='Htab_off2':document.getElementById('Htab_on2').className='Htab_on2'">��Ҫ����</span><a
														href="#" onclick="goToDisPost(mainform);return false;">�ֲ�ʽ����</a>&nbsp;|&nbsp;
													<span class="Htab_off" id="Htab"
														onmouseover="document.getElementById('toolbar').style.display = 'block';document.getElementById('Htab').className='Htab_on';"
														onmouseout="document.getElementById('toolbar').style.display = 'none';document.getElementById('Htab').className='Htab_off';"
														onmousemove="document.getElementById('toolbar').style.display = 'block';document.getElementById('Htab').className='Htab_on';">��ذ���
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
																	target="_blank">�����̳�</a>
															</li>
															<li
																onmouseover="document.getElementById('toolbar').style.display = 'block';document.getElementById('Htab').className='Htab_on';"
																onmousemove="document.getElementById('toolbar').style.display = 'block';document.getElementById('Htab').className='Htab_on';">
																<a
																	href="http://info.china.alibaba.com/helpcenter/tips/s5011168-d5550522.html"
																	target="_blank">�����淶</a>
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
													<a href="#" onclick="goToTradePost(mainform);return false;">һ�ڼ���Ϣ</a> 
													һ�ڼ���Ϣ
												</div> -->
												<div class="TabOn2">
													��ͨ��Ϣ
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
													������Ϣ
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

											<b>��Ϣ����</b><font color="#ff0000">*</font>
										</td>
										<td class="list_right_box">
											<input value="<%=AppConstants.PRODUCT_SALE %>" name="xxlx" checked="checked"  type="radio"/>
											��Ӧ
											<input value="<%=AppConstants.PRODUCT_BUY %>" name="xxlx"   type="radio"/>
											��
											<input value="<%=AppConstants.PRODUCT_QUICK_BUY %>" name="xxlx" type="radio"/>
											������
										</td>
									</tr>
									 
									<tr>
										<td class="list_left_box" align="right" valign="top">
											<img id="img_right__fmo.a._0.k"
												src="<%=path%>/user/product/product_files/icon_grayright_19x19.gif"
												align="absmiddle" width="19" height="16" />
											&nbsp;

											<b>��Ʒ����</b><font color="#ff0000">*</font>
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
															��Ʒ������������ֹ���ͺš�Ʒ�Ƶ����ݡ�
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
											<b> ��Ʒ������Ŀ</b><font color="#ff0000">*</font>

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
															<span class="wrongwords" id="wrong_words_category">��ѡ��������ҵ�Ͳ�Ʒ��Ŀ��</span>
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
											<b> ��Ϣ����</b><font color="#ff0000">*</font>
										</td>
										<td class="list_right_box" valign="top">
											<table border="0" cellpadding="3" cellspacing="0"
												width="100%">
												<tbody>
													<tr>
														<td>
															<input name="xxbt" value="��Ӧ" size="46"
																  maxlength="25" type="text" />
														</td>
													</tr>
												</tbody>
											</table>
											<table border="0" cellpadding="3" cellspacing="0" width="380">
												<tbody>
													<tr id="normal__fmo.a._0.s">
														<td class="s lh13 normal" valign="top">
															����Ǳ�ڿͻ����ȹ�ע��Ϣ���⣬�������ڴ˻����Ͻ����޸����ơ�
														</td>
													</tr>
													<tr id="awake__fmo.a._0.s" style="display: none;">
														<td class="s lh13 normal" valign="top">
															����Ǳ�ڿͻ����ȹ�ע��Ϣ���⣬�������ڴ˻����Ͻ����޸����ơ�
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
															����Ǳ�ڿͻ����ȹ�ע��Ϣ���⣬�������ڴ˻����Ͻ����޸����ơ�
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

											<b>��Ϣ��Ч��</b><font color="#ff0000">*</font>
										</td>
										<td class="list_right_box">
											<div id="div_OfferExpire_normal">
												<input   value="10" name="xxyxq" type="radio"/>
												10��
												<input   value="20" name="xxyxq" type="radio"/>
												20��
												<input   value="30" name="xxyxq" type="radio"/>
												1����
												<input  value="90"  name="xxyxq" type="radio" />
												3����
												<input  value="180" checked="checked" name="xxyxq" type="radio"/>
												6����
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
																<b><span class="note"><font color="#000000">3��</font>
																</span> </b>
															</td>
														</tr>
														<tr>
															<td valign="top">
																<span class="note"><font color="#ff0000">*</font>
																</span>
															</td>
															<td>
																<span class="note">�����ɹ�����Ч��Ĭ��Ϊ3�죻</span>
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
													��ϸ��Ϣ
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
												��ϸ��д��Ʒ���ԣ���������ͻ������ӳɽ����ᡣ
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
											<b>��ϸ˵��</b><span   style="display: none;"><font
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
															<span>1������Ӳ�Ʒ���ܡ���;����װ���ۺ����ȷ�����������<br/> 
																	</span>
														</td>
													</tr>
												</tbody>
											</table>

										</td>
									</tr>
									<tr>
										<td class="list_left_box" align="right" valign="top">
											<b>�ϴ�ͼƬ</b>&nbsp;
										</td>
										<td class="list_right_box" valign="top"> 
											<div id="uploadpic" style="display: none;"></div>
											<div id="showpic" style=""></div>
											<table border="0" cellpadding="3" cellspacing="0" width="50%">
												<tbody>
													<tr>
														<td class="s" align="center" width="166" height="25">
															ͼƬ1
														</td>
														<td class="s" align="center" width="167">
															ͼƬ2
														</td>
														<td class="s" align="center" width="167">
															ͼƬ3
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
															<input   value="�ϴ�"
																name="uploadPicBtn0" type="button" />
															&nbsp;

															<input onclick="delete_picture('0');" value="ɾ��"
																name="delPicBtn0" type="button" />
														</td>
														<td align="center">
															<input   value="�ϴ�"
																name="uploadPicBtn1" type="button" />
															&nbsp;

															<input   value="ɾ��"
																name="delPicBtn1" type="button" />
														</td>
														<td align="center">
															<input   value="�ϴ�"
																name="uploadPicBtn2" type="button" />
															&nbsp;

															<input onclick="delete_picture('2');" value="ɾ��"
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
													��������
												</div>
											</div>
											<div class="hyprice s2" id="product_market"
												style="display: none;">
												<a id="product_market_url" target="_blank" href="#">�鿴ͬ�б���</a>
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
																								1�������ֱ�Ӱ���۹��������밴�ս���������Լ��������ΪΥԼ��
																								<br/>
																								2��������軹�ۣ���������ҳ��ۺ󣬵������׹������޸ļ۸񣬴������ס�
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
																<b>������λ</b>
															</td>
															<td class="list_right_box"> 
																<input class="tpf_input" name="jldw"
																	id="feature59238" value="" size="23" maxlength="12"
																	type="text"/>
																<span style="padding-left: 10px;"><span
																	id="wrong_feature59238" class="s lh13 wrong"
																	style="display: none; width: 110px;"> <span
																		class="wrongwords" id="wrong_words_feature59238">
																			��<font color="red">*</font>Ϊ����� </span> </span> </span>
																<span style="padding-left: 10px;"><span
																	id="trade_wrong_feature59238" class="s lh13 wrong"
																	style="display: none; width: 260px;"> <br /> <font
																		color="#999999">����д�뵥������ļ�����λ����ֻ���������</font> </span> </span>
															</td>
														</tr>
														<tr>
															<td class="list_left_box" align="right" valign="top"
																height="25">
																<img id="img_right_feature59240"
																	src="<%=path%>/user/product/product_files/icon_grayright_19x19.gif"
																	align="absmiddle" width="19" height="16"/>
																<b>��Ʒ����</b>
															</td>
															<td class="list_right_box">
																 			<input class="tpf_input" name="cpdj"
																	id="feature59240" value="" size="23" maxlength="12"
																	 type="text" />
																Ԫ/
																<span id="trade_unit_price">��λ</span>
																<span style="padding-left: 10px;"><span
																	id="wrong_feature59240" class="s lh13 wrong"
																	style="display: none; width: 110px;"> <span
																		class="wrongwords" id="wrong_words_feature59240">
																			��<font color="red">*</font>Ϊ����� </span> </span> </span>
																<span style="padding-left: 10px;"><span
																	id="trade_wrong_feature59240" class="s lh13 wrong"
																	style="display: none; width: 260px;"> <br /> <font
																		color="#999999">������д�����˷ѵļ۸�</font> </span> </span>
															</td>
														</tr>
														<tr>
															<td class="list_left_box" align="right" valign="top"
																height="25">
																<img id="img_right_feature59239"
																	src="<%=path%>/user/product/product_files/icon_grayright_19x19.gif"
																	align="absmiddle" width="19" height="16"/>
																<b>��С����</b>
															</td>
															<td class="list_right_box"> 
																<input class="tpf_input" name="zxqdl"
																	id="feature59239" value="" size="23" maxlength="12" 
																	type="text" />
																<span id="trade_unit_beginamount">��λ</span>
																<span style="padding-left: 10px;"><span
																	id="wrong_feature59239" class="s lh13 wrong"
																	style="display: none; width: 110px;"> <span
																		class="wrongwords" id="wrong_words_feature59239">
																			��<font color="red">*</font>Ϊ����� </span> </span> </span>
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
																<b>��������</b>
															</td>
															<td class="list_right_box">
															  <input class="tpf_input" name="ghzl"
																	id="feature59241" value="" size="23" maxlength="12" 
																	type="text"/>
																<span id="trade_unit_amount">��λ</span>
																<span style="padding-left: 10px;"><span
																	id="wrong_feature59241" class="s lh13 wrong"
																	style="display: none; width: 110px;"> <span
																		class="wrongwords" id="wrong_words_feature59241">
																			��<font color="red">*</font>Ϊ����� </span> </span> </span>
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
																<b>��������</b>
															</td>
															<td class="list_right_box"> 
																����Ҹ���֮���� 
																<select name="fhqx" id="feature59242"
																	maxlength="80"    >
																	<option value="">
																		��ѡ��
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
																���ڷ���
																<span style="padding-left: 10px;"><span
																	id="wrong_feature59242" class="s lh13 wrong"
																	style="display: none; width: 110px;"> <span
																		class="wrongwords" id="wrong_words_feature59242">
																			��<font color="red">*</font>Ϊ����� </span> </span> </span>
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
																<b>��Ӧ������</b><font color="#ff0000">*</font>
															</td>
															<td class="list_right_box">
																 
																���Ǹò�Ʒ��

																<select name="gyslx" id="feature116330"
																	maxlength="80"  >
																	<option value="">
																		��ѡ��
																	</option>
																	<option value="������������">
																		������������
																	</option>
																	<option value="�ӹ���">
																		�ӹ���
																	</option>
																	<option value="������">
																		������
																	</option>
																	<option value="������">
																		������
																	</option>
																	<option value="����">
																		����
																	</option>
																</select>
																<span style="padding-left: 10px;"><span
																	id="wrong_feature116330" class="s lh13 wrong"
																	style="display: none; width: 110px;"> <span
																		class="wrongwords" id="wrong_words_feature116330">
																			��<font color="red">*</font>Ϊ����� </span> </span> </span>
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

															<b>��������</b><font color="#ff0000">*</font>
														</td>
														<td class="list_right_box" valign="top">
															<input name="rBizType" value="checkbox"
																onclick="changeBizType('Y')" type="radio" />
															��&nbsp;

															<input name="rBizType" value="checkbox"
																onclick="changeBizType('N')" type="radio">
															��
															<table align="left" cellpadding="0" cellspacing="0"
																width="100%">
																<tbody>
																	<tr>
																		<td class="s lh13 normal">
																			<span
																				style="padding-top: 3px; display: inline-block;">�������������²�Ʒ�������������������̼ҡ�</span>
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
													��ϵ��ʽ��ȷ�����޸�
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
												<a name="aegisAlipay5"></a>��ȷ��������ϵ��ʽ���������޷�ͨ����ˣ�
												<a name="aegisAlipay6"></a><a
													href="#" target="_blank">����޸�</a>
											</div>
										</td>
									</tr>
									<tr>
										<td>
											<div class="contact" id="mp_contact">
												<ul class="conTitle">
													<li>
														����ʤ&nbsp; ����
													</li>
													<li>
														������ب��԰�ֻ�е���޹�˾
													</li>
												</ul>
												<ul class="conOther">
													<li>
														�绰�� 86 - 0579 - 87233656
													</li>
													<li>
														���棺 86 - 0579 - 87233652
													</li>
													<li>
														�ֻ��� 13967937457
													</li>
													<li>
														�����ʼ���yys807@163.com
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
												class="S">�Ķ���������</a>
										</td>
									</tr>
									<tr>
										<td class="C spc16" align="center">
											<input name="postsubmit"
												onmousedown="javascript:postOffer(bizTypeVar)"
												value="ͬ����������Ҫ����" class="submitButton" type="button"/>
											<a href="#"
												onclick="previewPost(document.mainform);return false;">Ԥ��������Ϣ</a>
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
	//����ѡ���µ���Ϣ���ͣ��ڷ���offer��ʱ����Ч�����޸�offer��ʱ����Ч
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
	    //.���ò�Ʒ����
	    //ֻҪ��Ӧ������в�Ʒ����
	    if(typeWay(typeObj.value) == "SALE"){
	        needFeature = true;
	    }else{
	        needFeature = false;
	    }
	    //�Զ�ƥ��
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
		                    tdTradeObj.innerHTML = "�ܱ�Ǹ������ҵ��ʱ�޷�����һ�ڼ���Ϣ�����������Լ���������ͨ��Ӧ��Ϣ��<br/>����д�±���ɹ�Ӧ��Ϣ�ķ�����";
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
		                tdTradeObj.innerHTML = "�ܱ�Ǹ������ҵ��ʱ�޷�����һ�ڼ���Ϣ�����������Լ���������ͨ��Ӧ��Ϣ��<br/>����д�±���ɹ�Ӧ��Ϣ�ķ�����";
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
	//���Զ�ƥ�䴰��
	function openCategoryMatch(){
	    if(checkKeyword(keywordsObj)){
	        alert("������Ĳ�Ʒ���Ʋ��Ϸ�,������");
	        return;
	    }
	    var url = 'searchOfferSumByKeyword.htm?tracelog=fb_poone_auto&infoType=' + getOfferTypeValue() + '&keyword=' + form.item(keywordsObj).value;
	    window.open(url ,'_blank' ,'width=640,height=500,top=70,left=80,toolbar=no,scrollbars=yes,resizable=yes,status=no,toolbar=no,menubar=no,location=no');
	    return;
	}
	//��ƥ�䴰����ƥ�䵽��Ŀ��ı䱾���ڵ���Ŀ��keyword
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
	        //����ͼƬ�ϴ�״̬
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
	//�ύ��Ԥ��ǰ�����Ч��
	function checkAll(thisform, isShowError){
	    var result1 = doOnBlurCommon(keywordsObj,isShowError);
	    var result2 = doOnBlurCommon("category",isShowError);
	    var result3 = doOnBlurCommon(subjectObj,isShowError);
	    var result5 = doOnBlurCommon(detailsObj,isShowError);
	    var result4 = false;
	    var result6 = checkTradeInfo();
	    var result7 = false;//���ײ���
	    var result8 = doOnBlurCommon(aegisAlipayObj,isShowError);
	    var result9 = checkQuickBuySellMatch();

	    //��Ʒ����
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
	    }else if (isShowError && thisform.neededFeatures !=null){//ֻ��һ������������
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
	    }else if (isShowError && thisform.feature_ints !=null){//ֻ��һ������������
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
	//�л���һ�ڼ�
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
		document.getElementById("msg_hint_info").innerHTML="��ѡ��ġ�"+catPath+"����Ŀ���ڡ�"+tradeTypeName+"��Ϣ��,�뵽��"+tradeTypeName+"��Ϣ�������з�����";
		document.getElementById("submitSwitch").value="ȥ��"+tradeTypeName+"��Ϣ����������";

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
	        //����ͼƬ�ϴ�״̬
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
	//����Ԥ���Ĺ������ɱ���, always:�Ƿ����Ǹ�����Ϣ���ͺ͹ؼ��ֻ�
	function setSubjectText(always,isChecked){
	    
	    if((isEditVar!="true")||(isTBDInfoCanChange=="true")){
	        if(always)
	            document.mainform.subjectModifyFlag.value = "false";
	        if(form.subjectModifyFlag.value == "true")
	            return true;
	        var keyword = trim(document.mainform.item(keywordsObj).value);
	        if (keyword != "" && checkKeyword(keywordsObj)){//�����Ʒ����У�鲻�ϸ�,���Զ������⸳ֵ
	            return true;
	        }
	        var offerTypeValue = getOfferTypeValue();
	        var postTitle="", postTitle2="";
	        if(offerTypeValue == "SALE"){
	            postTitle = "��Ӧ";
	        }else if(offerTypeValue == "BUY"){
	            postTitle = "��";
	        }else if(offerTypeValue == "QUICKBUY"){
	            postTitle = "������";
	        }else if(offerTypeValue == "SALE_28"){
	            postTitle = "�ṩ";
	            postTitle2 = "����";
	        }else if(offerTypeValue == "BUY_28"){
	            postTitle = "Ѱ��";
	            postTitle2 = "����";
	        }else if(offerTypeValue == "QUICKBUY_28"){
	            postTitle = "����Ѱ��";
	            postTitle2 = "����";
	        }else if(offerTypeValue == "SALE_2805"){
	            postTitle = "�ṩ";
	            postTitle2 = "�ӹ�";
	        }else if(offerTypeValue == "BUY_2805"){
	            postTitle = "Ѱ��";
	            postTitle2 = "�ӹ�";
	        }else if(offerTypeValue == "QUICKBUY_2805"){
	            postTitle = "��������";
	            postTitle2 = "�ӹ�";
	        }else if(offerTypeValue == "BUY_51"){
	            postTitle = "Ը��";
	            postTitle2 = "�������";
	        }else if(offerTypeValue == "SALE_51"){
	            postTitle = "����";
	            postTitle2 = "�������";
	        }else if(offerTypeValue == "2903"){
	            postTitle = "Ѱ��";
	            postTitle2 = "����";
			}else if(offerTypeValue == "WHOLESALE"){
				 postTitle = "������Ӧ";
			}
	        if(keyword == "")
	            postTitle2 = "";

	        if(keyword != "�������ͺš�Ʒ�Ƶ�"){
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
	    if(featureObj && featureObj.value == "����"){
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

    //��Ʒ����ʧȥ���㣬�Զ�ƥ����Ŀ
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

    //Ĭ��ѡ�е�һ��ƥ����
    function setSelectFirstKeywordCategory(){
        var objSearchCatIdPaths = document.getElementsByName("searchCatIdPath");
        if(objSearchCatIdPaths && objSearchCatIdPaths.length > 0){
            objSearchCatIdPaths[0].checked = true;
            activedCategoryTd(objSearchCatIdPaths[0]);
            doOnCheckKeywordCategory(objSearchCatIdPaths[0].value)
        }
    }

    //�����Ƽ���Ŀ
    function setCommentCategory(objCommendCategoryHtml){
        var objCatValues = document.getElementsByName("searchCatValue");
        var objSearchCatIdPaths = document.getElementsByName("searchCatIdPath");
        var objKeyword = document.getElementById(keywordsObj);

        if (objCatValues && objCatValues.length > 0){
            var len = objCatValues.length;
            var commentHtml = "<div style=\"float:left;margin-top:3px;height:10xp;\"><b>�Ƽ���Ŀ��</b></div><div style=\"float:left;\"><ul class=\"callinglayout\">";
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

    //ѡ���Ƽ���Ŀ
    function selectCommentCategory(keyword, catIdPaths){
        matchCategory(keyword, catIdPaths);
        aliclick(null,'?tracelog=fb_sort_else');
    }

    //���ѡ��������Ŀ
    function selectOtherCategory(){
        var objKeywordSelect = document.getElementById("keywordSelect");
        var objHandSelect = document.getElementById("handSelect");

        if(objKeywordSelect && objHandSelect){
            objHandSelect.style.display="";
            objKeywordSelect.style.display="none";
        }

        aliclick(null,'?tracelog=fb_sort_commend');
    }

    //���ѡ��ƥ����Ŀ
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
	//������
	function checkSubject(fieldName) {
	    var obj = document.getElementById(fieldName);
	    var temp = "";
	    if (obj != null) {
	        temp = trim(obj.value);
	    }
	
	    if (obj == null || temp == "") {
	        document.getElementById("wrong_words_" + fieldName).innerHTML = '����д������Ϣ���⡣';
	        return true;
	    }
	
	    //���ⲻ�ܳ���25���ַ�
	    if (temp.length > 25) {
	        document.getElementById("wrong_words_" + fieldName).innerHTML = '��Ϣ���ⲻ�ܳ���25�����֡�';
	        return true;
	    }
	
	    //��������
	    var pword = checkPunctuation2(temp);
	    if (pword != "") {
	        document.getElementById("wrong_words_" + fieldName).innerHTML = "������д������Ϣ�����в��ܳ��ֱ����š�";
	        return true;
	    }
	
	    var sword = checkSensitiveWords(temp);
	    if (sword != "") {
	        document.getElementById("wrong_words_" + fieldName).innerHTML = "�Բ���������Ϣ�����еġ�" + sword + "�����������Ͻ��۲�Ʒ��";
	        return true;
	    }
	
	    return false;

}
 
//����Ʒ����
function checkKeyword(fieldName) {
    var temp = trim(document.getElementById(fieldName).value);
    if (temp == "") {
        document.getElementById("wrong_words_" + fieldName).innerHTML = '����д��Ʒ���ơ�';
        return true;
    }
    changeQuickMatch();
    //��Ʒ���Ʋ��ܳ���16���ַ�
    if (temp.length > 16) {
        document.getElementById("wrong_words_" + fieldName).innerHTML = '���Ʋ��ܳ���16�����֡�';
        return true;
    }

    var pword = checkPunctuation(temp);
    if (pword != "") {
        document.getElementById("wrong_words_" + fieldName).innerHTML = "������д���󣺲�Ʒ�����в��ܳ��ֱ����š�";
        return true;
    }

    var verbWord = checkVerbWord(temp);
    if (verbWord != "") {
        document.getElementById("wrong_words_" + fieldName).innerHTML = '������д���󣺲�Ʒ�����в��ܳ��� "��Ӧ""�ɹ�"�����ۡ�';
        return true;
    }

    var sword = checkSensitiveWords(temp);
    if (sword != "") {
        document.getElementById("wrong_words_" + fieldName).innerHTML = "�Բ��𣬲�Ʒ�����еġ�" + sword + "�����������Ͻ��۲�Ʒ��";
        return true;
    }

    return false;
}

//����Ʒ���ƵĶ���
function checkVerbWord(content) {
    var wordsArray = new Array("��Ӧ", "�ṩ", "��", "�ɹ�", "����", "����", "�н�","����","Ը��","Ѱ��");
    var len = wordsArray.length;
    for (var i = 0; i < len; i++) {
        if (content.indexOf(wordsArray[i]) != -1) {
            return wordsArray[i];
        }
    }
    return "";
}

function checkFeature(fieldName) {
    //��Ʒ����������
    var featureId = fieldName.replace('feature','');
    var obj = document.getElementById(fieldName);
    var trObj = document.getElementById("wrong_" + fieldName);

    // int ��Ʒ����check
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
        }else if (document.mainform.feature_ints !=null){//ֻ��һ������������
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
    if (hadNotValue || (obj.value == "����" && featureSelfObj && trim(featureSelfObj.value) == "")) {
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

//��֤�Ƿ��ѡ�ؼ�
function isMutilObject(objName){
    var objs = document.getElementsByName(objName);
    if(objs.length > 1){
        return true;
    }
    return false;
}

//��֤�ؼ��Ƿ���д����ѡ��
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
        document.getElementById("wrong_words_" + fieldName).innerHTML = '��ѡ���Ƿ�ʹ��֧����';
        return true;
    }
    return false;
}

//�����ϸ����
function checkDetails(fieldName) {
    var obj = document.getElementById(fieldName);
    var temp = "";
    if (obj != null) {
        temp = trim(obj.value);
    }

    re = /(<P>|\&nbsp;|<\/P>|\r|\n|<BR>)*/g
    var result = obj.value.replace(re,"");
    if ((obj == null || temp == "" || temp == "<P>&nbsp;</P>" || trim(result) == "")) {
    	//������ǹ�Ӧ����ȥ�ж��Ƿ����
		if(typeWay(getOfferTypeValue())!="SALE"){
			document.getElementById("wrong_words_" + fieldName).innerHTML = '����д��Ʒ��Ϣ����ϸ˵����';
        	return true;
		}
    } else 
    
    if (temp.length > maxCountWord) {
        document.getElementById("wrong_words_" + fieldName).innerHTML = '��ǰ<font color=red>' + temp.length + '</font>�֣����<font color=red>' + maxCountWord + '</font>���֣�����<a href="#" onclick="garbageFilter();return false" title="�������룺��word��excel�ȴ������������İ������ܰ����˴�����html�������������룬�Ӷ��ᵼ�����ݹ���">��˹�����������</a>�����Է�����������˺���Ȼ����' + maxCountWord + '�֣����ʵ��ļ���һЩ�����Ա�֤�����ɹ���<a href="#" onclick="garbageFilter();return false"><img src="http://i03.c.aliimg.com/images/cn/market/myalibaba/button_gl.gif" align="absmiddle" alt="" border="0"\/><\/a>';
        return true;
    } else {
        var sword = checkSensitiveWords(temp);
        if (sword != "") {
            document.getElementById("wrong_words_" + fieldName).innerHTML = "�Բ���������ϸ˵���еġ�" + sword + "�����������Ͻ��۲�Ʒ��";
            return true;
        }
    }

    return false;
}
 

function localFilterHTML(oldString) {
    var newString = oldString;

    //����word��excel���渴�ƹ�����table html��������

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

    //����word��excel���渴�ƹ�����table html��������

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


//�������ţ����ڲ�Ʒ����
function checkPunctuation(content) {
    var wordsArray = new Array(";","��",":","��","*","��","��","\"","��","��","��","��","��","��","��","@","��","��","��","��","��","��","��","��","��","��","��","��","��","��","��","��","��","��");
    var len = wordsArray.length;
    for (var i = 0; i < len; i++) {
        if (content.indexOf(wordsArray[i]) != -1) {
            return wordsArray[i];
        }
    }
    return "";
}
//��������,���ڱ���
function checkPunctuation2(content) {
    var wordsArray = new Array(":", "��", "*", "��", "��", "��", "@", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��");
    var len = wordsArray.length;
    for (var i = 0; i < len; i++) {
        if (content.indexOf(wordsArray[i]) != -1) {
            return wordsArray[i];
        }
    }
    return "";
}

//������д�
function checkSensitiveWords(content) {
    if (content == null || trim(content) == "") return "";
    var wordsArrays = new Array();
    wordsArrays[0] = new Array("ΰ��","����ʿ","����","����","�������","��������","�ֻ�������","͸�������","�ľ�","͸���齫","͸���˿�","�綯ɸ��","������ҩƷ","�䶾ҩƷ","ǹ֧","��ҩ","���״������","�������״�","�����ֻ�","ˮ��","����ҩƷ","����ҩƷ","����ҩƷ","������ҩƷ","͸���۾�","��ǹ","�軯��","����","��A");
    wordsArrays[1] = new Array("���з�","Acetorphine","���������׻���̫��","Acetylalphamethylfentanyl","����ɳ��","Acetylmethadol","����̫��","Alfentanil","ϩ���޶�","Allylprodine","������ɳ��","Alphacetylmethadol","�������޶�","Alphameprodine","������ɳ��","Alphamethadol","�����׻���̫��","Alphamethylfentanyl","�����׻������̫��","Alphamethylthiofentanyl","�����޶�","Alphaprodine","��������","Anileridine","�����","Benzethidine","�����","Benzylmorphine","������ɳ��","Betacetylmethadol","�����ǻ���̫��","Betahydroxyfentanyl","�����ǻ�-3-�׻���̫��","Betahydroxy-3-methylfentanyl","�������޶�","Betameprodine","������ɳ��","Betamethadol","�����޶�","Betaprodine","��������","Bezitramide","�����������֬","Cannabis and Cannabis resin","��������","Clonitazene","�ſ�Ҷ","Coca Leaf","�ɿ���","Cocaine","�ɶ����","Codoxime","��ڸ�Ũ����","Concentrate of poppy straw","�������","Desomorphine","��������","Dextromoramide","�ض�����","Diampromide");
    wordsArrays[2] = new Array("�����綡","Diethylthiambutene","�ط�ŵ��","Difenoxin","���Ⱓ�з�","Dihydroetorphine","˫�����","Dihydromorphine","����ɳ��","Dimenoxadol","��������","Dimepheptanol","�����綡","Dimethylthiambutene","�𱽶���","Dioxaphetyl butyrate","�ط�ŵ��","Diphenoxylate","��ƥ��ͪ","Dipipanone","�ǵٰͷ�","Drotebanol","ѿ�Ӽ�","Ecgonine","�Ҽ��綡","Ethylmethylthiambutene","��������","Etonitazene","���з�","Etorphine","��������","Etoxeridine","��̫��","Fentanyl","߻���","Furethidine","������","Heroin","���ͪ","Hydrocodone","����ȴ�","Hydromorphinol","�����ͪ","Hydromorphone","�������","Hydroxypethidine","����ɳͪ","Isomethadone","������ͪ","Ketobemidone","����ɳ��","Levomethorphan","��������","Levomoramide","��ҷ���","Levophenacylmorphan","���ŵ","Levorphanol","��������","Metazocine","��ɳͪ","Methadone","��ɳͪ�м���","Methadone intermediate","�׵�����","Methyldesorphine","�׶������","Methyldihydromorphine");
    wordsArrays[3] = new Array("3-�׻���̫��","3-methylfentanyl","3-�׻������̫��","3-methylthiofentanyl","����ͪ","Metopon","�������м���","Moramide intermediate","��������","Morpheridine","���","Morphine","��ȼ��廯�Ｐ������۵����������","Morphine Methobromide and other pentavalent nitrogen morphine derivatives","���-��-������","Morphine-N-oxide","1-�׻�-4-����-4-��ऱ�����","MPPP","���޷�","Myrophine","������","Nicomorphine","ŵ��ɳ��","Noracymethadol","ȥ�����ŵ","Norlevorphanol","ȥ����ɳͪ","Normethadone","ȥ�����","Normorphine","ŵƥ��ͪ","Norpipanone","��Ƭ","Opium","�ǿ�ͪ","Oxycodone","�����ͪ","Oxymorphone","�Է���̫��","Parafluorofentanyl","��-���һ�-��-����-��-���������","PEPAP","�����","Pethidine","������м����","Pethidine intermediate A","������м����","Pethidine intermediate B","������м����","Pethidine intermediate C","�����ͪ","Phenadoxone","���Ǳ���","Phenampromide","��������","Phenazocine","��ŵ����");
    wordsArrays[4] = new Array("Phenomorphan","��������","Phenoperidine","ƥ��ŵ��","Piminodine","��������","Piritramide","��ڿ�","Poppy Shell","���޸��","Proheptazine","��������","Properidine","�����׷���","Racemethorphan","����������","Racemoramide","��������","Racemorphan","���̫��","Remifentanil","���̫��","Sufentanil","�����ͪ","Thebacon","�ٰ���","Thebaine","�����̫��","Thiofentanyl","������","Tilidine","��������","Trimeperidine","����ɴ���","Acetyldihydrocodeine","�����","Bucinnazine","�ɴ���","Codeine","����������","Compound Camphor Tincture","�ұ�����","Dextropropoxyphene","˫��ɴ���","Dihydrocodeine","�һ����","Ethylmorphine","��ɴ���","Nicocodine","�����ɴ���","Nicodicodine","ȥ�׿ɴ���","Norcodeine","�����ɶ�","Pholcodine","������","Propiram","��������","Brolamfetamine (DOB)","����ͪ","Cathinone","���һ�ɫ��","����������������","2,5-dimethoxyamfetamine (DMA)","��������-���׻��������ǻ�����׻��������","DMHP");
    wordsArrays[5] = new Array("���׻�ɫ��","���������һ���������","DOET","�һ�����","Eticyclidine","��ɫ��","Etryptamine","��Ƕ��Ұ�","(+)-Lysergide","���Ǽ׻�˫����������","MDMA","��˾����","Mescaline","�׿���ͪ","Methcathinone","������˾","4-methylaminorex","���ǷҰ�","MMDA","�ҷҰ�","N-ethyl,MDA","�ǷҰ�","N-hydroxy, MDA","��������","Parahexyl","����������������","Parametoxyamphetamine (PMA)","������","Psilocine","��������","Psilocybine","��������","Rolicyclidine","���������ױ������","STP,DOM","�汽����","Tenamfetamine (MDA)","��ŵ����","Tenocyclidine","��������","Tetrahydrocannabinol","����������������","TMA","4-�׻������������","4-methylthoamfetamine","������","Amfetamine","������ͪ","Amfepramone","�����ζ�","Amineptine","2,5-��������-4-�屽�Ѱ�","4bromo-2,5-dimethoxyphenethlamine(2-CB)","����ŵ��","Buprenorphine","�ұ�����","Dexamfetamine","���׻���������","Dimethylamphetamine","���Ҳ��","Fenetylline","�Ȱ�ͪ");
    wordsArrays[6] = new Array("Ketamine","�󱽱���","Levamfetamine","��ױ�����","Levomethamphetamine","������","Mazindol","�����ͪ","Mecloqualone","ȥ����Ƽ�","Metamfetamine","ȥ����Ƽ���������","Metamfetamine Racemate","���ͪ","Methaqualone","�ߴ׼���","Methylphenidate","Ī�����","Modafinil","��������","Phencyclidine","��������","Phenmetrazine","˾�ɰͱ���","Secobarbital","��-9-�������Ӽ������廯ѧ����","Delta-9-tetrahydrocannabinol And its stereochemical variants","������","Triazolam","�������","Zipeprol","����ͱ���","Amobarbital","��������","Butalbital","���з�ŵ����ע���","Butorphanol and its injection","������","Caffeine","ȥ��α��Ƽ�","Cathine","���ƿ�","���Ѱͱ���","Cyclobarbital","����������ע���","Dezocine and its injection","�����ҷ�����","Dexfenfluramine","�ҷ�����","Fenfluramine","��������","Flunitrazepam","��³����","Glutethimide","߻����˾","Furfennorex","��������","Pentazocine","��ͱ���","Pentobarbital");
    wordsArrays[7] = new Array("������","Propylhexedrine","����ͱ���","Allobarbital","��������","Alprazolam","������˾","Aminorex","�ͱ���","Barbital","�з�����","Benzfetamine","������","Bromazepam","��������","Brotizolam","���ͱ���","Butobarbital","��������","Camazepam","�ȵ�׿","Chlordiazepoxide","�Ȱ�ռ","Clobazam","��������","Clonazepam","����׿��","Clorazepate","��������","Clotiazepam","�ȿڶ�����","Cloxazolam","��������","Delorazepam","������","Diazepam","��˾����","Estazolam","����άŵ","Ethchlorvynol","Ȳ���ϰ�","Ethinamate","�ȷ�׿����","Ethyl Loflazepate","�ҷ�����","Etilamfetamine","�ҿ�����","Fencamfamin","������˾","Fenproporex","��������","Fludiazepam","������","Flurazepam","��-�Ƕ���","��-hydroxybutyrate (GHB)","��������","Halazepam","±ɳ����","Haloxazolam","��������","Ketazolam","��������","Lefetamine","��������","Loprazolam","��������","Lorazepam","�ȼ�����","Lormetazepam","��������","Medazepam","������˾","Mefenorex");
    wordsArrays[8] = new Array("�ױ�����","Meprobamate","������","Mesocarb","�ױ��ͱ���","Methylphenobarbital","������ͪ","Methyprylon","�������","Midazolam","�ɲ��ȼ���ע���","Nalbuphine and its injection","��������","Nimetazepam","������","Nitrazepam","ȥ������","Nordazepam","��ɳ����","Oxazepam","��ɳ����","Oxazolam","ƥĪ��","Pemoline","��������","Phendimetrazine","���ͱ���","Phenobarbital","������","Phentermine","ƥ������","Pinazepam","�߱��״�","Pipradrol","��������","Prazepam","������ͪ","Pyrovalerone","�ٶ�����","Secbutabarbital","��������","Temazepam","��������","Tetrazepam","��ϩ����","Vinylbital","����̹","Zolpiden","������¡","Zaleplone","��ǰ�������");
    wordsArrays[9] = new Array("��̺","�ƾ�","����","͸���齫","͸��ҩˮ","͸���۾�");
    wordsArrays[10] = new Array("������","�������","��������","��������","��׽����","���Ұ�����ͪ","���ױ���","��������","������̹","���Ƕ� ","������˾","ݨ���Ұ�","���渣��","���Ҷ���","������","��������","˾������","���ɲ��","Ī�����","���ɲ��","��˫������","���ױ�����","��������","������","������̹","˾������","��Ƽ�","�׻���Ƽ�","ʿ����");

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
//����Ƿ�����ϵ��Ϣ
function checkContactInfo(content) {
    if (content == null || trim(content) == "") return false;
    var lxArray = new Array("@", "��", "��ϵ������", "��ϵ��ʽ��", "��ϵ�ˣ�", "��ϵ����:", "��ϵ��ʽ:", "��ϵ��:", "��ַ��", "��ַ:", "�绰:", "�ֻ�:", "����:", "��ַ��", "�绰��", "�ֻ���", "���棺");
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

    //��齻����Ϣ
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
                    showTradeError(nameObj.value, true, "<span class=\"wrongwords\">��<font color=\"red\">*</font>Ϊ������</span>");
                    result = false;
                }else if(temp != "" && !isNaN(temp)){
                    showTradeError(nameObj.value, true, "<span class=\"wrongwords\">���ú�����д���磺\"ֻ\"��\"��\"��\"��\"�ȡ�</span>");
                    result = false;
                }else if(temp != "" && (temp.indexOf("<td") >= 0 || temp.indexOf("<script") >=0 || temp.indexOf("java") >=0)){
                    showTradeError(nameObj.value, true, "<span class=\"wrongwords\">������λ���зǷ��ַ�</span>");
                    result = false;
                }else{
                    showTradeError(nameObj.value, false, "<span class=\"wrongwords\">������λ���зǷ��ַ�</span>");
                }
            }
        }
		var amountMsg;
		if(bizType == "WHOLESALE"){
			amountMsg = "��������������ڵ�����С����";
		}
		else{
			amountMsg = "��������������ڵ�����С����";
		}
        nameObj = document.getElementById("fieldFlagName_beginamount");
        if(nameObj && (!featureId || featureId.name == nameObj.value)){
            valueObj = document.getElementById(nameObj.value);
            if(valueObj){
                if(trim(valueObj.value) == "" && isTrade){
                    showTradeError(nameObj.value, true, "<span class=\"wrongwords\">��<font color=\"red\">*</font>Ϊ������</span>");
                    result = false;
                }else if(trim(valueObj.value) != ""){
                    if(!isInteger(valueObj.value) || parseInt(valueObj.value) >= 1000000000){
                        showTradeError(nameObj.value, true, "<span class=\"wrongwords\">����д����0С��10�ڵ�����</span>");
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
                    showTradeError(nameObj.value, false, "<span class=\"wrongwords\">����д����0С��10�ڵ�����</span>");
                }
            }
        }

        nameObj = document.getElementById("fieldFlagName_amount");
        if(nameObj && (!featureId || featureId.name == nameObj.value)){
            valueObj = document.getElementById(nameObj.value);
            if(valueObj){
                if(trim(valueObj.value) == "" && isTrade){
                    showTradeError(nameObj.value, true, "<span class=\"wrongwords\">��<font color=\"red\">*</font>Ϊ������</span>");
                    result = false;
                }else if(trim(valueObj.value) != "" ){
                    if((!isInteger(valueObj.value) || parseInt(valueObj.value) >= 1000000000)){
                        showTradeError(nameObj.value, true, "<span class=\"wrongwords\">����д����0С��10�ڵ�����</span>");
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
                    showTradeError(nameObj.value, false, "<span class=\"wrongwords\">����д����0С��10�ڵ�����</span>");
                }
            }
        }

        nameObj = document.getElementById("fieldFlagName_sendlimit");
        if(nameObj && (!featureId || featureId.name == nameObj.value)){
            valueObj = document.getElementById(nameObj.value);
            if(valueObj){
                if(trim(valueObj.value) == "" && isTrade){
                    showTradeError(nameObj.value, true, "<span class=\"wrongwords\">��<font color=\"red\">*</font>Ϊ������</span>");
                    result = false;
                }else if(trim(valueObj.value) != "" && (!isInteger(valueObj.value) || parseInt(valueObj.value) <= 0)){
                    showTradeError(nameObj.value, true, "<span class=\"wrongwords\">�������ޱ����Ǵ���0������</span>");
                    result = false;
                }
                else{
                    showTradeError(nameObj.value, false, "<span class=\"wrongwords\">�������ޱ����Ǵ���0������</span>");
                }
            }
        }

        nameObj = document.getElementById("fieldFlagName_price");
        if(nameObj){
            valueObj = document.getElementById(nameObj.value);
            if(valueObj){
                if(!featureId || featureId.name == nameObj.value){
                    if(trim(valueObj.value) == "" && isTrade){
                        showTradeError(nameObj.value, true, "<span class=\"wrongwords\">��<font color=\"red\">*</font>Ϊ������</span>");
                        result = false;
                    }else if(isNaN(valueObj.value) || (valueObj.value.length > 0 && trim(valueObj.value.charAt(0)) == "+") || parseFloat(valueObj.value) <= 0 || parseFloat(valueObj.value) >= 1000000000){
                        showTradeError(nameObj.value, true, "<span class=\"wrongwords\">����д����0С��10�ڵ�����</span>");
                        result = false;
                    }else if(valueObj.value.indexOf(".") > -1 && valueObj.value.substring(valueObj.value.indexOf(".")+1).length >2){
						showTradeError(nameObj.value, true, "<span class=\"wrongwords\">��Ʒ����ֻ���������ͳ�Ƶ�С����� 2 λ</span>");
                        result = false;
					}else{
                        showTradeError(nameObj.value, false, "<span class=\"wrongwords\">����д����0С��10�ڵ�����</span>");
                    }
                }

                //�������
                //if(!isTrade && valueObj.value.length>0){
                if(valueObj.value.length>0){

                    showTradeValid(nameObj.value,false);
                    var unitNameObj = document.getElementById("fieldFlagName_unit");
                    var unitValueObj = document.getElementById(unitNameObj.value);
                    if(unitValueObj.value.length<=0 && (!featureId || featureId.name == unitNameObj.value)){
                        showTradeError(unitNameObj.value, true, "<span class=\"wrongwords\">����д ������λ</span>");
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
                    showTradeError(nameObj.value, true, "<span class=\"wrongwords\">��ѡ��Ӧ������</span>");
                    result = false;
                }else{
                    showTradeError(nameObj.value, false, "<span class=\"wrongwords\">��ѡ��Ӧ������</span>");
                }
            }
        }

        return result;
    }

    // �������Ի�ý��� ������ʾ��Ϣ
    function doOnFocusOfTrade(objName,type){
        var trObj = document.getElementById("trade_wrong_" + objName);
        if(trObj != null && typeof(trObj) == "object")
            trObj.style.display="none";
		var hunpiObj = document.getElementById("wrongword_hunpi");
		if(hunpiObj){
		    hunpiObj.style.display = "none";
		}
    }
  
    //��������ȫ��ת���
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
    //ȫ��ת���
    function tot(mobnumber){
        while(mobnumber.indexOf("��")!=-1){
            mobnumber = mobnumber.replace("��",".");
        }
        while(mobnumber.indexOf("��")!=-1){
            mobnumber = mobnumber.replace("��",".");
        }
        while(mobnumber.indexOf("��")!=-1){
            mobnumber = mobnumber.replace("��","0");
        }
        while(mobnumber.indexOf("��")!=-1){
            mobnumber = mobnumber.replace("��","1");}
        while(mobnumber.indexOf("��")!=-1){
            mobnumber = mobnumber.replace("��","2");}
        while(mobnumber.indexOf("��")!=-1){
            mobnumber = mobnumber.replace("��","3");}
        while(mobnumber.indexOf("��")!=-1){
            mobnumber = mobnumber.replace("��","4");}
        while(mobnumber.indexOf("��")!=-1){
            mobnumber = mobnumber.replace("��","5");}
        while(mobnumber.indexOf("��")!=-1){
            mobnumber = mobnumber.replace("��","6");}
        while(mobnumber.indexOf("��")!=-1){
            mobnumber = mobnumber.replace("��","7");}
        while(mobnumber.indexOf("��")!=-1){
            mobnumber = mobnumber.replace("��","8");}
        while(mobnumber.indexOf("��")!=-1){
            mobnumber = mobnumber.replace("��","9");}
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
                obj.innerHTML = "��λ"
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

    //����0������
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
			return 3;//�������
		}else if(type == "2903"){
			return 4;//����
		}else if(type == "SALE_28" || type == "BUY_28" || type == "QUICKBUY_28"){
			return 5;//����
		}else if(type == "SALE_2805" || type == "BUY_2805" || type == "QUICKBUY_2805"){
			return 2;//�ӹ�
		}else{
			return 1;
		}
	}
	
	function getTradeTypeName(tradeTypeReverse){
		if(tradeTypeReverse == -3){
			return "�������";
		}else if(tradeTypeReverse == -4){
			return "����";
		}else if(tradeTypeReverse == -5){
			return "����";
		}else if(tradeTypeReverse == -2){
			return "�ӹ�";
		}else{
			return "��Ʒ";
		}
	} 
	 
</script>
	  	 <script language="JavaScript" type="text/javascript">
	 
//У����Ŀ
function checkCategory() {

if((isEditVar!="true")||(isTBDInfoCanChange=="true")){
    if (form.topCatFormKey.selectedIndex == -1) {
	    document.getElementById("wrong_words_category").innerHTML = "��ѡ��������ҵ�Ͳ�Ʒ��Ŀ��";
	    return true;
    }
    if (form.secondCatFormKey.options.length > 0 && form.secondCatFormKey.selectedIndex == -1) {
	    document.getElementById("wrong_words_category").innerHTML = "������Ŀû��ѡ�������������ѡ��Ʒ���ࡣ";
	    return true;
    }
    if (form.leafCatFormKey.options.length > 0 && form.leafCatFormKey.selectedIndex == -1) {
	    document.getElementById("wrong_words_category").innerHTML = "������Ŀû��ѡ�������������ѡ���Ʒ���ࡣ";
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
            if(keywordsObj!=null && keywordsObj.value!='' && keywordsObj.value!='�������ͺš�Ʒ�Ƶ�' && objMarketUrl!=null){
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
