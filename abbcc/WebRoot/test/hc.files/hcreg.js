	var rightIcon= "http://my.b2b.hc360.com/my/images/reg/icon_19x19.gif";

	/////////////////////////////////////////////////////////////
	//                Setup Class Names
	/////////////////////////////////////////////////////////////
	//default classes for infobox
	var infoboxOkClass		= "promptMsg3";
	var infoboxWarningClass	= "promptMsg";
	var infoboxErrorClass	= "promptMsg2";
	var infoboxHintClass	= "note";
	//default classes for input field
	var inputWarningClass	= "note";
	var inputErrorClass		= "noteawoke";
	var inputOkClass		= "promptMsg3";
	var inputNormalClass	= "note";
	/////////////////////////////////////////////////////////////
	//                Initialize Form
	/////////////////////////////////////////////////////////////
	document.onkeydown=function(evnt){
		if(isIE()&&window.event.keyCode==13){
			document.getElementById("submit").focus();
		}
	}
	function initForm(){
		//initialize form UI and add triggers
		var infobox;
		var x = document.getElementById("register");
		if(!x) 
			return;
		var y = x.getElementsByTagName("input");
		for (var i=0;i<y.length;i++){
			if(y[i].type == 'text' || y[i].type == 'password'){
			initStatus(y[i],true);
			setFiledWidth(y[i]);
			y[i].onfocus	= getFocus;
			y[i].onblur		= lostFocus;
			//y[i].onkeyup	= showMyStatus;
    		}
	    }
	}
   function initStatus(obj,isInput){
    	if(isInput){
        	if(isRequired(obj)) showStatus(obj,"Warning");
        	else showStatus(obj,"Normal");
    	}
    	var infobox = getInfobox(obj);
    	var errorCode = getInitStatus(obj);
    	if(infobox){
        	if(!errorCode || errorCode == 0){
            	infobox.className	= infoboxHintClass;
            	//infobox.innerHTML	= getErrorMsg(obj,0);
            	//alert(infobox.innerHTML);
        	}
        	if(errorCode >0){
            	infobox.className	= infoboxErrorClass;
            	infobox.innerHTML	= getErrorMsg(obj,errorCode);
        	}
    	}	
   }
	/////////////////////////////////////////////////////////////
	//                Base Functions
	/////////////////////////////////////////////////////////////
	function isIE() {
    	if(document.all) return true;
    	return false;
	}
	function setFiledWidth(obj){
    	obj.style.width=(19/3)*obj.size+11;
	}
	function formEle(required,datatype,parameter,infobox,errormsg,combine,status){
    	this.r	= required;	
    	this.d	= datatype;
    	this.p	= parameter;
    	this.i	= infobox;
    	this.e	= errormsg;
    	this.c = combine;
    	this.s = status;
	} 
	function isRequired(obj){
    	//alert('1'+(obj.id).r);
    	if(obj.id){
        	if(eval(obj.id).r) return eval(obj.id).r;
	    }
	    return false;
	}
	function isCombine(obj){
    	if(obj.id){
    	    if(eval(obj.id).c) return eval(obj.id).c;
    	}
    	return false;
	}
	function getDatatype(obj){
    	if(obj.id){
        	if(eval(obj.id).d) return eval(obj.id).d;
    	}
    	return false;
	}
	
	function getInfobox(obj){
    	//alert(obj.id);
    	if(obj.id){
        	if(eval(obj.id).i && document.getElementById(eval(obj.id).i)) return document.getElementById(eval(obj.id).i);
    	}
    	return;
	}
	function getErrorMsg(obj,errorCode){
    	if(obj.id){
        	if(eval(obj.id).e[errorCode]) return eval(obj.id).e[errorCode];
    	}
    	return;
	}
	function getHintMsg(obj){
    	if(obj.id){
        	if(eval(obj.id).e[0]) return eval(obj.id).e[0];
    	}
    	return;
	}
	function getInitStatus(obj){
    	if(obj.id){
        	if(eval(obj.id).s || eval(obj.id).s==0 ) return eval(obj.id).s;
	    }
	    return;
	}
	function getAttrName(str){
    	var s=str.split("=");
    	return s[0];
	}
	function getAttrValue(str){
    	var s=str.split("=");
    	return s[1];
	}
	function getAttrValueByName(obj,str){
    	var para;
    	if(obj.id){
        	if(eval(obj.id).p) para=eval(obj.id).p;
        	else return;
        	}else{
        	return;
    	}
    	var s = para.split(",");
    	for(var i=0;i<s.length;i++){
    		if(getAttrName(s[i]) == str){
        		if(getAttrValue(s[i]))
        		return getAttrValue(s[i]);
        		else
        		return;
    		}
    	}
    	return;
	}
	function getMailServer(str){
    	//be sure str is a correct email address
    	str = str.trim();
    	return str.substr(str.indexOf("@")+1);
	}
	String.prototype.trim = function()
	{
    	return this.replace(/(^\s*)|(\s*$)/g, "");
	}
	/////////////////////////////////////////////////////////////
	//                UI Functions
	/////////////////////////////////////////////////////////////
	function getFocus(evnt)
	{
    	var obj;
    	if (isIE()) {
        	obj = event.srcElement;
    	}else {
        	obj = evnt.target;
    	}
    	showInfo(obj,0);
	}
	
	
	function lostFocus(evnt){  
		var obj;
		if (isIE()) {
			obj = event.srcElement;
		}else {
			obj = evnt.target;
		}
		if(obj.type=='text'){
			/**失去焦点时删除文本框中的空格。*/
			obj.value=obj.value.trim();
		}
		showInfo(obj,-1);
		//alert("obj.name"+obj.name);
		if(obj.name=="SelProvince" && obj.value != ''){
			clean_check("city_info");
		}else {
			//info_check("city_info_check");
		}
		errorCode = validateValue(obj);
		if((obj.id == "salekeyword"|| obj.id =="buykeyword") && (errorCode == 5 )){
			document.getElementById("business_info").style.display='none';
			 document.getElementById("showInputInfo").style.display='none';
			return;
		}
		
		if(obj.name=="confirm_question_input"){
		
				if(form.confirm_question_input.value !="" && form.confirm_question.value=="7"){
					document.getElementById("confirm_question_info_check").innerHTML = "<strong>密码提示问题</strong> <span class=\"red\">* </span>";
						clean_check("confirm_question_info");  
						document.getElementById("confirm_question_info").className=infoboxOkClass;
						document.getElementById("confirm_question_info").innerHTML  = "填写正确";			
						document.getElementById("confirm_question_info_check").innerHTML = "&nbsp;<img src="+rightIcon+" width=\"19\" height=\"16\" align=\"absmiddle\"> " + document.getElementById("confirm_question_info_check").innerHTML;
				}else {
					   
						document.getElementById("confirm_question_info").innerHTML  = "";
						var start =  document.getElementById("confirm_question_info_check").innerHTML.indexOf('>');
						var end = document.getElementById("confirm_question_info_check").innerHTML.length;
						document.getElementById("confirm_question_info_check").innerHTML = "<strong>密码提示问题</strong> <span class=\"red\">* </span>";
				}
				return;
		}
		
		//判断电话号码的合法性CountryCode CityCode phone_number  ext_phone_number
		if(obj.id == 'ext_phone_number' || obj.id == 'CountryCode' || obj.id == 'CityCode' || obj.id == 'phone_number'){
			
			extCode=validateValue(document.getElementById('ext_phone_number'));
			countryCode=validateValue(document.getElementById('CountryCode'));
			cityCode=validateValue(document.getElementById('CityCode'));
			phoneCode=validateValue(document.getElementById('phone_number'));
			if(obj.id=="ext_phone_number" && errorCode<0){
				obj=document.getElementById('phone_number');
				
			}
			if(countryCode!=0){
				 errorCode=countryCode;
				 obj=document.getElementById('CountryCode');
			}else if(cityCode!=0){
				errorCode=cityCode;
				 obj=document.getElementById('CityCode');
			}else if(phoneCode!=0){
				
				 errorCode=phoneCode;
				 
				 obj=document.getElementById('phone_number');
			}else if(extCode>0){
				errorCode=extCode;
				 obj=document.getElementById('ext_phone_number');
			}else	if(countryCode==0 && cityCode==0 && phoneCode==0 && extCode<=0 ){
				errorCode=0;
			}
			
				
			}
			
			
		//判断传真号码的合法性FaxCountryCode FaxCityCode fax_number  ext_fax_number
		if(obj.id == 'ext_fax_number' || obj.id == 'fax_number' || obj.id == 'FaxCityCode' || obj.id == 'FaxCountryCode'){
			extCode=validateValue(document.getElementById('ext_fax_number'));
			faxCode=validateValue(document.getElementById('fax_number'));
			cityCode=validateValue(document.getElementById('FaxCityCode'));
			countryCode=validateValue(document.getElementById('FaxCountryCode')); 
			
			if(obj.id=="ext_fax_number" && errorCode<0){
				obj=document.getElementById('fax_number');
			}
			//alert(extCode+":"+faxCode+":"+cityCode+":"+countryCode+":");
			if(countryCode>0){
				 errorCode=countryCode;
				 obj=document.getElementById('FaxCountryCode');
			}else if(cityCode>0){
				errorCode=cityCode;
				 obj=document.getElementById('FaxCityCode');
			}else if(faxCode>0){
				 errorCode=faxCode;
				 obj=document.getElementById('fax_number');
			}else if(extCode>0){
				errorCode=extCode;
				 obj=document.getElementById('ext_fax_number');
			}else	if(countryCode==0 && cityCode==0 && faxCode==0   ){
				errorCode=0;
			}else{
				document.getElementById('fax_info').style.display='none';
				return;
			}
			
			}
			
		/**输入内容为空时如下操作*/
		if(obj.value == ''){
			//alert("obj.value=" + obj.value + "obj.id=" + obj.id + "eval(obj.id).c=" + eval(obj.id).c);
			if(obj.id && eval(obj.id).c && document.getElementById(eval(obj.id).c)){
				if(document.getElementById(eval(obj.id).c).innerHTML.indexOf("IMG") > 0 || document.getElementById(eval(obj.id).c).innerHTML.indexOf("img") > 0 ){
					var start =  document.getElementById(eval(obj.id).c).innerHTML.indexOf('>');
					var end = document.getElementById(eval(obj.id).c).innerHTML.length;
					document.getElementById(eval(obj.id).c).innerHTML = document.getElementById(eval(obj.id).c).innerHTML.substring(start +1,end);
				}
			}
			
			if(obj.id && eval(obj.id).c && document.getElementById(eval(obj.id).c)){
				var infobox = getInfobox(obj);
				var errorCode = getInitStatus(obj);
				//alert("infobox===" +infobox + "isRequired(obj)=" + isRequired(obj));
				//alert("form====" + form.isSubmit.value);
				if(form.isSubmit.value =="1") {
					if(infobox && !isRequired(obj)){
						//alert("33333=" + infobox.className);
						if(infobox.className == infoboxErrorClass){
							infobox.className	= infoboxErrorClass;
							infobox.innerHTML	= getErrorMsg(obj,0);	
							//infobox.innerHTML	= "";		
						}
					}
				}else {
					infobox.className	= "note";
					infobox.className = inputNormalClass;
					//infobox.innerHTML = (eval(obj.id).e)[0];	
					infobox.innerHTML	= "";
				}
			}
			return;
		}
		
		
		if(errorCode == 0){
			
			if(obj.id == 'loginid'){			
				checkNick();
				return;
			}
			
			if(obj.id == 'email'){
				checkEmail();
				return;
			}
			
			if(obj.id == 'password'){
				initStatus(document.getElementById('confirm_password'),true);
				document.getElementById('confirm_password').value="";
				
				document.getElementById('confirm_password_info').innerHTML='';
			}
			if(obj.id){
				if(eval(obj.id).c && document.getElementById(eval(obj.id).c)){
					if(document.getElementById(eval(obj.id).c).innerHTML.indexOf("img") < 0 
						&& document.getElementById(eval(obj.id).c).innerHTML.indexOf("IMG") < 0){ 
						document.getElementById(eval(obj.id).c).innerHTML = "&nbsp;<img src="+rightIcon+" width=\"19\" height=\"16\" align=\"absmiddle\"> " + document.getElementById(eval(obj.id).c).innerHTML;
					}
					document.getElementById(eval(obj.id).i).className=infoboxOkClass;
					document.getElementById(eval(obj.id).i).innerHTML = '填写正确';
				}
			}
		}
		if(errorCode >= 1){
			
			if(obj.id){
			//alert(eval(obj.id).i);
			if(eval(obj.id).i && document.getElementById(eval(obj.id).i)) 
			document.getElementById(eval(obj.id).i).className = infoboxErrorClass;
			
			document.getElementById(eval(obj.id).i).innerHTML = (eval(obj.id).e)[errorCode];
			}
			//showStatus(obj,"Error");
			if(document.getElementById(eval(obj.id).c).innerHTML.indexOf("IMG") >= 0 || document.getElementById(eval(obj.id).c).innerHTML.indexOf("img") >= 0){
			var start =  document.getElementById(eval(obj.id).c).innerHTML.indexOf('>');
			var end = document.getElementById(eval(obj.id).c).innerHTML.length;
			document.getElementById(eval(obj.id).c).innerHTML = document.getElementById(eval(obj.id).c).innerHTML.substring(start +1,end);
			}
			
			
		}
		if(errorCode < 0 && eval(obj.id)){
			
			if(document.getElementById(eval(obj.id).c).innerHTML.indexOf("IMG") >= 0 || document.getElementById(eval(obj.id).c).innerHTML.indexOf("img") >= 0){
			var start =  document.getElementById(eval(obj.id).c).innerHTML.indexOf('>');
			var end = document.getElementById(eval(obj.id).c).innerHTML.length;
			document.getElementById(eval(obj.id).c).innerHTML = document.getElementById(eval(obj.id).c).innerHTML.substring(start +1,end);
			}
			
			if(obj.id){
			if(eval(obj.id).i && document.getElementById(eval(obj.id).i) &&obj.id!="validate_code") {
			document.getElementById(eval(obj.id).i).className = infoboxErrorClass;
			}else if(eval(obj.id).i && document.getElementById(eval(obj.id).i) &&obj.id=="validate_code") {
				document.getElementById(eval(obj.id).i).className = infoboxWarningClass;
			}
			document.getElementById(eval(obj.id).i).innerHTML = (eval(obj.id).e)[0];
			}
		}
		
		
	}
	/**
	得到页面元素相对与 body 的 绝对x位置
	by liuhy 20081202
	*/
