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
		 
    	function onChangeTopCategory(select){
    		var paramname =select.value; 
    		var url = "<%=path%>/manage/productType.do?method=productSecondCategory";  
    		var pars = "key=" + paramname; 
		    var myAjax = new Ajax.Request(url,{method: 'post', parameters: pars, onComplete: showTopChecked});
		  
	  	}
	  	 function clearThirdSelect()
	  	{
	  	   var  tdleafCatFormKey=document.getElementById("tdleafCatFormKey"); 
	  	   tdleafCatFormKey.innerHTML="";
	  	   document.form_product.productTypeId.value="";
	  	   
	  	}
	    function showTopChecked(originalRequest){
	    
			var result= originalRequest.responseText;
			     
				if(result.indexOf("NO")>=0){
				 
					var value=result.split(",");
				 
				    clearSecondSelect();
				    clearThirdSelect();
				    
				    setLeafCategory(value[1]);
				}else
				{
					var secondCatForm=document.getElementById("tdsecondCatFormKey"); 
	                secondCatForm.innerHTML=result;
		     		clearThirdSelect();
	  	
				}
	    }
	    function clearSecondSelect()
	  	{
	  	    var  tdleafCatFormKey=document.getElementById("tdsecondCatFormKey"); 
	  	    tdleafCatFormKey.innerHTML="";
	  	    var productTypeId=document.getElementById("productTypeId");  
	  	    productTypeId.value="";
	  	} 
		function onChangeSecondCategory(select){
			var paramname = select.value; 
    		var url = "<%=path%>/manage/productType.do?method=productThirdCategory";  
    		var pars = "key=" + paramname; 
		    var myAjax = new Ajax.Request(url,{method: 'post', parameters: pars, onComplete: showSecondChecked});
	
		}
		function showSecondChecked(originalRequest){
		
			var result= originalRequest.responseText;
			
			if(result.indexOf("NO")>=0){
				 
					var value=result.split(",");
				 
				   
				    clearThirdSelect();
				     setLeafCategory(value[1]);
				  
				}else
				{
					var secondCatForm=document.getElementById("tdleafCatFormKey");  
		            secondCatForm.innerHTML=result;
		            var productTypeId=document.getElementById("productTypeId");  
	  	            productTypeId.value="";
		     
	  	
				}	    
		       
	  	
		
			//var result= originalRequest.responseText;	    
		    //var secondCatForm=document.getElementById("tdleafCatFormKey"); 
		     //secondCatForm.innerHTML=result;
	  		 // document.form_product.productTypeId.value="";	
	  	} 
		
		function onChangeLeafCategory(select){ 
    		 var productType=document.getElementById('productType');   
			 document.form_product.productTypeId.value=select.value; 
			
		}  
		function setLeafCategory(value){ 
			// alert("111"+value);
    		 var productType=document.getElementById('productType');   
			 document.form_product.productTypeId.value=value; 
			 //
			
		}  
		
	  </script>
	  <script language="JavaScript" type="text/javascript">
	  	function addProduct(){ 
	  		
	  		  var productType=document.form_product.productTypeId.value;
	  		 
	  		  if(isNull(productType))
	  		  {
	  		  	alert("请选择产品所属类目");
	  		  	return;
	  		  }
    		  document.form_product.action="<%=path%>/manage/product.do?method=addProduct";
			  document.form_product.submit(); 
		}  
		function managerProduct(){ 
		     var productType=document.form_product.productTypeId.value;
		    
	  		  if(isNull(productType))
	  		  {
	  		  	alert("请选择产品所属类目");
	  		  	return;
	  		  }
    		  document.form_product.action="<%=path%>/manage/product.do?method=productList";
			  document.form_product.submit();
			
		}  
		function productList(state){ 
		     
    		  document.form_product.action="<%=path%>/manage/product.do?method=productAllList&state="+state;
			  document.form_product.submit();
			
		}  
		function isNull(value)
		{
			if(value==null)return true;
			value=value.replace(/(^\s*)|(\s*$)/g, "");
			if(value=="")return true;
			return false;
		}
	  </script>
	<body >
		<form name="form_product" method="post" action="">
		    <input type="hidden"  name="productTypeId" id="productTypeId">
			<table border="0" cellpadding="0" cellspacing="0" width="100%">
				<tr>
					<td align="left">
						产品管理
					</td>
				</tr>

				 
				<tr>
					<td align="left">
						 
									<table>
										<tr><td colspan="3" align="center">产品所属类目</td></tr>
										<tr>
											<td id="tdtopCatFormKey">
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
															boolean able = isShow == ProductType.PRODUCT_TYPE_SHOW ? true
																	: false;
															out.print("<option value=\"" + value + "\"");
															if (able) {
																out.print(" style=\"color: rgb(204, 204, 204);\" ");
															}
															out.println(" isShow='" + isShow + "' name='" + name
																	+ "' >");
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
													onchange="onChangeSecondCategory(this)">
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
															boolean able = isShow == ProductType.PRODUCT_TYPE_SHOW ? true
																	: false;
															out.print("<option value=\"" + value + "\"");
															if (able) {
																out.print(" style=\"color: rgb(204, 204, 204);\" ");
															}
															out.println(" isShow='" + isShow + "' name='" + name
																	+ "' >");
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
													style="width: 129px;" onchange="onChangeLeafCategory(this)">
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
															boolean able = isShow == ProductType.PRODUCT_TYPE_SHOW ? true
																	: false;
															out.print("<option value=\"" + value + "\"");
															if (able) {
																out.print(" style=\"color: rgb(204, 204, 204);\" ");
															}
															out.println(" isShow='" + isShow + "' name='" + name
																	+ "' >");
															out.println(name);
															out.println("</option>");

																}
															}
														}
													%>
												</select>
											</td>
										</tr>
										<tr><td colspan="3"><input type="button" value="添加新产品" onclick="addProduct()"></td></tr>
										<tr><td colspan="3"><input type="button" value="管理产品" onclick="managerProduct()"></td></tr>
										<tr><td colspan="3"><input type="button" value="产品正在使用列表" onclick="productList(1)"></td></tr>
										<tr><td colspan="3"><input type="button" value="产品未使用列表" onclick="productList(2)"></td></tr>
									</table>  
					</td>
				</tr>
				  
			</table>
		</form>
	</body>
</html>
