<%@ page language="java" contentType="text/html; charset=gbk"
	pageEncoding="gbk"%>
<%@ page import="java.util.List,java.util.Iterator"%>
<%@ page import="com.abbcc.pojo.ProductType"%>
<%@ page import="com.abbcc.pojo.Product"%>
<%@ page import="com.abbcc.util.product.ProductUtil"%>
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
    		var url = "<%=path%>/admin/productType.do?method=productSecondCategory";  
    		var pars = "key=" + paramname; 
		    var myAjax = new Ajax.Request(url,{method: 'post', parameters: pars, onComplete: showTopChecked});
		    
	  	}
	  	 function clearThirdSelect()
	  	{
	  	   var  tdleafCatFormKey=document.getElementById("tdleafCatFormKey"); 
	  	   tdleafCatFormKey.innerHTML="";
	  	    var productType=document.getElementById('productType');   
	  	    productType.value="";
	  	}
	    function showTopChecked(originalRequest){
			var result= originalRequest.responseText;	    
		    var secondCatForm=document.getElementById("tdsecondCatFormKey"); 
		     secondCatForm.innerHTML=result;
		      clearThirdSelect();
	  
	  	} 
		function onChangeSecondCategory(select){
			var paramname = select.value; 
    		var url = "<%=path%>/admin/productType.do?method=productThirdCategory";  
    		var pars = "key=" + paramname; 
		    var myAjax = new Ajax.Request(url,{method: 'post', parameters: pars, onComplete: showSecondChecked});
	
		}
		function showSecondChecked(originalRequest){
			var result= originalRequest.responseText;	    
		    var secondCatForm=document.getElementById("tdleafCatFormKey"); 
		     secondCatForm.innerHTML=result;
		     var productType=document.getElementById('productType');   
	  	    productType.value="";
	  
	  	} 
		
		function onChangeLeafCategory(select){ 
    		 var productType=document.getElementById('productType');   
			 productType.value=select.value;
			
		}  
		
		
	  </script>
	
	<%
	Product product=(Product)request.getAttribute("product");
	 %>
	<body  >
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
										value="<%=product!=null?product.getProductName():"" %>" size="15">
								</td>
								<td>
									产品状态:
									<%
										int productState=product.getState();
										
									 %>
									<%=productState==Product.PRODUCT_STATE_IN_USED?"使用中":"未使用" %>
									 
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
									<%
									ProductType thirdProductType = (ProductType) request.getAttribute("thirdProductType");
													
									 %>
									<input id="productType" type="hidden" name="productType"
										value="<%=thirdProductType!=null?thirdProductType.getId():"" %>">
								</td>
								<td>
									<table>
										<tr>
											<td id="tdtopCatFormKey">
												<select name="topCatFormKey" size="8" style="width: 129px;"
													id="topCatFormKey" onchange="onChangeTopCategory(this)">
													<%
														List topCategory = (List) request.getAttribute("topCategory");
														ProductType topProductType = (ProductType) request.getAttribute("topProductType");
														int topProductTypeId=topProductType!=null?topProductType.getId():-1;
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
															if(topProductTypeId==value){
															  out.print("  selected ");
															}
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
														ProductType secondProductType = (ProductType) request.getAttribute("secondProductType");
														int secondProductTypeId=secondProductType!=null?secondProductType.getId():-1;
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
															if(secondProductTypeId==value){
															  out.print("  selected ");
															}
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
															int thirdProductTypeId=thirdProductType!=null?thirdProductType.getId():-1;
													
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
															if(thirdProductTypeId==value){
															  out.print("  selected ");
															}
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
							 
							</tr>
						</table>
					</td>
				</tr>
				<tr>
					<td> 
							<table width='100%'>
								<tr>
									<td align='center' >
										序号
									</td>
									<td align='center' >
										 名称
									</td>
									<td align='center'  >
										不能为空
									</td>
									<td align='center' >
										 单位
									</td>
									<td align='center' >
										 类型
									</td>
									<td align='center' >
										 隐藏名称
									</td>
									<td align='center'  >
										备注
									</td>
									<td width='10%'>
										 是否显示
									</td>
								</tr>
								
								 <%
							 	 int len=0; 
							 	if(product!=null){
							 		long id=product.getId();
							 		out.print("<input type='hidden' name='productId' value='"+id+"'>");
							 		int state=product.getState();
							 		String isHidden=	product.getIsHidden();
							 		String propertyName=product.getPropertyName();
							 		String isNull=product.getIsNull(); 
							 		String remark=product.getRemark();
							 		String unit=product.getUnit(); 
							 		String type=product.getType();
							 		String isShow=product.getIsShow();
							 		
							 		String[] hiddens=ProductUtil.arrayToString( isHidden);
							 	    String[] propertyNames=ProductUtil.arrayToString( propertyName);
							 	    String[] isNulls=ProductUtil.arrayToString( isNull);
							 	    String[] remarks=ProductUtil.arrayToString( remark);
							 	    String[] units=ProductUtil.arrayToString( unit);
							 	    String[] types=ProductUtil.arrayToString( type);
							 	    String[] isShows=ProductUtil.arrayToString( isShow);
							 	    len=hiddens.length;
							 	    for(int i=0;i<len;i++){
							 	     int count=i+1;
							 	    
							%> 
							
							 <tr> 
							 	 <td align='center'  > 
							 		  <%=count %></td> 
						         <td align='center'   > 
						            <input id='property<%=count %>' name='property'  size='17' type='text' value="<%=propertyNames[i] %>"> 
						             <font color='#ff0000'>*</font> 
							     </td> 
							     <td align='center'  > 
							 		 <input  id='checkbox<%=count %>' type='checkbox' value='<%=isNulls[i] %>' <%=isNulls[i].equals("true")?" checked ":"" %> > 
									 <input  id='isNull<%=count%>' name='isNull' type='hidden' value='<%=isNulls[i] %>'> 
								 </td> 
								 <td align='center' > 
									  <input name='unit' type='text'   size='5' value='<%=units[i] %>'> 
								 </td> 
								 <td align='center'   > 
									  <select id='select<%=count %>' disabled   > 
							        	  <option value='text' <%=types[i].equals("text")?" selected ":"" %>   > 文本 </option> 
							    		  <option value='select'  <%=types[i].equals("select")?" selected ":"" %>   >  下拉 </option> 
									  </select> 
									  <input id='type<%=count %>' name='type' type='hidden' value='<%=types[i] %>'> 
							    </td> 
							     <td align='center'  > 
									  <input  id='isHiddenCheckbox<%=count %>' type='checkbox'   name='radioname'    <%=hiddens[i].equals("true")?" checked ":"" %> ></td> 
									  <input  id='isHidden<%=count %>' name='isHidden' type='hidden' value='<%=hiddens[i] %>'> 
								 </td> 
							 	 <td align='center' > 
							 		 <input name='remark' type='text' value="" > 
							  	 </td> 
							  	 <td align='center' > 
							 		 <input  id='isShowCheckbox<%=count %>' type='checkbox'  <%=isShows[i].equals("true")?" checked ":"" %> ></td> 
									 <input  id='isShow<%=count %>' name='isShow' type='hidden' value='<%=isShows[i] %>'> 
							 	  </td> 
							   </tr> 
							<%     
							 	    } 
							 	}
							 
							  %>
							 
							</table>
							
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
	<script language="JavaScript" type="text/javascript">
		var count=<%=len%>;
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
							 		"<input  id='checkbox"+count+"' type='checkbox' value='false' checked  >"+
									"<input  id='isNull"+count+"' name='isNull' type='hidden' value='false'>"+
								"</td>"+
								"<td align='center' width='10%'>"+
									 "<input name='unit' type='text'   size='5' value='mm'>"+ 
								"</td>"+
								"<td align='center' width='10%'>"+
									 "<select id='select"+count+"'>"+
							        	 "<option value='text' selected> 文本 </option>"+
							    		 "<option value='select'> 下拉 </option>"+
									 "</select>"+
									 "<input id='type"+count+"' name='type' type='hidden' value='text'>"+
							    "</td>"+
							    "<td align='center' width='10%'>"+ 
									 "<input  id='isHiddenCheckbox"+count+"' type='checkbox' onclick='changeRadio(this)' name='radioname' value='false' ></td>"+
									 "<input  id='isHidden"+count+"' name='isHidden' type='hidden' value='false'>"+
								"</td>"+ 
							 	"<td align='center' width='18%'>"+
							 		"<input name='remark' type='text' >"+
							  	"</td>"+ 
							  	"<td align='center' width='10%'>"+
							 		"<input  id='isShowCheckbox"+count+"' type='checkbox' value='false' checked  ></td>"+
									"<input  id='isShow"+count+"' name='isShow' type='hidden' value='false'>"+
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
				      isNull.value='false';    
			    }else
			    {
			     	  var isNull=document.getElementById(isNullId); 
				      isNull.value='true';    
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
				      isShow.value='false';    
			    }else{
			     	var isShow=document.getElementById(isShowId); 
				      isShow.value='true'; 
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
				      isHidden.value='false';  
				   
			    }else
			    {
			    	  var isHidden=document.getElementById(isHiddenId); 
				      isHidden.value='true'; 
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
				 
				document.form_product.action="<%=path%>/admin/product.do?method=updateProduct";
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
</html>
