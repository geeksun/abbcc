<%@ page contentType="text/html; charset=gbk"%>
<%
	String path = request.getContextPath();
%> 
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
		<title></title> 
	</head>
	<body>
		<table width="100%" border="0" cellpadding="0" cellspacing="0" >
			<tr>
				<td>
					<form name="mainform" method="post"> 
						<table width="100%" cellpadding="0" cellspacing="0"  >
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
								<td align="right" valign="top" >
									<img
										src="<%=path %>/images/icon_right_19x19.gif"
										width="19" height="16" align="middle" />
									&nbsp;
									<b>信息类型</b><font color="#ff0000">*</font>
								</td>
								<td>
									<input type="radio" value="SALE" name="" checked onclick="">
									供应
									<input type="radio" value="BUY" name="" onclick="">
									求购
									<input type="radio" value="QUICKBUY" name="" 	onclick="">
									紧急求购
								</td>
							</tr> 
							<tr>
								<td align="right" valign="top" class="list_left_box">
									<img id="img_right__fmo.a._0.k"
										src="<%=path %>/images/icon_right_19x19.gif"
										width="19" height="16" align="middle" />
									&nbsp;
									<b>产品名称</b><font color="#ff0000">*</font>
								</td>
								<td valign="top" class="list_right_box">
									<table width="100%" border="0" cellpadding="3" cellspacing="0">
										<tr>
											<td valign="top" class="s lh13 normal">
												<input name="" id="" type="text"
													style="" value="油动遥控船" maxLength="16" size="20" /> 
											</td>
										</tr>
									</table>
									<table width="100%" border="0" cellpadding="3" cellspacing="0"
										bordercolor="#CCCCCC">
										<tr >
											<td valign="top" >
												产品名称中请勿出现规格、型号、品牌等内容。
											</td>
										</tr> 
									</table>
								</td>
							</tr>
							<tr>
								<td align="right" valign="top"  >
									<img  src="<%=path %>/images/icon_right_19x19.gif"
										width="19" height="16" align="middle" />
									<b> 产品所属类目</b><font color="#ff0000">*</font>

								</td>
								<td>
									<div id="usedCategoryDiv"></div>
									<table id="handSelect" width="100%" border="0" cellspacing="0"
										cellpadding="3">
										<tr>
											<td>
												<select name="topCatFormKey" size="8" style="width: 129px;"
													id="topCatFormKey" onblur='doOnBlur("category", true)'
													onFocus='doOnFocus("category")'
													onchange="onChangeTopCategory(this)"></select>
												<select name="secondCatFormKey" size="8"
													style="width: 129px;" id="secondCatFormKey"
													onblur='doOnBlur("category", true)'
													onFocus='doOnFocus("category")'
													onchange="onChangeSecondCategory(this)"></select>
												<select name="leafCatFormKey" size="8" id="leafCatFormKey"
													style="width:129px;" onblur='doOnBlur("category", true)'
													onFocus='doOnFocus("category")'
													onchange="onChangeLeafCategory(this)"></select>
											</td>
										</tr>
										<tr>
											<td id="commendCategoryHtml" style="display:none"
												align="left"></td>
										</tr>
									</table> 
									<table width="100%" border="0" cellspacing="0" cellpadding="3">
										<tr id="wrong_category" style="display:none">
											<td valign="top" class="s lh13 wrong">
												<span class="wrongwords" id="wrong_words_category">请选择所属行业和产品类目！</span>
											</td>
										</tr>
									</table>
								</td>
							</tr>
							<tr>
								<td align="right" valign="top" class="list_left_box">
									<img  src="<%=path %>/images/icon_right_19x19.gif"
										width="19" height="16" align="middle" />
									<b> 信息标题</b><font color="#ff0000">*</font>
								</td>
								<td valign="top" class="list_right_box">
									<table width="100%" border="0" cellspacing="0" cellpadding="3">
										<tr>
											<td>
												<input name="_fmo.a._0.s" type="text" value="供应油动遥控船"
													maxlength="25" size="46" onblur='doOnBlur(this.name, true)'
													onfocus='doOnFocus(this.name)'
													onchange="doModifySubject(this)" maxlength="25" />
											</td>
										</tr>
									</table>
								</td>
							</tr>
							<tr>
								<td align="right" valign="top" class="list_left_box">
									<img
										src="<%=path %>/images/icon_right_19x19.gif"
										width="19" height="16" align="middle">
									&nbsp;
									<b>信息有效期</b><font color="#ff0000">*</font>
								</td>
								<td class="list_right_box">
									<div id="div_OfferExpire_normal">
										<input   type="radio" value="10" name="">
										10天
										<input   type="radio" value="10" name="">
										20天
										<input   type="radio" value="10" name="">
										1个月
										<input   type="radio" value="10" name="">
										3个月
										<input   type="radio" value="10" name="">
										6个月
									</div>
									<div id="div_OfferExpire_QUICKBUY" style="display:none">

										<table width="100%" border="0" cellspacing="2" cellpadding="2">
											<tr>
												<td width="1" valign="top">
													&nbsp;
												</td>
												<td>
													<b><span class="note"><font color="#000000">3天</font>
													</span> </b>
												</td>
											</tr>
											<tr>
												<td valign="top">
													<span class="note"><font color="#FF0000">*</font> </span>
												</td>
												<td>
													<span class="note">紧急采购的有效期默认为3天；</span>
												</td>
											</tr>
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
									<div class="pro_tips" style="text-indent:0px">
										详细填写产品属性，吸引更多客户，增加成交机会。
									</div>
								</td>
							</tr>
							<tr>
								<td colspan="2">
									<a name="flagDetail"></a> 
									<div style="padding-top:5px;" id="div_productfeature">
										<table width="100%" border="0" cellspacing="0" cellpadding="0">
											<tr>
												<td align="right" valign="top" class="list_left_box">
													<input type="hidden" id="neededFeatures_112222"
														name="neededFeatures" value="112222">
													<img id="img_right_feature112222"
														src="http://i01.c.aliimg.com/images/cn/market/myalibaba/icon_nowhitewhiteright_19x19.gif"
														width="19" height="16" align="middle">
													<b>品牌</b><font color="#FF0000">*</font>
												</td>
												<td class="list_right_box" style="padding:2px">

													<input name="feature112222" id="feature112222" type="text"
														value="" size="23" maxlength="80"
														onblur='doOnBlur(this.name, true)'
														onfocus='doOnFocus(this.name)'>

													<span style="padding-left:10px;"><span
														id="wrong_feature112222" class="s lh13 wrong"
														style="display:none; width:110px;"> <span
															class="wrongwords" id="wrong_words_feature112222">
																带<font color="red">*</font>为必填项。 </span> </span> </span>
												</td>
											</tr>
											<tr>
												<td align="right" valign="top" class="list_left_box">
													<input type="hidden" id="neededFeatures_112242"
														name="neededFeatures" value="112242">
													<img id="img_right_feature112242"
														src="http://i01.c.aliimg.com/images/cn/market/myalibaba/icon_nowhitewhiteright_19x19.gif"
														width="19" height="16" align="absmiddle">
													<b>功能</b><font color="#FF0000">*</font>
												</td>
												<td class="list_right_box" style="padding:2px">

													<select name="feature112242" maxlength="80"
														onChange="javascript:funcSelectOther(112242)"
														id="feature112242" onblur='doOnBlur(this.name, true)'
														onfocus='doOnFocus(this.name)'>
														<option value="">
															请选择
														</option>
														<option value="遥控" selected>
															遥控
														</option>
														<option value="电动">
															电动
														</option>
														<option value="发声">
															发声
														</option>
														<option value="闪光">
															闪光
														</option>
														<option value="声控">
															声控
														</option>
														<option value="太阳能">
															太阳能
														</option>
														<option value="">
															其他
														</option>
													</select>
													<span style="display: none " id="featureOther112242">
														<input name="featureSelf112242" id="featureSelf112242"
															size="14" maxlength="80" type="text" value="遥控"
															onblur='doOnBlur("feature112242", true)'
															onfocus='doOnFocusOther("feature112242")' />（请补充） </span>

													<span style="padding-left:10px;"><span
														id="wrong_feature112242" class="s lh13 wrong"
														style="display:none; width:110px;"> <span
															class="wrongwords" id="wrong_words_feature112242">
																带<font color="red">*</font>为必填项。 </span> </span> </span>
												</td>
											</tr>
											<tr>
												<td align="right" valign="top" class="list_left_box">
													<input type="hidden" id="neededFeatures_112271"
														name="neededFeatures" value="112271">
													<img id="img_right_feature112271"
														src="http://i01.c.aliimg.com/images/cn/market/myalibaba/icon_nowhitewhiteright_19x19.gif"
														width="19" height="16" align="middle">
													<b>适用年龄</b><font color="#FF0000">*</font>
												</td>
												<td class="list_right_box" style="padding:2px">

													<select name="feature112271" maxlength="80"
														onChange="javascript:funcSelectOther(112271)"
														id="feature112271" onblur='doOnBlur(this.name, true)'
														onfocus='doOnFocus(this.name)'>
														<option value="">
															请选择
														</option>
														<option value="0-36个月">
															0-36个月
														</option>
														<option value="37个月-96个月">
															37个月-96个月
														</option>
														<option value="97个月及以上">
															97个月及以上
														</option>
														<option value="其他">
															其他
														</option>
													</select>
													<span style="display: none " id="featureOther112271">
														<input name="featureSelf112271" id="featureSelf112271"
															size="14" maxlength="80" type="text" value=""
															onblur='doOnBlur("feature112271", true)'
															onfocus='doOnFocusOther("feature112271")' />（请补充） </span>

													<span style="padding-left:10px;"><span
														id="wrong_feature112271" class="s lh13 wrong"
														style="display:none; width:110px;"> <span
															class="wrongwords" id="wrong_words_feature112271">
																带<font color="red">*</font>为必填项。 </span> </span> </span>
													<a style="cursor:pointer"
														onclick="if(document.getElementById('table_more').style.display=='none'){document.getElementById('table_more').style.display='block';this.className='Htab2_on';};else{ document.getElementById('table_more').style.display = 'none';;this.className='Htab2_off';}"
														class="Htab2_off">更多属性</a>
												</td>
											</tr>

										</table>
										<table id="table_more" style="display:none" width="100%"
											border="0" cellspacing="0" cellpadding="0">
											<tr>
												<td align="right" valign="top" class="list_left_box">
													<b>型号</b>
												</td>
												<td class="list_right_box" style="padding:2px">

													<input name="feature103215" id="feature103215" type="text"
														value="" size="23" maxlength="80"
														onblur="doOnBlur(this.name, false)"
														onfocus="doOnFocus(this.name)">

												</td>
											</tr>
											<tr>
												<td align="right" valign="top" class="list_left_box">
													<b>动力</b>
												</td>
												<td class="list_right_box" style="padding:2px">

													<input name="feature102926" id="feature102926" type="text"
														value="" size="23" maxlength="80"
														onblur="doOnBlur(this.name, false)"
														onfocus="doOnFocus(this.name)">

												</td>
											</tr>
											<tr>
												<td align="right" valign="top" class="list_left_box">
													<b>材质</b>
												</td>
												<td class="list_right_box" style="padding:2px">

													<input name="feature102924" id="feature102924" type="text"
														value="" size="23" maxlength="80"
														onblur="doOnBlur(this.name, false)"
														onfocus="doOnFocus(this.name)">

												</td>
											</tr>
											<tr>
												<td align="right" valign="top" class="list_left_box">
													<b>颜色</b>
												</td>
												<td class="list_right_box" style="padding:2px">

													<input name="feature102925" id="feature102925" type="text"
														value="" size="23" maxlength="80"
														onblur="doOnBlur(this.name, false)"
														onfocus="doOnFocus(this.name)">

												</td>
											</tr>
											<tr>
												<td align="right" valign="top" class="list_left_box">
													<b>规格</b>
												</td>
												<td class="list_right_box" style="padding:2px">

													<input name="feature102927" id="feature102927" type="text"
														value="" size="23" maxlength="80"
														onblur="doOnBlur(this.name, false)"
														onfocus="doOnFocus(this.name)">

												</td>
											</tr>

										</table>

									</div>
								</td>
							</tr>

							<tr>
								<td align="right" valign="top" class="list_left_box">
									<a name="flagDetails"></a>
									<b>详细说明</b><span id="detail_star" style="display:none"><font
										color="#ff0000">*</font> </span>
									 
								</td>
								<td valign="top" class="list_right_box">
									<div id="hyperTextEditor">
										<table width="430" border="0" cellpadding="6" cellspacing="0">
											<tr>
												<td width="430" bgcolor="#F9F9F9"
													style="word-break: break-all">
													<textarea id="description" 
														style="width:430px;height:350px;display:none"
													 >				
				
													</textarea>
												</td>
											</tr>
										</table>
									</div>
									 
								</td>
							</tr>
							<tr>
								<td align="right" valign="top" class="list_left_box">
									<b>上传图片</b>&nbsp;
								</td>
								<td valign="top" class="list_right_box">
									 
									<div id="uploadpic" style="display:none"></div>
									<div id="showpic" style="display:"></div>
									<table width=" 50% " border="0" cellspacing="0" cellpadding="3">
										<tr>
											<td width="166" height="25" class="s" align="center">
												图片1
											</td>
											<td width="167" class="s" align="center">
												图片2
											</td>
											<td width="167" class="s" align="center">
												图片3
											</td>
										</tr>
										<tr>
											<td height="25" id="tdpic01" align="center">
												<img name="uploaded0"
													src="http://i05.c.aliimg.com/images/cn/market/trade/detail/detail_no_pic.gif"
													width="100" height="100">
											</td>
											<td align="center">
												<img name="uploaded1"
													src="http://i05.c.aliimg.com/images/cn/market/trade/detail/detail_no_pic.gif"
													width="100" height="100">
											</td>
											<td align="center">
												<img name="uploaded2"
													src="http://i05.c.aliimg.com/images/cn/market/trade/detail/detail_no_pic.gif"
													width="100" height="100">
											</td>
										</tr>
										<tr>
											<td height="35" align="center">
												<input onclick="table_display2('table100');" type="button"
													value="上传" name="uploadPicBtn0">
												&nbsp;
												<input onclick="delete_picture('0');" type="button"
													value="删除" name="delPicBtn0">
											</td>
											<td align="center">
												<input onclick="table_display('table101');" type="button"
													value="上传" name="uploadPicBtn1">
												&nbsp;
												<input onclick="delete_picture('1');" type="button"
													value="删除" name="delPicBtn1">
											</td>
											<td align="center">
												<input onclick="table_display('table102');" type="button"
													value="上传" name="uploadPicBtn2">
												&nbsp;
												<input onclick="delete_picture('2');" type="button"
													value="删除" name="delPicBtn2">
											</td>
										</tr>
									</table> 
									<br />
									<table width="100%" border="0" cellspacing="0" cellpadding="3">
										<tr id="normal_picture">
											<td valign="top" class="s lh13 normal">
												图片格式jpg或gif，大小不超过200k。
												<br>
												<div id="imageHelper1" class="s2">
													<font color="#ff0000">推荐使用免费工具“图片助手”，自动处理图片格式及大小并上传！</font><a
														href="javascript:void(0);" onclick="popPicHelper2('100');">立即使用</a>&nbsp;&nbsp;&nbsp;
													<a href="javascript:void(0);"
														onclick="window.open('http://info.china.alibaba.com/news/detail/v-d1000938177.html?tracelog=chinagas_help&tracelog=fb_picture_help');">帮助</a>
												</div>
											</td>
										</tr>
									</table> 
								</td>
							</tr> 
						</table>
						<table id="tab_trade_productfeature" width="100%" border="0"
							cellspacing="0" cellpadding="0">
							<tr>
								<td>
									<div class="FormBox">
										<div class="FTitle">
											交易条件
										</div>
									</div>
									 
								</td>
							</tr>
						</table>
						<table width="100%" cellpadding="0" cellspacing="0"
							class="list_box">
							<tr id="tr_trade_productfeature">
								<td colspan="2" valign="top" style="padding:0px">
									<a name="tradeDetail"></a>
				 
									<div id="div_trade_productfeature">
										<table width="100%" border="0" cellspacing="0" cellpadding="0">
											<tr>
												<td align="right" valign="top" class="list_left_box"></td>
												<td valign="top" class="list_right_box">
													<table width="100%" border="0" cellspacing="0"
														cellpadding="0" style="margin:6px 0px 6px 0px">
														<tr>
															<td style="padding:0px">
																<table width="100%" align="center" cellpadding="0"
																	cellspacing="0" class="s lh13 normal"
																	style="padding:0px">
																	<tr>
																		<td valign="middle" id="trade_prompt"
																			style="padding:0px">
																			1、如买家直接按标价购买，您必须按照交易条件履约，否则视为违约；
																			<br />
																			2、买家如需还价，您可在买家出价后，到阿里助手“交易管理”中修改价格，达成最后交易。
																		</td>
																	</tr>
																</table>
															</td>
														</tr>
													</table>
												</td>
											</tr>
											<tr>
												<td align="right" valign="top" height="25"
													class="list_left_box">
													<img id="img_right_feature59238"
														src="http://i01.c.aliimg.com/images/cn/market/myalibaba/icon_grayright_19x19.gif"
														width="19" height="16" align="absmiddle">
													<b>计量单位</b>
												</td>
												<td class="list_right_box">
													<input type="hidden" id="fieldFlagName_unit"
														name="fieldFlagName_unit" value="feature59238" />


													<input class="tpf_input" name="feature59238"
														id="feature59238" type="text" value="" size="23"
														maxlength="12"
														onblur="doOnBlur(this.name, false,'trade_productfeature');checkTradeCondition(false, this)"
														onfocus="doOnFocusOfTrade(this.name, 'trade_productfeature')"
														onchange="changeTradeUnit()">
													<span style="padding-left:10px"><span
														id="wrong_feature59238" class="s lh13 wrong"
														style="display:none; width:110px;"> <span
															class="wrongwords" id="wrong_words_feature59238">
																带<font color="red">*</font>为必填项。 </span> </span> </span>
													<span style="padding-left:10px"><span
														id="trade_wrong_feature59238" class="s lh13 wrong"
														style="display:none; width:260px;"> <br> <font
															color="#999999">请填写与单价相符的计量单位，如只、件、箱等</font> </span> </span>
												</td>
											</tr>
											<tr>
												<td align="right" valign="top" height="25"
													class="list_left_box">
													<img id="img_right_feature59240"
														src="http://i01.c.aliimg.com/images/cn/market/myalibaba/icon_grayright_19x19.gif"
														width="19" height="16" align="absmiddle">
													<b>产品单价</b>
												</td>
												<td class="list_right_box">
													<input type="hidden" id="fieldFlagName_price"
														name="fieldFlagName_price" value="feature59240" />


													<input class="tpf_input" name="feature59240"
														id="feature59240" type="text" value="" size="23"
														maxlength="12"
														onblur="doOnBlur(this.name, false,'trade_productfeature');checkTradeCondition(false, this)"
														onfocus="doOnFocusOfTrade(this.name, 'trade_productfeature')">
													元/
													<span id="trade_unit_price">单位</span>
													<span style="padding-left:10px"><span
														id="wrong_feature59240" class="s lh13 wrong"
														style="display:none; width:110px;"> <span
															class="wrongwords" id="wrong_words_feature59240">
																带<font color="red">*</font>为必填项。 </span> </span> </span>
													<span style="padding-left:10px"><span
														id="trade_wrong_feature59240" class="s lh13 wrong"
														style="display:none; width:260px;"> <br> <font
															color="#999999">请您填写不含运费的价格</font> </span> </span>
												</td>
											</tr>
											<tr>
												<td align="right" valign="top" height="25"
													class="list_left_box">
													<img id="img_right_feature59239"
														src="http://i01.c.aliimg.com/images/cn/market/myalibaba/icon_grayright_19x19.gif"
														width="19" height="16" align="absmiddle">
													<b>最小起订量</b>
												</td>
												<td class="list_right_box">
													<input type="hidden" id="fieldFlagName_beginamount"
														name="fieldFlagName_beginamount" value="feature59239" />


													<input class="tpf_input" name="feature59239"
														id="feature59239" type="text" value="" size="23"
														maxlength="12"
														onblur="doOnBlur(this.name, false,'trade_productfeature');checkTradeCondition(false, this)"
														onfocus="doOnFocusOfTrade(this.name, 'trade_productfeature')">
													<span id="trade_unit_beginamount">单位</span>
													<span style="padding-left:10px"><span
														id="wrong_feature59239" class="s lh13 wrong"
														style="display:none; width:110px;"> <span
															class="wrongwords" id="wrong_words_feature59239">
																带<font color="red">*</font>为必填项。 </span> </span> </span>
													<span style="padding-left:10px"><span
														id="trade_wrong_feature59239" class="s lh13 wrong"
														style="display:none; width:260px;"> </span> </span>
												</td>
											</tr>
											<tr>
												<td align="right" valign="top" height="25"
													class="list_left_box">
													<img id="img_right_feature59241"
														src="http://i01.c.aliimg.com/images/cn/market/myalibaba/icon_grayright_19x19.gif"
														width="19" height="16" align="absmiddle">
													<b>供货总量</b>
												</td>
												<td class="list_right_box">
													<input type="hidden" id="fieldFlagName_amount"
														name="fieldFlagName_amount" value="feature59241" />


													<input class="tpf_input" name="feature59241"
														id="feature59241" type="text" value="" size="23"
														maxlength="12"
														onblur="doOnBlur(this.name, false,'trade_productfeature');checkTradeCondition(false, this)"
														onfocus="doOnFocusOfTrade(this.name, 'trade_productfeature')">
													<span id="trade_unit_amount">单位</span>
													<span style="padding-left:10px"><span
														id="wrong_feature59241" class="s lh13 wrong"
														style="display:none; width:110px;"> <span
															class="wrongwords" id="wrong_words_feature59241">
																带<font color="red">*</font>为必填项。 </span> </span> </span>
													<span style="padding-left:10px"><span
														id="trade_wrong_feature59241" class="s lh13 wrong"
														style="display:none; width:260px;"> </span> </span>
												</td>
											</tr>
											<tr>
												<td align="right" valign="top" height="25"
													class="list_left_box">
													<img id="img_right_feature59242"
														src="http://i01.c.aliimg.com/images/cn/market/myalibaba/icon_grayright_19x19.gif"
														width="19" height="16" align="absmiddle">
													<b>发货期限</b>
												</td>
												<td class="list_right_box">
													<input type="hidden" id="fieldFlagName_sendlimit"
														name="fieldFlagName_sendlimit" value="feature59242" />
													自买家付款之日起

													<select name="feature59242" id="feature59242"
														maxlength="80"
														onChange="javascript:funcSelectOther(59242)"
														onblur="doOnBlur(this.name, false,'trade_productfeature');checkTradeCondition(false, this)"
														onfocus="doOnFocusOfTrade(this.name, 'trade_productfeature')">
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
														<option value="10" selected>
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
													<span style="padding-left:10px"><span
														id="wrong_feature59242" class="s lh13 wrong"
														style="display:none; width:110px;"> <span
															class="wrongwords" id="wrong_words_feature59242">
																带<font color="red">*</font>为必填项。 </span> </span> </span>
													<span style="padding-left:10px"><span
														id="trade_wrong_feature59242" class="s lh13 wrong"
														style="display:none; width:260px;"> </span> </span>
												</td>
											</tr>
											<tr>
												<td align="right" valign="top" height="25"
													class="list_left_box">
													<img id="img_right_feature116330"
														src="http://i01.c.aliimg.com/images/cn/market/myalibaba/icon_grayright_19x19.gif"
														width="19" height="16" align="absmiddle">
													<b>供应商类型</b><font color="#FF0000">*</font>
												</td>
												<td class="list_right_box">
													<input type="hidden" id="fieldFlagName_providertype"
														name="fieldFlagName_providertype" value="feature116330" />
													我是该产品的

													<select name="feature116330" id="feature116330"
														maxlength="80"
														onChange="javascript:funcSelectOther(116330)"
														onblur="doOnBlur(this.name, true,'trade_productfeature');checkTradeCondition(false, this)"
														onfocus="doOnFocusOfTrade(this.name, 'trade_productfeature')">
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
													<span style="padding-left:10px"><span
														id="wrong_feature116330" class="s lh13 wrong"
														style="display:none; width:110px;"> <span
															class="wrongwords" id="wrong_words_feature116330">
																带<font color="red">*</font>为必填项。 </span> </span> </span>
													<span style="padding-left:10px"><span
														id="trade_wrong_feature116330" class="s lh13 wrong"
														style="display:none; width:260px;"> </span> </span>
												</td>
											</tr>
										</table>

									</div>
								</td>
							</tr>
							<tr>
								<td>
									<table width="100%" border="0" cellspacing="0" cellpadding="0">
										<tr id="com_form">
											<td align="right" valign="top" height="13"
												class="list_left_box" style="padding-top:4px">
												<img
													src="http://i01.c.aliimg.com/images/cn/market/myalibaba/icon_grayright_19x19.gif"
													width="19" height="16" align="middle" />
												&nbsp;
												<b>经销批发</b><font color="#ff0000">*</font>
											</td>
											<td valign="top" class="list_right_box">
												<input type="radio" name="rBizType" value="checkbox"
													onclick="changeBizType('Y')">
												是&nbsp;
												<input type="radio" name="rBizType" value="checkbox"
													onclick="changeBizType('N')">
												否
												<table width="100%" align="left" cellpadding="0"
													cellspacing="0">
													<tr>
														<td class="s lh13 normal">
															<span style="padding-top:3px;display:inline-block">经销批发：从事产品经销、批发、分销的商家。</span>
														</td>
													</tr>
												</table>
											</td>
										</tr>
									</table>
								</td>
							</tr>

						</table>
						<br />
						<table width="100%" border="0" cellspacing="0" cellpadding="0">
							<tr>
								<td>
									<div class="FormBox">
										<div class="FTitle">
											联系方式的确认与修改
										</div>
									</div>
								</td>
							</tr>
						</table>
						<table width="100%" border="0" cellpadding="0" cellspacing="0"
							class="list_box">
							<tr>
								<td rowspan="2" class="list_left_box">
									<b> </b><b></b>
								</td>
								<td>
									<div class="s lh13 normal s2">
										<a name="aegisAlipay5"></a>请确认您的联系方式，如有误将无法通过审核！
										<a name="aegisAlipay6" /><a href="#" target="_blank">点此修改</a>
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
									<div class="leftShadow" id="leftShadow"></div>
									<div class="bottomShadow"></div>
								</td>
							</tr>
						</table>
						<br />
						<br />
						<table width="99%" border="0" cellspacing="0" cellpadding="0">
							<tr>
								<td align="center" class="C lh15" id="serviceTerm"
									style="display:none">
									<a target="_blank"
										href="http://page.china.alibaba.com/shtml/static/ab_xy.html"
										class="S">阅读阿里巴巴服务条款</a>
								</td>
							</tr>
							<tr>
								<td align="center" class="C spc16">
									<input type="button" name="postsubmit"
										onmousedown="javascript:postOffer(bizTypeVar)"
										value="同意服务条款，我要发布" class="submitButton" />
									<a href="#"
										onclick="previewPost(document.mainform);return false;">预览这条信息</a>
								</td>
							</tr>
						</table>
						<input type="hidden" name="isTrade" value="">
						<br />
					</form>
					<br />
					<br />
				</td>
			</tr>
		</table>
	</body>
</html>