function getLeft(oInput){
	var left=0;
while(oInput)   
  {   
            left   +=   oInput.offsetLeft   
            oInput   =   oInput.offsetParent;   
  }	
	return left;
}
	/**
	得到页面元素相对与 body 的 绝对y位置
	by liuhy 20081202
	*/
function getTop(oInput){
	var top=0;
while(oInput)   
  {   
            top   +=   oInput.offsetTop   
            oInput   =   oInput.offsetParent;   
  }	
	return top;
}

function showInfo(obj,errorCode,forcible)
//Show Information in Infobox
//errorCode==0 for hint message
//if forcible==true, no matter what the status of infobox now, change it,
//otherwise,if the status of infobox is "Error", do not change it forever.
{
	
	var infoboxBack = getInfobox(obj);
	var infobox = document.getElementById("showInputInfo");
	//alert(obj.outerHTML);
		
	//if(infobox.className != infoboxErrorClass || forcible){
	if(errorCode == 0 ){
		if(infobox && ((infoboxBack && infoboxBack.className!=infoboxErrorClass && infoboxBack.className!=infoboxOkClass) || !infoboxBack) ){
			if(infoboxBack){
		infobox.style.display="block";
		
		infobox.style.left=getLeft(infoboxBack);
		if(obj.id!="buykeyword"){
			infobox.style.top=getTop(obj);
		}else{
			infobox.style.top=getTop(obj)-30;
		}
		infobox.style.width="270px"
		infoboxBack.style.display="none";
		infobox.innerHTML	= getErrorMsg(obj,errorCode);
			}
		}
	
	if(infobox.innerHTML != '&nbsp;'){
	infobox.className	= infoboxWarningClass;
	}else{
		infobox.style.display="none";
	}
	}
	if(errorCode >0){
		//if(infoboxBack.className != infoboxErrorClass || forcible){
	infoboxBack.className	= infoboxErrorClass;
	infoboxBack.innerHTML	= getErrorMsg(obj,errorCode);
	
	infoboxBack.style.display="block"
	if(infobox){
		infobox.style.display="none";
	}
	//	}
	}
	
	if(errorCode <0){
		//alert(infobox.outerHTML+"::"+errorCode);
		//if(infoboxBack.className != infoboxErrorClass || forcible){
			if(infoboxBack){
	infoboxBack.className	= infoboxErrorClass;
			
	//infoboxBack.innerHTML	= getErrorMsg(obj,errorCode);
	
	infoboxBack.style.display="block";
	}
	if(infobox){
		infobox.style.display="none";
	}
	//}
	}
	
	//}	
}


