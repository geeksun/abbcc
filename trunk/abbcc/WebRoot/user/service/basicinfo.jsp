<%@ page language="java" import="java.util.*" pageEncoding="gbk"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
	String path = request.getContextPath();
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>basicinfo of company</title>
    <style type="text/css">
    	.note {
			COLOR: #999999
		}
    </style>   
    <script src="<%=path%>/js/json.js"></script>
    <script src="<%=path%>/js/prototype.js"></script> 
	<script type="text/javascript">
		 // ���ѡ��ľ�Ӫģʽ��ѡ���ܳ���3�����Ѿ�����3����ȥ��
          function checkBizType(obj) {
            var counter = 0;
            if (document.getElementById("Type_Manufacturer").checked) { counter++;}
            if (document.getElementById("Type_Wholesale").checked) { counter++;}
            if (document.getElementById("Type_Investment").checked) { counter++;}
            if (document.getElementById("Type_Service").checked) { counter++;}
			
			obj.id!="Type_Other"&&obj.checked==true?flag=false:flag=true;
			obj.id!="Type_Other"&&obj.checked==true?document.getElementById("Type_Other").checked=false:flag=true;
           
		   	if(document.getElementById("Type_Other").checked){
				document.getElementById("Type_Manufacturer").checked = "";
				document.getElementById("Type_Wholesale").checked = "";
				document.getElementById("Type_Investment").checked = "";
				document.getElementById("Type_Service").checked = "";
						
			}
 			if (counter > 2) {
              if (obj.checked) {
                alert("���ֻ��ѡ��2�־�Ӫģʽ!");
                return false;
              }
            }
       	    return true;
        }
        document.getElementsByName('mainProduct2')[2].attachEvent('onclick',function(){
											document.getElementById("mainMajor0").style.display = "none";
											document.getElementById("mainMajor1").style.display = "none";
											document.getElementById("mainMajor2").style.display = "";
											   checkSelectText(false,"selectedText");

										document.getElementsByName("mainProduct2")[2].checked = true;
											});
	</script>
  </head>
  <body>
  <p>
  	��˾��������
  </p>
  	<c:set var="leaguer" value="${leaguer}" scope="page" ></c:set>
  	<c:set var="hyjbxx" value="${hyjbxx}" scope="page"></c:set>
  	<form action="" name="basicInfoForm">
    <table width="90%" border="1" cellspacing="0" cellpadding="2" align="CENTER" bordercolor="F0E68C"> 
    	<tr>
    		<td align=right>��˾���ƣ�*</td><td><input type="text" name="gsmc" value="${leaguer.gsmc}"  size="40"></td>
    	</tr>
    	<!-- <tr>
    		<td> ��˾Ӣ�����ƣ�</td><td><input type="text"  name="enCorpName" size="40"></td>
    	</tr>
    	 -->
    	<tr>
    		<td align=right>��ҵ���ͣ�*</td>
    		<td><select name="qylx" >
    			<option value="">����</option>
					<option value="1">�������ι�˾(����)</option>
					<option value="2">�ɷ����޹�˾(����)</option>
					<option value="3" >�ɷ����޹�˾(������)</option>
					<option value="4" >ȫ����������ҵ</option>
					<option value="5" >������������ҵ</option>
					<option value="6" >������ʾ�Ӫ��ҵ</option>
					<option value="7" >���������Ӫ��ҵ</option>
					<option value="8" >���̶�����ҵ</option>
					<option value="9" >˽Ӫ��ҵ</option>
    		</td>
    	</tr>
    	<tr>
    		<td align=right>��Ӫģʽ��*</td>
    		<td>
    		<INPUT id=Type_Manufacturer title=����������������/�ӹ�����ҵ��ĳ���  onclick="return checkBizType(this)" 
            type=checkbox value=1 name=jyms>�����ӹ�&nbsp;
			<INPUT id=Type_Wholesale title=���²�Ʒ�������������������̼� onclick="return checkBizType(this)" 
            type=checkbox value=2 name=jyms>��������&nbsp;
            <INPUT id=Type_Investment title=���Լ��ĵ�š�Ʒ�ơ���Ʒ����������Ӫҵ�Ķ�����ļ���������̼ҡ��������������ˡ�����Ӫ������������ר���ȡ� 
            onclick="return checkBizType(this)" type=checkbox value=3 name=jyms>���̴���&nbsp;
			<INPUT id=Type_Service title=������ҵ������̼ҡ���������ѵ����ơ�������չ��ȡ� onclick="return checkBizType(this)" 
            type=checkbox value=4 name=jyms>��ҵ����&nbsp;
			<INPUT id=Type_Other onclick="return checkBizType(this)" type=checkbox value=5 name=jyms>���϶�����<BR>
			<SPAN class=note>�����ѡ��2�־�Ӫģʽ��</SPAN> 
    		</td>
    	</tr>
    	<tr>
    		<td align=right>��Ҫ��Ӫ�ص㣺*</td>
    		<td><input type="text" name="zyjydd" value="${leaguer.jydz }" size="27">
    		<span class=note>������дҵ���Ź����ص㣩</span></td>
    	</tr>
    	<tr>
    		<td align=right>��Ӫ��Ʒ��<font color=red>*</font></td>
    		<td>
    			<table>
    				<tr>
    					<td>
    					<INPUT id=productionService_0 maxLength=20 size=10 name=zycp value="${leaguer.xsdcp}">
    					<INPUT id=productionService_1 maxLength=20 size=10 name=zycp value="${leaguer.cgdcp}">
    					<INPUT id=productionService_1 maxLength=20 size=10 name=zycp>
    					<INPUT id=productionService_1 maxLength=20 size=10 name=zycp>
    					</td>
    				</tr>
    				<tr>
    					<td>
    					<INPUT id=productionService_0 maxLength=20 size=10 name=zycp>
    					<INPUT id=productionService_1 maxLength=20 size=10 name=zycp>
    					<INPUT id=productionService_1 maxLength=20 size=10 name=zycp>
    					<INPUT id=productionService_1 maxLength=20 size=10 name=zycp>
    					</td>
    				</tr>
    				<tr>
    					<td>
    					<INPUT id=productionService_0 maxLength=20 size=10 name=zycp>
    					<INPUT id=productionService_1 maxLength=20 size=10 name=zycp>
    					<INPUT id=productionService_1 maxLength=20 size=10 name=zycp>
    					<INPUT id=productionService_1 maxLength=20 size=10 name=zycp>
    					<br>
    				<span class=note>��ÿ������ֲ�Ʒ���ƣ�����10�������£��磺ť�ۣ�</span>
    					</td>
    				</tr>
    			</table>
    		</td>
    	</tr>
    	<tr>
    		<td align=right>ѡ����Ӫ��ҵ��<font color=red>*</font></td>
    		<td>
    		<table>
	    		<tr>
	    		<td  style="BORDER-RIGHT: #dac010 1px solid; PADDING-RIGHT: 3px; BORDER-TOP: #dac010 1px solid; PADDING-LEFT: 3px; PADDING-BOTTOM: 3px; BORDER-LEFT: #dac010 1px solid; PADDING-TOP: 3px; BORDER-BOTTOM: #dac010 1px solid" 
	            width="60%" bgColor=#ffffcc>��ѡ����������ҵ��������࣬�����Ϊ��Ӫ��ҵ��������� 
	            <FONT color=#ff0000><B>6</B></FONT> ����
	    		</td>
	    		</tr>
    			<tr>
    			<td>
    			<span id=prdMore>
    			<select id=topCatFormKey style="WIDTH: 120px" onClick="onChangeTopCategory()" size=8 name=topCatFormKey>
    				<c:forEach var="trade" items="${traList}" begin="0" end="8" step="1">    
				   		<option value="<c:out value="${trade.productId}"/>"><c:out value="${trade.tableName}"/></option>    
				    </c:forEach>
    			</select>
    			
    			<select id=secondCatFormKey style="WIDTH: 120px" onchange=onChangeSecondCategory() size=8 name=secondCatFormKey>
    			</select>
    			
    			<select id=leafCatFormKey style="WIDTH: 120px" onchange=onChangeleafCategory() size=8 name=leafCatFormKey>
    				<option ></option>
    			</select> 
    			</span>
    			
    			<br>
    			<input onclick="doSubmit1('select')" type=button value=��ӡ� name=Submit222> 
				<input onclick="doSubmit1('deselect')" type=button value=��ɾ�� name=Submit2222> 
                  <br></td></tr></table>
            <table>
              <tbody>
              <tr>
              <td>
              <SPAN id=selectedText style="DISPLAY: none"><BR>����������ѡ�����Ӫ��ҵ��</SPAN>
              <select style="WIDTH: 368px" size=8 name=right_category_id> 
              	
              </select> 
              </td>
               </tr>
              </tbody>
    		</table>
    	</table>
    	<p>
    	��ϵ��ʽ��ȷ�����޸�
    	</p>
    	<table width="90%" border="1" cellspacing="0" cellpadding="2" align="CENTER" bordercolor="F0E68C">
               <tr>
               <td align=right> ������<font color=red>*</font></td><td><input type="text" name="true_name" value="${hyjbxx.zsxm}"" ><SPAN class=note> 
                  ����д��˾����ϵ��(2��30������)��</SPAN></td>
               </tr>
               <tr>
               <td align=right>��˾�绰��<font color=red>*</font></td><td><input type="text" name="telephone" value="${hyjbxx.gddh}"" ></td>
               </tr>
    	</table>
    	<p align=center>
    	<input type="button" onclick="" value="�ύ��˾��������">
    	</p>
    </form>		
    <script type="text/javascript">
    	//һ���˵�
    	function onChangeTopCategory(){
    		var paramname = $F("topCatFormKey");
    		var url = "<%=path%>/traceInfo.do?action=getSubCategory";
    		var pars = "topCatFormKey=" + paramname;
		    var myAjax = new Ajax.Request(url,{method: 'post', parameters: pars, onComplete: showChecked});
	  	}
	    function showChecked(originalRequest){
			var result= originalRequest.responseText.parseJSON();	
			var secondCatFormKey = $("secondCatFormKey");
			//�������
			secondCatFormKey.length = 0;
			for(var i=0;i<result.length;i++){
				secondCatFormKey[i] = new Option(result[i].tableName,result[i].productId);
			}													
	  	} 
	  	//�����˵�
		function onChangeSecondCategory(){
			var paramname = $F("secondCatFormKey");
    		var url = "<%=path%>/traceInfo.do?action=getSubCategory";
    		var pars = "topCatFormKey=" + paramname;
		    var myAjax = new Ajax.Request(url,{method: 'post', parameters: pars, onComplete: showSecondCheck});
		}
		function showSecondCheck(originalRequest){
			var result= originalRequest.responseText.parseJSON();	
			var leafCatFormKey = $("leafCatFormKey");
			leafCatFormKey.length = 0;
			for(var i=0;i<result.length;i++){
				leafCatFormKey[i] = new Option(result[i].tableName,result[i].productId);
			}													
	  	} 
	  	function onChangeleafCategory(){
	  		//alert(0);
	  		
	  	}
	   function addOptions(src, dst,secCategories,topCategories) {
		    var selected_value = [];
		    var selected_text = [];
		   var secV = secCategories;
		   var topV = topCategories;
		   var topFlag = false;
		   var secFlag = false;
		   var leafFlag = false;
		
		 for(var i = 0;i<secCategories.length;i++)
		 {
		   if(secCategories[i].selected)
		  {secV= secCategories[i].text;
		    secFlag = true;
		
		    break;
		  }
		 }
		
		 for(var i = 0;i<topCategories.length;i++)
		 {
		   if(topCategories[i].selected)
		  {topV= topCategories[i].text;
		   topFlag = true;
		  break;
		  }
		 }
		    // Get items from dst
		    for(var i = 0; i < dst.length; i++) {
		
		      selected_value[selected_value.length] = dst[i].value;
		      selected_text[selected_text.length] = dst[i].text;
		    }
		var len = selected_value.length;
		        if( len >= 6 ) {
		          alert('������ѡ��6������Ӫ��ҵ����');
		          return ;
		        }
		    // Get items from src
		    for(var i = 0; i < src.length; i++) {
		      if(src[i].selected) {
		        var exists = 0;
		        leafFlag  = true;
		        for(var j = 0; j < dst.length; j++) {
		          if(dst[j].value == src[i].value) {
		            exists = 1;
		            break;
		          }
		        }
		
		     if(exists&&exists==1)
		     {
		     alert('���Ѿ�ѡ����á���Ӫ��ҵ����');
		     return;
		     }
		        if(!exists) {
		          selected_value[selected_value.length] = src[i].value;
		          if(secV==src[i].text)
		          selected_text[selected_text.length] = topV+"/"+src[i].text;
		        else
		           {
		          if(topV==src[i].text)
		          {
		          selected_text[selected_text.length] = topV;
		          }
		          else
		          {
		          selected_text[selected_text.length] = topV+"/"+secV+"/"+src[i].text;
		            }
		          }
		        }
		      }
		    }
		      if(topFlag ==false && secFlag==false&& leafFlag==false){
		        alert("����δѡ����Ӫ��ҵ����");
		        return ;
		      }else
		      {
		      if(topFlag ==true&& secFlag==false&& leafFlag==false)
		      {alert("���ġ���Ӫ��ҵ��δѡ�������������ѡ����ҵ���࣡")
		      return;
		      }
		      else{
		        if(topFlag ==true&& secFlag==true&& leafFlag==false)
		        {
		          alert("���ġ���Ӫ��ҵ��δѡ�������������ѡ����ҵ���࣡")
		          return;
		       }
		      }
		      }
		    // Clear dst except the first item
		    while(dst.length > 1) dst[1] = null;
		
		    // Fill the dst box
		    for(var j = 0; j < selected_value.length; j++) {
		      dst[j] = new Option(selected_text[j], selected_value[j]);
		    }
  	  	}
  
  		function removeOptions(src, dst) {
		    for(var i = 0; i < src.length; i++) {
		    	if(src[i].selected) src[i] =null;
		    }
		}
	  	function doSubmit1(button_clicked){
	  	   var tmpform = document.basicInfoForm;
	  	   var selected_categories = tmpform.right_category_id.options;
	  	   
	  	   if(button_clicked &&(button_clicked == "deselect"||button_clicked == "select")) {
	  	   
		   var categories = tmpform.leafCatFormKey.options;
		   var secCategories = tmpform.secondCatFormKey.options;
		   var topCategories = tmpform.topCatFormKey.options;
		   if(button_clicked == 'select')
		   {        // Move to right pane
		      if(categories.length==0)
		      {
        		if(secCategories.length==0)
        		{
        		addOptions(topCategories, selected_categories,secCategories,topCategories);
        		}else
		        {
		        addOptions(secCategories, selected_categories,secCategories,topCategories);
		        }
		      }else{
		        addOptions(categories, selected_categories,secCategories,topCategories);
		      }
		   } else{
			   if(button_clicked == 'deselect') {   // Remove from right pane
			        removeOptions(selected_categories, categories);
			   }
	        	button_clicked = '';
	        	return false;
         }
       }
	 }
    </script>
  </body>
</html>
