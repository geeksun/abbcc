<%@ page contentType="text/html; charset=gbk"%>
<%@ page import="java.util.List,java.util.Iterator"%>
<%@ page import="com.abbcc.pojo.ProductType"%>
<%@ page import="com.abbcc.common.AppConstants"%>

<%
String path = request.getContextPath();
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
	<head>
		<title>product</title>
		<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
		<meta name="description" content="" />
		<meta name="keywords" content="" />
		<script src="<%=path%>/js/prototype.js"></script>
		<link rel="stylesheet" rev="stylesheet"
			href="<%=path%>/user/product/product_files/AlicnTree.css"
			type="text/css" />
		<link rel="stylesheet" rev="stylesheet"
			href="<%=path%>/user/product/product_files/myali_search_v02.css"
			type="text/css" />
		<link rel="stylesheet" rev="stylesheet"
			href="<%=path%>/user/product/product_files/mainframe.css"
			type="text/css" />
		<link rel="stylesheet" rev="stylesheet"
			href="<%=path%>/user/product/product_files/content.css"
			type="text/css" />
		<link rel="stylesheet" rev="stylesheet"
			href="<%=path%>/user/product/product_files/myalibaba.css"
			type="text/css" />
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
		<script language="JavaScript" type="text/javascript">
		 
    	function onChangeTopCategory(value){
    		var paramname = value; 
    		var url = "<%=path%>/productInfo.do?method=productSecondCategory";  
    		var pars = "key=" + paramname; 
		    var myAjax = new Ajax.Request(url,{method: 'post', parameters: pars, onComplete: showTopChecked});
	  	}
	   
	    function showTopChecked(originalRequest){
			var result= originalRequest.responseText;	    
		    var secondCatForm=document.getElementById("tdsecondCatFormKey"); 
		     secondCatForm.innerHTML=result;
	  
	  	} 
	  	function clearThirdSelect()
	  	{
	  	   //var  tdleafCatFormKey=document.getElementById("tdleafCatFormKey"); 
	  	   //tdleafCatFormKey.innerHTML="";
	  	}
		function onChangeSecondCategory(value){
			var paramname = value; 
    		var url = "<%=path%>/productInfo.do?method=productThirdCategory";  
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
    		var url = "<%=path%>/productInfo.do?method=productTemplate";  
    		var pars = "key=" + paramname; 
		    var myAjax = new Ajax.Request(url,{method: 'post', parameters: pars, onComplete: showLeafChecked});
	  		   var productTypeId=document.getElementById("productTypeId");  
	  		productTypeId.value=value;
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
	  	function checkSubmit(){
	  	
	  		document.mainform.action="<%=path%>/productInfo.do?method=addProductInfo";
	  		document.mainform.submit();
	  	}
	  	</script>
	</head>
	<body>
		<table align="right" class="content_border" border="0" cellpadding="0"
			cellspacing="0" width="100%">
			<tbody>
				<tr>
					<td>
						<form name="mainform" method="post" >
						<input id="productTypeId" type="hidden" name="productTypeId" value=""/>
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
											<input value="<%=AppConstants.PRODUCT_SALE%>" name="xxlx"
												checked="checked" type="radio" />
											��Ӧ
											<input value="<%=AppConstants.PRODUCT_BUY%>" name="xxlx"
												type="radio" />
											��
											<input value="<%=AppConstants.PRODUCT_QUICK_BUY%>"
												name="xxlx" type="radio" />
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
															<input name="cpmc" value="" maxlength="16" size="20"
																type="text" />
															<div class="MB_Menu" id="Banner_Menu"></div>
														</td>
													</tr>
												</tbody>
											</table>
											<table border="0" bordercolor="#cccccc" cellpadding="3"
												cellspacing="0" width="100%">
												<tbody>
													<tr>
														<td class="s lh13 normal" valign="top">
															��Ʒ������������ֹ���ͺš�Ʒ�Ƶ����ݡ�
														</td>
													</tr>
													<tr id="" style="display: none;">
														<td class="s lh13 wrong" valign="top">
															<span class="wrongwords" id=""> </span>
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
																	<td id="tdtopCatFormKey">
																		<select name="topCatFormKey" size="8"
																			style="width: 129px;" id="topCatFormKey"
																			 onchange="onChangeTopCategory(this.value) ">
																			<%
																				List topCategory = (List) request.getAttribute("topCategory");
																				if (topCategory != null) {
																					Iterator iter = topCategory.iterator();
																					while (iter.hasNext()) {
																						ProductType productType = (ProductType) iter.next();
																						if (productType != null) {
																							String name = productType.getName();
																							int value = productType.getId();
																							int isShow = productType.getIsShow();
																							boolean able = isShow == ProductType.PRODUCT_TYPE_SHOW ? true
																									: false;
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
																	<td id="tdsecondCatFormKey">
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
																					int value = productType.getId();
																					int isShow = productType.getIsShow();
																					boolean able = isShow == ProductType.PRODUCT_TYPE_SHOW ? true
																							: false;
																					out.print("<option value=\"" + value + "\"");
																					if (able) {
																						out.print(" style=\"color: rgb(204, 204, 204);\" ");
																					}
																					out.println(" >");
																					out.println(name);
																					out.println("</option>");

																						}
																					}
																				}
																			%>
																		</select>
																	</td>
																	<td id="tdleafCatFormKey">
																		<select name="leafCatFormKey" size="8"
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
																							int value = productType.getId();
																							int isShow = productType.getIsShow();
																							boolean able = isShow == ProductType.PRODUCT_TYPE_SHOW ? true
																									: false;
																							out.print("<option value=\"" + value + "\"");
																							if (able) {
																								out.print(" style=\"color: rgb(204, 204, 204);\" ");
																							}
																							out.println(" >");
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
												align="absmiddle" width="19" height="16" />
											<b> ��Ϣ����</b><font color="#ff0000">*</font>
										</td>
										<td class="list_right_box" valign="top">
											<table border="0" cellpadding="3" cellspacing="0"
												width="100%">
												<tbody>
													<tr>
														<td>
															<input name="xxbt" value="��Ӧ" size="46" maxlength="25"
																type="text" />
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
												<input value="10" name="xxyxq" type="radio" />
												10��
												<input value="20" name="xxyxq" type="radio" />
												20��
												<input value="30" name="xxyxq" type="radio" />
												1����
												<input value="90" name="xxyxq" type="radio" />
												3����
												<input value="180" checked="checked" name="xxyxq"
													type="radio" />
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
															String productTemplate = (String) request
															.getAttribute("productTemplate");
													if (productTemplate != null) {
														out.println(productTemplate);
													}
												%>
											</div>
										</td>
									</tr>

									<tr>
										<td class="list_left_box" align="right" valign="top">
											<a name="flagDetails"></a>
											<b>��ϸ˵��</b><span style="display: none;"><font
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
															<span>1������Ӳ�Ʒ���ܡ���;����װ���ۺ����ȷ�����������<br /> </span>
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
															<input value="�ϴ�" name="uploadPicBtn0" type="button" />
															&nbsp;

															<input onclick="delete_picture('0');" value="ɾ��"
																name="delPicBtn0" type="button" />
														</td>
														<td align="center">
															<input value="�ϴ�" name="uploadPicBtn1" type="button" />
															&nbsp;

															<input value="ɾ��" name="delPicBtn1" type="button" />
														</td>
														<td align="center">
															<input value="�ϴ�" name="uploadPicBtn2" type="button" />
															&nbsp;

															<input onclick="delete_picture('2');" value="ɾ��"
																name="delPicBtn2" type="button" />
														</td>
													</tr>
												</tbody>
											</table>

										</td>
									</tr>
								</tbody>
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
																								<br />
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
																	align="absmiddle" width="19" height="16" />
																<b>������λ</b>
															</td>
															<td class="list_right_box">
																<input class="tpf_input" name="jldw" id="feature59238"
																	value="" size="23" maxlength="12" type="text" />
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
																	align="absmiddle" width="19" height="16" />
																<b>��Ʒ����</b>
															</td>
															<td class="list_right_box">
																<input class="tpf_input" name="cpdj" id="feature59240"
																	value="" size="23" maxlength="12" type="text" />
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
																	align="absmiddle" width="19" height="16" />
																<b>��С����</b>
															</td>
															<td class="list_right_box">
																<input class="tpf_input" name="zxqdl" id="feature59239"
																	value="" size="23" maxlength="12" type="text" />
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
																	align="absmiddle" width="19" height="16" />
																<b>��������</b>
															</td>
															<td class="list_right_box">
																<input class="tpf_input" name="ghzl" id="feature59241"
																	value="" size="23" maxlength="12" type="text" />
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
																	align="absmiddle" width="19" height="16" />
																<b>��������</b>
															</td>
															<td class="list_right_box">
																����Ҹ���֮����
																<select name="fhqx" id="feature59242" maxlength="80">
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
																	align="absmiddle" width="19" height="16" />
																<b>��Ӧ������</b><font color="#ff0000">*</font>
															</td>
															<td class="list_right_box">

																���Ǹò�Ʒ��

																<select name="gyslx" id="feature116330" maxlength="80">
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
																onclick="changeBizType('N')" type="radio"/>
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
							<br />

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
												<a name="aegisAlipay6"></a><a href="#" target="_blank">����޸�</a>
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
							<br/>
							<br/>
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
												 onclick="checkSubmit()"
												value="ͬ����������Ҫ����" class="submitButton" type="button" />
											<a href="#"
												onclick="previewPost(document.mainform);return false;">Ԥ��������Ϣ</a>
										</td>
									</tr>
								</tbody>
							</table>
							<br />
						</form>
						<br />
						<br />
					</td>
				</tr>
			</tbody>
		</table>
	</body>
</html>
