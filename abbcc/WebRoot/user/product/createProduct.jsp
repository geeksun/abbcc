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
		function getProperty(){ 
			var property="<table id='productTable"+count+"' >"+
							 "<tr><td>"+count+"</td>"+
						     "<td><b>名称</b><font color='#ff0000'>*</font>"+
						     "<input id=property"+count+"' name='property' type='text' size='15' value=''>"+
							 "</td><td>不能为空"+
							 "<input  id='checkbox"+count+"' type='checkbox' value='1' checked  >"+
							 "<input  id='isNull"+count+"' name='isNull' type='hidden' value='2'>"+
							 "</td><td>单位"+
							 "<input name='unit' type='text' size='5' value='mm'>"+
							 "</td><td>备注"+
							 "<input name='remark' type='text' size='25'>"+
							 "</td><td>类型"+
							 "<select id='select"+count+"' name='productType'>"+
							     "<option value='1' selected> 文本 </option>"+
							     "<option value='2'> 下拉 </option>"+
							 "</select>"+
							 "<input id='type"+count+"' name='type' type='hidden' value='1'>"+
							 "<td>是否显示"+
							 "<input  id='isShowCheckbox"+count+"' type='checkbox' value='1' checked  ></td>"+
							 "<input  id='isShow"+count+"' name='isShow' type='hidden' value='2'>"+
							 "</td></tr><table>";
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
		function checkSumbit(){
			setIsNull();
			setType();
			setIsShow(); 
			if(checkValue())
			{
				document.form_product.action="<%=path%>/product.do?method=createProduct";
				document.form_product.submit();
			}
		}
		
		function addProperty(){
		     var producttd=document.getElementById('producttd');  
			 count++;
			 var property=getProperty();  
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
			   	 	alert(count+"名称不能为空");
			 		return false;
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
		 
	</script>
	<body onload="init()">
	<form name="form_product" method="post" action="">
		<table >
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
								产品名称<font color="#ff0000">*</font>
								<input id="productName" name="productName" type="text" value="1111" size="15"> 
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
				<td align="left">
					<table>
						<tr>
							<td valign="top">
								产品所属类目
								<font color="#ff0000">*</font>
								<input id="productType" type="hidden" name="productType" value="">
							</td>
							<td>
								<table>
									<tr> <td  id="tdtopCatFormKey">
															  <select name="topCatFormKey" size="8"
																style="width: 129px;" id="topCatFormKey"
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
															<td  id="tdsecondCatFormKey">
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
															<td  id="tdleafCatFormKey">
															<select    name="leafCatFormKey" size="8"
																id="leafCatFormKey" style="width: 129px;"
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
				<td align="center">
					产品属性
				</td>
			</tr>
			<tr>
				<td align="center"  >
					<div  id="producttd">
					  
					</div>
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