function showMyStatus(evnt){
	var obj,errorCode;
	if (isIE()) {
	obj = event.srcElement;
	}else {
	obj = evnt.target;
	}
	errorCode = validateValue(obj);
	if(errorCode == 0){
	showStatus(obj,"Ok");
	}
	if(errorCode >= 1){
	showStatus(obj,"Error");
	}
	if(errorCode < 0){
		showStatus(obj,"Normal");
	}
}
function showStatus(obj,stat)
//Show the status of user currently inputting field
//3 Statuses: Warning|Error|Ok
{
	switch(stat){
		case "Warning":
		obj.className = inputWarningClass;
		break;
		case "Error":
		obj.className = inputErrorClass;
		break;
		case "Ok":
		obj.className = inputOkClass;
		break;
		default:
		obj.className = inputNormalClass;
		break;
	}
}



/////////////////////////////////////////////////////////////
//                Validator Functions
/////////////////////////////////////////////////////////////
function validateValue(obj){
	//trim
	var patn = /(^\s)|(\s$)/;
	
	//switcher
	var errorCode = -1;
	switch(getDatatype(obj)){
		//alert("type=" + getDatatype(obj));
		case "loginid":
		//alert(obj);
		errorCode = validateUsername(obj);
		break;
		case "password":
		errorCode = validatePassword(obj);
		break;
		case "confirm_password":
		errorCode = validateSafePassword(obj);
		break;
		case "confirm_question":
		errorCode = validatePwdquestion(obj);
		break;
		case "confirm_question_input":
		errorCode = validatePwdquestionInput(obj);
		break;
		case "confirm_answer":
		errorCode = validatePwdAnswer(obj);
		break;
		case "confirm_zipcode":
		errorCode = validateZipcode(obj);
		break;
		case "email":     
		errorCode = validateEmail(obj);
		break;
		case "company":
		errorCode = validateCompany(obj);
		break;
		case "mobile":
		errorCode = validateMobile(obj);
		break;
		case "address":
		errorCode = validateAddress(obj);
		break;
		case "first_name":
		errorCode = validateFirstName(obj);
		break;
		case "job_title":
		errorCode = validateJobTitle(obj);
		break;
		case "buykeyword":
		errorCode = validateKeyword(obj);
		break;	
		case "salekeyword":
		errorCode = validateKeyword(obj);
		break;	
		case "CountryCode":
		errorCode = validatePhoneArea(obj);
		break;	
		case "CityCode":
		errorCode = validatePhoneArea(obj);
		break;	
		case "phone_number":
		errorCode = validatePhoneNumber(obj);
		break;
		case "ext_phone_number":
		errorCode = validateExtPhoneNumber(obj);
		break;
		case "FaxCountryCode":
		errorCode = validateFaxArea(obj);
		break;	
		case "FaxCityCode":
		errorCode = validateFaxArea(obj);
		break;
		case "fax_number":
		errorCode = validateFaxNumber(obj);
		break;
		case "ext_fax_number":
		errorCode = validateExtFaxNumber(obj);
		break;
		case "confirm_type1":
		errorCode = validateConfirmType1(obj);
		break;
		case "confirm_mainpro":	
		errorCode = validateConfirmMainpro(obj);
		break;
		case "confirm_mainbuy":
		errorCode = validateMainBuy(obj);
		break;
		
		default:
		errorCode = -1;
		break;
	}
	return errorCode;
}
function validateRetryAll(formObj){
	var obj,infobox,pass;
	pass = true;
	var x = formObj;
	if(!x) return;
	var y = x.getElementsByTagName("input");
	for (var i=0;i<y.length;i++){
		obj = y[i];		
		
		infobox = getInfobox(y[i]);
		if(obj.type == 'text' ){
		
		if(!isRequired(obj) && obj.value == ""){
		continue;
		}
		if(isRequired(obj) && obj.value == ""){
			pass = false;
			obj.focus();
			showStatus(obj,"Error");
			infobox.className	= infoboxErrorClass;
			infobox.innerHTML	= requireErrorInfo + getErrorMsg(obj,0);
			if(isCombine(obj)) break;
			continue;
		}
		if(validateValue(obj)>0){
			pass = false;
			obj.focus();
			showStatus(obj,"Error");
			showInfo(obj,validateValue(obj),true);
			if(isCombine(obj)) break;
			continue;
		}
		if(validateValue(obj)==0){
			if(obj.id){
				if(eval(obj.id).c && document.getElementById(eval(obj.id).c))
				
				document.getElementById(eval(obj.id).i).className = infoboxOkClass;
				document.getElementById(eval(obj.id).i).innerHTML = (eval(obj.id).e)[0];
			}
			//showStatus(obj,"Ok");
			//infobox.className	= infoboxHintClass;
			//infobox.innerHTML	= validatedInfo;
			continue;
			}
		}
	}
	return pass;
}
function validateAll(formObj){
	var obj,infobox,pass;
	pass = true;
	var x = formObj;
	if(!x) return;
	var y = x.getElementsByTagName("input");
	
	for (var i=0;i<y.length;i++){
		if(y[i].type != 'hidden' && y[i].type != 'submit'){
			obj = y[i];
			obj.value = obj.value.trim();
			infobox = getInfobox(y[i]);
			if(obj.type == 'text' || obj.type == 'password'){

				if(!isRequired(obj) && obj.value == ""){
					continue;
				}
				if(isRequired(obj) && obj.value == ""){
					
					
					if( document.getElementsByName("business_role")[0].checked==true){
						
						if(obj.id== "buykeyword"){
							
							continue;
						}
						
					}
					if( document.getElementsByName("business_role")[1].checked==true){
						if(obj.id== "salekeyword"){
							continue;
						}
						
					}
					if( document.getElementsByName("business_role")[2].checked==true){
						if(obj.id== "buykeyword" && validateValue(document.getElementById("salekeyword"))!=0){
							continue;
						}
						
					}
					pass = false;
					//obj.focus();
					showStatus(obj,"Error");
					//alert(obj + "is error");
					infobox.className	= infoboxErrorClass;
					infobox.innerHTML	= requireErrorInfo + getErrorMsg(obj,0) ;
					
					//if(isCombine(obj)) break;
					continue;
				}
				
				if(validateValue(obj)>0){
					pass = false;
					
					document.getElementById(obj.id).focus();
					//obj.focus();
					//alert(obj + "is 大于0");
					showStatus(obj,"Error");
					showInfo(obj,validateValue(obj),true);
					//if(isCombine(obj)) break;
					continue;
				}
				if(validateValue(obj)==0){
					//showStatus(obj,"Ok");
					//infobox.className	= infoboxHintClass;
					//infobox.innerHTML	= validatedInfo;
					continue;
				}
			}
		}
	}
	
	var titlecheck = false;
	var selCountryTemp = document.getElementById("SelCountryLikeChina").value.trim();
	var notCNCityTemp = document.getElementById("SelCityOther").value;
	var selCountry = document.getElementById("SelCountry").value;
	
	if(((selCountryTemp =='242' || selCountryTemp =='243' || selCountryTemp =='244') && notCNCityTemp == '')  || (document.getElementById("SelCity").value == '' && selCountry =='241')){
		warning_check("city_info",'请选择省份或者城市');  
		document.getElementById("city_info").focus(); 
		pass = false;
	}else{
		clean_check("city_info");  
		document.getElementById("city_info").className	= "note";
		document.getElementById("city_info").innerHTML	= "";
	}
	
	if(document.getElementById("category").value == '' ){
		warning_check("category_info",'请选择主营行业');  
		document.getElementById("category_info").focus();  
		pass = false;
	}else{
		clean_check("category_info");  
	}
	
	if(document.getElementById("confirm_question")){
		if(document.getElementById("confirm_question").value == '' ||  (document.getElementById("confirm_question").value == '7' && document.getElementById("confirm_question_input").value == '')){
			warning_check("confirm_question_info",'<h1>请选择密码提示问题<\/h1>');  
			document.getElementById("confirm_question_info").focus();  
			pass = false;
		}else{
			clean_check("confirm_question_info");  
		}
	}
	
	
	if(frindname == '') {
		if(document.getElementById("loginid_info_check").innerHTML.indexOf("IMG") < 0 || document.getElementById("loginid_info").className == 'noteawoke'){
			document.getElementById("loginid_info").focus();
			pass= false;	
		}
	}
	
	

	return pass;
	
}
//functions for each particular datatype validation
function validateUsername(obj){
	var str = obj.value;
	var patn =   /^[a-zA-Z0-9]+$/; 
	//var patn = /^[^\s]*$/;
	if(!checkByteLength(str,4,15)) return 1;
	if(!patn.test(str)){
		return 1;
	}
	return 0; 
}

