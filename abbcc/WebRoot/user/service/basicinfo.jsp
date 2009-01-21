<%@ page language="java"  import="java.util.*" pageEncoding="gbk" contentType="text/html;charset=gbk"%>
<%@ taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ page import="com.abbcc.pojo.ProductType,com.abbcc.pojo.Hyjbxx,com.abbcc.pojo.Gsjbxx" %>
<%
	request.setCharacterEncoding("gbk");
	String path = request.getContextPath();
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>basicinfo of company</title>
    <link rel="stylesheet" type="text/css" href="<%=path%>/css/service.css">
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
		function updateBasicInfo(){
			document.basicInfoForm.action.value = "updateBasicInfo";
			if(zyhy!=""){
				document.basicInfoForm.product.value = zyhy;
				document.basicInfoForm.submit();
			}else{
				//��Ӫ��ҵδ��ѡ��ʱ(�Ѿ���ѡ��,���β���δ���䶯)
				var zy = document.basicInfoForm.zyhy.options;
				var zz = [];
				for(var i=0;i<zy.length;i++){
					zz[i] = zy[i].value;
					//zz[zz.length] = zy.value;
				}
				//if(zz.length==0)zz=null;
				document.basicInfoForm.product.value = zz;
				document.basicInfoForm.submit();
			}
		}
	</script>
  </head>
  <body>
  <div><h3><font color="blue">
		��˾����
  </font></h3></div>
  <p>
  	��˾��������
  </p>
  	<c:set var="gsjbxx" value="${gsjbxx}" scope="page" ></c:set>
  	<c:set var="hyjbxx" value="${hyjbxx}" scope="page"></c:set>
  	<form action="traceInfo.do" name="basicInfoForm" method="post">
  	<input type="hidden" name="action">
  	<input type="hidden" name="product">
    <table width="90%" border="1" cellspacing="0" cellpadding="2" align="CENTER" bordercolor="F0E68C"> 
    	<tr> 
    		<td align=right>��˾���ƣ�<font color=red>*</font></td><td><input type="text" name="gsmc" value="${gsjbxx.gsmc}"  size="40"></td>
    	</tr>
    	<tr>
    		<td align=right>��ҵ���ͣ�<font color=red>*</font></td>
    		<td><select name="qylx" >
    			<option value="0" <c:if test="${gsjbxx.qylx=='0'}">selected</c:if>>����</option>
					<option value="1" <c:if test="${gsjbxx.qylx=='1'}">selected</c:if>>�������ι�˾(����)</option>
					<option value="2" <c:if test="${gsjbxx.qylx=='2'}">selected</c:if>>�ɷ����޹�˾(����)</option>
					<option value="3" <c:if test="${gsjbxx.qylx=='3'}">selected</c:if>>�ɷ����޹�˾(������)</option>
					<option value="4" <c:if test="${gsjbxx.qylx=='4'}">selected</c:if>>ȫ����������ҵ</option>
					<option value="5" <c:if test="${gsjbxx.qylx=='5'}">selected</c:if>>������������ҵ</option>
					<option value="6" <c:if test="${gsjbxx.qylx=='6'}">selected</c:if>>������ʾ�Ӫ��ҵ</option>
					<option value="7" <c:if test="${gsjbxx.qylx=='7'}">selected</c:if>>���������Ӫ��ҵ</option>
					<option value="8" <c:if test="${gsjbxx.qylx=='8'}">selected</c:if>>���̶�����ҵ</option>
					<option value="9" <c:if test="${gsjbxx.qylx=='9'}">selected</c:if>>˽Ӫ��ҵ</option>
				</select>
    		</td>
    	</tr>
    	<tr>
    	<td align=right>��Ӫģʽ��<font color=red>*</font></td>
   		<td>
    		<script type="text/javascript">
    			var jymsArray = new Array();
    			<%
    				String jyms = "";
    				Gsjbxx gsjbxx = (Gsjbxx)request.getAttribute("gsjbxx");
    				if(gsjbxx!=null)
    					jyms = gsjbxx.getJyms();
    					if(jyms!=null&&!jyms.equals("")){
    						String[] jymsStr = jyms.split(",");
    						for(int i=0;i<jymsStr.length;i++){
    			%>
    						jymsArray.length = <%=jymsStr.length%>;
    						jymsArray[<%=i%>] = <%=jymsStr[i]%>;
    			<%
    						}
    					}
    			%>
    			function check(values) {
							for(var c=0; c<values.length; c++) {
								isequals(values[c] + '');
							}
						}
				function isequals(v) {
					var chboxes = document.getElementsByName('jyms'); 
					if(chboxes.length) {
						for(var c=0; c<chboxes.length; c++) {
							if(v == chboxes[c].value) {
								chboxes[c].checked = 'checked';
							}
						}
					}
				}
    		</script>
    		<INPUT id=Type_Manufacturer title=����������������/�ӹ�����ҵ��ĳ���  onclick="return checkBizType(this)" 
            type=checkbox value=1 name=jyms >�����ӹ�&nbsp;
			<INPUT id=Type_Wholesale title=���²�Ʒ�������������������̼� onclick="return checkBizType(this)" 
            type=checkbox value=2 name=jyms >��������&nbsp;
            <INPUT id=Type_Investment title=���Լ��ĵ�š�Ʒ�ơ���Ʒ����������Ӫҵ�Ķ�����ļ���������̼ҡ��������������ˡ�����Ӫ������������ר���ȡ� 
            onclick="return checkBizType(this)" type=checkbox value=3 name=jyms >���̴���&nbsp;
			<INPUT id=Type_Service title=������ҵ������̼ҡ���������ѵ����ơ�������չ��ȡ� onclick="return checkBizType(this)" 
            type=checkbox value=4 name=jyms >��ҵ����&nbsp;
			<INPUT id=Type_Other onclick="return checkBizType(this)" type=checkbox value=5 name=jyms >���϶�����<BR>
			<SPAN class=note>�����ѡ��2�־�Ӫģʽ��</SPAN> 
			<script type="text/javascript">
				check(jymsArray);
			</script>
    		</td>
    	</tr>
    	<tr>
    		<td align=right>��Ҫ��Ӫ�ص㣺<font color=red>*</font></td>
    		<td><input type="text" name="jydz" value="${gsjbxx.jydz }" size="40">
    		<span class=note>������дҵ���Ź����ص㣩</span></td>
    	</tr>
    	<tr>
    		<td align=right>���۵Ĳ�Ʒ��<font color=red>*</font></td>
    		<td><input type="text" name="xsdcp" value="${gsjbxx.xsdcp }" size="40">
    		</td>
    	</tr>
    	<tr>
    		<td align=right>�ɹ��Ĳ�Ʒ��<font color=red>*</font></td>
    		<td><input type="text" name="cgdcp" value="${gsjbxx.cgdcp }" size="40">
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
				   		<option value="<c:out value="${trade.id}"/>"><c:out value="${trade.name}"/></option>    
				    </c:forEach>
    			</select>
    			<select id=secondCatFormKey style="WIDTH: 120px" onchange=onChangeSecondCategory() size=8 name=secondCatFormKey>
    			</select>
    			<select id=leafCatFormKey style="WIDTH: 120px" onchange=onChangeleafCategory() size=8 name=leafCatFormKey>
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
              <select style="WIDTH: 368px" size=8 name="zyhy" multiple>
              	<%
              		List list=(List)request.getAttribute("textAreaList");
              		if(list!=null){
              		for(int i=0;i<list.size();i++){
              			List list2=(List)list.get(i);
              			int size=list2.size();
              			String name="";
              			for(int j=0;j<list2.size();j++){
              				 ProductType temp=(ProductType)list2.get(j);
              				 String n=temp.getName();
              				 if(j!=size-1)
              				    name+=n+"/";
              				  else
              				    name+=n;
              			}
              		ProductType  productType=(ProductType)list2.get(size-1);
              	 %>
              	 <option value="<%=productType.getId()%>"/><%=name%></option>
              	 <%
              	 	}
              	 }
              	  %>
              </select> 
              </td>
               </tr>
              </tbody>
    		</table>
    		<tr>
    		<td>��˾��飺<font color=red>*</font>(��������1000��)</td>
    		<td>
            <FONT color=#999999>����������ϸ˵����˾�ĳ�����ʷ����Ӫ��Ʒ��Ʒ�ơ����������</FONT>
    		<textarea name="gsjs" rows=10 cols=50  ><c:out value="${gsjbxx.gsjs}"/>
    		</textarea>
    		</td>
    		</tr>
    	</table>
    	<p>
    	��ϵ��ʽ��ȷ�����޸�
    	</p>
    	<table width="90%" border="1" cellspacing="0" cellpadding="2" align="CENTER" bordercolor="F0E68C">
               <tr>
               <td align=right> ������<font color=red>*</font></td><td><input type="text" name="zsxm" value="${hyjbxx.zsxm}" size=20><SPAN class=note> 
                  ����д��˾����ϵ��(2��30������)��</SPAN></td>
               </tr>
               <tr>
               <%
                String[] gddh = {"","",""};
               	Hyjbxx hyjbxx = (Hyjbxx)request.getAttribute("hyjbxx");
               	if(hyjbxx!=null){
					String dh = hyjbxx.getGddh();
					if(dh!=null){
						String[] temp = new String[3];
	               		temp = dh.split("/");
	               		if(temp.length>0)gddh[0]=temp[0];
	               		if(temp.length>1)gddh[1]=temp[1];
	               		if(temp.length>2)gddh[2]=temp[2];
	               	}
	            }
                %>
               <td align=right>��˾�绰��<font color=red>*</font></td>
               <td>
               <TABLE cellSpacing=0 border=0>
                    <TBODY>
                    <TR>
                      <TD>���ţ�</TD>
                      <TD>�绰���룺</TD>
                      <TD>�ֻ���</TD></TR>
                    <TR>
                      <TD><INPUT maxLength=8 size=8  name=area value="<%=gddh[0]%>"></TD>
                      <TD><INPUT maxLength=8 size=8 name=phone value="<%=gddh[1]%>"></TD>
                      <TD><INPUT maxLength=30 size=12 name=extension value="<%=gddh[2]%>"></TD>
                    </TR>
                    </TBODY>
                    </TABLE>
                    <SPAN class=note>(ֻ����д�̶��绰��)</SPAN>
               </td>
               </tr>
               <tr>
               <td align=right>��˾���ڵأ�<font color=red>*</font></td><td><input type=text name="gsszd" value="${hyjbxx.gsszd }" size=54></td>
               </tr>
               <tr>
               <td align=right>Email:<font color=red>*</font></td><td><input type=text name="dzyx" value="${hyjbxx.dzyx }" size=27></td>
               </tr>
    	</table>
    	<p align=center>
    	<input type="button" onclick="updateBasicInfo();" value="�ύ��˾��������">
    	</p>
    </form>		
    <script type="text/javascript">
    	//global variable zyhy
    	var zyhy = [];
    	//������������
    	function textCounter(field, countfield, maxlimit) {
			if (field.value.length > maxlimit) 
				field.value = field.value.substring(0,maxlimit);
			else 
				countfield.value = maxlimit - field.value.length;
		}
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
				secondCatFormKey[i] = new Option(result[i].name,result[i].id);
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
				leafCatFormKey[i] = new Option(result[i].name,result[i].id);
			}													
	  	} 
	  	//���ѡ��
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
		   for(var i = 0; i < src.length; i++){
		      if(src[i].selected) {
		        var exists = 0;
		        leafFlag  = true;
		        for(var j = 0; j < dst.length; j++){
		           if(dst[j].value == src[i].value){
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
		       dst[j] = new Option(selected_text[j], selected_value[j]);   //previous
		       //dst[j] = new Option(selected_value[j], selected_value[j]);
		    }
		    zyhy = selected_value;
  	  	}
  		function removeOptions(src, dst) {
		    for(var i = 0; i < src.length; i++) {
		    	if(src[i].selected) src[i] =null;
		    }
		}
		//��ӻ�ɾ����Ӫ��ҵ
	  	function doSubmit1(button_clicked){
	  	   var tmpform = document.basicInfoForm;
	  	   //��Ӫ��ҵ
	  	   var zyhy = tmpform.zyhy.options;
	  	   if(button_clicked &&(button_clicked == "deselect"||button_clicked == "select")) {
		  	   //�����˵�
			   var categories = tmpform.leafCatFormKey.options;
			   var secCategories = tmpform.secondCatFormKey.options;
			   var topCategories = tmpform.topCatFormKey.options;
			   if(button_clicked == 'select')
			   {  // Move to right pane
			      if(categories.length==0)
			      {
	        		if(secCategories.length==0)
	        		{
	        			addOptions(topCategories, zyhy,secCategories,topCategories);
	        		}else
			        {
			        	addOptions(secCategories, zyhy,secCategories,topCategories);
			        }
			      }else{
			          addOptions(categories, zyhy,secCategories,topCategories);
			      }
			   }else{
				   if(button_clicked == 'deselect') {   // Remove from right pane
				        removeOptions(zyhy, categories);
				   }
		        	button_clicked = '';
		        	return false;
	         }
         }
	 }
	    //������Ӫ��ҵ
	  	function doInit(){
	  	   var tmpform = document.basicInfoForm;
	  	   //��Ӫ��ҵ
	  	   var zyhy = tmpform.zyhy.options;
		  	   //�����˵�
			   var categories = tmpform.leafCatFormKey.options;
			   var secCategories = tmpform.secondCatFormKey.options;
			   var topCategories = tmpform.topCatFormKey.options;
			   if(button_clicked == 'select')
			   {  // Move to right pane
			      if(categories.length==0)
			      {
			      	//alert(secCategories.length);
	        		if(secCategories.length==0)
	        		{
	        			addOptions(topCategories, zyhy,secCategories,topCategories);
	        		}else
			        {
			        	addOptions(secCategories, zyhy,secCategories,topCategories);
			        }
			      }else{
			          addOptions(categories, zyhy,secCategories,topCategories);
			      }
			}
	 }
    </script>
  </body>
</html>