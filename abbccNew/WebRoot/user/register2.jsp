<%@ page language="java" import="java.util.*" pageEncoding="gbk" contentType="text/html; charset=gbk"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
 <%
	String path = request.getContextPath();
 %>
  <head>
    <title>��Աע��</title>
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
  	  	//var chk = "�û����Ѵ���";
  	  	//var msg = $("msg").innerText;
  		if(hydlm == ""){
  			alert("�û�������Ϊ��");
  			return false;
  		}
  		else if(mm == ""){
  			alert("�û����벻��Ϊ��");
  			return false;
  		}
  		else if(rmm == ""){
  			alert("�ظ��������벻��Ϊ��");
  			return false;
  		}
  		else if(rmm != mm){
  			alert("�ظ��������벻��ȷ!");
  			return false;
  		}
  		else if(mmtswt == ""){
  			alert("������ʾ���ⲻ��Ϊ��");
  			return false;
  		}
  		else if(mmtsda == ""){
  			alert("������ʾ�𰸲���Ϊ��");
  			return false;
  		}
  		else if(zsxm == ""){
  			alert("��ʵ��������Ϊ��");
  			return false;
  		}
  		else if(xb == ""){
  			alert("��ѡ��һ���Ա�");
  			return false;
  		}
  		else if(zsxm == ""){
  			alert("��ʵ��������Ϊ��");
  			return false;
  		}
  		else if(zw == ""){
  			alert("����ְλ����Ϊ��");
  			return false;
  		}
  		else if(dzyx == ""){
  			alert("E-mail����Ϊ��");
  			return false;
  		}
  		else if((dzyx.indexOf('@', 0) == -1)||(dzyx.indexOf('.', 0) == -1)||(dzyx.length<6))){
  			alert("������Ϸ���E-mail��ַ");
  			return false;
  		}
  		else if(gddh == ""){
  			alert("�̶��绰����Ϊ��");
  			return false;
  		}
  		else if(jydz == ""){
  			alert("��Ӫ��ַ����Ϊ��");
  			return false;
  		}
  		else if(zyhy == ""){
  			alert("��Ӫ��ҵ����Ϊ��");
  			return false;
  		}
  		else if(msg == chk){
  			alert("�û����Ѵ��ڣ���ѡ�������û���");
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
  		����ע�����⣬��δ�010-88888888
  	</div>
    <form name="registerForm" method="post">
		<table  width=400 align=center cellpadding="0" cellspacing="0" bordercolor="#99CCFF" >
		<tr>
		<td colspan=2>���������ʻ���Ϣ<br><hr></td>
		</tr>
			<tr>
				<td align=right>��Ա��½�� <font color=red>*</font></td>
				<td><input type=text id="hydlm" name="hydlm"></td>
			</tr>
			<tr>
				<td align=right>���� <font color=red>*</font></td>
				<td><input type=password id="mm" name="mm" size=20></td>
			</tr>
			<tr>
				<td align=right>�ظ���������<font color=red>*</font></td>
				<td><input  type=password id="rmm" name="rmm" ></td>
			</tr>
			<tr>
				<td align=right>������ʾ����<font color=red>*</font></td>
				<td><input  type=text id="mmtswt" name="mmtswt" ></td>
			</tr>
			<tr>
				<td align=right>������ʾ��<font color=red>*</font></td>
				<td><input  type=text id="mmtsda" name="mmtsda" ></td>
			</tr>
			<tr>
			<td colspan=2>��������ϵ��ʽ<br><hr></td>
			</tr>
			<tr>
				<td align=right>��ʵ����<font color=red>*</font></td>
				<td><input type=text id="zsxm" name="zsxm"></td>
			</tr>
			<tr>
				<td align=right>�Ա�<font color=red>*</font></td>
				<td><input type=radio id="xb1" name="xb" value="0">����
				<input type=radio id="xb2" name="xb" value="1">Ůʿ</td>
			</tr>
			<tr>
				<td align=right>����ְλ<font color=red>*</font></td>
				<td><input type=text id="zw" name="zw"></td>
			</tr>
			<tr>
				<td align=right>��������<font color=red>*</font></td>
				<td><input type=text id="dzyx" name="dzyx"></td>
			</tr>
			<tr>
				<td align=right>�̶��绰<font color=red>*</font></td>
				<td><input type=text id="gddh" name="gddh"></td>
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
			</tr>
			<tr>
				<td align=right>��˾����<font color=red>*</font></td>
				<td><input type=text id="gsmc" name="gsmc"></td>
			</tr>
			<tr>
				<td align=right>��˾���ڵ�<font color=red>*</font></td>
				<td><input type=text id="gsszd" name="gsszd"></td>
			</tr>
			<tr>
				<td align=right>��Ӫ��ַ<font color=red>*</font></td>
				<td><input type=text id="jydz" name="jydz"></td>
			</tr>
			<tr>
				<td align=right>��Ӫ��ҵ<font color=red>*</font></td>
				<td>
				<select name="zyhy" >
					<option ></option>
					<option value="1">1ddddddddd</option>
				</select>
				</td>
			</tr>
			<tr>
				<td align=right>��֤��<font color=red>*</font></td>
				<td><input type=text id="yzm" name="yzm" size=8></td>
			</tr>
			<tr>
			<td colspan=2 align=center><a href="">����Ķ���������</a></td>
			</tr>
			<tr align=right>
				<td colspan=2 align=center>
				<input type="button" value="�ύע����Ϣ" onClick="register();" />
				<input type="button" onClick="test();" value="�ύ"/>
				</td>
			</tr>
		</table>
	</form>
  </body>
</html>