function validatePassword(obj){
	var str = obj.value;
	if(!checkByteLength(str,6,20)) return 6;															

	if(str == form.username.value) return 2;
	if(isNumberContinue(str) == 1) return 3;
	if(isSameLetter(str) == 1) return 4;
	
	return 0; 
}
//检测密码提示问题
function validatePwdquestion(obj){
	var str = obj.value;
	//if(!checkByteLength(str,5,60)) return 1;
	if(!checkByteLengthForPass(str,1,60)) return 1;
	if(checkDenyWords(str) != ""){
		return 2;
	}
	return 0;
}

function validatePwdquestionInput(obj){
	var str = obj.value;
	//if(!checkByteLength(str,5,60)) return 1;
	if(!checkByteLengthForPass(str,1,60)) return 1;
	if(checkDenyWords(str) != ""){
		return 2;
	}
	return 0;
}

function validatePwdAnswer(obj){
	var str = obj.value;
	//if(!checkByteLength(str,5,60)) return 1;
	if(!checkByteLengthForPass(str,1,60)) return 1;
	if(checkDenyWords(str) != ""){
		return 2;
	}
	if(form.confirm_question.value !="" && form.confirm_question.value!="7"){
			if (str == form.confirm_question.value) {
				return 3;
			}
	}else {
		if (str == form.confirm_question_input.value) {
				return 3;
		}
	}
	//if(str == form.psdQues.value) {
		//return 3;
	//}
	
	if(str == form.username.value) {
		return 4;
	}

	return 0;
}
function validateZipcode(obj){
	var str = obj.value;
	
	var patn = /^[0-9]+$/;
	if(!patn.test(str)) return 1;
	//取消6位邮政编码的限制，只验证数字
	//if(!checkByteLength(str,1,6)) return 2;
	//if(str.length!=6)return 2;
	return 0;
}
function validateConfirmType1(obj) {
	var str = obj.value;
	if(str == '') {
		return 1;
	}
	return 0;
}
function validateConfirmMainpro(obj) {
	var str = obj.value;
	if(str == '') {
		return 1;
	}
	if(checkDenyWords(str) != ""){
		return 2;
	}
	return 0;
}

