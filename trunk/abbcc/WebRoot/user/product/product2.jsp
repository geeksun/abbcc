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
    	//ѡ����֧�ֻ������Ͳ���ѡ��Ӫģʽ��
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
			var defaultKeyWordsValue = "�������ͺš�Ʒ�Ƶ�";
		</script>
		<script language="JavaScript" type="text/javascript">
	var baseImgPath = "http://i04.c.aliimg.com/images/cn/market/myalibaba";

	//��ֹ��������
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
	        //ȥ����ͼƬ
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
	        //��ʾ��ͼƬ
	        if (isChecked){
		        var rightImagObj = document.getElementById("img_right_"+objName);
		        if (rightImagObj!=null){
		            rightImagObj.src = "http://i01.c.aliimg.com/images/cn/member/icon_right_19x19.gif";
		        }
		    }
		    if (objName.indexOf("feature")!=-1){//��Ʒ�������⴦��
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
		    //��Ʒ�������⴦��
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
		        }else if (document.mainform.neededFeatures !=null){//ֻ��һ������������
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
	Description    �ж��Ƿ��ǹ�ӦOffer
	author         lei.doul
	*/
	function isSaleOffer(){
	    var isSale = false;
		//�����һ�ڼۣ���Ϊ�ǹ�ӦOffer
	    if(isTradeVar =="Y"){
	        isSale = true;
		}else{
		    //������·����Ļ�����Ҫ����ѡ���û���ѡ�������ж�	        
	        if((isEditVar!="true")||(isTBDInfoCanChange=="true"))
	        {
	            var offerType = document.getElementsByName(typeKey);
			    if(offerType != null){
			        if(offerType[0].checked){
			            isSale = true;
			        }
			    }
	        }else{
			//������޸ģ����ݷ���ʱ�������ж�
	            
	            if(typeObj==""||typeObj=="SALE")
	            {
	            	isSale = true;
	            }
	            
	        }
	    }
	    return isSale;
	}

	/*
	���޸���Ϣ��ʱ���ж��Ƿ���������Ʒ
	*/
	function isAudioVisual(){
	  var val = false;
	  
	  if(categoryNameVar.indexOf("/������Ʒ/")>0)
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
        if (objName.indexOf("feature")!=-1){//��Ʒ�������⴦��

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

		//��ʾĬ�ϵ���ʾ��Ϣ
		var trObj = document.all("defaultPrompt");
		 if(trObj != null && typeof(trObj) == "object")
		  trObj.style.display="";

		//�����������ʾ��Ϣ
		var trObj = document.all("prompt_"+detailsObj);
		   if(trObj != null && typeof(trObj) == "object")
		  trObj.style.display="none";

        changeQuickMatch();
        //��ϸ��Ϣ��������Ϣ���⴦��

		//�ж��Ƿ��ǹ�ӦOffer

        if (objName == detailsObj){

		    //ȡ������Ŀ
            var catobj = document.getElementById("topCatFormKey");
			//ȡ2����Ŀ
			var secCatobj = document.getElementById("secondCatFormKey");


			//����������ҵ��������Ϣ
			if (catobj !=null && catobj.value == "16"){
                document.getElementById("awake_words_"+detailsObj).innerHTML='�������Ҫ����ҩƷ��ҽ����е���ߵ���Ϣ��������ṩҩ׼�ֻ�ҩе�ֵ�˵�����������Ϣ������ͨ����ˡ�';
            }
			else
			 if (catobj !=null && catobj.value == "2"){
                document.getElementById("awake_words_"+detailsObj).innerHTML='�������Ҫ����ʳƷ��������Ϣ���������ṩ������֤�ţ�����˵������';
             }
			 else
			   if (isAudioVisual()||((catobj !=null && catobj.value == "53") && (secCatobj != null && secCatobj.value == "2201") && isSaleOffer())){
					  
					  if(isFreeMember == "true")
					  {
				        document.getElementById("prompt_"+detailsObj).innerHTML='�뽫���ġ�������Ʒ��Ӫ���֤��������88157872-888����Ϣ�ſɷ���������������������Ʒ�ģ����ڡ���ϸ˵�����б���������׼�ļ��ĺš�';
					  }else{
					    document.getElementById("prompt_"+detailsObj).innerHTML='�뵽��<a href="http://athena.china.alibaba.com/athena/listCertificate.htm" target="_blank">�ҵ�֤��</a>�����ϴ����ġ�������Ʒ��Ӫ���֤������Ϣ�ſɷ���������������������Ʒ�ģ����ڡ���ϸ˵�����б���������׼�ļ��ĺš�'
					  }

					  //��ʾ������ʾ��Ϣ
					  var trObj = document.all("prompt_"+detailsObj);
		              if(trObj != null && typeof(trObj) == "object")
		                 trObj.style.display="";

					  //����Ĭ����ʾ��Ϣ
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
//ʧȥ����ʱ����ʵʱУ��
function checkFieldValid(fieldType){
    if (fieldType=="category"){
        return checkCategory();
    }else if (fieldType==keywordsObj){
        if(document.getElementById(fieldType).value == defaultKeyWordsValue){
            document.getElementById(fieldType).value = '';
            document.getElementById(fieldType).style.color='';
        }
        if(checkKeyword(fieldType)){
            showProductMarket(false,fieldType);//������ʾ�����Ʒ
            return true;
        }else{
            showProductMarket(true,fieldType);//��ʾ�����Ʒ
            changeQuickMatch();
            return false;
        }
    }else if (fieldType.indexOf("feature")!=-1){//��Ʒ����������
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

//ֻ�й�Ӧoffer����ʾѡ��offer detail ģ��
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


//ҳ���ʼ��ʱ������ƥ��
function quickBuySellMatch(typeValue){
                changeTypeBuyMatch(typeValue);
      }

//������ƥ��ѡ����д���
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

//����ѡ����ٲɹ�ƥ��ѡ��
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

//type�޸�ʱ��Ӧ�仯
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

//����ƥ��ѡ���޸�ʱ
function changeQuickMatch(){
    //���ڲ�Ʒ����5������ʾ�����ڿ���ƥ��
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
            if(temp.length>5 && (typeWay(typeValue) == "BUY" && temp != "�������ͺš�Ʒ�Ƶ�")){            	
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

//detail�༭���������
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
    //����Ƿ�����һ�ڼ۽�������
    function checkTradeCondition(isAwayNoShow, featureId){
        //��������ȫ��ת���
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
                postsubmit.value="ͬ����������Ҫ����";
            }
        }
        else{
            //obj.style.display="none";
            if(serviceTerm){
                serviceTerm.style.display="none";
                postsubmit.value="һ����ɣ���Ҫ������";
            }
        }

    }

    //����Ƿ�����һ�ڼ۽�������
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
    /** ѡ���ù�����Ŀ*/
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
    /** �����ù�����Ŀ��Ϣ */
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
    //��ȡƥ����
    function getCategoryByKeywordHtml(offerType, keyword) {
        var objHttp = getHttpRequest();
        var tradeType = getTradeType(offerType)
        objHttp.open("GET", "searchOfferSumByKeyword.vm?only=category&keyword="+keyword + "&infoType=" +offerType + "&tradeType=" + tradeType + "&t="+Math.random(), false);	
        objHttp.send();
        return objHttp.responseText;
    }
    //��ȡ�û�ʹ�ù�����Ŀ
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
												<strong>Ϊ��������ܸ���ȷ�ҵ����Ĳ�Ʒ�������������¼������������Ϣ���ȣ���ø��õ�������</strong>
												<br/>
												1��һ����Ϣֻ����һ����Ʒ��&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;3��ѡ��������Ʒ���ϵ���Ŀ��������ʹ�á���Ŀ�Զ�ƥ�䡱���ܣ�
												
												<br/>
												2�����Ĳ�Ʒ������س����ڱ����У�&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;4����������Ϣ��ͼ����д��Ʒ���ԡ�
												
												<br/>
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
														<ul style="z-index: 100; background-color: rgb(255, 255, 255);"
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
													<!--<a href="#" onclick="goToTradePost(mainform);return false;">һ�ڼ���Ϣ</a>  -->
													һ�ڼ���Ϣ
												</div>
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
											<img src="<%=path%>/user/product/product_files/icon_right_19x19.gif"
												align="absmiddle" width="19" height="16"/>
											&nbsp;
											
											<b>��Ϣ����</b><font color="#ff0000">*</font>
										</td>
										<td class="list_right_box">
											<input value="SALE" name="_fmo.a._0.t" checked="checked"
												onclick="showTemplateDiv();setSubjectText(true,false);doSelectType(this);changeType('��');"
												type="radio">
											��Ӧ
											<input value="BUY" name="_fmo.a._0.t"
												onclick="showTemplateDiv();setSubjectText(true,false);doSelectType(this);changeType('��Ӧ');"
												type="radio">
											��
											<input value="QUICKBUY" name="_fmo.a._0.t"
												onclick="showTemplateDiv();setSubjectText(true,false);doSelectType(this);changeType('��Ӧ');"
												type="radio">
											������
										</td>
									</tr>
									<tr style="display: none;" id="tr_quickBuySellMatch">
										<td class="list_left_box" align="right" valign="top">
											<img src="<%=path%>/user/product/product_files/icon_grayright_19x19.gif"
												align="absmiddle" width="19" height="16"/>
											&nbsp;
											
											<b>��������</b><font color="#ff0000">*</font>
										</td>
										<td class="list_right_box" valign="top">
											<a name="flagQuickBuySell"></a>
											<input name="quickBuySellChecked"
												onclick="changeQuickMatch();checkQuickBuySellMatch();"
												value="on" type="radio">
											ʹ���������䣨�Ƽ���
											<input name="quickBuySellChecked"
												onclick="changeQuickMatch();checkQuickBuySellMatch();"
												value="off" type="radio">
											��ʹ��
											<table class="s lh13 normal" border="0" cellpadding="6"
												cellspacing="0" width="100%">
												<tbody>
													<tr>
														<td>
															<font style="padding: 2px 0px 2px 2px;">�������䣺����̵�ʱ�䣬�������Ĺ�Ӧ�̣�
																<a
																href="http://info.china.alibaba.com/helpcenter/tips/s5019715-d5823833.html"
																target="_blank">ʲô���������䣿</a>
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
																id="wrong_words_quickBuySellChecked">��ѡ����������ѡ��</span>
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
											
											<b>��Ʒ����</b><font color="#ff0000">*</font>
										</td>
										<td class="list_right_box" valign="top">
											<table border="0" cellpadding="3" cellspacing="0"
												width="100%">
												<tbody>
													<tr>
														<td class="s lh13 normal" valign="top">
															<input name="_fmo.a._0.k" id="_fmo.a._0.k" style=""
																value="�Ͷ�ң�ش�" maxlength="16" size="20"
																onblur='SB_OnBlur(this,"Banner_Menu", event);doOnKeywordBlur(this.name, true);'
																onfocus="if(this.value == '�������ͺš�Ʒ�Ƶ�'){this.value = '';this.style.color='';};doOnFocus(this.name);"
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
															��Ʒ������������ֹ���ͺš�Ʒ�Ƶ����ݡ�
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
															<font color="#ff0000">��Ʒ���ƹ�����Ӱ��"��������"Ч�����������̲�Ʒ���ƣ���ȥ����Ʒ������</font>
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
											<b> ��Ʒ������Ŀ</b><font color="#ff0000">*</font>

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
																	������ҵ
																</option>
																<option value="57">
																	����Ԫ����
																</option> 
																<option value="18">
																	�˶�������
																</option>
																<option style="color: rgb(204, 204, 204);" value="-5">
																	�������
																</option>
																<option style="color: rgb(204, 204, 204);" value="-4">
																	��Ŀ����
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
												align="absmiddle" width="19" height="16">
											<b> ��Ϣ����</b><font color="#ff0000">*</font>
										</td>
										<td class="list_right_box" valign="top">
											<table border="0" cellpadding="3" cellspacing="0"
												width="100%">
												<tbody>
													<tr>
														<td>
															<input name="_fmo.a._0.s" value="��Ӧ" size="46"
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
												align="absmiddle" width="19" height="16"/>
											&nbsp;
											
											<b>��Ϣ��Ч��</b><font color="#ff0000">*</font>
										</td>
										<td class="list_right_box">
											<div id="div_OfferExpire_normal">
												<input onclick='javascript:doOnFocus("_fmo.a._0.o");'
													onblur='doOnRadioBlur("_fmo.a._0.o")' value="10"
													name="_fmo.a._0.o" type="radio">
												10��
												<input onclick='javascript:doOnFocus("_fmo.a._0.o");'
													onblur='doOnRadioBlur("_fmo.a._0.o")' value="20"
													name="_fmo.a._0.o" type="radio">
												20��
												<input onclick='javascript:doOnFocus("_fmo.a._0.o");'
													onblur='doOnRadioBlur("_fmo.a._0.o")' value="30"
													name="_fmo.a._0.o" type="radio">
												1����
												<input onclick='javascript:doOnFocus("_fmo.a._0.o");'
													onblur='doOnRadioBlur("_fmo.a._0.o")' value="90"
													name="_fmo.a._0.o" type="radio"/>
												3����
												<input onclick='javascript:doOnFocus("_fmo.a._0.o");'
													onblur='doOnRadioBlur("_fmo.a._0.o")' value="180"
													checked="checked" name="_fmo.a._0.o" type="radio">
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
																<b>Ʒ��</b><font color="#ff0000">*</font>
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
																			��<font color="red">*</font>Ϊ����� </span> </span> </span>
															</td>
														</tr>
														<tr>
															<td class="list_left_box" align="right" valign="top">
																<input id="neededFeatures_112242" name="neededFeatures"
																	value="112242" type="hidden">
																<img id="img_right_feature112242"
																	src="<%=path%>/user/product/product_files/icon_nowhitewhiteright_19x19.gif"
																	align="absmiddle" width="19" height="16">
																<b>����</b><font color="#ff0000">*</font>
															</td>
															<td class="list_right_box" style="padding: 2px;">

																<select name="feature112242" maxlength="80"
																	onchange="javascript:funcSelectOther(112242)"
																	id="feature112242" onblur="doOnBlur(this.name, true)"
																	onfocus="doOnFocus(this.name)">
																	<option value="">
																		��ѡ��
																	</option>
																	<option value="ң��">
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
																	<option value="����">
																		����
																	</option>
																</select>
																<span style="display: none;" id="featureOther112242">
																	<input name="featureSelf112242" id="featureSelf112242"
																		size="14" maxlength="80" value=""
																		onblur='doOnBlur("feature112242", true)'
																		onfocus='doOnFocusOther("feature112242")' type="text">���벹�䣩
																</span>

																<span style="padding-left: 10px;"><span
																	id="wrong_feature112242" class="s lh13 wrong"
																	style="display: none; width: 110px;"> <span
																		class="wrongwords" id="wrong_words_feature112242">
																			��<font color="red">*</font>Ϊ����� </span> </span> </span>
															</td>
														</tr>
														<tr>
															<td class="list_left_box" align="right" valign="top">
																<input id="neededFeatures_112271" name="neededFeatures"
																	value="112271" type="hidden">
																<img id="img_right_feature112271"
																	src="<%=path%>/user/product/product_files/icon_nowhitewhiteright_19x19.gif"
																	align="absmiddle" width="19" height="16">
																<b>��������</b><font color="#ff0000">*</font>
															</td>
															<td class="list_right_box" style="padding: 2px;">

																<select name="feature112271" maxlength="80"
																	onchange="javascript:funcSelectOther(112271)"
																	id="feature112271" onblur="doOnBlur(this.name, true)"
																	onfocus="doOnFocus(this.name)">
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
																<span style="display: none;" id="featureOther112271">
																	<input name="featureSelf112271" id="featureSelf112271"
																		size="14" maxlength="80" value=""
																		onblur='doOnBlur("feature112271", true)'
																		onfocus='doOnFocusOther("feature112271")' type="text">���벹�䣩
																</span>

																<span style="padding-left: 10px;"><span
																	id="wrong_feature112271" class="s lh13 wrong"
																	style="display: none; width: 110px;"> <span
																		class="wrongwords" id="wrong_words_feature112271">
																			��<font color="red">*</font>Ϊ����� </span> </span> </span>
																<a style="cursor: pointer;"
																	onclick="if(document.getElementById('table_more').style.display=='none'){document.getElementById('table_more').style.display='block';this.className='Htab2_on';};else{ document.getElementById('table_more').style.display = 'none';;this.className='Htab2_off';}"
																	class="Htab2_off">��������</a>
															</td>
														</tr>

													</tbody>
												</table>
												<table id="table_more" style="display: none;" border="0"
													cellpadding="0" cellspacing="0" width="100%">
													<tbody>
														<tr>
															<td class="list_left_box" align="right" valign="top">
																<b>�ͺ�</b>
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
																<b>����</b>
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
																<b>����</b>
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
																<b>��ɫ</b>
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
																<b>���</b>
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
											<b>��ϸ˵��</b><span id="detail_star" style="display: none;"><font
												color="#ff0000">*</font>
											</span>
											<div id="freeTemplateDiv" style="visibility: hidden;">
												<div style="padding-top: 80px;"></div>
												<table border="0" cellpadding="0" cellspacing="0"
													width="100">
													<tbody>
														<tr>
															<td class="s" align="center">
																<b>���ģ���Ƽ�</b>
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
	//����
	var _a_lang = new Array();
	_a_lang['pic'] = 'ͼƬ';
	_a_lang['url'] = '��ַ';
	_a_lang['viewe'] = '��ʾЧ��';
	_a_lang['border'] = '�߿��ϸ';
	_a_lang['align'] = '���뷽ʽ';
	_a_lang['absmiddle'] = '���Ծ���';
	_a_lang['aleft'] = '����';
	_a_lang['aright'] = '����';
	_a_lang['atop'] = '����';
	_a_lang['amiddle'] = '�в�';
	_a_lang['abottom'] = '�ײ�';
	_a_lang['absbottom'] = '���Եײ�';
	_a_lang['baseline'] = '����';
	_a_lang['submit'] = 'ȷ��';
	_a_lang['cancle'] = 'ȡ��';
	_a_lang['hlink'] = '��������';
	_a_lang['other'] = '����ѡ��';
	_a_lang['newwindow'] = '���´��ڴ�';
	_a_lang['ttop'] = '�ı�����';
	
	_a_lang['copy'] = '����';
	_a_lang['cut'] = '����';
	_a_lang['pau'] = 'ճ��';
	_a_lang['del'] = 'ɾ��';
	
	_a_lang['bold'] = '����';
	_a_lang['italic'] = 'б��';
	_a_lang['underline'] = '�»���';
	_a_lang['st'] = '�л���';
	_a_lang['jl'] = '�����';
	_a_lang['jc'] = '���ж���';
	_a_lang['jr'] = '�Ҷ���';
	
	_a_lang['fcolor'] = '������ɫ';
	_a_lang['bcolor'] = '���ֱ�����ɫ';
	_a_lang['ilist'] = '���';
	_a_lang['itlist'] = '��Ŀ����';
	_a_lang['sup'] = '�ϱ�';
	_a_lang['sub'] = '�±�';
	_a_lang['createlink'] = '��������';
	_a_lang['unlink'] = 'ȡ������';
	_a_lang['inserthr'] = '����ˮƽ��';
	_a_lang['insertimg'] = '����/�޸�ͼƬ';
	_a_lang['editsource'] = '�༭Դ�ļ�';
	_a_lang['preview'] = 'Ԥ��';
	_a_lang['usehtml'] = 'ʹ�ñ༭���༭';
	
	_a_lang['font'] = '����';
	_a_lang['simsun'] = '����';
	_a_lang['simhei'] = '����';
	_a_lang['simkai'] = '����';
	_a_lang['fangsong'] = '����';
	_a_lang['lishu'] = '����';
	_a_lang['youyuan'] = '��Բ';
	
	_a_lang['fontsize'] = '�ֺ�';
	_a_lang['fontsize_1'] = 'һ��';
	_a_lang['fontsize_2'] = '����';
	_a_lang['fontsize_3'] = '����';
	_a_lang['fontsize_4'] = '�ĺ�';
	_a_lang['fontsize_5'] = '���';
	_a_lang['fontsize_6'] = '����';
	_a_lang['fontsize_7'] = '�ߺ�';
	
	_a_lang['current'] = '��ǰ';
	_a_lang['word'] = '��';
	_a_lang['maxword'] = '���';
	
	_a_lang['modify'] = '�޸�';
	_a_lang['insert'] = '����';

	_a_lang['fullscreen'] = '�Ŵ�༭';
	//_a_lang['help'] = 'ʹ�ð���';
	
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

//���������ı༭������
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
															<span>1������Ӳ�Ʒ���ܡ���;����װ���ۺ����ȷ�����������<br>2������ͨ��<img
																	src="<%=path%>/user/product/product_files/img.gif"
																	align="absmiddle" width="22" height="22">������ͼƬ��ͼƬ��ַ����ʹ�ð���Ͱ����̵Ĺ�˾��ᡰ����ͼƬ��ַ������ӣ������������ͼƬ������������ף�<br>3������Ӱ���Ͱ��ڲ����ӣ�����Ͱ͡��Ա���֧�������Ż���������������վ���ӣ�ϵͳ���Զ�ɾ����</span>
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
															<input onclick="table_display2('table100');" value="�ϴ�"
																name="uploadPicBtn0" type="button"/>
															&nbsp;
															
															<input onclick="delete_picture('0');" value="ɾ��"
																name="delPicBtn0" type="button"/>
														</td>
														<td align="center">
															<input onclick="table_display('table101');" value="�ϴ�"
																name="uploadPicBtn1" type="button"/>
															&nbsp;
															
															<input onclick="delete_picture('1');" value="ɾ��"
																name="delPicBtn1" type="button"/>
														</td>
														<td align="center">
															<input onclick="table_display('table102');" value="�ϴ�"
																name="uploadPicBtn2" type="button"/>
															&nbsp;
															
															<input onclick="delete_picture('2');" value="ɾ��"
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
															ͼƬ��ʽjpg��gif����С������200k��
															<br>
															<div style="display: none;" id="imageHelper1" class="s2">
																<font color="#ff0000">�Ƽ�ʹ����ѹ��ߡ�ͼƬ���֡����Զ�����ͼƬ��ʽ����С���ϴ���</font><a
																	href="javascript:void(0);"
																	onclick="popPicHelper2('100');">����ʹ��</a>&nbsp;&nbsp;&nbsp;
																<a href="javascript:void(0);"
																	onclick="window.open('http://info.china.alibaba.com/news/detail/v-d1000938177.html?tracelog=chinagas_help&amp;tracelog=fb_picture_help');">����</a>
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
            alert("������ͨ��Ա��ֻ���ϴ�һ�Ų�ƷͼƬ��");
        }else{
            table_display2("table100");
        }
    }else{       
        table_display2(t_id);
    }
}
//��������ͼƬ��ʾЧ��
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
    //����ͼƬ�ϴ�״̬
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
        var str="(ͼ)";
        var str1="��ͼ��";
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
        document.all.uploadPicBtn0.value = "�ϴ�";
        document.all.picsample_0.value = "0";
		document.all.item("_fmo.a._0.pict").value = "";
        if((document.all.picsample_1.value == "0")&&(document.all.picsample_2.value == "0")){
            picsampleObj.value = "";
            deleteSubjectText()
        }          
     }
     if(id == "1") {
        document.all.uploaded1.src = "http://i05.c.aliimg.com/images/cn/market/trade/detail/detail_no_pic.gif";
        document.all.uploadPicBtn1.value = "�ϴ�";
        document.all.picsample_1.value = "0";
		document.all.item("_fmo.a._0.pictu").value = "";
        if((document.all.picsample_0.value == "0")&&(document.all.picsample_2.value == "0")){
            picsampleObj.value = "";
            deleteSubjectText()
            }
     }
     if(id == "2") {
        document.all.uploaded2.src = "http://i05.c.aliimg.com/images/cn/market/trade/detail/detail_no_pic.gif";
        document.all.uploadPicBtn2.value = "�ϴ�";
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
    //�ж�������Ƿ�װ��ó��ͨ
    if (newCheckAlitalkInstalled()){
        window.location = "Alitalk:";
     }else{
        //��ʾ��װó��ͨ
        window.target="_blank";
        window.open("http://china.alibaba.com/misc/promotion_down.htm");
     }
}
        

    function alitalkVerSupportedSMS() {
    	var is = false;
    	try {
    		var obj = new ActiveXObject("Ali_Check.InfoCheck");
    		//��ǰ�汾�� �ַ���ʽ�� ����.����.������ĸ
    		var mver = obj.GetValueBykey("AliTalkVersion");
    		//��ǰ�汾�� �ַ�����
    		var curver = mver.split(".");
    		//��ǰ�汾�� ��������
    		var intCurver = new Array();
    		for(var i = 0 ; i < curver.length ; i++){
    			intCurver.push(parseInt(curver[i]));
    		}
    		// ���� version 5.50.00
    		// ��С�汾�� ��������
    		var intMinver = [5,50,0];
    		// �汾�ų���
    		var versionLengh = intCurver.length;
    		if(intMinver.length < versionLengh ){
    			versionLengh = intMinver.length;
    		}
    		//�Ƚϰ汾�ţ��Ӹ�λ����λ��
    		for(var j = 0 ; j < versionLengh ; j++){
    			//������Ƚϴ�ֱ�ӷ���true
    			if(intCurver[j] > intMinver[j]){
    				is = true
    				break;
    			}else if(intCurver[j] == intMinver[j]){
    				//�����һ����˵���汾�����
    				if(j == versionLengh-1){
    					is = true ;
    				}
    			}else{
    			//������Ƚ�С��ֱ�ӷ���false
    				break;
    			}
    		}
    		//ԭ���İ汾�Ƚϣ�ʹ���ַ����Ƚ� 10.20.3 ��С�� 5.50.00
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
	//����Ƿ�װͼƬ����	
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
	
	//û�а�װͼƬ����
	if(!aliPicHelperInstalled){
		//��װ��ó��ͨ���汾��
		if(alitalkInstalled){
			picHelperStatusCode = -1;
		}else{
			picHelperStatusCode = -2;
		}
	}
	
	function popPicHelper(t_id){
		if (pictureMaxNum == 1){
			if(document.all.picsample_0.value == "1"){
	        	alert("������ͨ��Ա��ֻ���ϴ�һ�Ų�ƷͼƬ��");
	       	}else{
	       		popPicHelper2("0");
	       	}
		}else{		
	    	popPicHelper2(t_id);
	    }
	}
	
	function getId(id){
		if(id == '100'){  //˵���ǰ���Ĭ�ϵط��ϴ�
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
	
	//����ͼƬ����
	function popPicHelper2(id,path){
		if(document.all.picHelperErrorMsg){
			if(picHelperStatusCode == 1){
				id = getId(id);
				if(id == '100'){
				  					if(confirm('�����ϴ�3��ͼ���ٴ��ϴ����Ḳ�����ĵ�1��ͼ��������Ȼ����ʹ��"ͼƬ����"����������ͼƬ����Ϊ��������ʱʹ�ã���ȷ��Ҫʹ����')){
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
				if(confirm(' ʹ�á�ͼƬ���֡����ܣ���Ҫ��Ѱ�װ����������ó��ͨ���Ƿ�Ҫ��Ѱ�װ����������ó��ͨ��(���ѣ���װ�����������Ҫ��ˢ�¡�ҳ����ٴε��������ʹ�á��ſ�ʹ�á�ͼƬ���֡����ܣ�) ')){
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
											
											<b>ѡ����ϵ��ʽ</b><font color="#ff0000">*</font>
										</td>
										<td class="list_right_box" valign="top">
											<table border="0" cellpadding="0" cellspacing="0"
												width="100%">
												<tbody>
													<tr>
														<td height="26">
															<input name="_fmo.a._0.h" value="false" checked="checked"
																type="radio">
															�����������κη�ʽ������ϵ
														</td>
													</tr>
													<tr>
														<td width="449">
															<input name="_fmo.a._0.h" value="true" type="radio">
															ֻ�������Ҹ����������Ա���
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
												<a id="product_market_url" target="_blank" href="#">�鿴����Ͱ�ͬ�б���</a>
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
																								1�������ֱ�Ӱ���۹��������밴�ս���������Լ��������ΪΥԼ��
																								<br>
																								2��������軹�ۣ���������ҳ��ۺ󣬵��������֡����׹������޸ļ۸񣬴������ס�
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
																<b>������λ</b>
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
																			��<font color="red">*</font>Ϊ����� </span> </span> </span>
																<span style="padding-left: 10px;"><span
																	id="trade_wrong_feature59238" class="s lh13 wrong"
																	style="display: none; width: 260px;"> <br/>
																		<font color="#999999">����д�뵥������ļ�����λ����ֻ���������</font> </span> </span>
															</td>
														</tr>
														<tr>
															<td class="list_left_box" align="right" valign="top"
																height="25">
																<img id="img_right_feature59240"
																	src="<%=path%>/user/product/product_files/icon_grayright_19x19.gif"
																	align="absmiddle" width="19" height="16">
																<b>��Ʒ����</b>
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
																Ԫ/
																<span id="trade_unit_price">��λ</span>
																<span style="padding-left: 10px;"><span
																	id="wrong_feature59240" class="s lh13 wrong"
																	style="display: none; width: 110px;"> <span
																		class="wrongwords" id="wrong_words_feature59240">
																			��<font color="red">*</font>Ϊ����� </span> </span> </span>
																<span style="padding-left: 10px;"><span
																	id="trade_wrong_feature59240" class="s lh13 wrong"
																	style="display: none; width: 260px;"> <br/>
																		<font color="#999999">������д�����˷ѵļ۸�</font> </span> </span>
															</td>
														</tr>
														<tr>
															<td class="list_left_box" align="right" valign="top"
																height="25">
																<img id="img_right_feature59239"
																	src="<%=path%>/user/product/product_files/icon_grayright_19x19.gif"
																	align="absmiddle" width="19" height="16">
																<b>��С����</b>
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
																	align="absmiddle" width="19" height="16">
																<b>��������</b>
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
																	align="absmiddle" width="19" height="16">
																<b>��������</b>
															</td>
															<td class="list_right_box">
																<input id="fieldFlagName_sendlimit"
																	name="fieldFlagName_sendlimit" value="feature59242"
																	type="hidden">
																����Ҹ���֮����

																<select name="feature59242" id="feature59242"
																	maxlength="80"
																	onchange="javascript:funcSelectOther(59242)"
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
																	align="absmiddle" width="19" height="16">
																<b>��Ӧ������</b><font color="#ff0000">*</font>
															</td>
															<td class="list_right_box">
																<input id="fieldFlagName_providertype"
																	name="fieldFlagName_providertype" value="feature116330"
																	type="hidden">
																���Ǹò�Ʒ��

																<select name="feature116330" id="feature116330"
																	maxlength="80"
																	onchange="javascript:funcSelectOther(116330)"
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
																align="absmiddle" width="19" height="16"/>
															&nbsp;
															
															<b>��������</b><font color="#ff0000">*</font>
														</td>
														<td class="list_right_box" valign="top">
															<input name="rBizType" value="checkbox"
																onclick="changeBizType('Y')" type="radio"/>
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
																	align="absmiddle">&nbsp;<b>ʹ��֧����</b><font
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
																			��

																			<input id="_fmo.a._0.ae_1" name="_fmo.a._0.ae"
																				onblur="doOnBlur(this.name, true)"
																				onfocus="doOnFocus(this.name)" value="false"
																				type="radio">
																			��
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
													href="http://china.alibaba.com/member/modify_member_info.htm?tracelog=fb_one_xiugai"
													target="_blank">����޸�</a>
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
												class="S">�Ķ�����Ͱͷ�������</a>
										</td>
									</tr>
									<tr>
										<td class="C spc16" align="center">
											<input name="postsubmit"
												onmousedown="javascript:postOffer(bizTypeVar)"
												value="ͬ����������Ҫ����" class="submitButton" type="button">
											<a href="#"
												onclick="previewPost(document.mainform);return false;">Ԥ��������Ϣ</a>
										</td>
									</tr>
								</tbody>
							</table>
							<input name="isTrade" value="" type="hidden">
							<br>

						</form>

						<script>
//.��ڲ���
var topCatForm = document.mainform.topCatFormKey;
var secondCatForm = document.mainform.secondCatFormKey;
var leafCatForm = document.mainform.leafCatFormKey;
var catTradeTypeVar = "1";
var catModuleNameVar = "";
var catBatchPostOnlyVar = "";
var catAllTradeTypeVar = "";
    var baseDataFeeder = 'http://upload.china.alibaba.com/offer/list_category.htm?all_trade_type=&trade_type=1&module_name=&batch_post_only=';
//�����б����ʼ����
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
	    //��JSON��������Ŀ����
	 	var jsonTxt = httpReq.request.responseText;
		var optionDataArr = eval(jsonTxt);
		//���ѡ���
		var len = target.options.length;
        for (var i = len - 1; i > beginIndex - 1; i--) {
            target.options[i] = null;
        }
		//����ѡ���
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
		//���ѡ�����Ǹ�������Ŀ
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
                                                topCat = new TopCategory('58', '������ҵ', true)
                topCatArr = topCatArr.concat(topCat)
                                                topCat = new TopCategory('57', '����Ԫ����', true)
                topCatArr = topCatArr.concat(topCat)
                                                topCat = new TopCategory('53', '��ý�����', true)
                topCatArr = topCatArr.concat(topCat)
                                                topCat = new TopCategory('30', '��ȫ������', true)
                topCatArr = topCatArr.concat(topCat)
                                                topCat = new TopCategory('23', '��װ', true)
                topCatArr = topCatArr.concat(topCat)
                                                topCat = new TopCategory('52', 'ֽҵ', true)
                topCatArr = topCatArr.concat(topCat)
                                                topCat = new TopCategory('21', '�칫���Ľ�', true)
                topCatArr = topCatArr.concat(topCat)
                                                topCat = new TopCategory('7', '���롢����', true)
                topCatArr = topCatArr.concat(topCat)
                                                topCat = new TopCategory('5', '�繤����', true)
                topCatArr = topCatArr.concat(topCat)
                                                topCat = new TopCategory('4', '��֯��Ƥ��', true)
                topCatArr = topCatArr.concat(topCat)
                                                topCat = new TopCategory('3', '��װ', true)
                topCatArr = topCatArr.concat(topCat)
                                                topCat = new TopCategory('54', '����', true)
                topCatArr = topCatArr.concat(topCat)
                                                topCat = new TopCategory('14', '��е����ҵ�豸', true)
                topCatArr = topCatArr.concat(topCat)
                                                topCat = new TopCategory('59', '��𡢹���', true)
                topCatArr = topCatArr.concat(topCat)
                                                topCat = new TopCategory('8', '����', true)
                topCatArr = topCatArr.concat(topCat)
                                                topCat = new TopCategory('56', '��ϸ��ѧƷ', true)
                topCatArr = topCatArr.concat(topCat)
                                                topCat = new TopCategory('55', '����', true)
                topCatArr = topCatArr.concat(topCat)
                                                topCat = new TopCategory('11', '����', true)
                topCatArr = topCatArr.concat(topCat)
                                                topCat = new TopCategory('10208', '�����Ǳ�', true)
                topCatArr = topCatArr.concat(topCat)
                                                topCat = new TopCategory('15', '�Ҿ���Ʒ', true)
                topCatArr = topCatArr.concat(topCat)
                                                topCat = new TopCategory('6', '���õ���', true)
                topCatArr = topCatArr.concat(topCat)
                                                topCat = new TopCategory('13', '����������', true)
                topCatArr = topCatArr.concat(topCat)
                                                topCat = new TopCategory('12', '��ͨ����', true)
                topCatArr = topCatArr.concat(topCat)
                                                topCat = new TopCategory('17', '��Ʒ������Ʒ����Ʒ', true)
                topCatArr = topCatArr.concat(topCat)
                                                topCat = new TopCategory('10', '��Դ', true)
                topCatArr = topCatArr.concat(topCat)
                                                topCat = new TopCategory('1', 'ũҵ', true)
                topCatArr = topCatArr.concat(topCat)
                                                topCat = new TopCategory('33', '��Ħ�����', true)
                topCatArr = topCatArr.concat(topCat)
                                                topCat = new TopCategory('2', 'ʳƷ������', true)
                topCatArr = topCatArr.concat(topCat)
                                                topCat = new TopCategory('509', 'ͨ�Ų�Ʒ', true)
                topCatArr = topCatArr.concat(topCat)
                                                topCat = new TopCategory('1813', '���', true)
                topCatArr = topCatArr.concat(topCat)
                                                topCat = new TopCategory('9', 'ұ����', true)
                topCatArr = topCatArr.concat(topCat)
                                                topCat = new TopCategory('16', 'ҽҩ������', true)
                topCatArr = topCatArr.concat(topCat)
                                                topCat = new TopCategory('34', 'ӡˢ', true)
                topCatArr = topCatArr.concat(topCat)
                                                topCat = new TopCategory('18', '�˶�������', true)
                topCatArr = topCatArr.concat(topCat)
                                                topCat = new TopCategory('-5', '�������', false)
                topCatArr = topCatArr.concat(topCat)
                                                topCat = new TopCategory('-4', '��Ŀ����', false)
                topCatArr = topCatArr.concat(topCat)
                                                topCat = new TopCategory('2829', '�����豸ת��', true)
                topCatArr = topCatArr.concat(topCat)
                                                topCat = new TopCategory('-2', '�ӹ�', false)
                topCatArr = topCatArr.concat(topCat)
                                                topCat = new TopCategory('-3', '����', false)
                topCatArr = topCatArr.concat(topCat)
                                                topCat = new TopCategory('32', '����ѹ', true)
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
		+ "  <td align=\"right\" width=\"150\" ><b>��Ʒ����</b></td>"
	    + "  <td>"
	    + "      <input name=\"_fmo.a._0.q\" type=\"text\" value=\"\" size=\"23\" maxlength=\"80\" onblur=\"doOnBlur('feature_fmo.a._0.q', false)\" onfocus=\"doOnFocus('feature_fmo.a._0.q')\" >"
	    + "  </td>"
	  	+ "</tr>"
	   	+ "<tr>"
		+ "  <td align=\"right\" width=\"150\" ><b>��װ˵��</b></td>"
	    + "  <td>"
	    + "      <input name=\"_fmo.a._0.pa\" type=\"text\" value=\"\" size=\"23\" maxlength=\"80\" onblur=\"doOnBlur('feature_fmo.a._0.pa', false)\" onfocus=\"doOnFocus('feature_fmo.a._0.pa')\" >"
	    + "  </td>"
	  	+ "</tr>"
	   	+ "<tr>"
		+ "  <td align=\"right\" width=\"150\" ><b>�۸�˵��</b></td>"
	    + "  <td>"
	    + "      <input name=\"_fmo.a._0.p\" type=\"text\" value=\"\" size=\"23\" maxlength=\"80\" onblur=\"doOnBlur('feature_fmo.a._0.p', false)\" onfocus=\"doOnFocus('feature_fmo.a._0.p')\" >"
	    + "  </td>"
	  	+ "</tr>"
	   	+ "<tr>"
		+ "  <td align=\"right\" width=\"150\" ><b>��Ʒ���</b></td>"
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
//���ײ���
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


	//����Ҷ����Ŀid��̬���ɲ�Ʒ���Բ���,�ڷ���offer��ʱ����Ч�����޸�offer��ʱ����Ч
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
	                    tdTradeObj.innerHTML = "�ܱ�Ǹ������ҵ��ʱ�޷�����һ�ڼ���Ϣ�����������Լ���������ͨ��Ӧ��Ϣ��<br/>����д�±���ɹ�Ӧ��Ϣ�ķ�����";
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
	                    tdTradeObj.innerHTML = "�ܱ�Ǹ������ҵ��ʱ�޷�����һ�ڼ���Ϣ�����������Լ���������ͨ��Ӧ��Ϣ��<br/>����д�±���ɹ�Ӧ��Ϣ�ķ�����";
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
	//���ر�ѡ�е���Ŀ(������Ҷ����Ŀ)
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

		<script language="JavaScript" type="text/javascript">
	
    var isFreemember = true;
    
    if(isFreeMember=="false"){
        isFreemember = false;
    }
    
    //ֻҪ��Ӧ������в�Ʒ����
    var needFeature = true;
    var featurePropertiesHtmlValue="";
    var defaultFeaturePropertiesHtmlValue="";
    var tradeFeaturePropertiesHtmlValue="";
    var defaulTradetFeaturePropertiesHtmlValue="";
    //init
    //��Ŀ�����б����Ч������ʼ����
    var beginIndex = 0;
    var form = mainform;
    var subjectModifyFlag = false;
    //�⼸�����������ڷ���offer��ʱ����Ч�ģ����޸�offer��ʱ����Ч
    
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
            	tdTradeObj.innerHTML = "�ܱ�Ǹ������ҵ��ʱ�޷�����һ�ڼ���Ϣ�����������Լ���������ͨ��Ӧ��Ϣ��<br/>����д�±���ɹ�Ӧ��Ϣ�ķ�����";
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


	//����ƥ��
	quickBuySellMatch(typeObj);
	//��ʾ�����Ʒ
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
