<%@ page language="java" contentType="text/html; charset=gbk"
	pageEncoding="gbk"%>
<%@ page import="java.util.List,java.util.Iterator"%>
<%@ page import="com.abbcc.pojo.ProductType"%>
<%
String path = request.getContextPath();
 
String productType=(String)request.getAttribute("productTypeId");

List productTypeList=(List)request.getAttribute("productTypeList");

								 
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
		<title>create product</title>
	</head>
	 
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
							 		"<input  id='checkbox"+count+"' type='checkbox' value='false' checked  >"+
									"<input  id='isNull"+count+"' name='isNull' type='hidden' value='false'>"+
								"</td>"+
								"<td align='center' width='10%'>"+
									 "<input name='unit' type='text'   size='5' value='mm'>"+ 
								"</td>"+
								"<td align='center' width='10%'>"+
									 "<select id='select"+count+"'>"+
							        	 "<option value='text' selected> �ı� </option>"+
							    		 "<option value='select'> ���� </option>"+
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
				 
				document.form_product.action="<%=path%>/admin/product.do?method=createProduct";
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
			 	alert("��Ʒ���Ʋ���Ϊ��");
			 	return false;
			 } 
			 var productType=document.getElementById('productType'); 
			 if(isNull(productType.value))
			 {
			 	alert("��ѡ���Ʒ������Ŀ");
			 	return false;
			 }
			
			for(var i=1;i<=count;i++)
			{
				var propertyId='property'+i; 
			    var property=document.getElementById(propertyId); 
			      
			    if(isNull(property.value)){
			   	 	alert(i+" ���Ʋ���Ϊ��");
			 		return false;
			    } 
			 
			} 
			for(var i=1;i<=count;i++)
			{
				var propertyId='property'+i; 
			    var property=document.getElementById(propertyId); 
			      
			    if(isNull(property.value)){
			   	 	alert(i+" ���Ʋ���Ϊ��");
			 		return false;
			    } 
			 
			} 
			 for(var i=1;i<=count;i++){
			 	for(var j=1;j<=count;j++){
			 		var indexId='indexId'+i; 
			   		var index=document.getElementById(indexId); 
			   		if(index.value>count||index.value<1)
			   		{
			   			alert("��Ų��ܴ������� ����ȷ��д���");
			   			return false;
			   		}  
			 		if(i!=j){
						var nextindexId='indexId'+j; 
			  			var nextindex=document.getElementById(nextindexId);   
			  			if(nextindex.value==index.value){
			  				alert("��Ų�����ͬ ����ȷ��д���");
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
			 	alert("������");
			 	return ;
			} 
			if(value>count||value<1){
				alert("�Ƿ�����");
				return;
			}
			
		}
		 
		function isNumber(value){
			return true;
		}
	</script>
	 
	<body  >
		<form name="form_product" method="post" action="">
			<table border="0" cellpadding="0" cellspacing="0" width="100%">
				<tr>
					<td align="center">
						��Ʒ����
					</td>
				</tr>

				<tr>
					<td align="left">
						<table>
							<tr>
								<td>
									��Ʒ����
									<font color="#ff0000">*</font>
									<input id="productName" name="productName" type="text"
										value="" size="15">
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
									��Ʒ������Ŀ 
									<%
										if(productTypeList!=null&&productTypeList.size()==1){
											List productTypes =(List) productTypeList.get(0);
											for(int i=0;i<productTypes.size();i++){
												ProductType _productType=(ProductType)productTypes.get(i);
												String productTypeName=_productType.getName();
												if(i!=productTypes.size()-1){
												   out.print(productTypeName+"-->") ;
												}else {
												    out.print(productTypeName) ;
												}
												
											}
										}
									 %>
									<input id="productType" type="hidden" name="productType"
										value="<%=productType!=null?productType:"" %>">
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
									��Ʒ����
								</td>
								<td>
									<input type="button" value="��Ӳ�Ʒ����" onclick="addProperty()">
								</td>
								<td>
									<input type="button" value="ɾ����Ʒ����" onclick="delProperty()">
								</td>
							</tr>
						</table>
					</td>
				</tr>
				<tr>
					<td>
						<div>
							<table width='100%'>
								<tr>
									<td align='center' width='4%'>
										���
									</td>
									<td align='center' width='10%'>
										&nbsp;&nbsp;&nbsp;����
									</td>
									<td align='center' width='12%'>
										����Ϊ��
									</td>
									<td align='center' width='10%'>
										&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;��λ
									</td>
									<td align='center' width='10%'>
										&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;����
									</td>
									<td align='center' width='10%'>
										&nbsp;��������
									</td>
									<td align='center' width='18%'>
										��ע
									</td>
									<td width='10%'>
										&nbsp;&nbsp;&nbsp;�Ƿ���ʾ
									</td>
								</tr>
							</table>
							<div id="producttd"></div>
					</td>

				</tr>
				<tr>
					<td align="center">
						<input type="button" value="ȷ��" onclick="checkSumbit()">
						<input type="button" value="Ԥ��">
					</td>
				</tr>
			</table>
		</form>
	</body>
</html>