function validateSafePassword(obj){
	var str = obj.value;
	//if(!checkByteLength(str,6,20)) return 1;															
	//var patn1 =   /^[a-zA-Z0-9_]+$/;
	//if(!patn1.test(str) ) return 1;

	//if(str == form.username.value) return 1;

	if(str != document.getElementById("password").value) return 2;
	return 0;
}
function validateEmail(obj){
	var str = obj.value;
	
	if(!checkByteLength(str,1,50)) return 1;
		var patn = /^\w[-._\w]*\w@\w[-._\w]*\w\.\w{2,6}$/;
	if(patn.test(str)){
		return 0;
	}else{
		return 1; //incorrect format
	}
}
function validateNum(obj){
	var str = obj.value;
	var patn = new RegExp("\\d{"+getAttrValueByName(obj,"minlen")+","+getAttrValueByName(obj,"maxlen")+"}"); 
	if(patn.test(str)) return 0;
	return 1; 	
}
function validateMobile(obj){
	var str1 = obj.value;
	var str = tot(str1); 
	obj.value = str;
	if(str.length > 16){
		return 1;
	}
	if(str.length == 0){
		return -1;
	}
	var patn = /^[0-9]+$/;
	if(patn.test(str)) return 0;
	return 2; 	
}

function validatePhoneArea(obj){
	var str1 = obj.value;
	var str = tot(str1); 
	obj.value = str;
	if(str.length == 0){
		return -1;
	}
	var patn = /^[0-9]+$/;
	if(!patn.test(str)) return 1;
	return 0;
	//return validatePhone(); 
}

