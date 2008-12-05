<%@ page language="java" import="java.util.*" pageEncoding="gbk" contentType="text/html; charset=gbk"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
 <%
	String path = request.getContextPath();
 %>
  <head>
    <title>会员注册</title>
    <script src="<%=path%>/js/prototype140.js"></script>
    <script type="text/javascript">
    function test(){
    	alert('test');
    }
	function register(){
		alert('8');
  		if(checkForm()){
   	   	    document.registerForm.action="<%=path%>/register.do?method=increase";
		    document.registerForm.submit();		  
		}else 
			return;   
    }    
    
  	function checkForm(){     
  		var hydlm = document.all.hydlm.value;
  	    var mm = document.all.mm.value;
  	    var rmm = document.all.rmm.value;
  	    var mmtswt = document.all.mmtswt.value;
  	    var mmtsda = document.all.mmtsda.value;
  	    var zsxm = document.all.zsxm.value;
  	    var xb = document.registerForm.xb.value;
  	    var zw = document.all.zw.value;
  	    var dzyx = document.all.dzyx.value;
  	    var gddh = document.all.gddh.value;
  	    var cz = document.all.cz.value;  
  	    var sj = document.all.sj.value;
  	    var gslx = document.registerForm.gslx.value;
  	    var gsmc = document.all.gsmc.value;
  	    var gsszd = document.all.gsszd.value;
  	    var jydz = document.all.jydz.value;
  	    var zyhy = document.all.zyhy.value;   
  	    
  	    var reg = /^[a-zA-Z]*$/;
  	  	var regObj = /^\d*$/g;
  	  	//var chk = "用户名已存在";
  	  	//var msg = $("msg").innerText;
  		if(hydlm == ""){
  			alert("用户名不能为空");
  			return false;
  		}
  		else if(mm == ""){
  			alert("用户密码不能为空");
  			return false;
  		}
  		else if(rmm == ""){
  			alert("重复输入密码不得为空");
  			return false;
  		}
  		else if(rmm != mm){
  			alert("重复输入密码不正确!");
  			return false;
  		}
  		else if(mmtswt == ""){
  			alert("密码提示问题不能为空");
  			return false;
  		}
  		else if(mmtsda == ""){
  			alert("密码提示答案不能为空");
  			return false;
  		}
  		else if(zsxm == ""){
  			alert("真实姓名不能为空");
  			return false;
  		}
  		else if(xb == ""){
  			alert("请选择一个性别");
  			return false;
  		}
  		else if(zsxm == ""){
  			alert("真实姓名不能为空");
  			return false;
  		}
  		else if(zw == ""){
  			alert("您的职位不能为空");
  			return false;
  		}
  		else if(dzyx == ""){
  			alert("E-mail不能为空");
  			return false;
  		}
  		else if((dzyx.indexOf('@', 0) == -1)||(dzyx.indexOf('.', 0) == -1)||(dzyx.length<6))){
  			alert("请输入合法的E-mail地址");
  			return false;
  		}
  		else if(gddh == ""){
  			alert("固定电话不能为空");
  			return false;
  		}
  		else if(jydz == ""){
  			alert("经营地址不能为空");
  			return false;
  		}
  		else if(zyhy == ""){
  			alert("主营行业不能为空");
  			return false;
  		}
  		else if(msg == chk){
  			alert("用户名已存在，请选用其他用户名");
  			return false;
  		}
  		else{
   			return true;
  		}
  	}
  	function checkBalance(){
  		var balance = document.createUserForm.balance.value;
  		alert(balance);
  		var regObj = /^\d*$/g;
  		if(regObj.test(balance)){
  			return true;
  		}else{
  			return false;
  		}
  	}
  	</script>
  </head>
  
  <body>
  	<div align=right>
  		如遇注册问题，请拔打010-88888888
  	</div>
    <form name="registerForm" method="post">
		<table  width=400 align=center cellpadding="0" cellspacing="0" bordercolor="#99CCFF" >
		<tr>
		<td colspan=2>设置您的帐户信息<br><hr></td>
		</tr>
			<tr>
				<td align=right>会员登陆名 <font color=red>*</font></td>
				<td><input type=text id="hydlm" name="hydlm"></td>
			</tr>
			<tr>
				<td align=right>密码 <font color=red>*</font></td>
				<td><input type=password id="mm" name="mm" size=20></td>
			</tr>
			<tr>
				<td align=right>重复输入密码<font color=red>*</font></td>
				<td><input  type=password id="rmm" name="rmm" ></td>
			</tr>
			<tr>
				<td align=right>密码提示问题<font color=red>*</font></td>
				<td><input  type=text id="mmtswt" name="mmtswt" ></td>
			</tr>
			<tr>
				<td align=right>密码提示答案<font color=red>*</font></td>
				<td><input  type=text id="mmtsda" name="mmtsda" ></td>
			</tr>
			<tr>
			<td colspan=2>姓名和联系方式<br><hr></td>
			</tr>
			<tr>
				<td align=right>真实姓名<font color=red>*</font></td>
				<td><input type=text id="zsxm" name="zsxm"></td>
			</tr>
			<tr>
				<td align=right>性别<font color=red>*</font></td>
				<td><input type=radio id="xb1" name="xb" value="0">先生
				<input type=radio id="xb2" name="xb" value="1">女士</td>
			</tr>
			<tr>
				<td align=right>您的职位<font color=red>*</font></td>
				<td><input type=text id="zw" name="zw"></td>
			</tr>
			<tr>
				<td align=right>电子邮箱<font color=red>*</font></td>
				<td><input type=text id="dzyx" name="dzyx"></td>
			</tr>
			<tr>
				<td align=right>固定电话<font color=red>*</font></td>
				<td><input type=text id="gddh" name="gddh"></td>
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
			</tr>
			<tr>
				<td align=right>贵公司名称<font color=red>*</font></td>
				<td><input type=text id="gsmc" name="gsmc"></td>
			</tr>
			<tr>
				<td align=right>公司所在地<font color=red>*</font></td>
				<td><input type=text id="gsszd" name="gsszd"></td>
			</tr>
			<tr>
				<td align=right>经营地址<font color=red>*</font></td>
				<td><input type=text id="jydz" name="jydz"></td>
			</tr>
			<tr>
				<td align=right>主营行业<font color=red>*</font></td>
				<td>
				<select name="zyhy" >
					<option ></option>
					<option value="1">1ddddddddd</option>
				</select>
				</td>
			</tr>
			<tr>
				<td align=right>验证码<font color=red>*</font></td>
				<td><input type=text id="yzm" name="yzm" size=8></td>
			</tr>
			<tr>
			<td colspan=2 align=center><a href="">点击阅读服务条款</a></td>
			</tr>
			<tr align=right>
				<td colspan=2 align=center>
				<input type="button" value="提交注册信息" onClick="register();" />
				<input type="button" onClick="test();" value="提交"/>
				</td>
			</tr>
		</table>
	</form>
  </body>
</html>
