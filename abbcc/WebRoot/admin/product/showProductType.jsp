<%@ page language="java" contentType="text/html; charset=gbk"
	pageEncoding="gbk"%>
<%@ page import="java.util.List,java.util.Iterator"%>
<%@ page import="com.abbcc.pojo.ProductType"%>
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
		 
		 var isShowSign="<%=ProductType.PRODUCT_TYPE_SHOW%>";
    	function onChangeTopCategory(select){ 
			 
    		var paramname = select.value; 
    		var url = "<%=path%>/admin/productType.do?method=productSecondCategory";  
    		var pars = "key=" + paramname; 
		    var myAjax = new Ajax.Request(url,{method: 'post', parameters: pars, onComplete: showTopChecked});
		   setEditVaule(select);
		   setDeleteVaule(select);
		  clearThirdSelect();
	  	}
	  	function clearThirdSelect()
	  	{
	  	   var  tdleafCatFormKey=document.getElementById("tdleafCatFormKey"); 
	  	   tdleafCatFormKey.innerHTML="";
	  	}
	  	function setEditVaule(select){
	  	 	
    		 var option=select.options[select.options.selectedIndex]; 
    		 var typeName=document.form_update.typeName;
			 typeName.value=option.name;
			 
			 var isShow=option.isShow;
			 var isShowId=document.form_update.isShow; 
			 if(isShowSign==isShow)
			 {
			 	isShowId.checked=true;
			 }
			 
			 var editTypeId=document.getElementById("editTypeId"); 
			 editTypeId.value=option.value;
			 
			 document.form_update.priority.value=option.priority;
	  	}
	  	function setDeleteVaule(select){
	  	 	
    		 var option=select.options[select.options.selectedIndex]; 
    		 var typeName=document.form_delete.typeName;
			 typeName.value=option.name; 
			 
			 var deleteTypeId=document.getElementById("deleteTypeId"); 
			 deleteTypeId.value=option.value;
	  	}
	  	 
	    function showTopChecked(originalRequest){
			var result= originalRequest.responseText;	    
		    var secondCatForm=document.getElementById("tdsecondCatFormKey"); 
		     secondCatForm.innerHTML=result;
	  
	  	} 
		function onChangeSecondCategory(select){
			var paramname = select.value; 
    		var url = "<%=path%>/admin/productType.do?method=productThirdCategory";  
    		var pars = "key=" + paramname; 
		    var myAjax = new Ajax.Request(url,{method: 'post', parameters: pars, onComplete: showSecondChecked});
			 setEditVaule(select);
			   setDeleteVaule(select);
		}
		function showSecondChecked(originalRequest){
			var result= originalRequest.responseText;	    
		    var secondCatForm=document.getElementById("tdleafCatFormKey"); 
		     secondCatForm.innerHTML=result;
	  
	  	} 
	  	function onChangeLeafCategory(select){ 
	  		 setEditVaule(select); 
	  		   setDeleteVaule(select);
		}  
	  	function changeShow(radio){
	  		 
	  		var v=radio.value;  
	  		if(v==1){ 
	  			document.getElementById('tdleafCatFormKey').style.display='none';
	  		  	document.getElementById('tdsecondCatFormKey').style.display='none'; 
	  		}else if(v==2){ 
	  			 document.getElementById('tdsecondCatFormKey').style.display='block';  
	  			 document.getElementById('tdleafCatFormKey').style.display='none';
	  			 
	  		}else if(v==3){
	  			 document.getElementById('tdsecondCatFormKey').style.display='block'; 
	  			 document.getElementById('tdleafCatFormKey').style.display='block'; 
	  		}    
	  	}
	  	function checkAdd(){
	  			
		  	var typeName=document.form_add.typeName; 
		  	if(isNull(typeName.value)){
		  		alert("名称不能为空");
		  		return;
		  	} 
		  	
		   var hasSet= setProductType();
		    if(!hasSet)return;
		   	document.form_add.submit();
	  	}
	  	function checkUpdate(){
	  		var typeName=document.form_update.typeName; 
	  		var priority=document.form_update.priority; 
		  	if(isNull(typeName.value)){
		  		alert("名称不能为空");
		  		return;
		  	}
		  	 
		   //var hasSet= setProductType();
		    //if(!hasSet)return;
		   	document.form_update.submit();
	  	}
	  	function checkDelete(){
	  		 if(confirm('确定删除?')){   
      	 			document.form_delete.submit();
   			}  
	  	}
	  	function setProductType()
	  	{
	  		var typeParentId=document.form_add.parentId; 
		  	var productTypeMenu=document.form_proudctTypeMenu.productTypeMenu; 
		  	for(var i=0;i<productTypeMenu.length;i++){
		  	 	if(productTypeMenu[i].checked)
		  	 	{
		  	 		var value=productTypeMenu[i].value;
		  	 		if(value==1){
		  	 			 typeParentId.value="<%=ProductType.PRODUCT_TYPE_PARENT_ID_ROOT%>";
		  	 		}else if(value==2){
		  	 			var topCatFormKey =document.getElementById("topCatFormKey"); 
		  	 			 if(isNull(topCatFormKey.value))
		 				 {
		   					 alert("请先选择一级菜单");
		   					 return false;
		   				 }
		  	 			 typeParentId.value=topCatFormKey.value;
		  	 			 
		  	 		}else if(value==3){
		  	 			var  secondCatFormKey =document.getElementById("secondCatFormKey"); 
		  	 			if(isNull(secondCatFormKey.value))
		 				 {
		   					 alert("请先选择二级菜单");
		   					 return false;
		   				 }
		  	 			typeParentId.value=secondCatFormKey.value;
		  	 			 
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
		function editProductType(){
			var editProductTypeId=document.getElementById("editProductTypeId").style.display='block'; 
			 
		}
	  </script>
	<body>
		<table>
			<tr>
				<td valign="top">
					 产品所属类目
				</td>
			</tr>

			<tr>

				<td>
					<table>

						<tr>
							<td id="tdtopCatFormKey" style='display: block;'>

								<select name="topCatFormKey" size="8" style="width: 129px;"
									id="topCatFormKey" onchange="onChangeTopCategory(this)">
									<%
										List topCategory = (List) request.getAttribute("topCategory");
										if (topCategory != null) {
											Iterator iter = topCategory.iterator();
											while (iter.hasNext()) {
												ProductType productType = (ProductType) iter.next();
												if (productType != null) {
											String name = productType.getName();
											int value = productType.getId();
											int isShow = productType.getIsShow();
											int priority= productType.getPriority();
											boolean able = isShow == ProductType.PRODUCT_TYPE_SHOW ? true
													: false;
											out.print("<option value=\"" + value + "\"");
											if (able) {
												out.print(" style=\"color: rgb(204, 204, 204);\" ");
											}
											out.println(" isShow='" + isShow + "' name='" + name
													+ "' priority='"+priority+"' >");
											out.println(name);
											out.println("</option>");

												}
											}
										}
									%>

								</select>
							</td>
							<td id="tdsecondCatFormKey" style='display: block;'>
								<select name="secondCatFormKey" size="8" style="width: 129px;"
									id="secondCatFormKey" onchange="onChangeSecondCategory(this)">
									<%
										List secondCategory = (List) request.getAttribute("secondCategory");
										if (secondCategory != null) {
											Iterator iter = secondCategory.iterator();
											while (iter.hasNext()) {
												ProductType productType = (ProductType) iter.next();
												if (productType != null) {
											String name = productType.getName();
											int value = productType.getId();
											int isShow = productType.getIsShow();
											int priority= productType.getPriority();
											boolean able = isShow == ProductType.PRODUCT_TYPE_SHOW ? true
													: false;
											out.print("<option value=\"" + value + "\"");
											if (able) {
												out.print(" style=\"color: rgb(204, 204, 204);\" ");
											}
											out.println(" isShow='" + isShow + "' name='" + name
													+ "' priority='"+priority+"' >");
											out.println(name);
											out.println("</option>");

												}
											}
										}
									%>
								</select>
							</td>
							<td id="tdleafCatFormKey" style='display: block;'>
								<select name="leafCatFormKey" size="8" id="leafCatFormKey"
									onchange="onChangeLeafCategory(this)" style="width: 129px;">
									<%
										List thirdCategory = (List) request.getAttribute("thirdCategory");
										if (thirdCategory != null) {
											Iterator iter = thirdCategory.iterator();
											while (iter.hasNext()) {
												ProductType productType = (ProductType) iter.next();
												if (productType != null) {
											String name = productType.getName();
											int value = productType.getId();
											int isShow = productType.getIsShow();
											int priority= productType.getPriority();
											boolean able = isShow == ProductType.PRODUCT_TYPE_SHOW ? true
													: false;
											out.print("<option value=\"" + value + "\"");
											if (able) {
												out.print(" style=\"color: rgb(204, 204, 204);\" ");
											}
											out.println(" isShow='" + isShow + "' name='" + name
													+ "' priority='"+priority+"' >");
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
			<%
						String productTypeMenu = (String) request
						.getAttribute("productTypeMenu");
				if (productTypeMenu == null && productTypeMenu.equals("")) {
					productTypeMenu = "3";
				}
			%>
			<tr>
				<td valign="top">
					<form name='form_proudctTypeMenu'>
						<table>
							<tr>
								<td>
									一级菜单
									<input type="radio" name="productTypeMenu" value="1"
										<%=productTypeMenu.equals("1") ? "checked" : ""%> />
									二级菜单
									<input type="radio" name="productTypeMenu" value="2"
										<%=productTypeMenu.equals("2") ? "checked" : ""%> />
									三级菜单
									<input type="radio" name="productTypeMenu" value="3"
										<%=productTypeMenu.equals("3") ? "checked" : ""%> />
								</td>
							</tr>
						</table>
					</form>
				</td>
			</tr>
			<tr>
				<td>
					<form name="form_add" method='post'
						action="<%=path %>/admin/productType.do?method=addProductType">
						<table>
							<tr>
								<td>
									名称
									<input type='hidden' name='parentId' value=''>
									<input type="text" name="typeName" value="">
									<font color='#ff0000'>*</font> 是否显示
									<input type="checkbox" name="isShow" value="1">
									<input type="button" value="添加" onclick="checkAdd()">

								</td>
							</tr>
						</table>
					</form>
				</td>
			</tr>
			<tr>
				<td id='editProductTypeId' style='display: block;'>
					<form name="form_update" method='post'
						action="<%=path%>/admin/productType.do?method=updateProductType">
						<table>
							<tr>
								<td>
									名称
									<input type="text" name="typeName" value="">
									<input type="text" name="priority" value="">
									<font color='#ff0000'>*</font> 是否显示
									<input type="checkbox" name="isShow" value="1">
									<input type="button" value="修改" onclick="checkUpdate()">
									<input id='editTypeId' type='hidden' name='id' value=''>
								</td>
							</tr>
						</table>
					</form>
				</td>
			</tr>
			<tr>
				<td id='editProductTypeId' style='display: block;'>
					<form name="form_delete" method='post'
						action="<%=path%>/admin/productType.do?method=deleteProductType">
						<table>
							<tr>
								<td>
									名称
									<input type="text" name="typeName" value="" disabled > 
									<input type="button" value="删除" onclick="checkDelete()">
									<input id='deleteTypeId' type='hidden' name='id' value=''>
								</td>
							</tr>
						</table>
					</form>
				</td>
			</tr>
		</table>
	</body>
</html>