function validateFaxArea(obj){
	var str1 = obj.value;
	var str = tot(str1); 
	obj.value = str;
	if(str.length == 0){
		
	return -1;
	return 
	}
	var patn = /^[0-9]+$/;
	if(!patn.test(str)) return 1;
	return 0;
	//return validateFax(); 
}
function validateArea(obj){
	var str1 = obj.value;
	var str = tot(str1); 
	obj.value = str;
	if(str.length == 0){
	return -1;
	return 
	}
	var patn = /^[0-9]+$/;
	if(!patn.test(str)) return 1;   
	return 0; 
}
function validateMainBuy(obj){
	var str = obj.value;
	if(checkDenyWords(str) != ""){
		return 3;
	}
	return 0;
}

function validatePhone(){
	if(validateArea(document.getElementById("CountryCode")) == 0 && validateArea(document.getElementById("CityCode")) == 0 && validateNumber(document.getElementById("phone_number")) == 0){
		return 0;
	}else{
		return -1
	}
}
function validateFax(){
	if(validateArea(document.getElementById("FaxCountryCode")) == 0 && validateArea(document.getElementById("FaxCityCode")) == 0 && validateNumber(document.getElementById("fax_number")) == 0){
		return 0;
	}else{
		return -1
	}
}
function validateNumber(obj){
	var str1 = obj.value;
	var str = tot(str1); 
	obj.value = str;
	if(str.length == 0){
		return -1;
	}
	var patn = /^[0-9-\/]+$/;
	if(!patn.test(str)) return 1;
	return 0;
}
function validatePhoneNumber(obj){

	var str1 = obj.value;
	var str = tot(str1); 
	obj.value = str;
	if(str.length == 0){
		return -1;
	}
	var patn = /^[0-9-\/]+$/;
	if(!patn.test(str)) return 1;
	
	var countryCode = document.getElementById("CountryCode");
	if(str.length!=7&&str.length!=8 && countryCode.value.trim()=='86')
		return 2;
	return validatePhone(); 
}
function validateExtPhoneNumber(obj){
	var str1 = obj.value;
	var str = tot(str1); 
	if(str.length == 0){
		return -1;
	}
	var patn = /^[0-9-\/]+$/;
	if(!patn.test(str)){ return 1}else{return 0};
}
function validateFaxNumber(obj){

	var str1 = obj.value;
	var str = tot(str1); 
	obj.value = str;
	if(str.length == 0){
		return -1;
	}
	var patn = /^[0-9-\/]+$/;
	if(!patn.test(str)) return 1;
	
	var countryCode = document.getElementById("CountryCode");
	if(str.length!=7&&str.length!=8 && countryCode.value.trim()=='86')return 2;
	
	return validateFax(); 
}
function validateExtFaxNumber(obj){
	var str1 = obj.value;
	var str = tot(str1); 
	if(str.length == 0){
		return -1;
	}
	var patn = /^[0-9-\/]+$/;
	if(!patn.test(str)) { return 1}else{return 0};
}
function validateKeyword(obj){
	var str = obj.value;
	if(str.length > 500){
		return 1;
	}
	if(str.length == 0){
		return -1;
	}


	var pass = true;
	var keyselected ='';
	for(i=0;i<document.form.business_role.length;i++){
		if(document.form.business_role[i].checked){
		keyselected = document.form.business_role[i].value;
		break;
		}
	}
	
	if(keyselected == 'buyer'){
		if(document.getElementById("buykeyword").value == ''){
			pass = false;
		}
	}else if(keyselected == 'seller'){
		if(document.getElementById("salekeyword").value == ''){
			pass = false; 
		} 
	}else if(keyselected == 'both'){
		if(document.getElementById("salekeyword").value == '' || document.getElementById("buykeyword").value == ''){
			return 5;
		}
	}
	
	if(checkDenyWords(str) != ""){
		if(obj.id == 'salekeyword'){
			return 1;
		}else if(obj.id == 'buykeyword'){
			return 2;
		}
	}
	
	if(pass){
		return 0;
	}
	return -1;
}

