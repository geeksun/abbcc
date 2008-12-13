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
    <title>��Աע��/<%=path %></title>
    <meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
    <link rel="stylesheet" type="text/css" href="<%=path%>/css/demyreg.css"/>
    <style type="text/css"></style>
    <script src="<%=path%>/js/prototype.js"></script>
    <script src="<%=path%>/js/common.js"></script>
    <script type="text/javascript">
  	/*
 	 *  ����û������Ƿ��Ѿ���ע��
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
							showError(successid,id,"&nbsp;&nbsp;&nbsp;<font color='red'>���û��Ѿ�����</font>");
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
			showError(successid,id,"<font color='red'>&nbsp;&nbsp;&nbsp;��Ա��¼����5-20��Ӣ����ĸ��������ɣ�ֻ������(0-9)��Ӣ��(a-z)��</font>");
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
		$(id).innerHTML="��д��ȷ";
		$(id).className="note";
	}
	function checkPassword(successid,elem,id){
		if(validateUsername(elem) == 1){
			showError(successid,id
			,"&nbsp;&nbsp;&nbsp;<font color='red'>������5-20��Ӣ����ĸ��������ɣ�ֻ������(0-9)��Ӣ��(a-z)��</font>");
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
				,"&nbsp;&nbsp;&nbsp;<font color='red'>������������벻��ͬ��������������������롣</font>");
				return false;
			}
		}else{
			$(id).className="note";
		}
	}
	function checkQuestion(successid,elem,id){
		if(elem.value == ""){
			showError(successid,id
			,"&nbsp;&nbsp;&nbsp;<font color='red'>��ѡ����ʾ���⡣</font>");
			return false;
		}else{
			showSuccess(successid,id);
			return true;
		}
	}
	/*
	 *	��������Ƿ���ע��
	 */
	function checkEmail(successid,elem,id){
		if(validateEmail(elem) == 1){
			showError(successid,id
			,"&nbsp;&nbsp;&nbsp;<font color='red'>�����ʼ���ʽ����ȷ!</font>");
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
		if(reg.test(str)){						// �绰�����ʽ��ȷ 
			showSuccess(successid,id);
			return true;
		}else{
			showError(successid,id
			,"&nbsp;&nbsp;&nbsp;<font color='red'>�̶��绰��ʽ����ȷ!��ȷ��ʽ���磺010-81818181</font>");
			return false;
		}		
	}
	function checkConfirmAnswer(successid,elem,id){
		if(elem.value == $("hydlm").value || elem.value == $("mm").value || "" == elem.value)
		{
			showError(successid,id
			,"&nbsp;&nbsp;&nbsp;<font color='red'>������ʾ�𰸲���Ϊ�ջ���������ʾ����͵�¼����ͬ��</font>");
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
			,"&nbsp;&nbsp;&nbsp;<font color='red'>��������Ч����ʵ������</font>");
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
  		����ע�����⣬��δ�010-88888888 
  	</div>
    <form name="registerForm" method="post" action="<%=path%>/register.do">
		<table width="80%" align=center cellpadding="0" cellspacing="0" bordercolor="#99CCFF" >
		<tr>
		<td colspan=2>���������ʻ���Ϣ<br><hr></td>
		</tr>
			<tr>
			<td colspan=3>
				<html:messages id="usernameError">
					<bean:write name="usernameError" />
				</html:messages>
			</td>
			</tr>
			<tr>
				<td align=right><span id="username_img"></span>��Ա��¼��<font color=red>*</font></td>
				<td><input type=text id="hydlm" name="hydlm" onFocus="doEnhance('username_condition');" 
				onBlur="checkUser('username_img',this,'username_condition')"></td>
				<td width="256" class="bg1">
					<div class="note" id="username_condition">
						��Ա��¼����5-20��Ӣ����ĸ��������ɣ�ֻ������(0-9)��Ӣ��(a-z)��
					</div>
				</td>
			</tr>
			<tr>
				<td align=right><span id="password_img"></span>����<font color=red>*</font></td>
				<td><input type=password id="mm" name="mm" onBlur="checkPassword('password_img',this,'password_condition')"
				onFocus="doEnhance('password_condition');"  size=20></td>
				<td>
				<div class="note" id="password_condition">
				������5-20λӢ����ĸ��������ɣ����ִ�Сд,
				����ΪӢ����ĸ(a-z)������(0-9)��ϣ����ڼ��䣬���ױ��³���<br/><font color="red">ע�⣺�������û�����ͬ��</font>
				</div>
				</td>
			</tr>
			<tr>
				<td align=right><span id="confirm_password_img"></span>�ظ���������<font color=red>*</font></td>
				<td><input  type=password id="rmm" name="rmm" onFocus="doEnhance('confirm_password_condition');"
				 onBlur="checkPasswordConfirm('confirm_password_img',this,'confirm_password_condition')" ></td>
				 <td width="256" class="bg1">
					<div class="note" id="confirm_password_condition">��������һ��������д�����롣</div>
				</td>
			</tr>
			<tr>
				<td align=right><span id="confirm_question_img"></span>������ʾ����<font color=red>*</font></td>
				<td>
				<select name="mmtswt" id="mmtswt" onFocus="doEnhance('confirm_question_condition');"
				onChange="checkQuestion('confirm_question_img',this,'confirm_question_condition')" >
					<option value="">------����ѡ��-----</option>
					<option value="��ĸ�׵����գ�">��ĸ�׵����գ�</option>
					<option value="����ϲ���ĸ�����">����ϲ���ĸ�����</option>
					<option value="����ϲ���ĸ��ǣ�" >����ϲ���ĸ��ǣ�</option>
					<option value="����ϲ���Ե�ʳ�" >����ϲ���Ե�ʳ�</option>
					<option value="����ϲ������ɫ��" >����ϲ������ɫ��</option>
					<option value="�������͵�һλ���ˣ�" >�������͵�һλ���ˣ�</option>
				</select>
				</td>
				<td>
				<div id="confirm_question_condition" class="note">����д�Լ�����Ϥ�����⣬���μǣ�������������ʱ���������롣</div>
				</td>
			</tr>
			<tr>
				<td align="right"><span id="confirm_answer_img"></span>������ʾ��<font color=red>*</font></td>
				<td><input type="text" id="mmtsda" name="mmtsda" onBlur="checkConfirmAnswer('confirm_answer_img',this,'confirm_answer_condition')" 
		  		onFocus="doEnhance('confirm_answer_condition');"></td>
				<td>
				<div class="note" id="confirm_answer_condition">
					������ʾ�𰸲�����������ʾ����͵�¼����ͬ��
				</div>
				</td>
			</tr>
			<tr>
			<td colspan=2>��������ϵ��ʽ<br><hr></td>
			</tr>
			<tr>
				<td align=right><span id="true_name_img"></span>��ʵ����<font color=red>*</font></td>
				<td><input type=text id="zsxm" name="zsxm" onFocus="doEnhance('true_name_condition');" 
				 onBlur="checkTruename('true_name_img',this,'true_name_condition')">
				 </td>
				<td>
					<div id="true_name_condition" class="note">
						����д��ʵ����
					</div>
				</td>
			</tr>
			<tr>
				<td align=right>�Ա�<font color=red>*</font></td>
				<td><input type=radio id="xb1" name="xb" value="0" checked>����
				<input type=radio id="xb2" name="xb" value="1">Ůʿ</td>
				<td>
				<div id="sex_condition" class="note">
					��ѡ�������Ա�
				</div>
				</td>
			</tr>
			<tr>
				<td align=right><span id="position_img"></span>����ְλ<font color=red>*</font></td>
				<td><input type=text id="zw" name="zw" onFocus="doEnhance('position_condition');" 
				onBlur="checkPosition('position_img',this,'position_condition')"> 
				</td>
				<td>
				<div id="position_condition" class="note">
					����д����ְλ
				</div>
				</td>
			</tr>
			<tr>
				<td align=right><span id="email_img"></span>��������<font color=red>*</font></td>
				<td><input type=text id="dzyx" name="dzyx" onBlur="checkEmail('email_img',this,'email_condition')"
				 onFocus="doEnhance('email_condition');">
				</td>
				<td>
				<div id="email_condition" class="note">
					�ǳ���Ҫ�����ǿͻ�������ϵ����ѡ��ʽ���������д��ʵ����ȷ��������õĵ����ʼ���
				</div>
				</td>
			</tr>
			<tr>
				<td align=right><span id="phone_img"></span>�̶��绰<font color=red>*</font></td>
				<td><input type=text id="gddh" name="gddh" onBlur="checkPhone('phone_img',this,'phone_condition')"
				 onFocus="doEnhance('phone_condition');">
				</td>
				<td>
					<div id="phone_condition" class="note">
						����д������ϵ�绰����ʽ��010-81818181
					</div>
				</td>
			</tr>
			<tr>
				<td align=right>����</td>
				<td><input type=text id="cz" name="cz"></td>
			</tr>		
			<tr>
				<td align=right>�ֻ�</td>
				<td><input type=text id="sj" name="sj"></td>
			</tr>	
			<tr>
			<td colspan=2>��˾���ƺ���Ӫҵ��<br><hr></td>
			</tr>
			<tr>
				<td align=right>��˾����<font color=red>*</font></td>
				<td>
				<input type=radio  name="gslx" value="1" checked>��ҵ��λ
				<input type=radio  name="gslx" value="2">���徭Ӫ<br>
				<input type=radio  name="gslx" value="3">��ҵ��λ���������<br>
				<input type=radio  name="gslx" value="4">δ������ע�ᣬ����
				</td>
				<td>
				<div id="type_condition">
				</div>
				</td>
			</tr>
			<tr>
				<td align=right><span id="corp_name_img"></span>��˾����<font color=red>*</font></td>
				<td><input type=text id="gsmc" name="gsmc" onFocus="doEnhance('corp_name_condition')" 
				onBlur="checkCorpName('corp_name_img',this,'corp_name_condition')" size="30">
				</td>
				<td>
					<div id="corp_name_condition" class="note">
						����д��˾����
					</div>
				</td>
			</tr>
			<tr>
				<td align=right><span id="place_img"></span>��˾���ڵ�<font color=red>*</font></td>
				<td><input type=text id="gsszd" name="gsszd" onFocus="doEnhance('place_condition')" 
				onBlur="checkPlace('place_img',this,'place_condition')" size="30">
				</td>
				<td>
					<div id="place_condition" class="note">
						����д��˾�����ڵ�
					</div>
				</td>
			</tr>
			<tr>
				<td align=right><span id="business_img"></span>��Ӫ��ַ<font color=red>*</font></td>
				<td><input type=text id="jydz" name="jydz" onFocus="doEnhance('business_condition')" 
				onBlur="checkBusiness('business_img',this,'business_condition')" size="30">
				</td>
				<td>
					<div id="business_condition" class="note">
						����д��˾�ľ�Ӫ��ַ
					</div>
				</td>
			</tr>
			<tr>
				<td align=right><span id="trade_img"></span>��Ӫ��ҵ<font color=red>*</font></td>
				<td>
				<select name="zyhy" id="zyhy"  onFocus="doEnhance('trade_condition');" 
				 onChange="checkTrade('trade_img',this,'trade_condition')" >
					<option value=""></option>
					<option value="1">1ddddddddd</option>
				</select>
				</td>
				<td>
					<div id="trade_condition" class="note">
						��ѡ���˾����Ӫ��ҵ
					</div>
				</td>
			</tr>
			<tr>
				<td align=right>��֤��<font color=red>*</font></td>
				<td valign="middle">
				<input type=text id="yzm" name="yzm" onBlur="checkCode(this,'code_condition')" 
				 onFocus="doEnhance('code_condition');" maxlength=4 size=10>
				<img border=0  src="<%=path %>/buildImage" />
				</td>
				<td>
					<div class="note" id="code_condition">
						�뽫���ͼƬ������׼ȷ����д���ı����С�
					</div>
				</td>
			</tr>
			<tr>
			<td colspan=2 align=center><a href="">����Ķ���������</a></td>
			</tr>
			<tr align=right>
				<td colspan=2 align=center>
				<input type="button" value="�ύע����Ϣ" onClick="register();" />
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
				,"&nbsp;&nbsp;&nbsp;<font color='red'>����������ְλ��</font>");
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
				,"&nbsp;&nbsp;&nbsp;<font color='red'>����д��˾���ƣ�</font>");
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
				,"&nbsp;&nbsp;&nbsp;<font color='red'>����д��˾�����ڵأ�</font>");
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
				,"&nbsp;&nbsp;&nbsp;<font color='red'>����д��˾�ľ�Ӫ��ַ��</font>");
				return false;
			}else{
				showSuccess(successid,id);
				return true;
			}
		}
		function checkCode(elem,id){
			if(elem.value == ""){
				$(id).innerHTML="&nbsp;&nbsp;&nbsp;<font color='red'>��֤�벻��Ϊ�ա�</font>";
				$(id).className="noteawoke";
				return false;
			}else{
				$(id).innerHTML="�뽫���ͼƬ������׼ȷ����д���ı����С�";
				$(id).className="note";
				return true;
			}
	    }
	    function checkTrade(successid,elem,id){
	    	if(elem.value == ""){
				showError(successid,id
				,"&nbsp;&nbsp;&nbsp;<font color='red'>��ѡ����Ӫ��ҵ��</font>");
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
