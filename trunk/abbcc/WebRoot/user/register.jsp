<%@ page language="java" import="java.util.*" pageEncoding="gbk" contentType="text/html; charset=gbk"%>
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html"%>
<%@ taglib uri="http://struts.apache.org/tags-logic" prefix="logic"%>
<%@ taglib uri="http://struts.apache.org/tags-tiles" prefix="tiles"%>
<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
 <%
		String path = request.getContextPath();
 %>
  <head>
    <title>会员注册/<%=path %></title>
    <meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
    <link rel="stylesheet" type="text/css" href="<%=path%>/css/demyreg.css"/>
    <style type="text/css"></style>
    <script src="<%=path%>/js/prototype.js"></script>
    <script src="<%=path%>/js/common.js"></script>
    <script type="text/javascript">
  	/*
 	 *  检测用户名称是否已经被注册
 	 */	
	function checkUser(successid,elem,id){
		if(checkUsername(successid,elem,id)){
			//  loading...
			$(id).innerHTML = "<img border=0 src='<%=path%>/images/gif/loadding_indicator_remembermilk_orange.gif'/>";
			var url = "<%=path%>/checkName.do";
			//alert(url); 
			var pars = "hydlm="+$("hydlm").value;
			new Ajax.Request(url,{
					method:'post',
					parameters:pars,
					onSuccess:function(transport){
						if("fail" == transport.responseText){
							showError(successid,id,"&nbsp;&nbsp;&nbsp;<font color='red'>该用户已经存在</font>");
							return false;
						}else{
						 	showSuccess(successid,id);
							return true;
						}
					}
			});
		}
	}
	function checkUsername(successid,elem,id){
		if(validateUsername(elem) == 1){
			showError(successid,id,"<font color='red'>&nbsp;&nbsp;&nbsp;会员登录名由5-20个英文字母或数字组成，只限数字(0-9)和英文(a-z)。</font>");
			return false;
		}else{
			showSuccess(successid,id);
			return true;
		}
	}
	function validateUsername(obj){
		var str = obj.value;
		var patn = /^[a-zA-Z0-9]+$/;
		if(!checkByteLength(str,5,20)) return 1;
		if(!patn.test(str)){
			return 1;
		}
		return 0; size="8" style="width: 129px;"tdleafCatFormKey   product_key
	}
	function checkByteLength(str,minlen,maxlen) { div_productfeature
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
	function showSuccess(successid,id)
	{	
		$(successid).innerHTML="<img src='<%=path%>/images/reg/ok.gif'></img>";
		$(id).innerHTML="填写正确";
		$(id).className="note";
	}
	function checkPassword(successid,elem,id){
		if(validateUsername(elem) == 1){
			showError(successid,id
			,"&nbsp;&nbsp;&nbsp;<font color='red'>密码由5-20个英文字母或数字组成，只限数字(0-9)和英文(a-z)。</font>");
			return false;
		}else{
			showSuccess(successid,id);
			return true;
		}
	}
	function checkPasswordConfirm(successid,elem,id){
		if(validateUsername($("mm")) == 0)
		{
			if($("mm").value == elem.value){
				showSuccess(successid,id);
				return true;
			}else
			{
				showError(successid,id
				,"&nbsp;&nbsp;&nbsp;<font color='red'>两次输入的密码不相同，请重新输入上面的密码。</font>");
				return false;
			}
		}else{
			$(id).className="note";
		}
	}
	function checkQuestion(successid,elem,id){
		if(elem.value == ""){
			showError(successid,id
			,"&nbsp;&nbsp;&nbsp;<font color='red'>请选择提示问题。</font>");
			return false;
		}else{
			showSuccess(successid,id);
			return true;
		}
	}
	/*
	 *	检查邮箱是否已注册
	 */
	function checkEmail(successid,elem,id){
		if(validateEmail(elem) == 1){
			showError(successid,id
			,"&nbsp;&nbsp;&nbsp;<font color='red'>电子邮件格式不正确!</font>");
			return false;
		}else{
			showSuccess(successid,id);
			return true;
		}
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
	function checkPhone(successid,elem,id){
		var str = elem.value;
		var reg = /^(((\()?\d{2,4}(\))?[-(\s)*]){0,2})?(\d{7,8})$/; 
		if(reg.test(str)){						// 电话号码格式正确 
			showSuccess(successid,id);
			return true;
		}else{
			showError(successid,id
			,"&nbsp;&nbsp;&nbsp;<font color='red'>固定电话格式不正确!正确格式例如：010-81818181</font>");
			return false;
		}		
	}
	function checkConfirmAnswer(successid,elem,id){
		if(elem.value == $("hydlm").value || elem.value == $("mm").value || "" == elem.value)
		{
			showError(successid,id
			,"&nbsp;&nbsp;&nbsp;<font color='red'>密码提示答案不能为空或与密码提示问题和登录名相同！</font>");
			return false;
		}else{
			showSuccess(successid,id);
			return true;
		}
	}
	function checkTruename(successid,elem,id){
		var temp = trim(elem.value);
		if(temp==""){
			showError(successid,id
			,"&nbsp;&nbsp;&nbsp;<font color='red'>请输入有效的真实姓名！</font>");
			return false;
		}else{
			showSuccess(successid,id);
			return true;
		}	
	}
	
  	</script>
  </head>
  
  <body>
  	<div align=right> 
  		如遇注册问题，请拔打010-88888888 
  	</div>
    <form name="registerForm" method="post" action="<%=path%>/register.do">
		<table width="80%" align=center cellpadding="0" cellspacing="0" bordercolor="#99CCFF" >
		<tr>
		<td colspan=2>设置您的帐户信息<br><hr></td>
		</tr>
			<tr>
			<td colspan=3>
				<html:messages id="usernameError">
					<bean:write name="usernameError" />
				</html:messages>
			</td>
			</tr>
			<tr>
				<td align=right><span id="username_img"></span>会员登录名<font color=red>*</font></td>
				<td><input type=text id="hydlm" name="hydlm" onFocus="doEnhance('username_condition');" 
				onBlur="checkUser('username_img',this,'username_condition')"></td>
				<td width="256" class="bg1">
					<div class="note" id="username_condition">
						会员登录名由5-20个英文字母或数字组成，只限数字(0-9)和英文(a-z)。
					</div>
				</td>
			</tr>
			<tr>
				<td align=right><span id="password_img"></span>密码<font color=red>*</font></td>
				<td><input type=password id="mm" name="mm" onBlur="checkPassword('password_img',this,'password_condition')"
				onFocus="doEnhance('password_condition');"  size=20></td>
				<td>
				<div class="note" id="password_condition">
				密码由5-20位英文字母或数字组成，区分大小写,
				建议为英文字母(a-z)和数字(0-9)结合，便于记忆，不易被猜出。<br/><font color="red">注意：不能与用户名相同。</font>
				</div>
				</td>
			</tr>
			<tr>
				<td align=right><span id="confirm_password_img"></span>重复输入密码<font color=red>*</font></td>
				<td><input  type=password id="rmm" name="rmm" onFocus="doEnhance('confirm_password_condition');"
				 onBlur="checkPasswordConfirm('confirm_password_img',this,'confirm_password_condition')" ></td>
				 <td width="256" class="bg1">
					<div class="note" id="confirm_password_condition">请再输入一遍上面填写的密码。</div>
				</td>
			</tr>
			<tr>
				<td align=right><span id="confirm_question_img"></span>密码提示问题<font color=red>*</font></td>
				<td>
				<select name="mmtswt" id="mmtswt" onFocus="doEnhance('confirm_question_condition');"
				onChange="checkQuestion('confirm_question_img',this,'confirm_question_condition')" >
					<option value="">------请您选择-----</option>
					<option value="我母亲的生日？">我母亲的生日？</option>
					<option value="我最喜欢的歌曲？">我最喜欢的歌曲？</option>
					<option value="我最喜欢的歌星？" >我最喜欢的歌星？</option>
					<option value="我最喜欢吃的食物？" >我最喜欢吃的食物？</option>
					<option value="我最喜欢的颜色？" >我最喜欢的颜色？</option>
					<option value="我最欣赏的一位名人？" >我最欣赏的一位名人？</option>
				</select>
				</td>
				<td>
				<div id="confirm_question_condition" class="note">请填写自己最熟悉的问题，并牢记！用于忘记密码时，重设密码。</div>
				</td>
			</tr>
			<tr>
				<td align="right"><span id="confirm_answer_img"></span>密码提示答案<font color=red>*</font></td>
				<td><input type="text" id="mmtsda" name="mmtsda" onBlur="checkConfirmAnswer('confirm_answer_img',this,'confirm_answer_condition')" 
		  		onFocus="doEnhance('confirm_answer_condition');"></td>
				<td>
				<div class="note" id="confirm_answer_condition">
					密码提示答案不能与密码提示问题和登录名相同！
				</div>
				</td>
			</tr>
			<tr>
			<td colspan=2>姓名和联系方式<br><hr></td>
			</tr>
			<tr>
				<td align=right><span id="true_name_img"></span>真实姓名<font color=red>*</font></td>
				<td><input type=text id="zsxm" name="zsxm" onFocus="doEnhance('true_name_condition');" 
				 onBlur="checkTruename('true_name_img',this,'true_name_condition')">
				 </td>
				<td>
					<div id="true_name_condition" class="note">
						请填写真实姓名
					</div>
				</td>
			</tr>
			<tr>
				<td align=right>性别<font color=red>*</font></td>
				<td><input type=radio id="xb1" name="xb" value="0" checked>先生
				<input type=radio id="xb2" name="xb" value="1">女士</td>
				<td>
				<div id="sex_condition" class="note">
					请选择您的性别
				</div>
				</td>
			</tr>
			<tr>
				<td align=right><span id="position_img"></span>您的职位<font color=red>*</font></td>
				<td><input type=text id="zw" name="zw" onFocus="doEnhance('position_condition');" 
				onBlur="checkPosition('position_img',this,'position_condition')"> 
				</td>
				<td>
				<div id="position_condition" class="note">
					请填写您的职位
				</div>
				</td>
			</tr>
			<tr>
				<td align=right><span id="email_img"></span>电子邮箱<font color=red>*</font></td>
				<td><input type=text id="dzyx" name="dzyx" onBlur="checkEmail('email_img',this,'email_condition')"
				 onFocus="doEnhance('email_condition');">
				</td>
				<td>
				<div id="email_condition" class="note">
					非常重要！这是客户与您联系的首选方式，请务必填写真实，并确认是您最常用的电子邮件。
				</div>
				</td>
			</tr>
			<tr>
				<td align=right><span id="phone_img"></span>固定电话<font color=red>*</font></td>
				<td><input type=text id="gddh" name="gddh" onBlur="checkPhone('phone_img',this,'phone_condition')"
				 onFocus="doEnhance('phone_condition');">
				</td>
				<td>
					<div id="phone_condition" class="note">
						请填写您的联系电话，格式：010-81818181
					</div>
				</td>
			</tr>
			<tr>
				<td align=right>传真</td>
				<td><input type=text id="cz" name="cz"></td>
			</tr>		
			<tr>
				<td align=right>手机</td>
				<td><input type=text id="sj" name="sj"></td>
			</tr>	
			<tr>
			<td colspan=2>公司名称和主营业务<br><hr></td>
			</tr>
			<tr>
				<td align=right>公司类型<font color=red>*</font></td>
				<td>
				<input type=radio  name="gslx" value="1" checked>企业单位
				<input type=radio  name="gslx" value="2">个体经营<br>
				<input type=radio  name="gslx" value="3">事业单位或社会团体<br>
				<input type=radio  name="gslx" value="4">未经工商注册，个人
				</td>
				<td>
				<div id="type_condition">
				</div>
				</td>
			</tr>
			<tr>
				<td align=right><span id="corp_name_img"></span>贵公司名称<font color=red>*</font></td>
				<td><input type=text id="gsmc" name="gsmc" onFocus="doEnhance('corp_name_condition')" 
				onBlur="checkCorpName('corp_name_img',this,'corp_name_condition')" size="30">
				</td>
				<td>
					<div id="corp_name_condition" class="note">
						请填写贵公司名称
					</div>
				</td>
			</tr>
			<tr>
				<td align=right><span id="place_img"></span>公司所在地<font color=red>*</font></td>
				<td><input type=text id="gsszd" name="gsszd" onFocus="doEnhance('place_condition')" 
				onBlur="checkPlace('place_img',this,'place_condition')" size="30">
				</td>
				<td>
					<div id="place_condition" class="note">
						请填写贵公司的所在地
					</div>
				</td>
			</tr>
			<tr>
				<td align=right><span id="business_img"></span>经营地址<font color=red>*</font></td>
				<td><input type=text id="jydz" name="jydz" onFocus="doEnhance('business_condition')" 
				onBlur="checkBusiness('business_img',this,'business_condition')" size="30">
				</td>
				<td>
					<div id="business_condition" class="note">
						请填写贵公司的经营地址
					</div>
				</td>
			</tr>
			<tr>
				<td align=right><span id="trade_img"></span>主营行业<font color=red>*</font></td>
				<td>
				<select name="zyhy" id="zyhy"  onFocus="doEnhance('trade_condition');" 
				 onChange="checkTrade('trade_img',this,'trade_condition')" >
					<option value=""></option>
					<option value="1">1ddddddddd</option>
				</select>
				</td>
				<td>
					<div id="trade_condition" class="note">
						请选择贵公司的主营行业
					</div>
				</td>
			</tr>
			<tr>
				<td align=right>验证码<font color=red>*</font></td>
				<td valign="middle">
				<input type=text id="yzm" name="yzm" onBlur="checkCode(this,'code_condition')" 
				 onFocus="doEnhance('code_condition');" maxlength=4 size=10>
				<img border=0  src="<%=path %>/buildImage" />
				</td>
				<td>
					<div class="note" id="code_condition">
						请将左侧图片的数字准确的填写到文本框中。
					</div>
				</td>
			</tr>
			<tr>
			<td colspan=2 align=center><a href="">点击阅读服务条款</a></td>
			</tr>
			<tr align=right>
				<td colspan=2 align=center>
				<input type="button" value="提交注册信息" onClick="register();" />
				</td>
			</tr>
		</table>
	</form>
	<script type="text/javascript">
		function checkPosition(successid,elem,id){
			var temp = trim(elem.value);
			// alert(temp);
			if(temp == ""){
				showError(successid,id
				,"&nbsp;&nbsp;&nbsp;<font color='red'>请输入您的职位！</font>");
				return false;
			}else{
				showSuccess(successid,id);
				return true;
			}
		}
		function checkCorpName(successid,elem,id){
			var temp = trim(elem.value);
			if(temp == ""){
				showError(successid,id
				,"&nbsp;&nbsp;&nbsp;<font color='red'>请填写贵公司名称！</font>");
				return false;
			}else{
				showSuccess(successid,id);
				return true;
			}
		}
		function checkPlace(successid,elem,id){
			var temp = trim(elem.value);
			if(temp == ""){
				showError(successid,id
				,"&nbsp;&nbsp;&nbsp;<font color='red'>请填写贵公司的所在地！</font>");
				return false;
			}else{
				showSuccess(successid,id);
				return true;
			}
		}
		function checkBusiness(successid,elem,id){
			var temp = trim(elem.value);
			if(temp == ""){
				showError(successid,id
				,"&nbsp;&nbsp;&nbsp;<font color='red'>请填写贵公司的经营地址！</font>");
				return false;
			}else{
				showSuccess(successid,id);
				return true;
			}
		}
		function checkCode(elem,id){
			if(elem.value == ""){
				$(id).innerHTML="&nbsp;&nbsp;&nbsp;<font color='red'>验证码不能为空。</font>";
				$(id).className="noteawoke";
				return false;
			}else{
				$(id).innerHTML="请将左侧图片的数字准确的填写到文本框中。";
				$(id).className="note";
				return true;
			}
	    }
	    function checkTrade(successid,elem,id){
	    	if(elem.value == ""){
				showError(successid,id
				,"&nbsp;&nbsp;&nbsp;<font color='red'>请选择主营行业。</font>");
				return false;
			}else{
				showSuccess(successid,id);
				return true;
			}
	    }
	    function register(){
	    	if(checkUsername('username_img',$("hydlm"),'username_condition')		    	
			&& checkPassword('password_img',$("mm"),'password_condition')
			&& checkPasswordConfirm('confirm_password_img',$("rmm"),'confirm_password_condition') 
			&& checkQuestion('confirm_question_img',$("mmtswt"),'confirm_question_condition')
			&& checkConfirmAnswer('confirm_answer_img',$("mmtsda"),'confirm_answer_condition')
			&& checkTruename('true_name_img',$("zsxm"),'true_name_condition')
			&& checkPosition('position_img',$("zw"),'position_condition')
			&& checkEmail('email_img',$("dzyx"),'email_condition')
			&& checkPhone('phone_img',$("gddh"),'phone_condition')
			&& checkCorpName('corp_name_img',$("gsmc"),'corp_name_condition')
			&& checkPlace('place_img',$("gsszd"),'place_condition')
			&& checkBusiness('business_img',$("jydz"),'business_condition')
			&& checkTrade('trade_img',$("zyhy"),'trade_condition')
			&& checkCode($("yzm"),'code_condition')
			){
				var form = document.registerForm;
				form.submit();
			}
		}
	</script>
  </body>
</html>