function validateCompany(obj){
	var str = obj.value;
	
	if(str.length > 50){
		return 1;
	}
	if(str.length == 0){
		return -1;
	}
	if(checkDenyWords(str) != ""){
		return 2;
	}
	var patn = /^[0-9]+$/;
	if(patn.test(str)) return 3;
	
	if(isSameLetter(str)==1) return 4;
	return 0;
}

function validateJobTitle(obj){
	var str = obj.value;
	if(str.length > 16){
		return 1;
	}
	if(str.length == 0){
		return -1;
	}
	
	if(checkDenyWords(str) != ""){
		return 2;
	}
	
	return 0;
}
function validateFirstName(obj){
	var str = obj.value;
	if(str.length > 32){
		return 1;
	}
	
	if(str.length == 0){
		return -1;
	}
	
	if(checkDenyWords(str) != ""){
		return 2;
	}
	return 0;
}

function validateAddress(obj){
	var str = obj.value;
	if(str.length > 100){
		return 1;
	}
	if(str.length == 0){
		return -1;
	}
	if(checkDenyWords(str) != ""){
		return 2;
	}
	return 0;
}

function setmainpage(){
	document.body.style.behavior='url(#default#homepage)';
	document.body.setHomePage('http://www.hc360.com')
}

function bookmarkit(){
      window.external.addFavorite('http://www.hc360.com','慧聪网 中国领先的b2b电子商务网站')
   }

//提交表单
function submitForm(obj) {
	document.form.ValidKey.value = tot(document.form.ValidKey.value);
	//记录来源URL
	var referUrl = document.referrer;    
	form.sourceurl.value=referUrl;
	form.isSubmit.value="1";
	if (document.form.submitflag != null){
		document.form.submitflag.value="1";
	}

	var ret = validateAll(obj);
	//alert("ret==" + ret);
	if(ret){
	     	setmainpage();

		//if (document.form.eventSubmit_doPreview) {
		//	document.form.eventSubmit_doPreview.disabled = true;
		//}
	}else {
		form.isSubmit.value="0";
		if (document.form.submitflag != null){
			document.form.submitflag.value="0";
		}
		return false;
	}
	return ret;
}


