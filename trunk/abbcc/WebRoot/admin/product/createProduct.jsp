<%@ page language="java" contentType="text/html; charset=gbk"
	pageEncoding="gbk"%>
<%@ page import="java.util.List,java.util.Iterator"%>
<%@ page import="com.abbcc.util.product.ProductType"%>
<%
String path = request.getContextPath();
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
		<title>create product</title>
	</head>
	<script src="<%=path%>/js/prototype.js"></script>
	<script language="JavaScript" type="text/javascript">
		 
    	function onChangeTopCategory(value){
    		var paramname = value; 
    		var url = "<%=path%>/productType.do?method=productSecondCategory";  
    		var pars = "key=" + paramname; 
		    var myAjax = new Ajax.Request(url,{method: 'post', parameters: pars, onComplete: showTopChecked});
	  	}
	  	 
	    function showTopChecked(originalRequest){
			var result= originalRequest.responseText;	    
		    var secondCatForm=document.getElementById("tdsecondCatFormKey"); 
		     secondCatForm.innerHTML=result;
	  
	  	} 
		function onChangeSecondCategory(value){
			var paramname = value; 
    		var url = "<%=path%>/productType.do?method=productThirdCategory";  
    		var pars = "key=" + paramname; 
		    var myAjax = new Ajax.Request(url,{method: 'post', parameters: pars, onComplete: showSecondChecked});
	
		}
		function showSecondChecked(originalRequest){
			var result= originalRequest.responseText;	    
		    var secondCatForm=document.getElementById("tdleafCatFormKey"); 
		     secondCatForm.innerHTML=result;
	  
	  	} 
		
		function onChangeLeafCategory(value){ 
    		 var productType=document.getElementById('productType');   
			 productType.value=value;
			
		}  
		
		
	  </script>
	<script language="JavaScript" type="text/javascript">
		var count=0;
		function createProperty(){
			var property="<table  width='100%' id='productTable"+count+"' >"+ 
							 "<tr>"+
							 	"<td align='center' width='4%'>"+ 
							 		"<input type='text' id='indexId"+count+"'  name='index' size='2' onblur='doIndexOnBlur(this)' value='"+count+"'></td>"+
						        "<td align='center' width='10%' >"+ 
						            "<input id='property"+count+"' name='property'  size='17' type='text'>"+
						            "<font color='#ff0000'>*</font>"+
							    "</td>"+
							    "<td align='center' width='12%'>"+
							 		"<input  id='checkbox"+count+"' type='checkbox' value='1' checked  >"+
									"<input  id='isNull"+count+"' name='isNull' type='hidden' value='2'>"+
								"</td>"+
								"<td align='center' width='10%'>"+
									 "<input name='unit' type='text'   size='5' value='mm'>"+ 
								"</td>"+
								"<td align='center' width='10%'>"+
									 "<select id='select"+count+"'>"+
							        	 "<option value='1' selected> 文本 </option>"+
							    		 "<option value='2'> 下拉 </option>"+
									 "</select>"+
									 "<input id='type"+count+"' name='type' type='hidden' value='1'>"+
							    "</td>"+
							    "<td align='center' width='10%'>"+ 
									 "<input  id='isHiddenCheckbox"+count+"' type='checkbox' onclick='changeRadio(this)' name='radioname' value='1' ></td>"+
									 "<input  id='isHidden"+count+"' name='isHidden' type='hidden' value='2'>"+
								"</td>"+ 
							 	"<td align='center' width='18%'>"+
							 		"<input name='remark' type='text' >"+
							  	"</td>"+ 
							  	"<td align='center' width='10%'>"+
							 		"<input  id='isShowCheckbox"+count+"' type='checkbox' value='1' checked  ></td>"+
									"<input  id='isShow"+count+"' name='isShow' type='hidden' value='2'>"+
							 	"</td>"+
							  "</tr><table>";
			 return property;
		}
		
		
		function setIsNull(){
			for(var i=1;i<=count;i++)
			{
				var checkboxId='checkbox'+i;
				var isNullId='isNull'+i;
			    var checkbox=document.getElementById(checkboxId);  
			    if(!checkbox.checked){
				      var isNull=document.getElementById(isNullId); 
				      isNull.value='1';    
			    } 
			}
			
		}
		function setType(){
			for(var i=1;i<=count;i++)
			{
				var selectId='select'+i;
				var typeId='type'+i;
			    var select=document.getElementById(selectId); 
			    var type=document.getElementById(typeId); 
			    type.value=select.value;
			} 
		}
		function setIsShow(){
			for(var i=1;i<=count;i++)
			{
				var checkboxId='isShowCheckbox'+i;
				var isShowId='isShow'+i;
			    var checkbox=document.getElementById(checkboxId);  
			    if(!checkbox.checked){
				      var isShow=document.getElementById(isShowId); 
				      isShow.value='1';    
			    } 
			}
		}
		function changeRadio(radio){
			
			if(radio.checked)
			{
				//alert("111");
				//radio.checked=false;
			}else
			{
				//alert("222");
			}
		
		}
		function setIsHidden(){
		  
			for(var i=1;i<=count;i++)
			{
				var checkboxId='isHiddenCheckbox'+i;
				var isHiddenId='isHidden'+i;
			    var checkbox=document.getElementById(checkboxId);  
			    if(!checkbox.checked){
				      var isHidden=document.getElementById(isHiddenId); 
				      isHidden.value='1';  
				     
			    }else
			    {
			    	  var isHidden=document.getElementById(isHiddenId); 
				      isHidden.value='2'; 
			    } 
			}
			 
		}
		function checkSumbit(){
			setIsNull();
			setType(); 
			setIsShow(); 
			setIsHidden();
			if(checkValue())
			{
				 
				document.form_product.action="<%=path%>/product.do?method=createProduct";
				document.form_product.submit();
			}
		}
		
		function addProperty(){
		     var producttd=document.getElementById('producttd');  
			 count++;
			 var property=createProperty();  
			 producttd.innerHTML+=property; 
		}
		
		function delProperty(){
			 if(count==1)return;
			 var producttd=document.getElementById('producttd'); 
			 var id="productTable"+count; 
			 var tr= document.getElementById(id); 
			 var temp=tr.innerHTML;
			 producttd.removeChild(tr);
			 count--;  
			 return temp;
		}
		function getProperty(index){
			 var id="productTable"+index; 
			 var tr= document.getElementById(id); 
			
		}
		function init(){
			addProperty();
		}
		function checkValue(){
			 var productName=document.getElementById('productName'); 
			 if(isNull(productName.value))
			 {
			 	alert("产品名称不能为空");
			 	return false;
			 } 
			 var productType=document.getElementById('productType'); 
			 if(isNull(productType.value))
			 {
			 	alert("请选择产品所属类目");
			 	return false;
			 }
			
			for(var i=1;i<=count;i++)
			{
				var propertyId='property'+i; 
			    var property=document.getElementById(propertyId); 
			      
			    if(isNull(property.value)){
			   	 	alert(i+" 名称不能为空");
			 		return false;
			    } 
			 
			} 
			for(var i=1;i<=count;i++)
			{
				var propertyId='property'+i; 
			    var property=document.getElementById(propertyId); 
			      
			    if(isNull(property.value)){
			   	 	alert(i+" 名称不能为空");
			 		return false;
			    } 
			 
			} 
			 for(var i=1;i<=count;i++){
			 	for(var j=1;j<=count;j++){
			 		var indexId='indexId'+i; 
			   		var index=document.getElementById(indexId); 
			   		if(index.value>count||index.value<1)
			   		{
			   			alert("序号不能大于总数 请正确填写序号");
			   			return false;
			   		}  
			 		if(i!=j){
						var nextindexId='indexId'+j; 
			  			var nextindex=document.getElementById(nextindexId);   
			  			if(nextindex.value==index.value){
			  				alert("序号不能相同 请正确填写序号");
			  				return false;
			  			}
					} 
			 	}
				
			 } 
			 
			return true; 
		}
		function isNull(value)
		{
			if(value==null)return true;
			value=value.replace(/(^\s*)|(\s*$)/g, "");
			if(value=="")return true;
			return false;
		}
		 function doIndexOnBlur(input) {
		 	var value=input.value;
			if(!isNumber(value)){
			 	alert("非数字");
			 	return ;
			} 
			if(value>count||value<1){
				alert("非法数字");
				return;
			}
			
		}
		 
		function isNumber(value){
			return true;
		}
	</script>
	<body onload="init()">
		<form name="form_product" method="post" action="">
			<table border="0" cellpadding="0" cellspacing="0" width="100%">
				<tr>
					<td align="center">
						产品管理
					</td>
				</tr>

				<tr>
					<td align="left">
						<table>
							<tr>
								<td>
									产品名称
									<font color="#ff0000">*</font>
									<input id="productName" name="productName" type="text"
										value="1111" size="15">
								</td>

							</tr>
						</table>
					</td>
				</tr>
				<tr>
					<td align="left">
						<table>
							<tr>
								<td valign="top">
									产品所属类目
									<font color="#ff0000">*</font>
									<input id="productType" type="hidden" name="productType"
										value="">
								</td>
								<td>
									<table>
										<tr>
											<td id="tdtopCatFormKey">
												<select name="topCatFormKey" size="8" style="width: 129px;"
													id="topCatFormKey"
													onchange="onChangeTopCategory(this.value)">
													<%
														List topCategory = (List) request.getAttribute("topCategory");
														if (topCategory != null) {
															Iterator iter = topCategory.iterator();
															while (iter.hasNext()) {
																ProductType productType = (ProductType) iter.next();
																if (productType != null) {
															String name = productType.getName();
															String value = productType.getId();
															boolean able = productType.isAble();
															out.print("<option value=\"" + value + "\"");
															if (able) {
																out.print(" style=\"color: rgb(204, 204, 204);\" ");
															}
															out.println(">");
															out.println(name);
															out.println("</option>");

																}
															}
														}
													%>

												</select>
											</td>
											<td id="tdsecondCatFormKey">
												<select name="secondCatFormKey" size="8"
													style="width: 129px;" id="secondCatFormKey"
													onchange="onChangeSecondCategory(this.value)">
													<%
														List secondCategory = (List) request.getAttribute("secondCategory");
														if (secondCategory != null) {
															Iterator iter = secondCategory.iterator();
															while (iter.hasNext()) {
																ProductType productType = (ProductType) iter.next();
																if (productType != null) {
															String name = productType.getName();
															String value = productType.getId();
															boolean able = productType.isAble();
															out.print("<option value=\"" + value + "\"");
															if (able) {
																out.print(" style=\"color: rgb(204, 204, 204);\" ");
															}
															out.println(">");
															out.println(name);
															out.println("</option>");

																}
															}
														}
													%>
												</select>
											</td>
											<td id="tdleafCatFormKey">
												<select name="leafCatFormKey" size="8" id="leafCatFormKey"
													style="width: 129px;"
													onchange="onChangeLeafCategory(this.value)">
													<%
														List thirdCategory = (List) request.getAttribute("thirdCategory");
														if (thirdCategory != null) {
															Iterator iter = thirdCategory.iterator();
															while (iter.hasNext()) {
																ProductType productType = (ProductType) iter.next();
																if (productType != null) {
															String name = productType.getName();
															String value = productType.getId();
															boolean able = productType.isAble();
															out.print("<option value=\"" + value + "\"");
															if (able) {
																out.print(" style=\"color: rgb(204, 204, 204);\" ");
															}
															out.println(">");
															out.println(name);
															out.println("</option>");

																}
															}
														}
													%>
												</select>
											</td>
										</tr>
									</table>

								</td>
							</tr>
						</table>
					</td>
				</tr>
				<tr>
					<td align="left">
						<table>
							<tr>
								<td>
									产品属性
								</td>
								<td>
									<input type="button" value="添加产品属性" onclick="addProperty()">
								</td>
								<td>
									<input type="button" value="删除产品属性" onclick="delProperty()">
								</td>
							</tr>
						</table>
					</td>
				</tr>
				<tr>
					<td>
						<div>
							<table width='100%' >
								<tr>
									<td align='center' width='4%'>
										序号
									</td>
									<td align='center' width='10%'>
										 &nbsp;&nbsp;&nbsp;名称
									</td>
									<td align='center' width='12%'>
										 不能为空
									</td>
									<td align='center' width='10%'>
										&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;单位
									</td>
									<td align='center' width='10%'>
										&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;类型
									</td>
									<td align='center' width='10%'>
										&nbsp;隐藏名称
									</td>
									<td align='center' width='18%'>
										备注
									</td>
									<td width='10%'>
										&nbsp;&nbsp;&nbsp;是否显示
									</td>
								</tr>
							</table>
							<div id="producttd"></div>
					</td>

				</tr>
				<tr>
					<td align="center">
						<input type="button" value="确定" onclick="checkSumbit()">
						<input type="button" value="预览">
					</td>
				</tr>
			</table>
		</form>
	</body>
</html>
