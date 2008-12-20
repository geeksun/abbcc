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
	<body >

		<table>
			<tr>
				<td valign="top">
					产品所属类目
					 
					<input id="productType" type="hidden" name="productType" value="">
				</td>
				<td>
					<table>
						<tr>
							<td id="tdtopCatFormKey">
								<select name="topCatFormKey" size="8" style="width: 129px;"
									id="topCatFormKey" onchange="onChangeTopCategory(this.value)">
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
											boolean able=isShow==ProductType.PRODUCT_TYPE_SHOW?true:false;
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
								<select name="secondCatFormKey" size="8" style="width: 129px;"
									id="secondCatFormKey"
									onchange="onChangeSecondCategory(this.value)">
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
											boolean able=isShow==ProductType.PRODUCT_TYPE_SHOW?true:false;
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
											int value = productType.getId();
											int isShow = productType.getIsShow();
											boolean able=isShow==ProductType.PRODUCT_TYPE_SHOW?true:false;
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

	</body>
</html>