function checkByteLengthForPass(str,minlen,maxlen) {
	if (str.length > maxlen || str.length < minlen) {
		return false;
	}
	return true;
}      
	
function checkByteLength(str,minlen,maxlen) {
	if (str == null) return false;
	var l = str.length;
	var blen = 0;
	for(i=0; i<l; i++) {
		if ((str.charCodeAt(i) & 0xff00) != 0) {
			blen ++;
		}
		blen ++;
	}
	if (blen > maxlen || blen < minlen) {
		return false;
	}
	return true;
}

function tot(mobnumber){                        
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
function isNumberContinue(str){
	var patn1 =   /^[0-9_]+$/;
	var ascendNumber=0;
	var descendNumber=0;
	
	for (var i = 1; i < str.length; i++) {
		if (str.charAt(i).charCodeAt() != (str.charAt(i-1).charCodeAt() + 1)) {
			ascendNumber = 1;
			break;
		}
	}	
	
	for (i = 0; i < (str.length - 1); i++) {
		if (str.charAt(i).charCodeAt() != (str.charAt(i+1).charCodeAt() + 1)) {
			descendNumber = 1;
			break;
		}
	}
	if(descendNumber == 0 || ascendNumber == 0){
		return 1;
	}else{
		return 0;
	}
}

function isSameLetter(str){
	var sameNumberFlag = 1;
	var patn1 =   /^[0-9]+$/;
	if(patn1.test(str) ){
		for (var i = 0; i < str.length; i++) {
		  if (str.charAt(0) != str.charAt(i)) {
			  sameNumberFlag = 0;
			  break;
		  }
		}          
	} else {
		for (var i = 0; i < str.length; i++) {
		    if (str.charAt(0) != str.charAt(i)) {
			    sameNumberFlag = 0;
				break;
		    }
		}
	}
	return sameNumberFlag;
}

function isOnlyDigitOrChar(str) {
	var digit = /^\d+$/;
	var words  = /^[a-zA-Z]+$/;
	if(digit.test(str) || words.test(str)) {
		return 1;
	}else {
		return 0;
	}
}




//推出页面是否弹出窗口
var exitpop=false;
function PopPage(strURL, name, width, height, left, top)
{   
	if(width==null) width=800;
	if(height==null) height=500;
	if(left==null) left = ( screen.width - width ) / 2;
	if(top==null) top  = ( screen.height - height ) / 2;
	temp = "width="+width+",height="+height+",left="+left+",top="+top+",scrollbars=1,toolbar=no,location=no,directories=no,status=no,resizable=no";
	w = window.open(strURL,name,temp);
	w.focus();
}

function GetCookie(cookiename)
{
	var thebigcookie = document.cookie;
	var firstchar = thebigcookie.indexOf(cookiename);
	if (firstchar != -1) {
	firstchar += cookiename.length + 1;
	lastchar = thebigcookie.indexOf(";",firstchar);
	if(lastchar == -1) lastchar = thebigcookie.length;
	return unescape(thebigcookie.substring(firstchar, lastchar));
	}
	return "";
}
function setCookie(cookiename,cookievalue,cookieexpdate,domainname)
{
	document.cookie = cookiename + "=" + cookievalue
	+ "; domain=" + domainname
	+ "; path=" + "/"
	+ "; expires=" + cookieexpdate.toGMTString();
}

function unloadpopup(cookiename,popurl,popwidth,popheight,domainname,tr)
{
	try {
	if (!tr)
	return;
	if( GetCookie(cookiename) == "" )
	{
	var expdate = new Date();
	expdate.setTime(expdate.getTime() + 1 * (24 * 60 * 60 * 1000)); //+1 day
	setCookie(cookiename,"yes",expdate,domainname);
	if( exitpop )
	{
	w = window.open(popurl,cookiename,"width="+popwidth+",height="+popheight+",scrollbars=1,toolbar=yes,location=yes,menubar=yes,status=yes,resizable=yes");
	w.focus;
	}
	}
	}catch (e) {}
}

function setCheckboxes(theForm, elementName, isChecked)
	{
	var chkboxes = document.forms[theForm].elements[elementName];
	var count = chkboxes.length;
	if (count)
	{
	for (var i = 0; i < count; i++)
		{
		chkboxes[i].checked = isChecked;
		}
		}
		else
		{
		chkboxes.checked = isChecked;
		}
		return true;
}


var imageObject;
function ResizeImage(obj, MaxW, MaxH)
		{
		if (obj != null) imageObject = obj;
		var state=imageObject.readyState;
		var oldImage = new Image();
		oldImage.src = imageObject.src;
		var dW=oldImage.width; var dH=oldImage.height;
		if(dW>MaxW || dH>MaxH) {
		a=dW/MaxW; b=dH/MaxH;
		if(b>a) a=b;
		dW=dW/a; dH=dH/a;
		}
		if(dW > 0 && dH > 0)
		imageObject.width=dW;imageObject.height=dH;
		if(state!='complete' || imageObject.width>MaxW || imageObject.height>MaxH) {
		setTimeout("ResizeImage(null,"+MaxW+","+MaxH+")",40);
		}
}