<%@ page contentType="text/html; charset=gbk"%>
<%
	String path = request.getContextPath();
%> 
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
		<title></title> 
	    <script src="<%=path%>/js/prototype.js"></script> 
	    <script type="text/javascript">
    	 
    	function onChangeTopCategory(){
    		alert('ok');
    		var url = "<%=path%>/product.do?method=productCategory";
    		alert(url);
    		var pars = "node=1101";
    		alert(pars);
		    new Ajax.Request(url,{method:'post', parameters:pars,onComplete:showChecked});
   
	  	}
	    function showChecked(originalRequest){
			var result= originalRequest.responseText;	  		
			alert('ok');
	  	} 
	  	function onChange2Category(){
    		alert('ok');
    		var url = "<%=path%>/product.do?method=productCategory";
    		alert(url);
    		var pars = "node=1101";
    		alert(pars);
		    new Ajax.Request(url,{method:'post', parameters:pars,onComplete:showChecked});
    
	  	}
	    function show2Checked(originalRequest){
			var result= originalRequest.responseText;	  		
			alert('ok');
	  	} 
	  	function onChange3Category(){
    		alert('ok');
    		var url = "<%=path%>/product.do?method=productCategory";
    		alert(url);
    		var pars = "node=1101";
    		alert(pars);
		    new Ajax.Request(url,{method:'post', parameters:pars,onComplete:showChecked});
   
	  	}
	    function show4Checked(originalRequest){
			var result= originalRequest.responseText;	  		
			alert('ok');
	  	} 
    </script>
	</head>
	<body>
		<table width="100%" border="0" cellpadding="0" cellspacing="0" >
			<tr>
				<td>
					<form name="mainform" method="post"> 
						<table width="100%" cellpadding="0" cellspacing="0"  >
							<tr>
								<td colspan="2">
									 ������Ϣ 
								</td>
							</tr> 
							<tr>
								<td align="right" valign="top" >  
									<b>��Ϣ����</b><font color="#ff0000">*</font>
								</td>
								<td>
									<input type="radio" value="SALE" name="" checked onclick="">
									��Ӧ
									<input type="radio" value="BUY" name="" onclick="">
									��
									<input type="radio" value="QUICKBUY" name="" 	onclick="">
									������
								</td>
							</tr> 
							<tr>
								<td align="right" valign="top" > 
									<b>��Ʒ����</b><font color="#ff0000">*</font>
								</td>
								<td valign="top"  >
									<table width="100%" border="0" cellpadding="3" cellspacing="0">
										<tr>
											<td valign="top" >
												<input name="" id="" type="text"  value="�Ͷ�ң�ش�" maxLength="16" size="20" /> 
											</td>
										</tr>
										<tr >
											<td valign="top" >
												��Ʒ������������ֹ���ͺš�Ʒ�Ƶ����ݡ�
											</td>
										</tr> 
									</table> 
								</td>
							</tr>
							<tr>
								<td align="right" valign="top"  >
									 
									<b> ��Ʒ������Ŀ</b><font color="#ff0000">*</font>

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
												<span class="wrongwords" id="wrong_words_category">��ѡ��������ҵ�Ͳ�Ʒ��Ŀ��</span>
											</td>
										</tr>
									</table>
								</td>
							</tr>
							<tr>
								<td align="right" valign="top"  >
									 
									<b> ��Ϣ����</b><font color="#ff0000">*</font>
								</td>
								<td valign="top"  >
									<table width="100%" border="0" cellspacing="0" cellpadding="3">
										<tr>
											<td>
												<input name="" type="text" value="��Ӧ�Ͷ�ң�ش�"
													maxlength="25" size="46"  maxlength="25" />
											</td>
										</tr>
									</table>
								</td>
							</tr>
							<tr>
								<td align="right" valign="top"  >
									 
									<b>��Ϣ��Ч��</b><font color="#ff0000">*</font>
								</td>
								<td >
									<div>
										<input   type="radio" value="10" name="">
										10��
										<input   type="radio" value="10" name="">
										20��
										<input   type="radio" value="10" name="">
										1����
										<input   type="radio" value="10" name="">
										3����
										<input   type="radio" value="10" name="">
										6����
									</div>
									<div id="div_OfferExpire_QUICKBUY" style="display:none">

										<table width="100%" border="0" cellspacing="2" cellpadding="2">
											<tr>
												<td width="1" valign="top">
													&nbsp;
												</td>
												<td>
													<b><span class="note"><font color="#000000">3��</font>
													</span> </b>
												</td>
											</tr>
											<tr>
												<td valign="top">
													<span class="note"><font color="#FF0000">*</font> </span>
												</td>
												<td>
													<span class="note">�����ɹ�����Ч��Ĭ��Ϊ3�죻</span>
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
									<div class="pro_tips" style="text-indent:0px">
										��ϸ��д��Ʒ���ԣ���������ͻ������ӳɽ����ᡣ
									</div>
								</td>
							</tr>
							<tr>
								<td colspan="2"> 
									<div style="padding-top:5px;" id="div_productfeature">
										<table width="100%" border="0" cellspacing="0" cellpadding="0">
											<tr>
												<td align="right" valign="top"  > 
													<b>Ʒ��</b><font color="#FF0000">*</font>
												</td>
												<td   style="padding:2px">

													<input name="" id="" type="text"
														value="" size="23" maxlength="80" > 
													<span style="padding-left:10px;">
														<span id=""   style="display:none; width:110px;"> 
															<span id="">
																��<font color="red">*</font>Ϊ�����
														    </span> 
														</span>
													 </span>
												</td>
											</tr>
											<tr>
												<td align="right" valign="top" class="list_left_box"> 
													<b>����</b><font color="#FF0000">*</font>
												</td>
												<td style="padding:2px"> 
													<select name="feature112242" maxlength="80"  >
														<option value="">
															��ѡ��
														</option>
														<option value="ң��" selected>
															ң��
														</option>
														<option value="�綯">
															�綯
														</option>
														<option value="����">
															����
														</option>
														<option value="����">
															����
														</option>
														<option value="����">
															����
														</option>
														<option value="̫����">
															̫����
														</option>
														<option value="">
															����
														</option>
													</select>
													<span style="display: none " id="featureOther112242">
														<input name="featureSelf112242" id="featureSelf112242"
															size="14" maxlength="80" type="text" value="ң��"
															onblur='doOnBlur("feature112242", true)'
															onfocus='doOnFocusOther("feature112242")' />���벹�䣩 </span>

													<span style="padding-left:10px;"><span
														id="wrong_feature112242" class="s lh13 wrong"
														style="display:none; width:110px;"> <span
															class="wrongwords" id="wrong_words_feature112242">
																��<font color="red">*</font>Ϊ����� </span> </span> </span>
												</td>
											</tr>
											<tr>
												<td align="right" valign="top"  > 
													<b>��������</b><font color="#FF0000">*</font>
												</td>
												<td class="list_right_box" style="padding:2px">

													<select name="feature112271" maxlength="80" 
														id="feature112271"   >
														<option value="">
															��ѡ��
														</option>
														<option value="0-36����">
															0-36����
														</option>
														<option value="37����-96����">
															37����-96����
														</option>
														<option value="97���¼�����">
															97���¼�����
														</option>
														<option value="����">
															����
														</option>
													</select>
													<span style="display: none " id="featureOther112271">
														<input name="featureSelf112271" id="featureSelf112271"
															size="14" maxlength="80" type="text" value=""
															  />���벹�䣩 </span>

													<span style="padding-left:10px;"><span
														id="wrong_feature112271" class="s lh13 wrong"
														style="display:none; width:110px;"> <span
															  id="wrong_words_feature112271">
																��<font color="red">*</font>Ϊ����� </span> </span> </span>
													<a style="cursor:pointer"
														onclick="if(document.getElementById('table_more').style.display=='none'){document.getElementById('table_more').style.display='block';this.className='Htab2_on';};else{ document.getElementById('table_more').style.display = 'none';;this.className='Htab2_off';}"
														 >��������</a>
												</td>
											</tr> 
										</table>
										<table id="table_more" style="display:none" width="100%"
											border="0" cellspacing="0" cellpadding="0">
											<tr>
												<td align="right" valign="top" class="list_left_box">
													<b>�ͺ�</b>
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
													<b>����</b>
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
													<b>����</b>
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
													<b>��ɫ</b>
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
													<b>���</b>
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
									<b>��ϸ˵��</b><span id="detail_star" style="display:none"><font
										color="#ff0000">*</font> </span>
									 
								</td>
								<td valign="top" class="list_right_box">
									<div id="hyperTextEditor">
										<table width="430" border="0" cellpadding="6" cellspacing="0">
											<tr>
												<td width="430" bgcolor="#F9F9F9"
													style="word-break: break-all">
													<textarea id="description" 
														style="width:430px;height:350px;display:none"  >				
				
													</textarea>
												</td>
											</tr>
										</table>
									</div>
									 
								</td>
							</tr>
							<tr>
								<td align="right" valign="top" class="list_left_box">
									<b>�ϴ�ͼƬ</b>&nbsp;
								</td>
								<td valign="top" class="list_right_box">
									 
									<div id="uploadpic" style="display:none"></div>
									<div id="showpic" style="display:"></div>
									<table width=" 50% " border="0" cellspacing="0" cellpadding="3">
										<tr>
											<td width="166" height="25" class="s" align="center">
												ͼƬ1
											</td>
											<td width="167" class="s" align="center">
												ͼƬ2
											</td>
											<td width="167" class="s" align="center">
												ͼƬ3
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
													value="�ϴ�" name="uploadPicBtn0">
												&nbsp;
												<input onclick="delete_picture('0');" type="button"
													value="ɾ��" name="delPicBtn0">
											</td>
											<td align="center">
												<input onclick="table_display('table101');" type="button"
													value="�ϴ�" name="uploadPicBtn1">
												&nbsp;
												<input onclick="delete_picture('1');" type="button"
													value="ɾ��" name="delPicBtn1">
											</td>
											<td align="center">
												<input onclick="table_display('table102');" type="button"
													value="�ϴ�" name="uploadPicBtn2">
												&nbsp;
												<input onclick="delete_picture('2');" type="button"
													value="ɾ��" name="delPicBtn2">
											</td>
										</tr>
									</table> 
									<br />
									<table width="100%" border="0" cellspacing="0" cellpadding="3">
										<tr id="normal_picture">
											<td valign="top" class="s lh13 normal">
												ͼƬ��ʽjpg��gif����С������200k��
												<br>
												<div id="imageHelper1" class="s2">
													<font color="#ff0000">�Ƽ�ʹ����ѹ��ߡ�ͼƬ���֡����Զ�����ͼƬ��ʽ����С���ϴ���</font><a
														href="javascript:void(0);" onclick="popPicHelper2('100');">����ʹ��</a>&nbsp;&nbsp;&nbsp;
													<a href="javascript:void(0);"
														onclick="window.open('http://info.china.alibaba.com/news/detail/v-d1000938177.html?tracelog=chinagas_help&tracelog=fb_picture_help');">����</a>
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
											��������
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
												<td align="right" valign="top" height="25"  >
												 
													<b>������λ</b>
												</td>
												<td class="list_right_box"> 
													<input class="tpf_input" name="feature59238"
														id="feature59238" type="text" value="" size="23"
														maxlength="12"  >
													<span style="padding-left:10px"><span
														id="wrong_feature59238" class="s lh13 wrong"
														style="display:none; width:110px;"> <span
															class="wrongwords" id="wrong_words_feature59238">
																��<font color="red">*</font>Ϊ����� </span> </span> </span>
													<span style="padding-left:10px"><span
														id="trade_wrong_feature59238" class="s lh13 wrong"
														style="display:none; width:260px;"> <br> <font
															color="#999999">����д�뵥������ļ�����λ����ֻ���������</font> </span> </span>
												</td>
											</tr>
											<tr>
												<td align="right" valign="top" height="25"
													class="list_left_box">
													 <b>��Ʒ����</b>
												</td>
												<td class="list_right_box">
													 <input class="tpf_input" name="feature59240"
														id="feature59240" type="text" value="" size="23"
														maxlength="12"
														 >
													Ԫ/
													<span id="trade_unit_price">��λ</span>
													<span style="padding-left:10px"><span
														id="wrong_feature59240" class="s lh13 wrong"
														style="display:none; width:110px;"> <span
															class="wrongwords" id="wrong_words_feature59240">
																��<font color="red">*</font>Ϊ����� </span> </span> </span>
													<span style="padding-left:10px"><span
														id="trade_wrong_feature59240" class="s lh13 wrong"
														style="display:none; width:260px;"> <br> <font
															color="#999999">������д�����˷ѵļ۸�</font> </span> </span>
												</td>
											</tr>
											<tr>
												<td align="right" valign="top" height="25"  > 
													<b>��С����</b>
												</td>
												<td class="list_right_box">
												 	 <input class="tpf_input" name="feature59239"
														id="feature59239" type="text" value="" size="23"
														maxlength="12"
														 >
													<span id="trade_unit_beginamount">��λ</span>
													<span style="padding-left:10px"><span
														id="wrong_feature59239" class="s lh13 wrong"
														style="display:none; width:110px;"> <span
															class="wrongwords" id="wrong_words_feature59239">
																��<font color="red">*</font>Ϊ����� </span> </span> </span>
													<span style="padding-left:10px"><span
														id="trade_wrong_feature59239" class="s lh13 wrong"
														style="display:none; width:260px;"> </span> </span>
												</td>
											</tr>
											<tr>
												<td align="right" valign="top" height="25"
													 > 
													<b>��������</b>
												</td>
												<td class="list_right_box"> 
													<input class="tpf_input" name="feature59241"
														id="feature59241" type="text" value="" size="23"
														maxlength="12"
														 >
													<span id="trade_unit_amount">��λ</span>
													<span style="padding-left:10px"><span
														id="wrong_feature59241" class="s lh13 wrong"
														style="display:none; width:110px;"> <span
															class="wrongwords" id="wrong_words_feature59241">
																��<font color="red">*</font>Ϊ����� </span> </span> </span>
													<span style="padding-left:10px"><span
														id="trade_wrong_feature59241" class="s lh13 wrong"
														style="display:none; width:260px;"> </span> </span>
												</td>
											</tr>
											<tr>
												<td align="right" valign="top" height="25"
													 >
												 	<b>��������</b>
												</td>
												<td class="list_right_box">
												 		����Ҹ���֮����

													<select name="feature59242" id="feature59242"
														maxlength="80"
														onChange="javascript:funcSelectOther(59242)"
														onblur="doOnBlur(this.name, false,'trade_productfeature');checkTradeCondition(false, this)"
														onfocus="doOnFocusOfTrade(this.name, 'trade_productfeature')">
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
													���ڷ���
													<span style="padding-left:10px"><span
														id="wrong_feature59242" class="s lh13 wrong"
														style="display:none; width:110px;"> <span
															class="wrongwords" id="wrong_words_feature59242">
																��<font color="red">*</font>Ϊ����� </span> </span> </span>
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
													<b>��Ӧ������</b><font color="#FF0000">*</font>
												</td>
												<td class="list_right_box">
													 
													���Ǹò�Ʒ��

													<select name="feature116330" id="feature116330"
														maxlength="80"
														onChange="javascript:funcSelectOther(116330)"
														onblur="doOnBlur(this.name, true,'trade_productfeature');checkTradeCondition(false, this)"
														onfocus="doOnFocusOfTrade(this.name, 'trade_productfeature')">
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
													<span style="padding-left:10px"><span
														id="wrong_feature116330" class="s lh13 wrong"
														style="display:none; width:110px;"> <span
															class="wrongwords" id="wrong_words_feature116330">
																��<font color="red">*</font>Ϊ����� </span> </span> </span>
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
												<b>��������</b><font color="#ff0000">*</font>
											</td>
											<td valign="top" class="list_right_box">
												<input type="radio" name="rBizType" value="checkbox"
													onclick="changeBizType('Y')">
												��&nbsp;
												<input type="radio" name="rBizType" value="checkbox"
													onclick="changeBizType('N')">
												��
												<table width="100%" align="left" cellpadding="0"
													cellspacing="0">
													<tr>
														<td class="s lh13 normal">
															<span style="padding-top:3px;display:inline-block">�������������²�Ʒ�������������������̼ҡ�</span>
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
											��ϵ��ʽ��ȷ�����޸�
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
										<a name="aegisAlipay5"></a>��ȷ��������ϵ��ʽ���������޷�ͨ����ˣ�
										<a name="aegisAlipay6" /><a href="#" target="_blank">����޸�</a>
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
										class="S">�Ķ�����Ͱͷ�������</a>
								</td>
							</tr>
							<tr>
								<td align="center" class="C spc16">
									<input type="button" name="postsubmit"
										onmousedown="javascript:postOffer(bizTypeVar)"
										value="ͬ����������Ҫ����" class="submitButton" />
									<a href="#"
										onclick="previewPost(document.mainform);return false;">Ԥ��������Ϣ</a>
								</td>
							</tr>
						</table> 
						<br />
					</form>
					<br />
					<br />
				</td>
			</tr>
		</table>
	</body>
</html>

