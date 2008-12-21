<%@ page contentType="text/html; charset=gbk"%>
<%
String path = request.getContextPath();
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
	<head>

		<title>product</title>
		<link rel="shortcut icon" href="http://i02.c.aliimg.com/favicon.ico">
		<meta http-equiv="Content-Type" content="text/html; charset=x-gbk">
		<meta name="description" content="">
		<meta name="keywords" content="">
		<script language="JavaScript" src="product_files/aliclick.js"></script>  
		<script type="text/javascript"
			src="<%=path%>/user/product/product_files/search.js" charset="gb2312"></script>
		<script type="text/javascript"
			src="<%=path%>/user/product/product_files/AlicnTree.js"></script>
		<link rel="stylesheet" rev="stylesheet"
			href="<%=path%>/user/product/product_files/AlicnTree.css"
			type="text/css">
		<link rel="stylesheet" rev="stylesheet"
			href="<%=path%>/user/product/product_files/myali_search_v02.css"
			type="text/css">
		<link rel="stylesheet" rev="stylesheet"
			href="<%=path%>/user/product/product_files/mainframe.css"
			type="text/css">
		<link rel="stylesheet" rev="stylesheet"
			href="<%=path%>/user/product/product_files/content.css"
			type="text/css">
	</head>
	<body> 
		<script>
		function initTipBoxHeight(){
    				}
	   </script>
 		<link rel="stylesheet" rev="stylesheet"
			href="<%=path%>/user/product/product_files/myalibaba.css"
			type="text/css"> 
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
		<script language="JavaScript">
          	   var isBizTypeSet = true;
      
      function setMixWholesale(obj){
        if(obj == null || obj == undefined){
		    return;
		}
        var bizTypeObj = document.getElementById("bizTypeSet");
	    var bizType = document.getElementById("com_form");
		var mixWholesaleObj = document.getElementById("mixWholesale");
		var supportHunpi = document.getElementById("support_hunpi");
		var wrongwordHunpi = document.getElementById("wrongword_hunpi");
    	//选中了支持混批，就不用选择经营模式了
		if(obj.checked == true){
			if(bizType){
			    bizType.style.display="none";
			}
    		if(supportHunpi){
				supportHunpi.style.display = "";
			}
			mixWholesaleObj.value = "Y";
    	}else{
		    
			if(bizType){
				if(bizTypeObj.value == "R"){
					bizType.style.display = "none";
				}
				else{
					bizType.style.display = "";
				}
			}
    		if(supportHunpi){
				supportHunpi.style.display = "none";
			}
			if(wrongwordHunpi){
				wrongwordHunpi.style.display = "none";
			}
			mixWholesaleObj.value = "N";
    	}
     }
	 
	 	 function shouldSetBizTypeWhenChangeType(bizType){
	 	if(bizType == "SALE" || bizType == "SALE_2805" || bizType == "SALE_28" || bizType == "SALE_51" || bizType == "WHOLESALE"){
			return !isBizTypeSet;
			
		}
		else{
		    return false;
		}
	 }
	 
	 	 function selectBizTypeWhenChangeType(bizType){
	 	var bizTypeSet = document.getElementById("bizTypeSet");
	    var bizTypeInput = document.getElementById("com_form");
		if(shouldSetBizTypeWhenChangeType(bizType)){
			
    		if(bizTypeInput){
				bizTypeInput.style.display = "";
			}
			if(bizTypeSet){
				bizTypeSet.value = "";
			}
    	}
    	else{
			if(bizTypeInput){
				bizTypeInput.style.display = "none";
			}
    	 	if(bizTypeSet){
				bizTypeSet.value = "R";
			}
    	}		
	 }
	 
	 	 function popwin(theurl)
	 {
		window.open(theurl, '', 'height=570, width=510, top=50, left=200, toolbar=no, menubar=no, scrollbars=yes, resizable=yes,location=no, status=no');
	 }
</script>
		<script language="JavaScript"
			src="<%=path%>/user/product/product_files/AutoMatchScript.js"></script>
		<script language="JavaScript">aliclick(null,'?tracelog=fb_onestep_one');</script> 
		<script language="JavaScript">

			var isEditVar = "";
			var isTradeVar = "";
			var isTBDInfoCanChange = ""
			var isFreeMember = "false";
			var isPostSearchVar = "";
			var categoryNameVar = "";
			
			var keywordsObj = "_fmo.a._0.k";
			var typeObj = "SALE";
			var typeKey = "_fmo.a._0.t";
			
			var subjectObj = "_fmo.a._0.s";
			var detailsObj = "_fmo.a._0.d";
			var aegisAlipayObj = "_fmo.a._0.ae";
			var categoryId1Obj = "_fmo.a._0.c";
			var categoryId1Value = "1033669";
			
			var businessSearch = "http://search.china.alibaba.com/search/business_search.htm";
			var showProductMarketTraceLog = "auction_tppost_quotation";
			var defaultKeyWordsValue = "勿填规格、型号、品牌等";
		</script>
		<script language="JavaScript" type="text/javascript">
	var baseImgPath = "http://i04.c.aliimg.com/images/cn/market/myalibaba";

	//禁止文字拖拉
	document.ondragstart = function(){
	    return false;
	}
	
	function showOptional(obj){
		if(document.getElementById('table_more').style.display=='none'){
			document.getElementById('table_more').style.display='block';
			obj.className='Htab2_on';
		};
		else{ document.getElementById('table_more').style.display = 'none';;obj.className='Htab2_off';}
	}
	
	function doOnBlurCommon(objName, isChecked){
	    doOnBlurCommon(objName, isChecked, false);
	}
	function doOnBlurCommon(objName, isChecked, allwayError){
	    var isWrong = allwayError;
	    if (isChecked && !allwayError){
	        isWrong = checkFieldValid(objName);
	    }
	    if(isWrong){
	        //去掉打勾图片
	        var rightImagObj = document.getElementById("img_right_"+objName);
	        if (rightImagObj!=null){
	            if (objName.indexOf("feature")==-1){
	                rightImagObj.src = "http://i01.c.aliimg.com/images/cn/market/myalibaba/icon_grayright_19x19.gif";
	            }else{
	                rightImagObj.src = "http://i01.c.aliimg.com/images/cn/market/myalibaba/icon_nowhitewhiteright_19x19.gif";
	            }
	        }
	        if (objName.indexOf("feature")!=-1){
	            objName = "detail";
	        }
	        var trObj = document.all("normal_" + objName);
	        if(trObj != null && typeof(trObj) == "object")
	            trObj.style.display="none";
	        var trObj = document.all("awake_" + objName);
	        if(trObj != null && typeof(trObj) == "object")
	            trObj.style.display="none";
	        var trObj = document.all("right_" + objName);
	        if(trObj != null && typeof(trObj) == "object")
	            trObj.style.display="none";
	        var trObj = document.all("img_" + objName);
	        if(trObj != null && typeof(trObj) == "object")
	            trObj.style.display="none";
	        var trObj = document.all("wrong_" + objName);
	        if(trObj != null && typeof(trObj) == "object")
	            trObj.style.display="";
	        var trObj = document.getElementById("accurateMatchInfo");
	        if (trObj != null && typeof(trObj) == "object")
	            trObj.style.display = "none";

	        if (objName == "detail"){
	            var rightImagObj = document.getElementById("img_right_detail");
	            if (rightImagObj!=null){
	                rightImagObj.src = "http://i01.c.aliimg.com/images/cn/market/myalibaba/icon_grayright_19x19.gif";
	            }
	        }
	        return true;
	    }else{
	        //显示打勾图片
	        if (isChecked){
		        var rightImagObj = document.getElementById("img_right_"+objName);
		        if (rightImagObj!=null){
		            rightImagObj.src = "http://i01.c.aliimg.com/images/cn/member/icon_right_19x19.gif";
		        }
		    }
		    if (objName.indexOf("feature")!=-1){//产品参数特殊处理
		        objName = "detail";
		    }
		    var trObj = document.all("normal_" + objName);
		    if(trObj != null && typeof(trObj) == "object")
		        trObj.style.display="";
		    var trObj = document.all("awake_" + objName);
		    if(trObj != null && typeof(trObj) == "object")
		        trObj.style.display="none";
		    var trObj = document.all("wrong_" + objName);
		    if(trObj != null && typeof(trObj) == "object")
		        trObj.style.display="none";
		    var trObj = document.all("right_" + objName);
		    if(trObj != null && typeof(trObj) == "object")
		        trObj.style.display="none";
		    var trObj = document.all("img_" + objName);
		    if(trObj != null && typeof(trObj) == "object")
		        trObj.style.display="";
		    if(objName==keywordsObj){
		       changeQuickMatch();
		    }
		    //产品参数特殊处理
		    if (objName == "detail"){
		        var isAllRight = true;
		        if (document.mainform.neededFeatures!=null && document.mainform.neededFeatures[0]!=null){
		            var len = document.mainform.neededFeatures.length;
		            for(var i = 0; i < len; i++ ){
		                var trObj = document.all("img_right_feature" + document.mainform.neededFeatures[i].value);
		                if (trObj!=null && trObj.src !="http://i01.c.aliimg.com/images/cn/member/icon_right_19x19.gif"){
		                    isAllRight = false;
		                    break;
		                }
		            }
		        }else if (document.mainform.neededFeatures !=null){//只有一个必填项的情况
		            var trObj = document.all("img_right_feature" + document.mainform.neededFeatures.value);
		            if (trObj!=null && trObj.src !="http://i01.c.aliimg.com/images/cn/member/icon_right_19x19.gif"){
		                isAllRight = false;
		            }
		        }
		        if (isAllRight){
		            var rightImagObj = document.getElementById("img_right_detail");
		            if (rightImagObj!=null){
		                rightImagObj.src = "http://i01.c.aliimg.com/images/cn/member/icon_right_19x19.gif";
		            }
		        }
		    }
		}
		return false;
	}


	/*
	Description    判断是否是供应Offer
	author         lei.doul
	*/
	function isSaleOffer(){
	    var isSale = false;
		//如果是一口价，认为是供应Offer
	    if(isTradeVar =="Y"){
	        isSale = true;
		}else{
		    //如果是新发布的话，需要根据选择用户所选的类型判断	        
	        if((isEditVar!="true")||(isTBDInfoCanChange=="true"))
	        {
	            var offerType = document.getElementsByName(typeKey);
			    if(offerType != null){
			        if(offerType[0].checked){
			            isSale = true;
			        }
			    }
	        }else{
			//如果是修改，根据发布时的类型判断
	            
	            if(typeObj==""||typeObj=="SALE")
	            {
	            	isSale = true;
	            }
	            
	        }
	    }
	    return isSale;
	}

	/*
	在修改信息的时候，判断是否是音像制品
	*/
	function isAudioVisual(){
	  var val = false;
	  
	  if(categoryNameVar.indexOf("/音像制品/")>0)
	  {
	    
	    if(isTBDInfoCanChange=="true"){
	     val = false;
		}else{
		 val = true;
	    }
	  }
	  return val;
	}
	
	function doOnBlur(objName, allowNull){
        doOnBlurCommon(objName, allowNull);
	}
	function doOnRadioBlur(objName){
        doOnBlurCommon(objName, false);
	}
	function doOnFocusOther(objName){
        var trObj = document.all("wrong_" + objName);
        if(trObj != null && typeof(trObj) == "object")
        trObj.style.display="none";
    }
    function doOnFocus(objName){
        if (objName.indexOf("feature")!=-1){//产品参数特殊处理

        objName = "detail";
        }
        var trObj = document.all("normal_" + objName);
        if(trObj != null && typeof(trObj) == "object")
        trObj.style.display="";
        var trObj = document.all("awake_" + objName);
        if(trObj != null && typeof(trObj) == "object")
        trObj.style.display="none";
        var trObj = document.all("wrong_" + objName);
        if(trObj != null && typeof(trObj) == "object")
        trObj.style.display="none";
        var trObj = document.all("right_" + objName);
        if(trObj != null && typeof(trObj) == "object")
        trObj.style.display="none";

		//显示默认的提示信息
		var trObj = document.all("defaultPrompt");
		 if(trObj != null && typeof(trObj) == "object")
		  trObj.style.display="";

		//隐藏特殊的提示信息
		var trObj = document.all("prompt_"+detailsObj);
		   if(trObj != null && typeof(trObj) == "object")
		  trObj.style.display="none";

        changeQuickMatch();
        //详细信息的提醒信息特殊处理

		//判断是否是供应Offer

        if (objName == detailsObj){

		    //取顶级类目
            var catobj = document.getElementById("topCatFormKey");
			//取2级类目
			var secCatobj = document.getElementById("secondCatFormKey");


			//处理特殊行业的提醒信息
			if (catobj !=null && catobj.value == "16"){
                document.getElementById("awake_words_"+detailsObj).innerHTML='如果您需要发布药品或医疗器械器具的信息，请务必提供药准字或药械字的说明，否则该信息将不能通过审核。';
            }
			else
			 if (catobj !=null && catobj.value == "2"){
                document.getElementById("awake_words_"+detailsObj).innerHTML='如果您需要发布食品或酒类的信息，建议您提供相关许可证号，更有说服力。';
             }
			 else
			   if (isAudioVisual()||((catobj !=null && catobj.value == "53") && (secCatobj != null && secCatobj.value == "2201") && isSaleOffer())){
					  
					  if(isFreeMember == "true")
					  {
				        document.getElementById("prompt_"+detailsObj).innerHTML='请将您的《音像制品经营许可证》传真至88157872-888，信息才可发布上网。属进口音像制品的，请在“详细说明”中标明进口批准文件文号。';
					  }else{
					    document.getElementById("prompt_"+detailsObj).innerHTML='请到“<a href="http://athena.china.alibaba.com/athena/listCertificate.htm" target="_blank">我的证书</a>”中上传您的《音像制品经营许可证》，信息才可发布上网。属进口音像制品的，请在“详细说明”中标明进口批准文件文号。'
					  }

					  //显示特殊提示信息
					  var trObj = document.all("prompt_"+detailsObj);
		              if(trObj != null && typeof(trObj) == "object")
		                 trObj.style.display="";

					  //隐藏默认提示信息
					  var trObj = document.all("defaultPrompt");
		                 if(trObj != null && typeof(trObj) == "object")
		                   trObj.style.display="none";
			   }
			   else{
                   var trObj = document.all("normal_" + objName);
                   if(trObj != null && typeof(trObj) == "object")
                     trObj.style.display="";
                     var trObj = document.all("awake_" + objName);
                     if(trObj != null && typeof(trObj) == "object")
                       trObj.style.display="none";
			  }
       }
    }
//失去焦点时进行实时校验
function checkFieldValid(fieldType){
    if (fieldType=="category"){
        return checkCategory();
    }else if (fieldType==keywordsObj){
        if(document.getElementById(fieldType).value == defaultKeyWordsValue){
            document.getElementById(fieldType).value = '';
            document.getElementById(fieldType).style.color='';
        }
        if(checkKeyword(fieldType)){
            showProductMarket(false,fieldType);//隐藏显示更多产品
            return true;
        }else{
            showProductMarket(true,fieldType);//显示更多产品
            changeQuickMatch();
            return false;
        }
    }else if (fieldType.indexOf("feature")!=-1){//产品参数必填项
        return checkFeature(fieldType);
    }else if (fieldType==subjectObj){
        return checkSubject(fieldType);
    }else if (fieldType==detailsObj){
        save();
        return checkDetails(fieldType);
    }else if(fieldType==aegisAlipayObj){
        return checkAegisAlipay(fieldType);
    }
    return false;
}
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

