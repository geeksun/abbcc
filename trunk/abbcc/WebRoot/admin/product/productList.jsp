<%@ page language="java" contentType="text/html; charset=gbk"
	pageEncoding="gbk"%>
<%@ page import="java.util.List,java.util.Iterator"%>
<%@ page import="com.abbcc.pojo.ProductType"%>
<%@ page import="com.abbcc.pojo.Product"%>
<%@ page import="java.util.Date"%>
<%@ page import="com.abbcc.common.DateFormater"%>
<%
	String path = request.getContextPath();
	String productType=(String)request.getAttribute("productTypeId");

	List productTypeList=(List)request.getAttribute("productTypeList");
	List productList = (List) request.getAttribute("productList");
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
		<title>create product</title>
	</head>

	<body>
		<form name="form_product" method="post" action="">

			<table border="0" cellpadding="0" cellspacing="0" width="100%">
				<tr>
					<td>
						��Ʒ����
					</td>
					<td>
						��Ʒ������Ŀ
					</td>
					<td>
						״̬
					</td>
					<td>
						ʱ��
					</td>
					<td>
						����
					</td>
				</tr>
				
				<%
					if (productList != null) {
						Iterator iter=productList.iterator();
						while(iter.hasNext())
						{
							Product product=(Product)iter.next();
							if(product!=null){
								long id=product.getId();
								String name=product.getProductName();
								int state=product.getState();
								Date date=product.getCreateTime();
							    String  createTime=DateFormater.getFormatDate(date);
				%>
				<tr>
					<td>
						<%=name!=null?name:"" %>
					</td>
					<td>
						<%
							if (productTypeList != null && productTypeList.size() == 1) {
							List productTypes = (List) productTypeList.get(0);
							for (int i = 0; i < productTypes.size(); i++) {
								ProductType _productType = (ProductType) productTypes
								.get(i);
								String productTypeName = _productType.getName();
								if (i != productTypes.size() - 1) {
							out.print(productTypeName + "/");
								} else {
							out.print(productTypeName);
								}
				
							}
						}
					%>
					</td>
					<td>
						<%=state==Product.PRODUCT_STATE_IN_USED?"ʹ����":"δʹ��" %>
					</td>
					<td>
						 <%=createTime!=null?createTime:"" %>
					</td>
					<td>
						
						<a href="<%=path %>/admin/product.do?method=showProduct&productId=<%=id %>"> �޸�</a>
						<a href="#">  ɾ��</a>
					</td>
				</tr>
				
				<% 			
							}
						}
						
					}
				%>
				

			</table>



	
		</form>
	</body>
</html>