//只有供应offer才显示选择offer detail 模板
function showTemplateDiv(){
    //if(typeWay(getOfferTypeValue())=="SALE" && getOfferTypeValue() != "WHOLESALE"){
    //	document.getElementById("freeTemplateDiv").style.display="";
	//}
	//else{
	//	document.getElementById("freeTemplateDiv").style.display="none";
	//} 
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


//页面初始化时－快速匹配
function quickBuySellMatch(typeValue){
                changeTypeBuyMatch(typeValue);
      }

//检测快速匹配选项填写情况
function checkQuickBuySellMatch(){
    var typeValue=getOfferTypeValue();
    if(typeWay(typeValue) == "BUY"){
        var obj_wrong_quickBuySellChecked = document.getElementById("wrong_quickBuySellChecked");
        if(isEmptyValueObject("quickBuySellChecked") && !false){
            if(obj_wrong_quickBuySellChecked){
                obj_wrong_quickBuySellChecked.style.display="";
            }
            return false;
        }else{
            if(obj_wrong_quickBuySellChecked){
                obj_wrong_quickBuySellChecked.style.display="none";
            }
            return true;
        }
    }
    return true;
}

//设置选择快速采购匹配选项
function setSelectQuickBuySellChecked(qbValue){
    var quickBuySellCheckedObjs = document.getElementsByName("quickBuySellChecked");
    for(var i=0;i<quickBuySellCheckedObjs.length;i++){
        if(quickBuySellCheckedObjs[i].value == qbValue){
            quickBuySellCheckedObjs[i].checked = true;
        }else{
            quickBuySellCheckedObjs[i].checked = false;
        }
    }

}

//type修改时相应变化
function changeTypeBuyMatch(typeValue){
             if(typeWay(typeValue) == "BUY"){
             document.all("tr_quickBuySellMatch").style.display="";
			var detail_star = document.getElementById("detail_star");
			if(detail_star){
			    detail_star.style.display="";
			}
             setSelectQuickBuySellChecked("on")
             /*
             if(typeValue == "QUICKBUY"){
                setSelectQuickBuySellChecked("on")
             }else{
                setSelectQuickBuySellChecked(null);
             }
             */
            changeQuickMatch();
         }else{
                setSelectQuickBuySellChecked(null);
                document.all("tr_quickBuySellMatch").style.display="none";
				var detail_star = document.getElementById("detail_star");
				if(detail_star){
			    	detail_star.style.display="none";
				}
                document.all("accurateMatchInfo").style.display="none";
             if(document.all("wrong__fmo.a._0.k").style.display=="none"){
                document.all("normal__fmo.a._0.k").style.display="";
             }else{
                document.all("normal__fmo.a._0.k").style.display="none";
             }
         }
      
      document.getElementById("wrong_quickBuySellChecked").style.display="none";
}

//买卖匹配选项修改时
function changeQuickMatch(){
    //对于产品超过5个字提示以利于快速匹配
    var temp = trim(document.getElementById("_fmo.a._0.k").value);
    var buySellMatchChecked;
    var quickBuySellCheckedObjs = document.getElementsByName("quickBuySellChecked");
    for(var i=0;i<quickBuySellCheckedObjs.length;i++){
        if(quickBuySellCheckedObjs[i].checked){
            buySellMatchChecked=quickBuySellCheckedObjs[i].value;
            break;
        }
    }
	
    if((document.all("wrong__fmo.a._0.k"))&&(document.all("wrong__fmo.a._0.k").style.display=="none")){    	
        if(buySellMatchChecked == "on"){
            typeValue=getOfferTypeValue();
            if(temp.length>5 && (typeWay(typeValue) == "BUY" && temp != "勿填规格、型号、品牌等")){            	
                document.all("accurateMatchInfo").style.display="";
                document.all("normal__fmo.a._0.k").style.display="none";
            }else{
                document.all("accurateMatchInfo").style.display="none";
                document.all("normal__fmo.a._0.k").style.display="";

            }
        }else{
            document.all("accurateMatchInfo").style.display="none";
            document.all("normal__fmo.a._0.k").style.display="";
        }
    }else{
        document.all("accurateMatchInfo").style.display="none";
        document.all("normal__fmo.a._0.k").style.display="none";
    }
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

//detail编辑器最大容量
var maxCountWord = 50000;
function garbageFilter(){

    var obj = document.getElementById("_fmo.a._0.d");
    var objvalue = obj.value;
    if(objvalue.length > 160000){
        objvalue = localFilterHTML(objvalue);
        if(objvalue.length > 100000){
    		setEditorContent(objvalue);
            doOnBlur('_fmo.a._0.d', true)
            return;
        }
    }else if(objvalue.length > maxCountWord){
        objvalue = localSimpleFilterHTML(objvalue);
        if(objvalue.length <= maxCountWord){       	
    		setEditorContent(objvalue);
            doOnBlur('_fmo.a._0.d', true)
            return;
        }
    }

    
    try{
		var data = "expectantValue="+maxCountWord+"&fatal=true&htmlCode="+objvalue;
		var garbageFilterHttp = null;
        try{
            garbageFilterHttp = new ActiveXObject("Microsoft.XMLHTTP");
        }catch(e){
            try{
                garbageFilterHttp = new ActiveXObject("Msxml2.XMLHTTP");
            }catch(e){
                garbageFilterHttp =new XMLHttpRequest();
            }
        }
		
		try{
            garbageFilterHttp.open("POST", "http://upload.china.alibaba.com/offer/garbage_filter.htm", false);
        }catch(e){			
            garbageFilterHttp.open("POST", "http://china.alibaba.com/offer/garbage_filter.htm", false);
        }

        garbageFilterHttp.setRequestHeader("Content-Type","text/html; charset=GBK");
        garbageFilterHttp.Send(data);
		var responseText = garbageFilterHttp.responseText;		
		
        if(responseText.length > 0){
    		setEditorContent(unescape(responseText));
        }else if(responseText.length < 10){
    		setEditorContent(localFilterHTML(objvalue));
        }
    }catch(e){		
    	setEditorContent(localFilterHTML(objvalue));
    }    
    doOnBlur('_fmo.a._0.d', true);
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
    //检查是否满足一口价交易条件
    function checkTradeCondition(isAwayNoShow, featureId){
        //交易条件全角转半角
        transferTradeNumber();

        //var obj = document.getElementById("tr_AegisAlipay");
		var serviceTerm = document.getElementById("serviceTerm");
        var postsubmit = document.getElementById("postsubmit");
        var  freeMemberFlag = true;
        try{
            if(isFreemember)
                freeMemberFlag = true;
            else
                freeMemberFlag = false;
        }catch(e){
            freeMemberFlag = false;
        }

        var bcanTrade = canTradeCondition(featureId);
        if(!(isAwayNoShow == true) && bcanTrade && !freeMemberFlag){
            //obj.style.display="";
            if(serviceTerm){
                serviceTerm.style.display="";
                postsubmit.value="同意服务条款，我要发布";
            }
        }
        else{
            //obj.style.display="none";
            if(serviceTerm){
                serviceTerm.style.display="none";
                postsubmit.value="一切完成，我要发布！";
            }
        }

    }

    //检查是否满足一口价交易条件
    function canTradeCondition(featureId){
        var result = checkTradeInfo(featureId);

        if(!checkTradeField("fieldFlagName_unit")){
            return false;
        }

        if(!checkTradeField("fieldFlagName_beginamount")){
            return false;
        }

        if(!checkTradeField("fieldFlagName_price")){
            return false;
        }

        if(!checkTradeField("fieldFlagName_amount")){
            return false;
        }

        if(!checkTradeField("fieldFlagName_sendlimit")){
            return false;
        }
        return result;
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
    /** 选择用过的类目*/
    function selectUsedCategory(objCat){
        if(objCat.value!=''){
            var objKeyword = document.getElementById("_fmo.a._0.k");
            selectOtherCategory();
            matchCategory(objKeyword.value,objCat.value);
            aliclick(null,'?tracelog=fb_sort_used');
            userdCategory =1;
        }else{
            userdCategory =0;
        }
        var objUsedCategoryValue = document.getElementById('usedCategoryValue');
        if(objUsedCategoryValue!=null){
            objUsedCategoryValue.value = objCat.value;
        }
    }
    /** 更新用过的类目信息 */
    function refreashUsedCategory(){
        var objDiv = document.getElementById('usedCategoryDiv');
        if(objDiv!=null){
            objDiv.innerHTML ="";//getCategoryUsed(getSelectTypeValue());
        }
        var objUsedCategory = document.getElementById('usedCategory');
        var objUsedCategoryValue = document.getElementById('usedCategoryValue');
        if(objUsedCategory!=null && objUsedCategoryValue!=null && objUsedCategoryValue.value!=''){
            for(var i=0;i<objUsedCategory.options.length;i++){
                if(objUsedCategory.options[i].value == objUsedCategoryValue.value){
                    objUsedCategory.options[i].selected=true;
                }
            }
        }
    }
    //获取匹配结果
    function getCategoryByKeywordHtml(offerType, keyword) {
        var objHttp = getHttpRequest();
        var tradeType = getTradeType(offerType)
        objHttp.open("GET", "searchOfferSumByKeyword.vm?only=category&keyword="+keyword + "&infoType=" +offerType + "&tradeType=" + tradeType + "&t="+Math.random(), false);	
        objHttp.send();
        return objHttp.responseText;
    }
    //获取用户使用过的类目
    function getCategoryUsed(offerType) {
        var objHttp = getHttpRequest();
        var tradeType = getTradeType(offerType)
        objHttp.open("GET", "post/search_category.htm?infoType=" +offerType + "&tradeType=" + tradeType + "&iframe_delete=true&t="+Math.random(), false);
        objHttp.send();
        return objHttp.responseText;
    }

	function typeWay(type){
		if(type == "" || type == "WHOLESALE" || type == "SALE_51" || type == "2903" || type == "SALE_28"|| type == "SALE_2805" || type == "SALE"){
			return "SALE";
		}else{
			return "BUY";
		}
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
	
	function getOfferInfoType(tradeTypeReverse, typeWay){
		var type="";
		if(tradeTypeReverse == -1 && typeWay == "SALE"){
			type="SALE";
		}else if(tradeTypeReverse == -1){
			type="BUY";
		}else if(tradeTypeReverse == -2 && typeWay == "SALE"){
			type="SALE_2805";
		}else if(tradeTypeReverse == -2){
			type="BUY_2805";
		}else if(tradeTypeReverse == -3 && typeWay == "SALE"){
			type="SALE_51";
		}else if(tradeTypeReverse == -3){
			type="BUY_51";
		}else if(tradeTypeReverse == -5 && typeWay == "SALE"){
			type="SALE_28";
		}else if(tradeTypeReverse == -5){
			type="BUY_28";
		}else if(tradeTypeReverse == -4){
			type="2903";
		}
		return type;
	}
</script>

		<link rel="stylesheet" rev="stylesheet"
			href="<%=path%>/user/product/product_files/myalibaba.css"
			type="text/css"> 
		<input id="msg_focus_category" value="" type="hidden">
		<!--message tips end-->
		<table align="right" class="content_border" border="0" cellpadding="0"
			cellspacing="0" width="100%">
			<tbody>
				<tr>
					<td>

						<form name="mainform" method="post">
							<input name="show_type" value="" type="hidden">
							<input name="doneUrl" value="" type="hidden">
							<input name="currentSite" value="" type="hidden"> 
							<input name="TBDInfoCanChange" value="" type="hidden">
							<input name="step" value="try" type="hidden">
							<input name="status" value="" type="hidden">
							<input name="_fmo.a._0.st" value="" type="hidden">
							<input name="noRedirect" class="M1" value="true" type="hidden">
							<input name="_fmo.a._0.i" value="0" type="hidden">
							<input name="_fmo.a._0.r" value="1813" type="hidden">
							<input name="_fmo.a._0.c" value="1033669" type="hidden">
							<input name="subjectModifyFlag" value="" type="hidden">
							<input name="isBackToStep1" value="true" type="hidden">
							<input name="edit" value="" type="hidden">
							<input name="noShowSelectPage" value="true" type="hidden">
							<input name="reposeOfferId" value="" type="hidden">
							<input name="isAegisTrade" value="" type="hidden">
							<input name="_fmo.a._0.pro" value="" type="hidden">
							<input id="usedCategoryValue" name="_fmo.a._0.u" value=""
								type="hidden">
							<input name="is_trade" value="" type="hidden">
							<input name="_fmo.a._0.b" id="bizTypeSet" value="R" type="hidden">
							<input id="mixWholesale" name="_fmo.a._0.mi" value="false"
								type="hidden">

							<table width="100%">
								<tbody>
									<tr>
										<td>
											<div class="important_note" id="important_note">
												<div class="important_close"
													onclick="document.getElementById('important_note').style.display='none'; document.getElementById('Htab_on2').className='Htab_off2'">
													<img
														src="<%=path%>/user/product/product_files/Icon_close01_12x.gif"/>
												</div>
												<strong>为了让买家能更精确找到您的产品，您可以做以下几步提高您的信息精度，获得更好的排名：</strong>
												<br/>
												1、一条信息只发布一个产品；&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;3、选择与您产品符合的类目，建议您使用“类目自动匹配”功能；
												
												<br/>
												2、您的产品名称务必出现在标题中；&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;4、发布的信息带图且填写产品属性。
												
												<br/>
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
														<ul style="z-index: 100; background-color: rgb(255, 255, 255);"
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
														</ul>
													</span>
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
												<div class="TabOff2 s2">
													<!--<a href="#" onclick="goToTradePost(mainform);return false;">一口价信息</a>  -->
													一口价信息
												</div>
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
											<img src="<%=path%>/user/product/product_files/icon_right_19x19.gif"
												align="absmiddle" width="19" height="16"/>
											&nbsp;
											
											<b>信息类型</b><font color="#ff0000">*</font>
										</td>
										<td class="list_right_box">
											<input value="SALE" name="_fmo.a._0.t" checked="checked"
												onclick="showTemplateDiv();setSubjectText(true,false);doSelectType(this);changeType('求购');"
												type="radio">
											供应
											<input value="BUY" name="_fmo.a._0.t"
												onclick="showTemplateDiv();setSubjectText(true,false);doSelectType(this);changeType('供应');"
												type="radio">
											求购
											<input value="QUICKBUY" name="_fmo.a._0.t"
												onclick="showTemplateDiv();setSubjectText(true,false);doSelectType(this);changeType('供应');"
												type="radio">
											紧急求购
										</td>
									</tr>
									<tr style="display: none;" id="tr_quickBuySellMatch">
										<td class="list_left_box" align="right" valign="top">
											<img src="<%=path%>/user/product/product_files/icon_grayright_19x19.gif"
												align="absmiddle" width="19" height="16"/>
											&nbsp;
											
											<b>买卖速配</b><font color="#ff0000">*</font>
										</td>
										<td class="list_right_box" valign="top">
											<a name="flagQuickBuySell"></a>
											<input name="quickBuySellChecked"
												onclick="changeQuickMatch();checkQuickBuySellMatch();"
												value="on" type="radio">
											使用买卖速配（推荐）
											<input name="quickBuySellChecked"
												onclick="changeQuickMatch();checkQuickBuySellMatch();"
												value="off" type="radio">
											不使用
											<table class="s lh13 normal" border="0" cellpadding="6"
												cellspacing="0" width="100%">
												<tbody>
													<tr>
														<td>
															<font style="padding: 2px 0px 2px 2px;">买卖速配：用最短的时间，征集最多的供应商！
																<a
																href="http://info.china.alibaba.com/helpcenter/tips/s5019715-d5823833.html"
																target="_blank">什么是买卖速配？</a>
															</font>
														</td>
													</tr>
												</tbody>
											</table>
											<table border="0" bordercolor="#cccccc" cellpadding="3"
												cellspacing="0" width="380">
												<tbody>
													<tr id="wrong_quickBuySellChecked" style="display: none;">
														<td class="s lh13 wrong" valign="top">
															<span class="wrongwords"
																id="wrong_words_quickBuySellChecked">请选择买卖速配选项</span>
														</td>
													</tr>
												</tbody>
											</table>
										</td>
									</tr>
									<tr>
										<td class="list_left_box" align="right" valign="top">
											<img id="img_right__fmo.a._0.k"
												src="<%=path%>/user/product/product_files/icon_grayright_19x19.gif"
												align="absmiddle" width="19" height="16"/>
											&nbsp;
											
											<b>产品名称</b><font color="#ff0000">*</font>
										</td>
										<td class="list_right_box" valign="top">
											<table border="0" cellpadding="3" cellspacing="0"
												width="100%">
												<tbody>
													<tr>
														<td class="s lh13 normal" valign="top">
															<input name="_fmo.a._0.k" id="_fmo.a._0.k" style=""
																value="油动遥控船" maxlength="16" size="20"
																onblur='SB_OnBlur(this,"Banner_Menu", event);doOnKeywordBlur(this.name, true);'
																onfocus="if(this.value == '勿填规格、型号、品牌等'){this.value = '';this.style.color='';};doOnFocus(this.name);"
																onchange="setSubjectText(false,true);changBizexpressKeywords(this)"
																onkeydown="return SB_OnKeyDown(this,'Banner_Menu', event)"
																ondbclick="return SB_OnBlur(this,'Banner_Menu', event)"
																onkeyup="return SB_OnKeyUp(this,'Banner_Menu', event)"
																autocomplete="off"
																showtracelog="postoffer_pro_suggestshow"
																selecttracelog="postoffer_pro_suggestdo" type="text">
															<div class="MB_Menu" id="Banner_Menu"></div>
															<iframe id="Banner_Menu_IFRAME" class="MB_Menu1"
																src="<%=path%>/user/product/product_files/a.htm"></iframe>
														</td>
													</tr>
												</tbody>
											</table>
											<table border="0" bordercolor="#cccccc" cellpadding="3"
												cellspacing="0" width="100%">
												<tbody>
													<tr id="normal__fmo.a._0.k">
														<td class="s lh13 normal" valign="top">
															产品名称中请勿出现规格、型号、品牌等内容。
														</td>
													</tr>
													<tr id="wrong__fmo.a._0.k" style="display: none;">
														<td class="s lh13 wrong" valign="top">
															<span class="wrongwords" id="wrong_words__fmo.a._0.k">
															</span>
														</td>
													</tr>
													<tr id="accurateMatchInfo" style="display: none;">
														<td class="s lh13 normal" valign="top">
															<font color="#ff0000">产品名称过长会影响"买卖速配"效果，建议缩短产品名称，如去掉产品描述词</font>
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
												align="absmiddle" width="19" height="16">
											<b> 产品所属类目</b><font color="#ff0000">*</font>

										</td>
										<td class="list_right_box">
											<div id="usedCategoryDiv"></div>
											<table id="handSelect" border="0" cellpadding="3"
												cellspacing="0" width="100%">
												<tbody>
													<tr>
														<td>
															<select name="topCatFormKey" size="8"
																style="width: 129px;" id="topCatFormKey"
																onblur='doOnBlur("category", true)'
																onfocus='doOnFocus("category")'
																onchange="onChangeTopCategory(this)">
																<option value="58">
																	照明工业
																</option>
																<option value="57">
																	电子元器件
																</option> 
																<option value="18">
																	运动、休闲
																</option>
																<option style="color: rgb(204, 204, 204);" value="-5">
																	商务服务
																</option>
																<option style="color: rgb(204, 204, 204);" value="-4">
																	项目合作
																</option>
																 
															</select>
															<select name="secondCatFormKey" size="8"
																style="width: 129px;" id="secondCatFormKey"
																onblur='doOnBlur("category", true)'
																onfocus='doOnFocus("category")'
																onchange="onChangeSecondCategory(this)"></select>
															<select name="leafCatFormKey" size="8"
																id="leafCatFormKey" style="width: 129px;"
																onblur='doOnBlur("category", true)'
																onfocus='doOnFocus("category")'
																onchange="onChangeLeafCategory(this)"></select>
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
												align="absmiddle" width="19" height="16">
											<b> 信息标题</b><font color="#ff0000">*</font>
										</td>
										<td class="list_right_box" valign="top">
											<table border="0" cellpadding="3" cellspacing="0"
												width="100%">
												<tbody>
													<tr>
														<td>
															<input name="_fmo.a._0.s" value="供应" size="46"
																onblur="doOnBlur(this.name, true)"
																onfocus="doOnFocus(this.name)"
																onchange="doModifySubject(this)" maxlength="25"
																type="text">
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
												align="absmiddle" width="19" height="16"/>
											&nbsp;
											
											<b>信息有效期</b><font color="#ff0000">*</font>
										</td>
										<td class="list_right_box">
											<div id="div_OfferExpire_normal">
												<input onclick='javascript:doOnFocus("_fmo.a._0.o");'
													onblur='doOnRadioBlur("_fmo.a._0.o")' value="10"
													name="_fmo.a._0.o" type="radio">
												10天
												<input onclick='javascript:doOnFocus("_fmo.a._0.o");'
													onblur='doOnRadioBlur("_fmo.a._0.o")' value="20"
													name="_fmo.a._0.o" type="radio">
												20天
												<input onclick='javascript:doOnFocus("_fmo.a._0.o");'
													onblur='doOnRadioBlur("_fmo.a._0.o")' value="30"
													name="_fmo.a._0.o" type="radio">
												1个月
												<input onclick='javascript:doOnFocus("_fmo.a._0.o");'
													onblur='doOnRadioBlur("_fmo.a._0.o")' value="90"
													name="_fmo.a._0.o" type="radio"/>
												3个月
												<input onclick='javascript:doOnFocus("_fmo.a._0.o");'
													onblur='doOnRadioBlur("_fmo.a._0.o")' value="180"
													checked="checked" name="_fmo.a._0.o" type="radio">
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
																</span>
																</b>
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
												<table border="0" cellpadding="0" cellspacing="0"
													width="100%">
													<tbody>
														<tr>
															<td class="list_left_box" align="right" valign="top">
																<input id="neededFeatures_112222" name="neededFeatures"
																	value="112222" type="hidden">
																<img id="img_right_feature112222"
																	src="<%=path%>/user/product/product_files/icon_nowhitewhiteright_19x19.gif"
																	align="absmiddle" width="19" height="16">
																<b>品牌</b><font color="#ff0000">*</font>
															</td>
															<td class="list_right_box" style="padding: 2px;">

																<input name="feature112222" id="feature112222" value=""
																	size="23" maxlength="80"
																	onblur="doOnBlur(this.name, true)"
																	onfocus="doOnFocus(this.name)" type="text">

																<span style="padding-left: 10px;"><span
																	id="wrong_feature112222" class="s lh13 wrong"
																	style="display: none; width: 110px;"> <span
																		class="wrongwords" id="wrong_words_feature112222">
																			带<font color="red">*</font>为必填项。 </span> </span> </span>
															</td>
														</tr>
														<tr>
															<td class="list_left_box" align="right" valign="top">
																<input id="neededFeatures_112242" name="neededFeatures"
																	value="112242" type="hidden">
																<img id="img_right_feature112242"
																	src="<%=path%>/user/product/product_files/icon_nowhitewhiteright_19x19.gif"
																	align="absmiddle" width="19" height="16">
																<b>功能</b><font color="#ff0000">*</font>
															</td>
															<td class="list_right_box" style="padding: 2px;">

																<select name="feature112242" maxlength="80"
																	onchange="javascript:funcSelectOther(112242)"
																	id="feature112242" onblur="doOnBlur(this.name, true)"
																	onfocus="doOnFocus(this.name)">
																	<option value="">
																		请选择
																	</option>
																	<option value="遥控">
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
																	<option value="其他">
																		其他
																	</option>
																</select>
																<span style="display: none;" id="featureOther112242">
																	<input name="featureSelf112242" id="featureSelf112242"
																		size="14" maxlength="80" value=""
																		onblur='doOnBlur("feature112242", true)'
																		onfocus='doOnFocusOther("feature112242")' type="text">（请补充）
																</span>

																<span style="padding-left: 10px;"><span
																	id="wrong_feature112242" class="s lh13 wrong"
																	style="display: none; width: 110px;"> <span
																		class="wrongwords" id="wrong_words_feature112242">
																			带<font color="red">*</font>为必填项。 </span> </span> </span>
															</td>
														</tr>
														<tr>
															<td class="list_left_box" align="right" valign="top">
																<input id="neededFeatures_112271" name="neededFeatures"
																	value="112271" type="hidden">
																<img id="img_right_feature112271"
																	src="<%=path%>/user/product/product_files/icon_nowhitewhiteright_19x19.gif"
																	align="absmiddle" width="19" height="16">
																<b>适用年龄</b><font color="#ff0000">*</font>
															</td>
															<td class="list_right_box" style="padding: 2px;">

																<select name="feature112271" maxlength="80"
																	onchange="javascript:funcSelectOther(112271)"
																	id="feature112271" onblur="doOnBlur(this.name, true)"
																	onfocus="doOnFocus(this.name)">
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
																<span style="display: none;" id="featureOther112271">
																	<input name="featureSelf112271" id="featureSelf112271"
																		size="14" maxlength="80" value=""
																		onblur='doOnBlur("feature112271", true)'
																		onfocus='doOnFocusOther("feature112271")' type="text">（请补充）
																</span>

																<span style="padding-left: 10px;"><span
																	id="wrong_feature112271" class="s lh13 wrong"
																	style="display: none; width: 110px;"> <span
																		class="wrongwords" id="wrong_words_feature112271">
																			带<font color="red">*</font>为必填项。 </span> </span> </span>
																<a style="cursor: pointer;"
																	onclick="if(document.getElementById('table_more').style.display=='none'){document.getElementById('table_more').style.display='block';this.className='Htab2_on';};else{ document.getElementById('table_more').style.display = 'none';;this.className='Htab2_off';}"
																	class="Htab2_off">更多属性</a>
															</td>
														</tr>

													</tbody>
												</table>
												<table id="table_more" style="display: none;" border="0"
													cellpadding="0" cellspacing="0" width="100%">
													<tbody>
														<tr>
															<td class="list_left_box" align="right" valign="top">
																<b>型号</b>
															</td>
															<td class="list_right_box" style="padding: 2px;">

																<input name="feature103215" id="feature103215" value=""
																	size="23" maxlength="80"
																	onblur="doOnBlur(this.name, false)"
																	onfocus="doOnFocus(this.name)" type="text">

															</td>
														</tr>
														<tr>
															<td class="list_left_box" align="right" valign="top">
																<b>动力</b>
															</td>
															<td class="list_right_box" style="padding: 2px;">

																<input name="feature102926" id="feature102926" value=""
																	size="23" maxlength="80"
																	onblur="doOnBlur(this.name, false)"
																	onfocus="doOnFocus(this.name)" type="text">

															</td>
														</tr>
														<tr>
															<td class="list_left_box" align="right" valign="top">
																<b>材质</b>
															</td>
															<td class="list_right_box" style="padding: 2px;">

																<input name="feature102924" id="feature102924" value=""
																	size="23" maxlength="80"
																	onblur="doOnBlur(this.name, false)"
																	onfocus="doOnFocus(this.name)" type="text">

															</td>
														</tr>
														<tr>
															<td class="list_left_box" align="right" valign="top">
																<b>颜色</b>
															</td>
															<td class="list_right_box" style="padding: 2px;">

																<input name="feature102925" id="feature102925" value=""
																	size="23" maxlength="80"
																	onblur="doOnBlur(this.name, false)"
																	onfocus="doOnFocus(this.name)" type="text">

															</td>
														</tr>
														<tr>
															<td class="list_left_box" align="right" valign="top">
																<b>规格</b>
															</td>
															<td class="list_right_box" style="padding: 2px;">

																<input name="feature102927" id="feature102927" value=""
																	size="23" maxlength="80"
																	onblur="doOnBlur(this.name, false)"
																	onfocus="doOnFocus(this.name)" type="text">

															</td>
														</tr>

													</tbody>
												</table>

											</div>
										</td>
									</tr>

									<tr>
										<td class="list_left_box" align="right" valign="top">
											<a name="flagDetails"></a>
											<b>详细说明</b><span id="detail_star" style="display: none;"><font
												color="#ff0000">*</font>
											</span>
											<div id="freeTemplateDiv" style="visibility: hidden;">
												<div style="padding-top: 80px;"></div>
												<table border="0" cellpadding="0" cellspacing="0"
													width="100">
													<tbody>
														<tr>
															<td class="s" align="center">
																<b>免费模板推荐</b>
															</td>
														</tr>
														<tr>
															<td align="center" height="95">
																<a
																	href="http://upload.china.alibaba.com/offer/post_select_template.htm?text_name=_fmo.a._0.d&amp;tracelog=dujin_fb_pic01"
																	target="_blank"><img
																		src="<%=path%>/user/product/product_files/001_80.gif"
																		style="border: 2px solid rgb(153, 153, 153);"
																		width="80" height="80"/>
																</a>
															</td>
														</tr>
														<tr>
															<td align="center" height="95">
																<a
																	href="http://upload.china.alibaba.com/offer/post_select_template.htm?text_name=_fmo.a._0.d&amp;tracelog=dujin_fb_pic02"
																	target="_blank"><img
																		src="<%=path%>/user/product/product_files/002_80.gif"
																		style="border: 2px solid rgb(153, 153, 153);"
																		width="80" height="80"/>
																</a>
															</td>
														</tr>
														<tr>
															<td align="center" height="95">
																<a
																	href="http://upload.china.alibaba.com/offer/post_select_template.htm?text_name=_fmo.a._0.d&amp;tracelog=dujin_fb_pic03"
																	target="_blank"><img
																		src="<%=path%>/user/product/product_files/003_80.gif"
																		style="border: 2px solid rgb(153, 153, 153);"
																		width="80" height="80"/>
																</a>
															</td>
														</tr>
														<tr>
															<td align="center" valign="bottom" height="30">
																<a
																	href="http://upload.china.alibaba.com/offer/post_select_template.htm?text_name=_fmo.a._0.d&amp;tracelog=dujin_fb_more"
																	target="_blank"><img
																		src="<%=path%>/user/product/product_files/but_gengduo.gif"
																		border="0" width="81" height="20"/>
																</a>
															</td>
														</tr>
													</tbody>
												</table>
												<br>
											</div>
										</td>
										<td class="list_right_box" valign="top">
											<div id="hyperTextEditor">
												<table border="0" cellpadding="6" cellspacing="0"
													width="430">
													<tbody>
														<tr>
															<td style="" bgcolor="#f9f9f9" width="430">
																<textarea id="description" name="_fmo.a._0.d"
																	style="width: 430px; height: 350px; display: none;"
																	onblur="doOnBlur('_fmo.a._0.d', true)"
																	onfocus="doOnFocus('_fmo.a._0.d')">				
				
				</textarea>
															</td>
														</tr>
													</tbody>
												</table>
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



											<script language="javascript">

	var _formName = 'mainform';
	var _textName = '_fmo.a._0.d';
	var _toolBarIconPath = 'http://i00.c.aliimg.com/images/unsort/8/';
	var _debug = false;

	var _maxCount = 25000;
	//var _postAction = 'http://upload.taobao.com/auction/redit/preview.jhtml';
	var _postAction = 'http://china.alibaba.com/offer/html_detail_preview.htm?detail_name=desc';
	var _useCustomTag = '';
	//语言
	var _a_lang = new Array();
	_a_lang['pic'] = '图片';
	_a_lang['url'] = '地址';
	_a_lang['viewe'] = '显示效果';
	_a_lang['border'] = '边框粗细';
	_a_lang['align'] = '对齐方式';
	_a_lang['absmiddle'] = '绝对居中';
	_a_lang['aleft'] = '居左';
	_a_lang['aright'] = '居右';
	_a_lang['atop'] = '顶部';
	_a_lang['amiddle'] = '中部';
	_a_lang['abottom'] = '底部';
	_a_lang['absbottom'] = '绝对底部';
	_a_lang['baseline'] = '基线';
	_a_lang['submit'] = '确定';
	_a_lang['cancle'] = '取消';
	_a_lang['hlink'] = '超级链接';
	_a_lang['other'] = '其他选项';
	_a_lang['newwindow'] = '在新窗口打开';
	_a_lang['ttop'] = '文本顶部';
	
	_a_lang['copy'] = '复制';
	_a_lang['cut'] = '剪切';
	_a_lang['pau'] = '粘贴';
	_a_lang['del'] = '删除';
	
	_a_lang['bold'] = '粗体';
	_a_lang['italic'] = '斜体';
	_a_lang['underline'] = '下划线';
	_a_lang['st'] = '中划线';
	_a_lang['jl'] = '左对齐';
	_a_lang['jc'] = '居中对齐';
	_a_lang['jr'] = '右对齐';
	
	_a_lang['fcolor'] = '文字颜色';
	_a_lang['bcolor'] = '文字背景颜色';
	_a_lang['ilist'] = '编号';
	_a_lang['itlist'] = '项目符号';
	_a_lang['sup'] = '上标';
	_a_lang['sub'] = '下标';
	_a_lang['createlink'] = '插入链接';
	_a_lang['unlink'] = '取消链接';
	_a_lang['inserthr'] = '插入水平线';
	_a_lang['insertimg'] = '插入/修改图片';
	_a_lang['editsource'] = '编辑源文件';
	_a_lang['preview'] = '预览';
	_a_lang['usehtml'] = '使用编辑器编辑';
	
	_a_lang['font'] = '字体';
	_a_lang['simsun'] = '宋体';
	_a_lang['simhei'] = '黑体';
	_a_lang['simkai'] = '楷体';
	_a_lang['fangsong'] = '仿宋';
	_a_lang['lishu'] = '隶书';
	_a_lang['youyuan'] = '幼圆';
	
	_a_lang['fontsize'] = '字号';
	_a_lang['fontsize_1'] = '一号';
	_a_lang['fontsize_2'] = '二号';
	_a_lang['fontsize_3'] = '三号';
	_a_lang['fontsize_4'] = '四号';
	_a_lang['fontsize_5'] = '五号';
	_a_lang['fontsize_6'] = '六号';
	_a_lang['fontsize_7'] = '七号';
	
	_a_lang['current'] = '当前';
	_a_lang['word'] = '字';
	_a_lang['maxword'] = '最多';
	
	_a_lang['modify'] = '修改';
	_a_lang['insert'] = '插入';

	_a_lang['fullscreen'] = '放大编辑';
	//_a_lang['help'] = '使用帮助';
	
</script>
											<script language="javascript">
var HTML = {};

HTML.AbstractParser = function(str) {
	this.source = str;
	this.tagBuf = null;
	this.attrBuf = null;
	this.textBuf = '';
	this.eleStarted = false;
	this.tagStarted = false;
	this.attrStarted = false;
	this.textStarted = true;
};

HTML.AbstractParser.prototype.parse = function() {
	debug('start parse:' + this.source);
	for (var i = 0; i < this.source.length; ++i) {
		var c = this.source.substring(i, i+1);
		if (c == '<') {
			this.start(i, c);
		}else if (c == '>') {
			this.end(i, c);
		}else if (c == ' ') {
			this.space(i, c);
		}else {
			this.text(i, c);
		}
		if (i == this.source.length - 1) {
			this.docEnd(i);
		}
	}
};

HTML.AbstractParser.prototype.start = function(pos, c) {
	this.eleStarted = true;
	this.tagStarted = true;
	this.tagBuf = '';

	if (this.textStarted && this.textBuf && this.textBuf.length > 0) {
		this.doText(this.textBuf);
	}
	this.textStarted = false;
};

HTML.AbstractParser.prototype.end = function(pos, c) {
	if (this.eleStarted && this.tagStarted) {
		var tag = this.tagBuf;
		this.tagStarted = false;
		this.doTag(tag);
	} else if (this.eleStarted && !this.tagStarted && this.attrStarted) {
		var attr = this.attrBuf;
		this.doAttr(attr);
	} else if (this.textStarted) {
		this.textBuf += c;
		this.doText(this.textBuf);
	}
	this.eleStarted = false;
	this.tagStarted = false;
	this.attrStarted = false;
	this.textStarted = true;
	this.textBuf = '';
};

HTML.AbstractParser.prototype.docEnd = function(pos, c) {
	if (this.textStarted) {
		this.doText(this.textBuf);
	}
};

HTML.AbstractParser.prototype.text = function(pos, c) {
	if (this.eleStarted && this.tagStarted) {
		this.tagBuf += c;
	} else if (this.eleStarted && !this.tagStarted && this.attrStarted) {
		this.attrBuf += c;
	} else if (this.textStarted) {
		this.textBuf += c;
	}
};

HTML.AbstractParser.prototype.space = function(pos, c) {
	if (this.eleStarted && this.tagStarted) {
		var tag = this.tagBuf;
		this.tagStarted = false;
		this.doTag(tag);
	}
	if (this.eleStarted && !this.tagStarted && !this.attrStarted) {
		this.attrStarted = true;
		this.attrBuf = '';
	} else if (this.eleStarted && !this.tagStarted && this.attrStarted) {
		var attr = this.attrBuf;
		this.doAttr(attr);
		this.attrBuf = '';
	}
	if (this.textStarted) {
		this.textBuf += c;
	}
};

HTML.AbstractParser.prototype.doTag = function(tag) {
	alert('tag:' + tag);
};

HTML.AbstractParser.prototype.doAttr = function(attr) {
	alert('attr:' + attr);
};

HTML.AbstractParser.prototype.doText = function(text) {
	alert('text:' + text);
};

// ---------------------
HTML.TagAttrDocParser = function(str) {
	this.base = HTML.AbstractParser;
	this.base(str);
	this.tagAttr = null;
};
HTML.TagAttrDocParser.prototype = new HTML.AbstractParser;

HTML.TagAttrDocParser.prototype.doTag = function(tag) {
	if (tag && tag.length > 0) {
		if (this.tagAttr) {
			this.doXShopTag(this.tagAttr);
			this.tagAttr = null;
		}
		this.tagAttr = {};
		this.tagAttr['tagName'] = tag;
		this.tagAttr.attr = {};
	}
};

HTML.TagAttrDocParser.prototype.doAttr = function(attr) {
	if (attr && this.tagAttr) {
		var pos = attr.indexOf('=');
		if (pos > 0) {
			var name = attr.substring(0, pos);
			var value = attr.substring(pos + 1);
			this.tagAttr.attr[name] = value;
		}else {
			this.tagAttr.attr[attr] = attr;
		}
	}
};

HTML.TagAttrDocParser.prototype.doText = function(text) {
	if (this.tagAttr) {
		this.doXShopTag(this.tagAttr);
		this.tagAttr = null;
	}
	this.doProcessText(text);
};

HTML.TagAttrDocParser.prototype.doProcessText = function(text) {
	alert('text:' + text);
};

HTML.TagAttrDocParser.prototype.doXShopTag = function(tagAttr) {
	alert('tag:' + tagAttr.tagName);
};

//-----------------------------------------
HTML.XShopDocParser = function(str) {
	this.base = HTML.TagAttrDocParser;
	this.base(str);
	this.target = '';
};
HTML.XShopDocParser.prototype = new HTML.TagAttrDocParser;

HTML.XShopDocParser.prototype.doProcessText = function(text) {
	this.target += text;
};

HTML.XShopDocParser.prototype.doXShopTag = function(tagAttr) {
	if (tagAttr.tagName.toLowerCase() == '/search') return;
	if (tagAttr.tagName.toLowerCase() == 'search') {
		var tag = '<search';
		for(var key in tagAttr.attr) {
			if (key == '/') {
				continue;
			}else if (key != tagAttr.attr[key]) {
				tag += ' ' + key + '=' + tagAttr.attr[key];
			}else {
				tag += ' ' + key;
			}
		}
		tag += '>';
		tag += '</search>';
		this.target += '<img class="CustomTag" src="http://pics.taobao.com/bao/album/sys/icon/code_20070108.gif" title="'+escape(tag)+'" />';
	}else {
		this.target += '<';
		this.target += tagAttr.tagName;
		for(var key in tagAttr.attr) {
			if (key == '/') {
				this.target += ' /';
			}else if (key != tagAttr.attr[key]) {
				this.target += ' ' + key + '=' + tagAttr.attr[key];
			}else {
				this.target += ' ' + key;
			}
		}
		this.target += '>';
	}
};

//-----------------------------------------
HTML.XShopDocParser1 = function(str) {
	this.base = HTML.TagAttrDocParser;
	this.base(str);
	this.target = '';
};
HTML.XShopDocParser1.prototype = new HTML.TagAttrDocParser;

HTML.XShopDocParser1.prototype.doProcessText = function(text) {
	this.target += text;
};

HTML.XShopDocParser1.prototype.doXShopTag = function(tagAttr) {
	if (tagAttr.tagName.toLowerCase() == 'img' && tagAttr.attr['class'] && tagAttr.attr['title'] && tagAttr.attr['class'].indexOf('CustomTag') >= 0) {
		var titleStr = tagAttr.attr['title']; var len = titleStr.length;
		var sp = titleStr.substring(0, 1); var ep = titleStr.substring(len - 1, len);
		if (ep == sp == '"' || ep == sp == "'") titleStr = titleStr.substring(1, len - 1);
		this.target += unescape(titleStr);
	}else {
		this.target += '<';
		this.target += tagAttr.tagName;
		for(var key in tagAttr.attr) {
			if (key == '/') {
				this.target += ' /';
			}else if (key != tagAttr.attr[key]) {
				this.target += ' ' + key + '=' + tagAttr.attr[key];
			}else {
				this.target += ' ' + key;
			}
		}
		this.target += '>';
	}
};

// -----------------------------------------------------------------------------------------------------

var oldvalue=null;

try {
	var a = _useCustomTag;
}catch (e) {
	var _useCustomTag = false;
}

//print debug msg
function debug(info) {
	if (_debug)
		alert(info);
}
//print error msg
function error(info) {
	alert(info);
}
//get browse version
var majorVer = 0;
var minorVer = 0;
if (document.all) {
	majorVer = navigator.appVersion.match(/MSIE (.)/)[1] ;
	minorVer = navigator.appVersion.match(/MSIE .\.(.)/)[1] ;
}
var isIE5 = majorVer >= 6 || ( majorVer >= 5 && minorVer >= 5 ) ;
debug('browse:' + isIE5);
//get form and text object
var frmObj = document.forms[_formName];
var textObj = null;
if (!frmObj) {
	error('form not found');
}else {
	textObj = frmObj.elements[_textName];
	if (!textObj) {
		error('textarea not found');
	}else {
		if (textObj.tagName != 'TEXTAREA') {
			textObj = null;
			debug('object is not a textarea');
		}
	}
}
//a instance of htmlEdit
var editObj = null;
var editor = null;

//返回真正的编辑器对象
function getRealEditorFrame(){
	return editObj;
}

if (isIE5) {
	//window.onerror=fnErrorTrap;
}

function fnErrorTrap(sMsg,sUrl,sLine) {
	return true;
}

function __lang(l) {
	try {
		if (_a_lang) {
			return _a_lang[l];
		}else {
			return l;
		}
	}catch (e) {
		return l;
	}
}

//var _selText = null;
//init,replace textarea
var bInitialized = false;
if (isIE5) {
	document.onreadystatechange = onschange;
}
function onschange() {
	if (!textObj || !isIE5) {
		return;
	}
	if (document.readyState!="complete") return;
	if (bInitialized) return;
	bInitialized = true;
	debug('initEditor');
	try {		
		//create a frame
		editObj = document.createElement('iframe');
		editObj.id = '_editor';
		editObj.style.width = textObj.style.width;
		editObj.style.height = textObj.style.height;
		editObj.scrolling = 'auto';
		editObj.frameBorder = 1;
		editObj.style.padding = '0px';
		editObj.marginHeight = '1px';
		editObj.marginWidth = '1px';
		
		//show it
		textObj.parentElement.insertBefore(editObj, textObj);
		editor = _editor;
		//set edit mode
		editor.document.designMode = 'On';
		editor.document.open();
		var textStr = textObj.value;
		if (_useCustomTag) {
			var a = new HTML.XShopDocParser(textStr);
			a.parse();
			textStr = a.target;
		}
		editor.document.write('<html><head><style>body,td,tr,table {font-size:12px}</style></head><body align="left">' + textStr + '</body></html>');
		editor.document.onclick = closeDialog;
		editor.document.close();
		if (_maxCount >= 0) {
			calcWordCount();
		}
		//hidden textarea
		try{
			oldvalue=document.mainform.oldDesc.value;
			if(oldvalue==""){
				oldvalue=editor.document.body.innerHTML;
				document.mainform.oldDesc.value=oldvalue; 
			}				
		}catch(e){
		}
	
	
		textObj.style.display = 'none';
		initToolBar();
		frmObj.attachEvent("onsubmit", AttachSubmit);
		frmObj.attachEvent("onreset", AttachReset);
		function AttachSubmit() {
			if (_isEditAble) {
				save();
			}
		}

		function AttachReset() {
			load();
		}
	}catch (er) {
		//on error,recover
		isIE5 = false;
		debug(er.description);
		debug(editObj);
		try {
			if (editObj) {
				editObj.removeNode(true);
			}
		}catch (ee) {
			debug(ee.description);
		}
		textObj.style.display = 'block';
	}
}

//dialog frame
var dialog = null;
if (isIE5) {
	dialog = document.createElement('div');
	dialog.id = '_dialog';
	dialog.style.width = '0px';
	dialog.style.height = '0px';
	dialog.style.top = '0px';
	dialog.style.left = '0px';
	dialog.style.position = 'absolute';
	dialog.style.zIndex = '998';
	dialog.style.backgroundColor = '#EEEEEE';
	dialog.style.border = '1px solid #000000';
	dialog.style.display = 'none';
	dialog.style.padding = '5px';
	dialog.style.borderTopWidth = '20px';
	dialog.attachEvent("onmousedown", dialogMouseDown);
	dialog.attachEvent("onmouseup", dialogMouseUp);
	textObj.parentElement.appendChild(dialog);
}
var _dialogCanMove = false;
var _dialogX = 0;
var _dialogY = 0;
var _dialogT = 0;
var _dialogL = 0;
function dialogMouseDown() {
	if (!textObj || !isIE5) {
		return;
	}
	if (window.event.offsetY > 20 || event.srcElement.id != '_dialog') {
		return;
	}
	_dialogCanMove = true;
	_dialogX = event.x;
	_dialogY = event.y;
	_dialogT = parseInt(dialog.style.top);
	_dialogL = parseInt(dialog.style.left);
	document.onselectstart = cSelect;
	function cSelect() {
		return false;
	}
	document.attachEvent("onmousemove", dialogMouseMove);
}
function dialogMouseUp() {
	if (!textObj || !isIE5) {
		return;
	}
	_dialogCanMove = false;
	document.detachEvent("onmousemove", dialogMouseMove);
	document.onselectstart = cSelect;
	function cSelect() {
		return true;
	}
}
function dialogMouseMove() {
	if (!textObj || !isIE5) {
		return;
	}
	if (_dialogCanMove) {
		dialog.style.top = _dialogT + event.y - _dialogY;
		dialog.style.left = _dialogL + event.x - _dialogX;
		window.event.returnValue = false; 
		window.event.cancelBubble = true;
	}
}

//color sel dialog
function getColorSpace() {
	if (!textObj || !isIE5) {
		return;
	}
	var ac=['00','33','66','99','cc','ff'];
	var txt='<table ID="ColorTable" border="0" cellspacing="0" cellpadding="0">';

	for (var i=0; i<3;i++){txt+='<tr>';for (var j=0; j<3;j++){for (var n=0; n<6;n++){txt+='<td onmousedown="setStColor(this.title)" style="cursor:hand;height:10px; width:10px;" bgcolor="#'+ac[j]+ac[n]+ac[i]+'" title="#'+ac[j]+ac[n]+ac[i]+'"><img src="http://pics.taobao.com/newstyle/shim.gif"></td>';}}txt+='</tr>';}
	for (var i=3; i<6;i++){txt+='<tr>';for (var j=0; j<3;j++){for (var n=0; n<6;n++){txt+='<td onmousedown="setStColor(this.title)" style="cursor:hand;height:10px; width:10px;" bgcolor="#'+ac[j]+ac[n]+ac[i]+'" title="#'+ac[j]+ac[n]+ac[i]+'"><img src="http://pics.taobao.com/newstyle/shim.gif"></td>';}}txt+='</tr>';}
	for (var i=0; i<3;i++){txt+='<tr>';for (var j=3; j<6;j++){for (var n=0; n<6;n++){txt+='<td onmousedown="setStColor(this.title)" style="cursor:hand;height:10px; width:10px;" bgcolor="#'+ac[j]+ac[n]+ac[i]+'" title="#'+ac[j]+ac[n]+ac[i]+'"><img src="http://pics.taobao.com/newstyle/shim.gif"></td>';}}txt+='</tr>';}
	for (var i=3; i<6;i++){txt+='<tr>';for (var j=3; j<6;j++){for (var n=0; n<6;n++){txt+='<td onmousedown="setStColor(this.title)" style="cursor:hand;height:10px; width:10px;" bgcolor="#'+ac[j]+ac[n]+ac[i]+'" title="#'+ac[j]+ac[n]+ac[i]+'"><img src="http://pics.taobao.com/newstyle/shim.gif"></td>';}}txt+='</tr>';}
	txt+='<tr>';for (var n=0; n<6;n++){txt+='<td onmousedown="setStColor(this.title)" style="cursor:hand;height:10px; width:10px;" bgcolor="#'+ac[n]+ac[n]+ac[n]+'"title="#'+ac[n]+ac[n]+ac[n]+'"><img src="http://pics.taobao.com/newstyle/shim.gif"></td>';}
	for (var i=0;i<12;i++){txt+='<td onmousedown="setStColor(this.title)" style="cursor:hand;height:10px; width:10px;" bgcolor="#000000" title="#000000"><img src="http://pics.taobao.com/newstyle/shim.gif"></td>';}
	txt+='</tr>';
	txt+='</table>';
	return txt;
}
//dialog info
var dialogMsg = new Array();
if (isIE5) {
	dialogMsg['insertImg'] = '<table border=0 cellpadding=0 cellspacing=0 \
							align=center style="font-size:12px"><tr><td><fieldset> \
							<legend id="img_title">{op}' + __lang('pic') + '</legend><table border=0 \
							cellpadding=0 cellspacing=0><tr><td colspan=9 height=5></td> \
							</tr><tr><td colspan=9 height=5></td></tr><tr><td width=7> \
							</td><td width=54 style="font-size:12px">' + __lang('url') + ':</td> \
							<td width=5></td><td colspan=5> \
							<input type=text id="d_fromurl" style="width:163px"  \
							size=100 value="{url}"></td><td width=7>';

	dialogMsg['insertImg'] += '</td></tr><tr><td colspan=9 height=5></td></tr></table></fieldset> \
							</td></tr><tr><td height=5></td></tr><tr><td><fieldset><legend>' + __lang('viewe') + '</legend> \
							<table border=0 cellpadding=0 cellspacing=0><tr><td colspan=9 height=5></td></tr> \
							<tr><td width=7></td><td noWrap style="font-size:12px">' + __lang('border') + ':</td><td width=5></td> \
							<td><input type=text id=d_border size=10 value="{border}"></td><td width=40></td> \
							<td noWrap style="font-size:12px">' + __lang('align') + ':</td><td width=5>';

	dialogMsg['insertImg'] += '</td><td><select id=d_align size=1 style="width:72px"><option value="absmiddle" selected> \
							' + __lang('absmiddle') + '</option><option value="left">'+__lang('aleft')+'</option> \
							<option value="right">'+__lang('aright')+'</option> \
							<option value="top">'+__lang('atop')+'</option> \
							<option value="middle">'+__lang('amiddle')+'</option><option value="bottom">';

	dialogMsg['insertImg'] += __lang('abottom')+'</option><option value="absbottom">'+__lang('absbottom')+'</option> \
							<option value="baseline">'+__lang('baseline')+'</option> \
							<option value="texttop">'+__lang('ttop')+'</option></select></td><td width=7></td></tr> \
							<tr><td colspan=9 height=5></td></tr></table></fieldset></td></tr><tr> \
							<td height=5></td></tr><tr><td align=center> \
							<input type=button value="  '+__lang('submit')+'  " id=Ok onclick="doInsertImage()">&nbsp;&nbsp; \
							<input type=button value="  '+__lang('cancle')+'  " onclick="closeDialog()"></td></tr></table>';

	dialogMsg['selectColor'] = ' <table border="0" cellspacing="0" cellpadding="0">  <tr>  <td id="ColorTableCell" \
				valign="top" align="left" nowrap style="font-family:Arial; font-size:11px;"> '+getColorSpace()+'</td></table>';

	dialogMsg['insertLink'] = '<table border=0 cellpadding=0 cellspacing=0 align=center style="font-size:12px"><tr> \
					<td><fieldset><legend id="img_title">{op}'+__lang('hlink')+'</legend> \
					<table border=0 cellpadding=0 cellspacing=0> \
					<tr><td colspan=9 height=5></td></tr><tr><td colspan=9 height=5></td></tr><tr><td width=7></td> \
					<td width=54 style="font-size:12px">'+__lang('url')+':</td><td width=5></td><td colspan=5> \
					<input type=text id="d_url" style="width:163px" size=100 value="{url}"></td><td width=7></td></tr>';

	dialogMsg['insertLink'] += '<tr><td colspan=9 height=5></td></tr></table></fieldset></td></tr><tr><td height=5></td> \
					</tr><tr><td><fieldset><legend>'+__lang('other')+'</legend><table border=0 cellpadding=0 cellspacing=0><tr> \
					<td colspan=9 height=5></td></tr><tr><td width=7></td> \
					<td noWrap style="font-size:12px">'+__lang('newwindow')+':</td> \
					<td width=5></td><td><input type=checkbox id=d_target size=10 value="1" {target}></td><td width=40></td> \
					<td noWrap style="font-size:12px">&nbsp;</td><td width=5></td><td>';

	dialogMsg['insertLink'] += '&nbsp;</td><td width=7></td></tr><tr><td colspan=9 height=5></td></tr></table></fieldset> \
					</td></tr><tr><td height=5></td></tr><tr><td align=center> \
					<input type=button value="  '+__lang('submit')+'  " id=Ok \
					onclick="doInsertLink()">&nbsp;&nbsp; \
					<input type=button value="  '+__lang('cancle')+'  " onclick="closeDialog()"></td> \
					</tr></table>';

}

function ShowDialog(url, width, height, optValidate) {
	if (!textObj || !isIE5) {
		return;
	}
	ShowDialogIn(dialogMsg[url], width, height, optValidate);
}

function ShowDialogIn(url, width, height, optValidate) {
	if (!textObj || !isIE5) {
		return;
	}
	if (!optValidate) {
		dialog.style.padding = '5px';
		dialog.style.borderTopWidth = '20px';
	}else {
		dialog.style.padding = '0px';
		dialog.style.borderTopWidth = '0px';
	}
	_dialogCanMove = false;
	editor.focus();
	_dialog.style.width = width + 'px';
	_dialog.style.height = height + 'px';
	var t = getClientXY(editObj, true);
	var l = getClientXY(editObj, false);
	_dialog.style.top = t + 20;
	_dialog.style.left = l + editObj.offsetWidth / 2 - width / 2;;
	_dialog.innerHTML = url;
	_dialog.style.display = 'block';
}

function closeDialog() {
	if (!textObj || !isIE5) {
		return;
	}
	_dialog.style.display = 'none';
	_dialogCanMove = false;
}


//toolbar info
var toolBars = new Array();
if (isIE5) {
	toolBars[toolBars.length] = new Array(__lang('copy'), "iconClick('copy')", 'copy');
	toolBars[toolBars.length] = new Array(__lang('cut'), "iconClick('cut')", 'cut');

	toolBars[toolBars.length] = new Array(__lang('pau'), "iconClick('paste')", 'paste');
	toolBars[toolBars.length] = new Array(__lang('del'), "iconClick('delete')", 'delete');

    toolBars[toolBars.length] = new Array('', "iconClick('nodo')", 'nodo');
	toolBars[toolBars.length] = new Array(__lang('bold'), "iconClick('bold')", 'bold');
	toolBars[toolBars.length] = new Array(__lang('italic'), "iconClick('italic')", 'italic');
	toolBars[toolBars.length] = new Array(__lang('underline'), "iconClick('underline')", 'underline');
	toolBars[toolBars.length] = new Array(__lang('st'), "iconClick('StrikeThrough')", 'strikethrough');
	toolBars[toolBars.length] = new Array(__lang('jl'), "iconClick('justifyleft')", 'justifyleft');
	toolBars[toolBars.length] = new Array(__lang('jc'), "iconClick('justifycenter')", 'justifycenter');
	toolBars[toolBars.length] = new Array(__lang('jr'), "iconClick('justifyright')", 'justifyright');

	toolBars[toolBars.length] = new Array('', "iconClick('nodo')", 'nodo');
	toolBars[toolBars.length] = new Array(__lang('fcolor'), "iconClick('forecolor')", 'forecolor');
	toolBars[toolBars.length] = new Array(__lang('bcolor'), "iconClick('backcolor')", 'backcolor');

	//toolBars[toolBars.length] = new Array('', "iconClick('nodo')", 'nodo');
	//toolBars[toolBars.length] = new Array(__lang('ilist'), "iconClick('insertorderedlist')", 'insertollist');
	//toolBars[toolBars.length] = new Array(__lang('itlist'), "iconClick('insertunorderedlist')", 'insertullist');

	//toolBars[toolBars.length] = new Array('', "iconClick('nodo')", 'nodo');
	//toolBars[toolBars.length] = new Array(__lang('sup'), "iconClick('superscript')", 'sup');
	//toolBars[toolBars.length] = new Array(__lang('sub'), "iconClick('subscript')", 'sub');

	toolBars[toolBars.length] = new Array('', "iconClick('nodo')", 'nodo');
	toolBars[toolBars.length] = new Array(__lang('createlink'), "iconClick('insertLink')", 'create_link');
	toolBars[toolBars.length] = new Array(__lang('unlink'), "iconClick('Unlink')", 'unlink');

	toolBars[toolBars.length] = new Array('', "iconClick('nodo')", 'nodo');
	//toolBars[toolBars.length] = new Array(__lang('inserthr'), "iconClick('InsertHorizontalRule')", 'inserthr');
	toolBars[toolBars.length] = new Array(__lang('insertimg'), "iconClick('insertImage')", 'img');

	//toolBars[toolBars.length] = new Array('', "iconClick('nodo')", 'nodo');
	//toolBars[toolBars.length] = new Array(__lang('editsource'), "iconClick('recove')", 'length');

	toolBars[toolBars.length] = new Array('', "iconClick('nodo')", 'nodo');
	toolBars[toolBars.length] = new Array(__lang('preview'), "iconClick('doPreview')", 'unselect');
	
	if(!document.forms['fullEditor']){	
	toolBars[toolBars.length] = new Array('', "iconClick('nodo')", 'nodo');
	toolBars[toolBars.length] = new Array(__lang('fullscreen2'), "iconClick('doFullscreen')", 'fullscreen2');	
	}
	
	toolBars[toolBars.length] = new Array('', "iconClick('nodo')", 'nodo');
	toolBars[toolBars.length] = new Array(__lang('help2'), "iconClick('doHelp')", 'help2');	
	
	//toolBars[toolBars.length] = new Array('', "iconClick('nodo')", 'nodo');
}
var toolBars1 = new Array();
if (isIE5) {
	toolBars1[toolBars1.length] = new Array(__lang('usehtml'), "iconClick('recove')", 'length1');
	toolBars1[toolBars1.length] = new Array('', "iconClick('nodo')", 'nodo');
	toolBars1[toolBars1.length] = new Array(__lang('review'), "iconClick('doPreview')", 'unselect');
	toolBars1[toolBars1.length] = new Array('', "iconClick('nodo')", 'nodo');
}

//action mapping
function iconClick(action) {
	if (!textObj || !isIE5) {
		return;
	}
	saveSelection();
	switch (action) {
	case 'nodo':
		reselect();
		debug('nodo');
		break;
	case 'forecolor':
		_stColorType = 1;
		ShowDialog('selectColor', 180, 130, false)
		break;
	case 'backcolor':
		_stColorType = 2;
		ShowDialog('selectColor', 180, 130, false);
		break;
	case 'insertImage':
		insertImage();
		break;
	case 'insertLink':
		insertLink();
		break;
	case 'recove':
		reselect();
		recove();
		break;
	case 'doPreview':
		reselect();
		doPreview();
		break;
		
	case 'doFullscreen':
		reselect();
		doFullscreen();
		break;
		
	case 'doHelp':
		reselect();
		doHelp();
		break;		
			
	default:
		reselect();
		editor.document.execCommand(action);
		editor.focus();
		break;
	}
}

//init toolbar
var _toolBar = null;
var _toolBar1 = null;
function initToolBar() {
	if (!textObj || !isIE5) {
		return;
	}
	var tbm = document.createElement('span');
	tbm.style.width = textObj.style.width;
	tbm.id = '_toolbar';
	
	//font
	tbm.innerHTML += '<SELECT onchange="applyCommand(\'FontName\', this[this.selectedIndex].value);this.selectedIndex=0;editor.focus();"> \
		<option selected>'+__lang('font')+'</option> \
		<option value="'+__lang('simsun')+'">'+__lang('simsun')+'</option> \
		<option value="'+__lang('simhei')+'">'+__lang('simhei')+'</option> \
		<option value="'+__lang('simkai')+'_GB2312">'+__lang('simkai')+'</option> \
		<option value="'+__lang('fangsong')+'_GB2312">'+__lang('fangsong')+'</option> \
		<option value="'+__lang('lishu')+'">'+__lang('lishu')+'</option> \
		<option value="'+__lang('youyuan')+'">'+__lang('youyuan')+'</option> \
		<option value="Arial">Arial</option> \
		<option value="Courier">Courier</option> \
		<option value="Script">Script</option> \
		<option value="System">System</option> \
		<option value="Verdana">Verdana</option> \
		<option value="Wingdings">Wingdings</option> \
	</SELECT>';
	
	//font size
	tbm.innerHTML += '<SELECT onchange="applyCommand(\'fontsize\',this[this.selectedIndex].value);this.selectedIndex=0;editor.focus();"> \
		<option selected>'+__lang('fontsize')+'</option> \
		<option value="7">'+__lang('fontsize_1')+'</option> \
		<option value="6">'+__lang('fontsize_2')+'</option> \
		<option value="5">'+__lang('fontsize_3')+'</option> \
		<option value="4">'+__lang('fontsize_4')+'</option> \
		<option value="3">'+__lang('fontsize_5')+'</option> \
		<option value="2">'+__lang('fontsize_6')+'</option> \
		<option value="1">'+__lang('fontsize_7')+'</option> \
	</SELECT>';
		
	//other op
	for (var i = 0; i < toolBars.length; ++i) {
		tbm.innerHTML += '<img src="' + _toolBarIconPath + '/' + toolBars[i][2] + '.gif" onclick="' + toolBars[i][1] + '" border="0" alt="' + toolBars[i][0] + '" onmouseover="this.style.backgroundColor=\'#CCCCCC\';" onmouseout="this.style.backgroundColor=\'\';" align="absmiddle">';
	}
	//tbm.innerHTML += '<span style="color:red;font-size:12px" id="__wordCount__"></span>';
	textObj.parentElement.insertBefore(tbm, editObj);	
	_toolBar = tbm;
	
	var tbm1 = document.createElement('span');
	tbm1.style.width = textObj.style.width;
	tbm1.style.display = 'none';
	tbm1.id = '_toolbar1';
	tbm1.innerHTML = '';
	for (var i = 0; i < toolBars1.length; ++i) {
		tbm1.innerHTML += '<img src="' + _toolBarIconPath + '/' + toolBars1[i][2] + '.gif" onclick="' + toolBars1[i][1] + '" border="0" alt="' + toolBars1[i][0] + '" onmouseover="this.style.backgroundColor=\'#CCCCCC\';" onmouseout="this.style.backgroundColor=\'\';" align="absmiddle">';
	}
	
	tbm1.innerHTML += '<span style="color:red;font-size:12px" id="__wordCount1__"></span>';
	textObj.parentElement.insertBefore(tbm1, editObj);	
    _toolBar1 = tbm1;
}

//save select info
var sel,rng,selOK;
function saveSelection(){
	if (!textObj || !isIE5) {
		return;
	}
	sel = editor.document.selection;
	rng = sel.createRange();
}

function reselect(){
	if (!textObj || !isIE5) {
		return;
	}
	if (!sel || sel == null){
		selOK = false;
		return;
	}
	if (sel.type != "None") return;
	try {
		r = editor.document.body.createTextRange();
		if ( r.inRange(rng) ){
			selOK = true;
			r.setEndPoint("StartToStart", rng);
			r.setEndPoint("EndToEnd", rng);
			r.select();
		} else {
			selOK = false;
		}
	}catch(e) {
		try{
		rng.select();
		}catch(ee){}
		selOK = true;
	}
}

//normal action
function insertHTML(txt){
	if (!textObj || !isIE5) {
		return;
	}
	if ( !selOK  ){
		r = editor.document.body.createTextRange();
		r.move("word", 1);
		r.collapse();
		r.select();
	}
	if (!sel || sel == null){
		return;
	}
	if ( sel.type == "Control" ) {
		sel.createRange().item(0).outerHTML = txt;
	} else {
		rng = sel.createRange();
		rng.pasteHTML(txt);
		rng.select();
	}
}

function HTMLEncode(text){
	text = text.replace(/&/g, "&amp;") ;
	text = text.replace(/"/g, "&quot;") ;
	text = text.replace(/</g, "&lt;") ;
	text = text.replace(/>/g, "&gt;") ;
	text = text.replace(/'/g, "&#146;") ;
	text = text.replace(/\ /g,"&nbsp;");
	text = text.replace(/\n/g,"<br>");
	text = text.replace(/\t/g,"&nbsp;&nbsp;&nbsp;&nbsp;");
	return text;
}

var _isEditAble = true;
function recove() {
	if (!textObj || !isIE5) {
		return;
	}
	if (_isEditAble) {
		save();
		textObj.style.display = 'block';
		_toolBar.style.display = 'none';
		editObj.style.display = 'none';
		_toolBar1.style.display = 'block';
		_isEditAble = false;
	}else {
		load();
		textObj.style.display = 'none';
		editObj.style.display = 'block';
		_toolBar.style.display = 'block';
		_toolBar1.style.display = 'none';
		_isEditAble = true;
	}
}

//preview
function doPreview() {
	if (!textObj || !isIE5) {
		return;
	}
	if (_isEditAble) {
		save();
	}else {
		load();
	}
	var frm = document.createElement('form');
	frm.action = _postAction;
	frm.method = 'post';
	frm.target = '_blank';
	var txt = document.createElement('input');
	txt.type = 'hidden';
	txt.value = textObj.value;
	txt.name = 'desc';
	frm.appendChild(txt);
	frmObj.parentElement.appendChild(frm);
	frm.submit();
	frm.removeNode(frm);
}

function applyCommand(opt,what){
	if (!textObj || !isIE5) {
		return;
	}
	reselect();
	editor.document.execCommand(opt,"",what);
}

function save() {
	if (!textObj || !isIE5) {
		return;
	}
	if (_isEditAble && textObj && editor && editor.document) {
		if (_useCustomTag) {
			var val = editor.document.body.innerHTML;
			var a = new HTML.XShopDocParser1(val);
			a.parse();
			textObj.value = a.target;
		}else {
			textObj.value = editor.document.body.innerHTML;
		}
		if(textObj.value!=oldvalue) {
			try {
				document.mainform.state.value=1;
			}catch (e) {
			}
		}else{
			try {
				document.mainform.state.value=0;
			}catch (e) {
			}
		}
	}
}

function load() {
	if (!textObj || !isIE5 || _isEditAble) {
		return;
	}

	try {		
		if (_useCustomTag) {
			var val = textObj.value;
			var a = new HTML.XShopDocParser(val);
			a.parse();
			editor.document.body.innerHTML = a.target;			
    		//editor.document.body.innerHTML = '';
			//editor.document.write('<html><body>' + a.target + '</body></html>');
		}else {
			editor.document.body.innerHTML = textObj.value;			
    		//editor.document.body.innerHTML = '';
			//editor.document.write('<html><body>' + textObj.value + '</body></html>');
		}
	}catch (e) {
		alert(e);
	}
}


function setEditorContent(strText){
	textObj.value = strText;
	editor.document.body.innerHTML = textObj.value;	
    //editor.document.body.innerHTML = "";
    //editor.document.write('<html><body>' + strText + '</body></html>');
}

function getClientXY(obj, top) {
	distance = 0;
	for ( i=0; i<10; i++){
		if ( top ){
			distance += obj.offsetTop+obj.clientTop;
		} else {
			distance += obj.offsetLeft+obj.clientLeft;
		}
		obj = obj.offsetParent;
		if ( obj == document.body ) break;
	}
	return distance;
}

//calc count
var _calcCountTimer;
function calcWordCount() {
	if (!textObj || !isIE5) {
		return;
	}	
	var t = document.getElementById('__wordCount__');
	var t1 = document.getElementById('__wordCount1__');
	if (t) {
		t.innerHTML = '['+__lang('current')+ editor.document.body.innerHTML.length + __lang('word') + (_maxCount > 0 ? ','+__lang('maxword')+ _maxCount + __lang('word') : '') + ']';
	}
	if (t1) {
		t1.innerHTML = '['+__lang('current') + textObj.value.length +  __lang('word') + (_maxCount > 0 ? ','+__lang('maxword') + _maxCount + __lang('word') : '') + ']';
	}
	if (_calcCountTimer) {
		window.clearTimeout(_calcCountTimer);
	}
	
	_calcCountTimer = window.setTimeout('calcWordCount()', 1000);
}

var _img = null;
function getImage() {
	if (!textObj || !isIE5) {
		return;
	}
	var img = new Object();
	img.sFromUrl = '';
	img.sBorder = '0';
	img.sAlign = '';
	img.control = null;
	img.has = false;

	var oSelection = editor.document.selection.createRange();
	var sRangeType = editor.document.selection.type;

	if (sRangeType == "Control") {
		if (oSelection.item(0).tagName == "IMG"){
			oControl = oSelection.item(0);
			img.sFromUrl = oControl.src;
			var b = oControl.style.border;
			if (b) {
				img.sBorder = b.replace(/.*([0-9]+)px.+/g, '$1');
			}else {
				img.sBorder = oControl.style.border;
			}
			img.sAlign = oControl.align;
			img.has = true;
			img.control = oControl;
		}
	}
	return img;
}

var _link = null;
function getLink() {
	if (!textObj || !isIE5) {
		return;
	}
	var link = new Object();
	link.url = '';
	link.target = '_blank';
	link.control = null;
	link.has = false;

	if (rng) {
		var isA;
		if (sel.type == 'Control') {
			isA = getEl('A', rng.item(0));
		}else {
			try {
				isA = getEl("A", rng.parentElement());
			}catch(e) {
				isA = getEl('A', rng.item(0));
			}
		}
		if (isA) {
			link.url = isA.href ? isA.href : "";
			link.target = isA.target;
			link.control = isA;
			link.has = true;
		}
	}
	return link;
}

function insertImage() {
	if (!textObj || !isIE5) {
		return;
	}
	_img = getImage();
	var text = dialogMsg['insertImg'];
	if (_img.has) {
		text = text.replace(/\{op\}/g, __lang('modify'));
	}else {
		text = text.replace(/\{op\}/g, __lang('insert'));
	}
	text = text.replace(/\{url\}/g, _img.sFromUrl);
	text = text.replace(/\{border\}/g, _img.sBorder);
	ShowDialogIn(text, 280, 150, false);
}

function insertLink() {
	if (!textObj || !isIE5) {
		return;
	}
	_link = getLink();
	var text = dialogMsg['insertLink'];
	if (_link.has) {
		text = text.replace(/\{op\}/g, __lang('modify'));
	}else {
		text = text.replace(/\{op\}/g, __lang('insert'));
	}
	text = text.replace(/\{url\}/g, _link.url);
	if (_link.target == '_blank') {
		text = text.replace(/\{target\}/g, 'checked');
	}else {
		text = text.replace(/\{target\}/g, '');
	}
	ShowDialogIn(text, 280, 150, false);
}

function doInsertLink() {
	reselect();
	var url = document.getElementById('d_url').value;
	var target = document.getElementById('d_target').checked;
	if ( url != "" ) {
		if (_link && _link.control) {
			var o = _link.control;
			o.href = url;
			if (target) {
				o.target = '_blank';
			}else {
				o.target = '_self';
			}
		}else {
			editor.document.execCommand("CreateLink", "", url);
			var l = getLink();
			if (l.has && target && l.control) {
				l.control.target = '_blank';
			}
		}
	}
	closeDialog();
}

function doInsertImage(img){
	if (!textObj || !isIE5) {
		return;
	}
	sFromUrl = document.getElementById('d_fromurl').value;
	sBorder = document.getElementById('d_border').value;
	sAlign = document.getElementById('d_align').value;

	img = _img;
	if (img && img.has && img.control) {
		editor.focus();
		var oControl = img.control;
		oControl.src = sFromUrl;
		try {
		oControl.style.border = sBorder + 'px solid #000000';
		}catch (eee) {}
		oControl.align = sAlign;
	}else{
		reselect();
		if (sFromUrl && sFromUrl.indexOf('http://cn.f11.yahoofs.com/users/') == 0) {
			try {
				AJAX(function(e) {
					var newImg = e.responseText;
					if (!newImg || newImg.indexOf('http://cn') != 0) {
						newImg = sFromUrl;
					}
					var sHTML = '<img src="'+newImg+'" style="border:'+sBorder+'px  solid #000000;" align="'+sAlign+'">';
					insertHTML(sHTML);
				}, 'get', '/auction/transformYahooUrlGateway.do?src=' + sFromUrl, false, null, null, null, function(e) {
					var sHTML = '<img src="'+sFromUrl+'" style="border:'+sBorder+'px  solid #000000;" align="'+sAlign+'">';
					insertHTML(sHTML);
				});
			}catch (e) {
				alert(e);
			}
		}else {
			var sHTML = '<img src="'+sFromUrl+'" style="border:'+sBorder+'px  solid #000000;" align="'+sAlign+'">';
			insertHTML(sHTML);
		}
	}
	closeDialog();
}


//Popup fullscreen editor
function doFullscreen() {
	window.open("fullTextarea.htm?formName="+_formName+"&textName="+_textName+"&tracelog=dujin_fb_screen","","fullscreen=yes,scrollbars=yes");	
}

function doHelp() {
	window.open("http://page.china.alibaba.com/shtml/promotion/athehelp/jc_lo_zhang.shtml");	
}

//color
var _stColorType = 1;
function setStColor(color) {
	if (!textObj || !isIE5) {
		return;
	}
	if (_stColorType == 1) {
		applyCommand('ForeColor', color);
	}else if (_stColorType = 2) {
		applyCommand('BackColor', color);
	}else {
		debug('no this type');
	}
	closeDialog();
}

function getEl(sTag,start) {
	while ((start!=null) && start.tagName && (start.tagName!=sTag)){
		start = start.parentElement;
	}
	return start;
}



</script>

											<script language="javascript">
	initDetailTextAreaEvent();
	function initDetailTextAreaEvent(){
		var realEditorFrame = getRealEditorFrame();
		var pageEditor = document.getElementById(_textName);
		
		if(realEditorFrame && pageEditor){
			realEditorFrame.onfocus = pageEditor.onfocus;
			realEditorFrame.onblur = pageEditor.onblur;
		}
		
		if(realEditorFrame == null){
			window.setTimeout('initDetailTextAreaEvent()', 1000);
		}
	}
</script>
											<table style="display: block;" id="inforbox_1055"
												align="center" cellpadding="0" cellspacing="0" width="98%">
												<tbody>
													<tr>
														<td class="s lh13 normal">
															<span>1、建议从产品性能、用途、包装、售后服务等方面来描述；<br>2、您可通过<img
																	src="<%=path%>/user/product/product_files/img.gif"
																	align="absmiddle" width="22" height="22">来插入图片，图片地址建议使用阿里巴巴旺铺的公司相册“复制图片地址”来添加，请勿盗用他人图片，以免引起纠纷；<br>3、可添加阿里巴巴内部链接（阿里巴巴、淘宝、支付宝、雅虎），加入其他网站链接，系统将自动删除。</span>
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
											<input id="picsampleArray" name="_fmo.a._0.pic" value=""
												type="hidden">
											<input id="picture1" name="_fmo.a._0.pict" value=""
												type="hidden">
											<input id="picture2" name="_fmo.a._0.pictu" value=""
												type="hidden">
											<input id="picture3" name="_fmo.a._0.pictur" value=""
												type="hidden">
											<input id="picsample" name="_fmo.a._0.pi" value=""
												type="hidden">
											<input name="draw" value="" type="hidden">
											<input name="draw1" value="" type="hidden">
											<input name="draw2" value="" type="hidden">
											<input value="0" name="picsample_0" type="hidden">
											<input value="0" name="picsample_1" type="hidden">
											<input value="0" name="picsample_2" type="hidden">
											<input value="N" id="picChanged" name="_fmo.a._0.picc"
												type="hidden">
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
																width="100" height="100"/>
														</td>
														<td align="center">
															<img name="uploaded1"
																src="<%=path%>/user/product/product_files/detail_no_pic.gif"
																width="100" height="100"/>
														</td>
														<td align="center">
															<img name="uploaded2"
																src="<%=path%>/user/product/product_files/detail_no_pic.gif"
																width="100" height="100"/>
														</td>
													</tr>
													<tr>
														<td align="center" height="35">
															<input onclick="table_display2('table100');" value="上传"
																name="uploadPicBtn0" type="button"/>
															&nbsp;
															
															<input onclick="delete_picture('0');" value="删除"
																name="delPicBtn0" type="button"/>
														</td>
														<td align="center">
															<input onclick="table_display('table101');" value="上传"
																name="uploadPicBtn1" type="button"/>
															&nbsp;
															
															<input onclick="delete_picture('1');" value="删除"
																name="delPicBtn1" type="button"/>
														</td>
														<td align="center">
															<input onclick="table_display('table102');" value="上传"
																name="uploadPicBtn2" type="button"/>
															&nbsp;
															
															<input onclick="delete_picture('2');" value="删除"
																name="delPicBtn2" type="button"/>
														</td>
													</tr>
												</tbody>
											</table>
											<table id="table100" style="display: none;" border="0"
												cellpadding="0" cellspacing="0" width="100%">
												<tbody>
													<tr>
														<td align="left">
															&nbsp;&nbsp;&nbsp;
															<iframe name="upload0" marginheight="0" marginwidth="0"
																bordercolor="#000000"
																src="<%=path%>/user/product/product_files/adv_upload_picture.htm"
																scrolling="no" width="100%" frameborder="0" height="115"></iframe>
														</td>
													</tr>
												</tbody>
											</table>
											<table id="table101" style="display: none;" border="0"
												cellpadding="0" cellspacing="0" width="100%">
												<tbody>
													<tr>
														<td align="left">
															&nbsp;&nbsp;&nbsp;
															<iframe name="upload1" marginheight="0" marginwidth="0"
																bordercolor="#000000"
																src="<%=path%>/user/product/product_files/adv_upload_picture_002.htm"
																scrolling="no" width="100%" frameborder="0" height="115"></iframe>
														</td>
													</tr>
												</tbody>
											</table>
											<table id="table102" style="display: none;" border="0"
												cellpadding="0" cellspacing="0" width="100%">
												<tbody>
													<tr>
														<td align="left">
															&nbsp;&nbsp;&nbsp;
															<iframe name="upload2" marginheight="0" marginwidth="0"
																bordercolor="#000000"
																src="<%=path%>/user/product/product_files/adv_upload_picture_003.htm"
																scrolling="no" width="100%" frameborder="0" height="115"></iframe>
														</td>
													</tr>
												</tbody>
											</table>
											<br>
											<table border="0" cellpadding="3" cellspacing="0"
												width="100%">
												<tbody>
													<tr id="normal_picture">
														<td class="s lh13 normal" valign="top">
															图片格式jpg或gif，大小不超过200k。
															<br>
															<div style="display: none;" id="imageHelper1" class="s2">
																<font color="#ff0000">推荐使用免费工具“图片助手”，自动处理图片格式及大小并上传！</font><a
																	href="javascript:void(0);"
																	onclick="popPicHelper2('100');">立即使用</a>&nbsp;&nbsp;&nbsp;
																<a href="javascript:void(0);"
																	onclick="window.open('http://info.china.alibaba.com/news/detail/v-d1000938177.html?tracelog=chinagas_help&amp;tracelog=fb_picture_help');">帮助</a>
															</div>
														</td>
													</tr>
												</tbody>
											</table>
											<table id="picHelperErrorMsgTb" style="display: none;"
												border="0" cellpadding="5" cellspacing="0" width="100%">
												<tbody>
													<tr>
														<td id="picHelperErrorMsg" style="line-height: 18px;"
															bgcolor="#fff8ee">
														</td>
													</tr>
												</tbody>
											</table>

											<script>
		var   name=navigator.appName; 
		var   vers=navigator.appVersion;
		
		if(name == "Netscape"){
			document.getElementById("imageHelper1").style.display="none";
		}
</script>


											<script>
<!--
var pictureMaxNum=3;
function table_display(t_id){
    document.getElementsByName("_fmo.a._0.picc")[0].value = "Y";
    if (pictureMaxNum == 1){
        if(document.all.picsample_0.value == "1"){
            alert("您是普通会员，只能上传一张产品图片。");
        }else{
            table_display2("table100");
        }
    }else{       
        table_display2(t_id);
    }
}
//用于三张图片显示效果
function table_display2(t_id){
     document.getElementsByName("_fmo.a._0.picc")[0].value = "Y";
    if (t_id == "table100" && document.all.table100.style.display == "none") {
        document.all.table100.style.display="";
        document.all.table101.style.display = "none"
        document.all.table102.style.display = "none";
        document.all.normal_picture.style.display = "none";
    } else if (t_id == "table101" && document.all.table101.style.display == "none") {
        document.all.table100.style.display= "none";
        document.all.table101.style.display = "";
        document.all.table102.style.display = "none";
        document.all.normal_picture.style.display = "none";
    } else if (t_id == "table102" && document.all.table102.style.display == "none") {
        document.all.table100.style.display="none";
        document.all.table101.style.display = "none"
        document.all.table102.style.display = "";
        document.all.normal_picture.style.display = "none";
    } else {
        document.all.table100.style.display= "none";
        document.all.table101.style.display = "none"
        document.all.table102.style.display = "none";
        document.all.normal_picture.style.display = "";
    }   
}    
function setUploadImageStatus(){
    //设置图片上传状态
    var pic0 = document.all.picsample_0.value;  
    var pic1=0;
    var pic2=0;
    if(pictureMaxNum == 3){
       pic1 = document.all.picsample_1.value;
       pic2 = document.all.picsample_2.value;
    }
    document.all.item("_fmo.a._0.pic").value = pic0 + pic1 + pic2;
}
    
function deleteSubjectText(){
    var subjectObj = document.all.item("_fmo.a._0.s");
    if((document.all("_fmo.a._0.pi").value != "Y") && (subjectObj.value) != ""){
        var str="(图)";
        var str1="（图）";
        var subject = subjectObj.value;
        var i = subject.indexOf(str)
        if ( i> 0) {
            subjectObj.value = subject.substring(0,i)
        }
        subject = subjectObj.value
        i = subject.indexOf(str1)
        if (i >0){
            subjectObj.value = subject.substring(0,i)
        }
    }
}

function delete_picture(id) {
    document.getElementsByName("_fmo.a._0.picc")[0].value = "Y";
    var picsampleObj = document.all("_fmo.a._0.pi");
    
     if(id == "0") {
        document.all.uploaded0.src = "http://i05.c.aliimg.com/images/cn/market/trade/detail/detail_no_pic.gif";
        document.all.uploadPicBtn0.value = "上传";
        document.all.picsample_0.value = "0";
		document.all.item("_fmo.a._0.pict").value = "";
        if((document.all.picsample_1.value == "0")&&(document.all.picsample_2.value == "0")){
            picsampleObj.value = "";
            deleteSubjectText()
        }          
     }
     if(id == "1") {
        document.all.uploaded1.src = "http://i05.c.aliimg.com/images/cn/market/trade/detail/detail_no_pic.gif";
        document.all.uploadPicBtn1.value = "上传";
        document.all.picsample_1.value = "0";
		document.all.item("_fmo.a._0.pictu").value = "";
        if((document.all.picsample_0.value == "0")&&(document.all.picsample_2.value == "0")){
            picsampleObj.value = "";
            deleteSubjectText()
            }
     }
     if(id == "2") {
        document.all.uploaded2.src = "http://i05.c.aliimg.com/images/cn/market/trade/detail/detail_no_pic.gif";
        document.all.uploadPicBtn2.value = "上传";
        document.all.picsample_2.value = "0";
		document.all.item("_fmo.a._0.pictur").value = "";
        if((document.all.picsample_1.value == "0")&&(document.all.picsample_0.value == "0")){
            picsampleObj.value = "";
            deleteSubjectText()
        }
     }
}
function getRandomId() {
    var random = Math.random();
    return '?'+random;
}

if(document.all.uploaded0){	
    document.all.uploaded0.src=document.all.uploaded0.src+getRandomId();
}
if(document.all.uploaded1){
    document.all.uploaded1.src=document.all.uploaded1.src+getRandomId();
}
if(document.all.uploaded2){
    document.all.uploaded2.src=document.all.uploaded2.src+getRandomId();
} 
-->
</script>
											<script type="text/javascript"
												src="<%=path%>/user/product/product_files/alitalk2.js"></script>

											<script type="text/javascript">
<!--
function newCheckAlitalkInstalled(){
 return Alitalk.isInstallAltalk();
}
function NewCheckAlitalkInstalled(){
  return newCheckAlitalkInstalled();
}



function startAlitalk(){
    //判断浏览者是否安装了贸易通
    if (newCheckAlitalkInstalled()){
        window.location = "Alitalk:";
     }else{
        //提示安装贸易通
        window.target="_blank";
        window.open("http://china.alibaba.com/misc/promotion_down.htm");
     }
}
        

    function alitalkVerSupportedSMS() {
    	var is = false;
    	try {
    		var obj = new ActiveXObject("Ali_Check.InfoCheck");
    		//当前版本号 字符格式： 数字.数字.数字字母
    		var mver = obj.GetValueBykey("AliTalkVersion");
    		//当前版本号 字符数组
    		var curver = mver.split(".");
    		//当前版本号 数字数组
    		var intCurver = new Array();
    		for(var i = 0 ; i < curver.length ; i++){
    			intCurver.push(parseInt(curver[i]));
    		}
    		// 大于 version 5.50.00
    		// 最小版本号 数字数组
    		var intMinver = [5,50,0];
    		// 版本号长度
    		var versionLengh = intCurver.length;
    		if(intMinver.length < versionLengh ){
    			versionLengh = intMinver.length;
    		}
    		//比较版本号，从高位往低位比
    		for(var j = 0 ; j < versionLengh ; j++){
    			//主号码比较大，直接返回true
    			if(intCurver[j] > intMinver[j]){
    				is = true
    				break;
    			}else if(intCurver[j] == intMinver[j]){
    				//是最后一个，说明版本号相等
    				if(j == versionLengh-1){
    					is = true ;
    				}
    			}else{
    			//主号码比较小，直接返回false
    				break;
    			}
    		}
    		//原来的版本比较，使用字符串比较 10.20.3 会小于 5.50.00
    		//if (mver >= "5.50.00") {
    		//	is = true;
    		//}
    	}
    	catch (e) {
    	}
    	return is;
    }
-->
</script>
											<script language="javascript" type="text/JavaScript">
	var picHelperStatusCode = 1;
	//检测是否安装图片助手	
	function checkImageManagerInstalled(){
		var obj;
		try{
		    obj = new ActiveXObject("ImageMan.ImageManager");
		}catch(e){
		}
	    if (null!=obj){
		    delete obj;
		    return true;
		} else {
		    return false;
		}
	}
	
	var alitalkInstalled =  newCheckAlitalkInstalled();
	var aliPicHelperInstalled = checkImageManagerInstalled();
	
	//没有安装图片助手
	if(!aliPicHelperInstalled){
		//安装了贸易通，版本低
		if(alitalkInstalled){
			picHelperStatusCode = -1;
		}else{
			picHelperStatusCode = -2;
		}
	}
	
	function popPicHelper(t_id){
		if (pictureMaxNum == 1){
			if(document.all.picsample_0.value == "1"){
	        	alert("您是普通会员，只能上传一张产品图片。");
	       	}else{
	       		popPicHelper2("0");
	       	}
		}else{		
	    	popPicHelper2(t_id);
	    }
	}
	
	function getId(id){
		if(id == '100'){  //说明是按照默认地方上传
			var nopic = 'detail_no_pic';
			var src0 = document.all.uploaded0.src;
			if(src0.indexOf(nopic) != -1){
				return '0';
			}
							var src1 = document.all.uploaded1.src;
				if(src1.indexOf(nopic) != -1){
					return '1';
				}
				var src2 = document.all.uploaded2.src;
				if(src2.indexOf(nopic) != -1){
					return '2';
				}
					}
		return id;
	}
	
	//弹出图片助手
	function popPicHelper2(id,path){
		if(document.all.picHelperErrorMsg){
			if(picHelperStatusCode == 1){
				id = getId(id);
				if(id == '100'){
				  					if(confirm('您已上传3张图，再次上传将会覆盖您的第1张图，但您仍然可以使用"图片助手"来处理您的图片，作为后续发布时使用，您确定要使用吗？')){
						id = '0'
					}else{
						return;
					}
				  				}
				var tracelog = '&tracelog=fb_picture_error';
				if(!path){
					path = '';
					tracelog = '&tracelog=fb_picture_index';
				}
				var win = 'http://upload.china.alibaba.com/offer/img_manage_adv_upload_picture.htm?id='+id+'&path='+path+tracelog;
				try{
					window.open(win,'imgManager','width=770,height=554,top=70,left=80,toolbar=no,scrollbars=no,resizable=yes,status=no,toolbar=no,menubar=no,location=no');
				}catch(e){
				}
			}else {
				if(confirm(' 使用“图片助手”功能，需要免费安装或升级您的贸易通，是否要免费安装或升级您的贸易通？(提醒：安装或升级完成需要“刷新”页面后再次点击“立即使用”才可使用“图片助手”功能！) ')){
					window.open('http://download.im.alisoft.com/download.php');
					return;
				}else{
					return;
				}
			}
		}
	}
</script>
										</td>
									</tr>
									<tr id="tr_HideContact" style="display: none;">
										<td class="list_left_box" align="right" valign="top">
											<img
												src="<%=path%>/user/product/product_files/icon_right_19x19.gif"
												align="absmiddle" width="19" height="16"/>
											&nbsp;
											
											<b>选择联系方式</b><font color="#ff0000">*</font>
										</td>
										<td class="list_right_box" valign="top">
											<table border="0" cellpadding="0" cellspacing="0"
												width="100%">
												<tbody>
													<tr>
														<td height="26">
															<input name="_fmo.a._0.h" value="false" checked="checked"
																type="radio">
															允许卖家用任何方式与我联系
														</td>
													</tr>
													<tr>
														<td width="449">
															<input name="_fmo.a._0.h" value="true" type="radio">
															只允许卖家给我网上留言报价
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
													交易条件
												</div>
											</div>
											<div class="hyprice s2" id="product_market"
												style="display: none;">
												<a id="product_market_url" target="_blank" href="#">查看阿里巴巴同行报价</a>
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
											<style>
			#div_trade_productfeature input{ margin-right:6px}
		</style>
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
																								<br>
																								2、买家如需还价，您可在买家出价后，到阿里助手“交易管理”中修改价格，达成最后交易。
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
																	align="absmiddle" width="19" height="16">
																<b>计量单位</b>
															</td>
															<td class="list_right_box">
																<input id="fieldFlagName_unit" name="fieldFlagName_unit"
																	value="feature59238" type="hidden">


																<input class="tpf_input" name="feature59238"
																	id="feature59238" value="" size="23" maxlength="12"
																	onblur="doOnBlur(this.name, false,'trade_productfeature');checkTradeCondition(false, this)"
																	onfocus="doOnFocusOfTrade(this.name, 'trade_productfeature')"
																	onchange="changeTradeUnit()" type="text">
																<span style="padding-left: 10px;"><span
																	id="wrong_feature59238" class="s lh13 wrong"
																	style="display: none; width: 110px;"> <span
																		class="wrongwords" id="wrong_words_feature59238">
																			带<font color="red">*</font>为必填项。 </span> </span> </span>
																<span style="padding-left: 10px;"><span
																	id="trade_wrong_feature59238" class="s lh13 wrong"
																	style="display: none; width: 260px;"> <br/>
																		<font color="#999999">请填写与单价相符的计量单位，如只、件、箱等</font> </span> </span>
															</td>
														</tr>
														<tr>
															<td class="list_left_box" align="right" valign="top"
																height="25">
																<img id="img_right_feature59240"
																	src="<%=path%>/user/product/product_files/icon_grayright_19x19.gif"
																	align="absmiddle" width="19" height="16">
																<b>产品单价</b>
															</td>
															<td class="list_right_box">
																<input id="fieldFlagName_price"
																	name="fieldFlagName_price" value="feature59240"
																	type="hidden"/>


																<input class="tpf_input" name="feature59240"
																	id="feature59240" value="" size="23" maxlength="12"
																	onblur="doOnBlur(this.name, false,'trade_productfeature');checkTradeCondition(false, this)"
																	onfocus="doOnFocusOfTrade(this.name, 'trade_productfeature')"
																	type="text"/>
																元/
																<span id="trade_unit_price">单位</span>
																<span style="padding-left: 10px;"><span
																	id="wrong_feature59240" class="s lh13 wrong"
																	style="display: none; width: 110px;"> <span
																		class="wrongwords" id="wrong_words_feature59240">
																			带<font color="red">*</font>为必填项。 </span> </span> </span>
																<span style="padding-left: 10px;"><span
																	id="trade_wrong_feature59240" class="s lh13 wrong"
																	style="display: none; width: 260px;"> <br/>
																		<font color="#999999">请您填写不含运费的价格</font> </span> </span>
															</td>
														</tr>
														<tr>
															<td class="list_left_box" align="right" valign="top"
																height="25">
																<img id="img_right_feature59239"
																	src="<%=path%>/user/product/product_files/icon_grayright_19x19.gif"
																	align="absmiddle" width="19" height="16">
																<b>最小起订量</b>
															</td>
															<td class="list_right_box">
																<input id="fieldFlagName_beginamount"
																	name="fieldFlagName_beginamount" value="feature59239"
																	type="hidden"/>


																<input class="tpf_input" name="feature59239"
																	id="feature59239" value="" size="23" maxlength="12"
																	onblur="doOnBlur(this.name, false,'trade_productfeature');checkTradeCondition(false, this)"
																	onfocus="doOnFocusOfTrade(this.name, 'trade_productfeature')"
																	type="text"/>
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
																	align="absmiddle" width="19" height="16">
																<b>供货总量</b>
															</td>
															<td class="list_right_box">
																<input id="fieldFlagName_amount"
																	name="fieldFlagName_amount" value="feature59241"
																	type="hidden">


																<input class="tpf_input" name="feature59241"
																	id="feature59241" value="" size="23" maxlength="12"
																	onblur="doOnBlur(this.name, false,'trade_productfeature');checkTradeCondition(false, this)"
																	onfocus="doOnFocusOfTrade(this.name, 'trade_productfeature')"
																	type="text">
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
																	align="absmiddle" width="19" height="16">
																<b>发货期限</b>
															</td>
															<td class="list_right_box">
																<input id="fieldFlagName_sendlimit"
																	name="fieldFlagName_sendlimit" value="feature59242"
																	type="hidden">
																自买家付款之日起

																<select name="feature59242" id="feature59242"
																	maxlength="80"
																	onchange="javascript:funcSelectOther(59242)"
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
																	align="absmiddle" width="19" height="16">
																<b>供应商类型</b><font color="#ff0000">*</font>
															</td>
															<td class="list_right_box">
																<input id="fieldFlagName_providertype"
																	name="fieldFlagName_providertype" value="feature116330"
																	type="hidden">
																我是该产品的

																<select name="feature116330" id="feature116330"
																	maxlength="80"
																	onchange="javascript:funcSelectOther(116330)"
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
																align="absmiddle" width="19" height="16"/>
															&nbsp;
															
															<b>经销批发</b><font color="#ff0000">*</font>
														</td>
														<td class="list_right_box" valign="top">
															<input name="rBizType" value="checkbox"
																onclick="changeBizType('Y')" type="radio"/>
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
											<script language="JavaScript">
    function changeBizType(isSet){
        document.mainform.bizTypeSet.value = isSet;
		var wrongword = document.getElementById("wrong_bizTypeSet");
		if(wrongword){
		    wrongword.style.display = "none";
		}
    }
	selectBizTypeWhenChangeType('SALE');
    </script>
										</td>
									</tr>

									<tr>
										<td>
											<table border="0" cellpadding="0" cellspacing="0"
												width="100%">
												<tbody>
													<tr id="needLockAlipay">
														<td class="list_left_box" style="line-height: 12px;"
															align="right" valign="top" height="8">
															<a name="aegisAlipay"> <img
																	id="img_right__fmo.a._0.ae"
																	src="<%=path%>/user/product/product_files/icon_grayright_19x19.gif"
																	align="absmiddle" width="19" height="16"> <img
																	src="<%=path%>/user/product/product_files/zhifubaologo.gif"
																	align="absmiddle">&nbsp;<b>使用支付宝</b><font
																color="#ff0000">*</font> </a>
														</td>
														<td class="list_right_box">
															<table border="0" cellpadding="0" cellspacing="0"
																width="100%">
																<tbody>
																	<tr>
																		<td height="26">
																			<input id="_fmo.a._0.ae_0" name="_fmo.a._0.ae"
																				onblur="doOnBlur(this.name, true)"
																				onfocus="doOnFocus(this.name)" value="true"
																				type="radio">
																			是

																			<input id="_fmo.a._0.ae_1" name="_fmo.a._0.ae"
																				onblur="doOnBlur(this.name, true)"
																				onfocus="doOnFocus(this.name)" value="false"
																				type="radio">
																			否
																		</td>
																	</tr>
																</tbody>
															</table>
															<table border="0" bordercolor="#cccccc" cellpadding="3"
																cellspacing="0" width="100%">
																<tbody>
																	<tr id="wrong__fmo.a._0.ae" style="display: none;">
																		<td class="s lh13 wrong" valign="top">
																			<span class="wrongwords"
																				id="wrong_words__fmo.a._0.ae"> </span>
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
								</tbody>
							</table>
							<br>
							<input name="_fmo.a._0.f" value="" type="hidden">
							<input name="_fmo.a._0.co" value="" type="hidden">
							<input name="_fmo.a._0.ph" value="" type="hidden">
							<input name="_fmo.a._0.pho" value="" type="hidden">
							<input name="_fmo.a._0.phon" value="" type="hidden">
							<input name="_fmo.a._0.fa" value="" type="hidden">
							<input name="_fmo.a._0.fax" value="" type="hidden">
							<input name="_fmo.a._0.faxn" value="" type="hidden">
							<input name="_fmo.a._0.e" value="" type="hidden">
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
													href="http://china.alibaba.com/member/modify_member_info.htm?tracelog=fb_one_xiugai"
													target="_blank">点此修改</a>
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
												class="S">阅读阿里巴巴服务条款</a>
										</td>
									</tr>
									<tr>
										<td class="C spc16" align="center">
											<input name="postsubmit"
												onmousedown="javascript:postOffer(bizTypeVar)"
												value="同意服务条款，我要发布" class="submitButton" type="button">
											<a href="#"
												onclick="previewPost(document.mainform);return false;">预览这条信息</a>
										</td>
									</tr>
								</tbody>
							</table>
							<input name="isTrade" value="" type="hidden">
							<br>

						</form>

						<script>
//.入口参数
var topCatForm = document.mainform.topCatFormKey;
var secondCatForm = document.mainform.secondCatFormKey;
var leafCatForm = document.mainform.leafCatFormKey;
var catTradeTypeVar = "1";
var catModuleNameVar = "";
var catBatchPostOnlyVar = "";
var catAllTradeTypeVar = "";
    var baseDataFeeder = 'http://upload.china.alibaba.com/offer/list_category.htm?all_trade_type=&trade_type=1&module_name=&batch_post_only=';
//下拉列表的起始索引
    var beginIndex = 0;
//.end
if (beginIndex > 1){
	beginIndex = 1;
}

function getCategoryDataFeeder(parentId){
	var d = new Date();
	return baseDataFeeder + "&parent_id=" + parentId + "&t=" + d.getTime();
}

function initSubOptions(id, target){
     var onSuccess=function(httpReq){
	    //从JSON解析出类目数组
	 	var jsonTxt = httpReq.request.responseText;
		var optionDataArr = eval(jsonTxt);
		//清除选择框
		var len = target.options.length;
        for (var i = len - 1; i > beginIndex - 1; i--) {
            target.options[i] = null;
        }
		//设置选择框
        for (var i = 0; i < optionDataArr.length; i++) {
		    var op = new Option(optionDataArr[i].title, optionDataArr[i].id);
			if(!optionDataArr[i].tradeTypeMatch){
    			op.style.color="#CCCCCC";
			}
            target.options[i + beginIndex] = op;
        }
		if(target.length > beginIndex){
			target.disabled = false;
		}
		else{
			target.disabled = true;
		}
	 };
	 var url = getCategoryDataFeeder(id);
     var httpReq = new HttpRequestSender("GET", url,null,null, onSuccess, null);
	 httpReq.sendRequest();
}

</script>
						<script language="JavaScript">		
	function HttpRequestSender(method, url, params, contentType, onsuccess, onerror){
		this.method = method;
		this.url = url;
		this.params = params;
		this.onsuccess = onsuccess;
		if(onerror){
		    this.onerror = onerror;
		}
		else{
			this.onerror = function(){};
		}
	}
		
	HttpRequestSender.prototype.sendRequest = function(){
		this.request = null;
		if (window.XMLHttpRequest) {
			this.request = new XMLHttpRequest();
		}else if (typeof ActiveXObject != "undefined"){
			try{
				this.request = new ActiveXObject("Microsoft.XMLHTTP");
			}
			catch(err){
				this.request = null;
			}
		}
		if (this.request){
        	try{
          		var loader=this;
            	this.request.onreadystatechange=function(){
            		HttpRequestSender.onReadyState.call(loader);
          		}
          		this.request.open(this.method,this.url,false);
          		if (this.contentType){
            		this.request.setRequestHeader('Content-Type', this.contentType);
          		}
          		this.request.send(this.params);
        	}catch (err){
          		this.onerror.call(this);
        	}
  		}
	}
	
	HttpRequestSender.onReadyState = function(){
		var req=this.request;
  		if (req.readyState == 4){
    		if (req.status == 200 || req.status==0){
      			this.onsuccess.call(this, this);
    		}else{
      			this.onerror.call(this);
    		}
  		}
	}
</script>
						<script>
						 
function TopCategory(id, title, tradeTypeMatch) {
    this.id = id;
    this.title = title;
    this.option = new Option(this.title, this.id);
    if(!tradeTypeMatch){
    	this.option.style.color="#CCCCCC";
	}
}

function changeTopCategory(){
    secondCatForm.value = "";
		if(topCatForm.selectedIndex == -1 || (topCatForm.selectedIndex == 0 && beginIndex == 1)) {
		if(beginIndex == 1){
        	topCatForm.options[0].selected = true;

		}
        var len = secondCatForm.options.length;
        for (var i = len - 1; i > beginIndex - 1; i--) {
            secondCatForm.options[i] = null;
        }
	}
	else{
	   	var selectedTopCategory;
		//查出选择了那个顶极类目
		for(var j =0;j<topCatArr.length;j++){
			if(topCatForm.options[topCatForm.selectedIndex].value == topCatArr[j].id){
				selectedTopCategory = topCatArr[j];
			} 
		}
		        initSubOptions(selectedTopCategory.id, secondCatForm);
	}
	if (beginIndex == 1){
        secondCatForm.options[0].selected = true;
	}
    changeSecondCategory();
} 
function changeSecondCategory() {
	leafCatForm.value = "";
    if (secondCatForm.selectedIndex == -1 || (secondCatForm.selectedIndex == 0 && beginIndex == 1)) {
        if (beginIndex == 1)
            secondCatForm.options[0].selected = true;
        var len = leafCatForm.options.length;
        for (var i = len - 1; i > beginIndex - 1; i--) {
            leafCatForm.options[i] = null;
        }
    }
    else {
        var option = secondCatForm.options[secondCatForm.selectedIndex];
		initSubOptions(option.value, leafCatForm);
    }
    if (beginIndex == 1){
        leafCatForm.options[0].selected = true;
	}
}

function setSelectByIdPath(idPath, noChangeTopCat) {
    var topCatId = 0, secondCatId = 0, leafCatId = 0;
    var index, oldIndex;
    oldIndex = 0;
    index = idPath.indexOf(",");
    if (index == -1)
        return false;
        
    topCatId = idPath.substring(oldIndex, index);
    if (noChangeTopCat && topCatId != topCatForm.value)
        return;

    oldIndex = index + 1;
    index = idPath.indexOf(',', oldIndex);    
    if (index == -1) {
        secondCatId = idPath.substring(oldIndex);
    }
    else {
        secondCatId = idPath.substring(oldIndex, index);

        oldIndex = index + 1;
        index = idPath.indexOf(',', oldIndex);
        if (index == -1)
            leafCatId = idPath.substring(oldIndex);
        else
            leafCatId = idPath.substring(oldIndex, index);
    }
    if (!noChangeTopCat) {
        topCatForm.value = topCatId;
        changeTopCategory();
    }
    secondCatForm.value = secondCatId;
    changeSecondCategory();
    leafCatForm.value = leafCatId;

    return true;
}

function setSelectLeafCategoryByPath(path) {
    var index;
    index = path.indexOf("/");
    var name;
    if (index >= 0) {
        name = path.substring(0, index);
    }
    else {
        name = path;
    }
    var flag = false;
    var topLen = topCatForm.options.length;
    for (var i = beginIndex; i < topLen; i++) {
        if (topCatForm.options[i].text == name) {
            flag = true;
            topCatForm.options[i].selected = true;
            changeTopCategory();
            path = path.substring(index + 1);
            index = path.indexOf("/");
            if (index == -1)
                name = path;
            else
                name = path.substring(0, index);

            var secLen = secondCatForm.options.length;
            var j;
            secondCatForm.selectedIndex = -1;
            for (j = beginIndex; j < secLen; j++) {
                if (secondCatForm.options[j].text == name) {
                    secondCatForm.options[j].selected = true;
                    changeSecondCategory();
                    name = path.substring(index + 1);
                    var thirdLen = leafCatForm.options.length;
                    var k;
                    leafCatForm.selectedIndex = -1;
                    for (k = beginIndex; k < thirdLen; k++) {
                        if (leafCatForm.options[k].text == name) {
                            leafCatForm.options[k].selected = true;
                            break;
                        }
                    }
                    if (k == secLen) flag = false;
                    break;
                }
            }
            if (j == secLen) flag = false;
            break;
        }
    }
    return flag;
}

function initTopCategoryForm() {
    var size = topCatArr.length;
    for (var i = 0; i < size; i++) {
        topCatForm.options[i + beginIndex] = topCatArr[i].option;
    }
    changeTopCategory();
}

function doDeleteAgentAndCorp(topCateObj){
    var changed = false;
    for (var i = 0; i < topCateObj.length; i++) {		
        if(topCateObj.options[i].value=='51' || topCateObj.options[i].value=='2903'){
			if(topCateObj.options[i].selected == true){
				topCateObj.options[0].selected = true;
				changed = true;
			}				
			topCateObj.options[i] = null;				
		}
    }
	if(changed){
		changeTopCategory();
	}
}
//static methods
var topCatArr = new Array();
//init data store in javascript
var topCat;
var sCat;
function initTopCategoryData(){
                                                topCat = new TopCategory('58', '照明工业', true)
                topCatArr = topCatArr.concat(topCat)
                                                topCat = new TopCategory('57', '电子元器件', true)
                topCatArr = topCatArr.concat(topCat)
                                                topCat = new TopCategory('53', '传媒、广电', true)
                topCatArr = topCatArr.concat(topCat)
                                                topCat = new TopCategory('30', '安全、防护', true)
                topCatArr = topCatArr.concat(topCat)
                                                topCat = new TopCategory('23', '包装', true)
                topCatArr = topCatArr.concat(topCat)
                                                topCat = new TopCategory('52', '纸业', true)
                topCatArr = topCatArr.concat(topCat)
                                                topCat = new TopCategory('21', '办公、文教', true)
                topCatArr = topCatArr.concat(topCat)
                                                topCat = new TopCategory('7', '数码、电脑', true)
                topCatArr = topCatArr.concat(topCat)
                                                topCat = new TopCategory('5', '电工电气', true)
                topCatArr = topCatArr.concat(topCat)
                                                topCat = new TopCategory('4', '纺织、皮革', true)
                topCatArr = topCatArr.concat(topCat)
                                                topCat = new TopCategory('3', '服装', true)
                topCatArr = topCatArr.concat(topCat)
                                                topCat = new TopCategory('54', '服饰', true)
                topCatArr = topCatArr.concat(topCat)
                                                topCat = new TopCategory('14', '机械及行业设备', true)
                topCatArr = topCatArr.concat(topCat)
                                                topCat = new TopCategory('59', '五金、工具', true)
                topCatArr = topCatArr.concat(topCat)
                                                topCat = new TopCategory('8', '化工', true)
                topCatArr = topCatArr.concat(topCat)
                                                topCat = new TopCategory('56', '精细化学品', true)
                topCatArr = topCatArr.concat(topCat)
                                                topCat = new TopCategory('55', '橡塑', true)
                topCatArr = topCatArr.concat(topCat)
                                                topCat = new TopCategory('11', '环保', true)
                topCatArr = topCatArr.concat(topCat)
                                                topCat = new TopCategory('10208', '仪器仪表', true)
                topCatArr = topCatArr.concat(topCat)
                                                topCat = new TopCategory('15', '家居用品', true)
                topCatArr = topCatArr.concat(topCat)
                                                topCat = new TopCategory('6', '家用电器', true)
                topCatArr = topCatArr.concat(topCat)
                                                topCat = new TopCategory('13', '建筑、建材', true)
                topCatArr = topCatArr.concat(topCat)
                                                topCat = new TopCategory('12', '交通运输', true)
                topCatArr = topCatArr.concat(topCat)
                                                topCat = new TopCategory('17', '礼品、工艺品、饰品', true)
                topCatArr = topCatArr.concat(topCat)
                                                topCat = new TopCategory('10', '能源', true)
                topCatArr = topCatArr.concat(topCat)
                                                topCat = new TopCategory('1', '农业', true)
                topCatArr = topCatArr.concat(topCat)
                                                topCat = new TopCategory('33', '汽摩及配件', true)
                topCatArr = topCatArr.concat(topCat)
                                                topCat = new TopCategory('2', '食品、饮料', true)
                topCatArr = topCatArr.concat(topCat)
                                                topCat = new TopCategory('509', '通信产品', true)
                topCatArr = topCatArr.concat(topCat)
                                                topCat = new TopCategory('1813', '玩具', true)
                topCatArr = topCatArr.concat(topCat)
                                                topCat = new TopCategory('9', '冶金矿产', true)
                topCatArr = topCatArr.concat(topCat)
                                                topCat = new TopCategory('16', '医药、保养', true)
                topCatArr = topCatArr.concat(topCat)
                                                topCat = new TopCategory('34', '印刷', true)
                topCatArr = topCatArr.concat(topCat)
                                                topCat = new TopCategory('18', '运动、休闲', true)
                topCatArr = topCatArr.concat(topCat)
                                                topCat = new TopCategory('-5', '商务服务', false)
                topCatArr = topCatArr.concat(topCat)
                                                topCat = new TopCategory('-4', '项目合作', false)
                topCatArr = topCatArr.concat(topCat)
                                                topCat = new TopCategory('2829', '二手设备转让', true)
                topCatArr = topCatArr.concat(topCat)
                                                topCat = new TopCategory('-2', '加工', false)
                topCatArr = topCatArr.concat(topCat)
                                                topCat = new TopCategory('-3', '代理', false)
                topCatArr = topCatArr.concat(topCat)
                                                topCat = new TopCategory('32', '库存积压', true)
                topCatArr = topCatArr.concat(topCat)
                        }
initTopCategoryData();
initTopCategoryForm();
    var isTreeEmpty = false;
</script>
						<br>
						<br>
					</td>
				</tr>
			</tbody>
		</table>

		<script language="JavaScript">

var hasTradeParam = "true";

var hasCommonParam = "true";
var hasProductFeature = "false";
                        hasProductFeature = "true";
            var bizTypeVar = "SALE";
var mixWholesaleVar = "false";
var typeWayVar = "SALE";
var tradeTypeVar = "1"; 
var topCatIdVar = "1813";
var secondCatIdVar= "181302";
var leafCatIdVar ="1033669";
var isFromNonmember = "false";
var iskeywordsExist="N";
var isNeedSubmit="";
var isAtBackOffice ="false";

var templateIdVar = "0";
</script>

		<script language="JavaScript" type="text/javascript">
	var xml = new ActiveXObject("Microsoft.XMLDOM");
var xsl = new ActiveXObject("Microsoft.XMLDOM");
var orderedXsl = new ActiveXObject("Microsoft.XMLDOM");
var tradexsl = new ActiveXObject("Microsoft.XMLDOM");
var priceTradexsl = new ActiveXObject("Microsoft.XMLDOM");
var xsl_feature_img = new ActiveXObject("Microsoft.XMLDOM");
xml.async = false;
xsl.async = false;
xsl_feature_img.async = true;
try{
	xsl.load("http://upload.china.alibaba.com/offer/disxsl.htm");
}catch(e){
	xsl.load("http://china.alibaba.com/offer/disxsl.htm");
}
try{
	orderedXsl.load("http://upload.china.alibaba.com/offer/ordered_disxsl.htm");
}catch(e){
	orderedXsl.load("http://china.alibaba.com/offer/ordered_disxsl.htm");
}
try{
xsl_feature_img.load("http://upload.china.alibaba.com/offer/xsl_feature_img.htm");
}catch(e){
xsl_feature_img.load("http://china.alibaba.com/offer/xsl_feature_img.htm");
}

tradexsl.async = true;
try{
tradexsl.load("http://upload.china.alibaba.com/offer/tradedisxsl.htm?biz_type=SALE");
}catch(e){
tradexsl.load("http://china.alibaba.com/offer/tradedisxsl.htm?biz_type=SALE");
}

priceTradexsl.async = true;
try{
priceTradexsl.load("http://upload.china.alibaba.com/offer/price_tradedisxsl.htm");
}catch(e){
priceTradexsl.load("http://china.alibaba.com/offer/price_tradedisxsl.htm");
}
    
var defaultvalue = "<table width=\"100%\" border=\"0\" cellspacing=\"0\" cellpadding=\"2\">"
	   	+ "<tr>"
		+ "  <td align=\"right\" width=\"150\" ><b>产品数量</b></td>"
	    + "  <td>"
	    + "      <input name=\"_fmo.a._0.q\" type=\"text\" value=\"\" size=\"23\" maxlength=\"80\" onblur=\"doOnBlur('feature_fmo.a._0.q', false)\" onfocus=\"doOnFocus('feature_fmo.a._0.q')\" >"
	    + "  </td>"
	  	+ "</tr>"
	   	+ "<tr>"
		+ "  <td align=\"right\" width=\"150\" ><b>包装说明</b></td>"
	    + "  <td>"
	    + "      <input name=\"_fmo.a._0.pa\" type=\"text\" value=\"\" size=\"23\" maxlength=\"80\" onblur=\"doOnBlur('feature_fmo.a._0.pa', false)\" onfocus=\"doOnFocus('feature_fmo.a._0.pa')\" >"
	    + "  </td>"
	  	+ "</tr>"
	   	+ "<tr>"
		+ "  <td align=\"right\" width=\"150\" ><b>价格说明</b></td>"
	    + "  <td>"
	    + "      <input name=\"_fmo.a._0.p\" type=\"text\" value=\"\" size=\"23\" maxlength=\"80\" onblur=\"doOnBlur('feature_fmo.a._0.p', false)\" onfocus=\"doOnFocus('feature_fmo.a._0.p')\" >"
	    + "  </td>"
	  	+ "</tr>"
	   	+ "<tr>"
		+ "  <td align=\"right\" width=\"150\" ><b>产品规格</b></td>"
	    + "  <td>"
	    + "      <input name=\"_fmo.a._0.sp\" type=\"text\" value=\"\" size=\"23\" maxlength=\"80\" onblur=\"doOnBlur('feature_fmo.a._0.sp', false)\" onfocus=\"doOnFocus('feature_fmo.a._0.sp')\" >"
	    + "  </td>"
	  	+ "</tr>"
	  	+ "</table>";

var productfeature = document.all("div_productfeature");

function selectCategory(catid, isNeedFeature) {
    if(isNeedFeature){
		try{
        xml.load("http://upload.china.alibaba.com/offer/product_features.htm?type=common&categoryId="+catid);
		}catch(e){
		xml.load("http://china.alibaba.com/offer/product_features.htm?type=common&categoryId="+catid);
		}
        productfeature.innerHTML = xml.transformNode(xsl);
        featureImg.innerHTML = xml.transformNode(xsl_feature_img);
    }else{
        productfeature.innerHTML = defaultvalue;
        featureImg.innerHTML = "";
    }
}

function getCategoryHtml(catid, isNeedFeature, offerType, isBigBuyer) {
	if(offerType == null){
		offerType = "SALE";
	}	
    if(isNeedFeature){
		var featureUrl = "http://upload.china.alibaba.com/offer/product_features.htm?type=common&categoryId="+catid+"&offerType="+offerType;
		if(isBigBuyer == true){
			featureUrl = featureUrl+"&ignoreNeed=Y";
		}
		try{
        xml.load(featureUrl);
		}catch(e){
			featureUrl = "http://china.alibaba.com/offer/product_features.htm?type=common&categoryId="+catid+"&offerType="+offerType;
			if(isBigBuyer == true){
				featureUrl = featureUrl+"&ignoreNeed=Y";
			}
			xml.load(featureUrl);
		}
        var tmpHtml=xml.transformNode(xsl);	
		alert(tmpHtml);
        return tmpHtml;
    }else{
        return defaultvalue;
    }
}
function getOrderedCategoryHtml(catid, isNeedFeature, offerType, isBigBuyer) {
	if(offerType == null){
		offerType = "SALE";
	}	
    if(isNeedFeature){
		var featureUrl = "http://upload.china.alibaba.com/offer/ordered_product_features.htm?type=common&categoryId="+catid+"&offerType="+offerType;
		if(isBigBuyer == true){
			featureUrl = featureUrl+"&ignoreNeed=Y";
		}
		try{
        xml.load(featureUrl);
		}catch(e){
			featureUrl = "http://china.alibaba.com/offer/ordered_product_features.htm?type=common&categoryId="+catid+"&offerType="+offerType;
			if(isBigBuyer == true){
				featureUrl = featureUrl+"&ignoreNeed=Y";
			}
			xml.load(featureUrl);
		}
		var tmpHtml;
		try{
         tmpHtml=xml.transformNode(orderedXsl);
		}
		catch(e){
			alert("error when transform productfeature xsl:" + featureUrl);
		}
		
        return tmpHtml;
    }else{
        return defaultvalue;
    }
}
//交易参数
function getCategoryTradeHtml(catid, isNeedFeature, bizType) {    
    if(isNeedFeature){
		try{
        xml.load("http://upload.china.alibaba.com/offer/product_features.htm?type=trade&categoryId="+catid+"&is_trade=&bizType="+bizType);
		}catch(e){
		xml.load("http://china.alibaba.com/offer/product_features.htm?type=trade&categoryId="+catid+"&is_trade=&bizType="+bizType);
		}
                var tmpHtml=xml.transformNode(tradexsl);
        return tmpHtml;
            }else{
        return "";
    }
}

</script>


		<script language="JavaScript" type="text/javascript">
	function onChangeTopCategory(obj){
	    changeTopCategory();
	    featurePropertiesHtmlValue = "";
	    tradeFeaturePropertiesHtmlValue = "";
	    showSelectPath();
        if(obj && obj.value){
        	doOnSelectCategory(obj);
        }
	}
	function onChangeSecondCategory(obj){
	    changeSecondCategory();
	    featurePropertiesHtmlValue = "";
	    tradeFeaturePropertiesHtmlValue = "";
	    if(form.leafCatFormKey.length > beginIndex){
	    form.leafCatFormKey.disabled = false;
	    }else{
	    form.leafCatFormKey.disabled = true;
	    makeFeatureProperties();
	    }
	    showSelectPath();
        if(obj && obj.value){
        	doOnSelectCategory(obj);
        }
	}

	function onChangeLeafCategory(obj){
	    showSelectPath();
	    featurePropertiesHtmlValue = "";
	    tradeFeaturePropertiesHtmlValue = "";
	    makeFeatureProperties();
        if(obj && obj.value){
        	doOnSelectCategory(obj);
        }
	}

	function getSelectPath(){
        if(form.topCatFormKey.selectedIndex == -1)
            return "";

        var path = form.topCatFormKey.options[form.topCatFormKey.selectedIndex].text;
        if(form.secondCatFormKey.selectedIndex >=0)
            path += " >> " + form.secondCatFormKey.options[form.secondCatFormKey.selectedIndex].text;

        if(form.leafCatFormKey.selectedIndex >=0)
            path += " >> " + form.leafCatFormKey.options[form.leafCatFormKey.selectedIndex].text;

        return path;
	}

	function showSelectPath(){
        /*
        var path = getSelectPath();
        if(path == "") return;
	    document.getElementById("catPath").innerHTML = path;
	    */
	}
	function getSelectTypeValue(){
	    return getOfferTypeValue();
	}



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


	//根据叶子类目id动态生成产品属性参数,在发布offer的时候有效，在修改offer的时候无效
	function makeFeatureProperties(){

	    if(oldTopCatValue != form.topCatFormKey.value
	        || oldSecondCatValue != form.secondCatFormKey.value
	        || oldLeafCatValue != form.leafCatFormKey.value){
	        var leafCatId = getLeafCategoryId();
	        if(leafCatId == ""){
	            return;
	        }
	        oldTopCatValue = form.topCatFormKey.value;
	        oldSecondCatValue = form.secondCatFormKey.value;
	        oldLeafCatValue = form.leafCatFormKey.value;
	        var fpObj = document.all("div_productfeature");
	        var fpTradeObj = document.all("div_trade_productfeature");
	        var trTradeObj = document.all("tr_trade_productfeature");
	        var trProductObj = document.all("tr_productfeature");
	        var tdTradeObj = document.all("td_trade_productfeature");
	        try{
	            if(needFeature){
	                featurePropertiesHtmlValue = getOrderedCategoryHtml(leafCatId, needFeature);
	                fpObj.innerHTML = featurePropertiesHtmlValue;
	                if(featurePropertiesHtmlValue.length > 120){
	                    trProductObj.style.display="";
	                }else{
	                    trProductObj.style.display="none";
	                }
	                tradeFeaturePropertiesHtmlValue = getCategoryTradeHtml(leafCatId, needFeature, bizTypeVar);
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
	                defaultFeaturePropertiesHtmlValue = getOrderedCategoryHtml(leafCatId, needFeature);
	                fpObj.innerHTML = defaultFeaturePropertiesHtmlValue;
	                defaultTradeFeaturePropertiesHtmlValue = "";
	                fpTradeObj.innerHTML = defaultTradeFeaturePropertiesHtmlValue;
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
	    }
	}
	//返回被选中的类目(必须是叶子类目)
	function getLeafCategoryId(){
	    if(typeof(form.leafCatFormKey) == "object"){
	        if(form.leafCatFormKey.selectedIndex >= beginIndex){
	            return form.leafCatFormKey.value;
	        }else if(form.leafCatFormKey.length > beginIndex){
	            return "";
	        }
	        if(form.secondCatFormKey.selectedIndex >= beginIndex){
	            return form.secondCatFormKey.value;
	        }
	    }
	    return "";
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

		<script language="JavaScript" type="text/javascript">
	
    var isFreemember = true;
    
    if(isFreeMember=="false"){
        isFreemember = false;
    }
    
    //只要供应方向才有产品参数
    var needFeature = true;
    var featurePropertiesHtmlValue="";
    var defaultFeaturePropertiesHtmlValue="";
    var tradeFeaturePropertiesHtmlValue="";
    var defaulTradetFeaturePropertiesHtmlValue="";
    //init
    //类目下拉列表的有效内容起始索引
    var beginIndex = 0;
    var form = mainform;
    var subjectModifyFlag = false;
    //这几个变量都是在发布offer的时候有效的，在修改offer的时候无效
    
    if((isEditVar!="true")||(isTBDInfoCanChange=="true")){
        var oldTopCatValue = form.topCatFormKey.value;
        var oldSecondCatValue = form.secondCatFormKey.value;
        var oldLeafCatValue = form.leafCatFormKey.value;
    }
     if(hasTradeParam=="false"){    
      
        if(isTradeVar=="Y"){
        	var tdTradeObj=document.all("td_trade_productfeature")
            if(tdTradeObj) {
		        if(old_tdTradeObj_innerHTML == ""){
		        	old_tdTradeObj_innerHTML=tdTradeObj.innerHTML;
		        }
            	tdTradeObj.innerHTML = "很抱歉，该行业暂时无法发布一口价信息，但是您可以继续发布普通供应信息。<br/>请填写下表，完成供应信息的发布。";
            }
        }else{
        if(document.all("tr_trade_productfeature"))
            document.all("tr_trade_productfeature").style.display="none";
        }
    }

    if(hasProductFeature && (hasProductFeature == "false")){
        if(document.all("tr_productfeature")){
        	document.all("tr_productfeature").style.display="none";
        }
    }
    var needLockAlipayObj = document.all("needLockAlipay")
    if(typeWayVar == "BUY"){
        if(needLockAlipayObj){
           needLockAlipayObj.style.display="none";
        }
    }else{
        if(needLockAlipayObj){
           needLockAlipayObj.style.display="";
        }
   }
    changeTradeUnit();

        if((categoryId1Value!="")&&((isEditVar==""||isEditVar!="true")||(isTBDInfoCanChange=="true"))){
        if(tradeTypeVar == "4"){
            form.topCatFormKey.value = "2903";
            form.topCatFormKey.style.display="none"
        }else if(tradeTypeVar == "3"){
            form.topCatFormKey.value = "51";
            form.topCatFormKey.style.display="none"
        }else if(tradeTypeVar == "5"){
            form.topCatFormKey.value = "28";
            form.topCatFormKey.style.display="none"
        }else if(tradeTypeVar == "2"){
            form.topCatFormKey.value = "2805";
            form.topCatFormKey.style.display="none"
        }else{
        	       		
			//if(!(typeObj=="" || (typeObj != "BUY" && typeObj != "SALE") && typeObj != "")){
       	   
    		   if((typeObj==""||typeObj=="BUY"||typeObj=="SALE")){
                doDeleteAgentAndCorp(form.topCatFormKey);
                }
			
            form.topCatFormKey.value = topCatIdVar;
        }
        onChangeTopCategory();
        form.secondCatFormKey.value = secondCatIdVar;
        changeSecondCategory();
        if(form.leafCatFormKey.length > beginIndex){
	        form.leafCatFormKey.disabled = false;
	        form.leafCatFormKey.value = leafCatIdVar;
        }else{
        	form.leafCatFormKey.disabled = true;
        }
        showSelectPath();
    }
    if(typeWayVar == "SALE"){
        needFeature = true;
    }else{
        needFeature = false;
    }

    if(isTBDInfoCanChange!="true"){
    setSubjectText(false,false);
    }

    showTabTradeProductFeature();


	//快速匹配
	quickBuySellMatch(typeObj);
	//显示更多产品
	showProductMarket(true,keywordsObj)

    refreashUsedCategory();
        if(isFromNonmember=="true"){
       // doOnKeywordBlur(keywordsObj,true);
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
	</body>
</html>
