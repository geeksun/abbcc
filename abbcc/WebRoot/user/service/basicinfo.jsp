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
		  // 检查选择的经营模式，选择不能超过3个，已经超过3个能去除
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
                alert("最多只能选择2种经营模式!");
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
				//主营行业未做选择时(已经有选择,本次操作未做变动)
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
		公司介绍
  </font></h3></div>
  <p>
  	公司基本资料
  </p>
  	<c:set var="gsjbxx" value="${gsjbxx}" scope="page" ></c:set>
  	<c:set var="hyjbxx" value="${hyjbxx}" scope="page"></c:set>
  	<form action="traceInfo.do" name="basicInfoForm" method="post">
  	<input type="hidden" name="action">
  	<input type="hidden" name="product">
    <table width="90%" border="1" cellspacing="0" cellpadding="2" align="CENTER" bordercolor="F0E68C"> 
    	<tr> 
    		<td align=right>公司名称：<font color=red>*</font></td><td><input type="text" name="gsmc" value="${gsjbxx.gsmc}"  size="40"></td>
    	</tr>
    	<tr>
    		<td align=right>企业类型：<font color=red>*</font></td>
    		<td><select name="qylx" >
    			<option value="0" <c:if test="${gsjbxx.qylx=='0'}">selected</c:if>>其他</option>
					<option value="1" <c:if test="${gsjbxx.qylx=='1'}">selected</c:if>>有限责任公司(独资)</option>
					<option value="2" <c:if test="${gsjbxx.qylx=='2'}">selected</c:if>>股份有限公司(上市)</option>
					<option value="3" <c:if test="${gsjbxx.qylx=='3'}">selected</c:if>>股份有限公司(非上市)</option>
					<option value="4" <c:if test="${gsjbxx.qylx=='4'}">selected</c:if>>全民所有制企业</option>
					<option value="5" <c:if test="${gsjbxx.qylx=='5'}">selected</c:if>>集体所有制企业</option>
					<option value="6" <c:if test="${gsjbxx.qylx=='6'}">selected</c:if>>中外合资经营企业</option>
					<option value="7" <c:if test="${gsjbxx.qylx=='7'}">selected</c:if>>中外合作经营企业</option>
					<option value="8" <c:if test="${gsjbxx.qylx=='8'}">selected</c:if>>外商独资企业</option>
					<option value="9" <c:if test="${gsjbxx.qylx=='9'}">selected</c:if>>私营企业</option>
				</select>
    		</td>
    	</tr>
    	<tr>
    	<td align=right>经营模式：<font color=red>*</font></td>
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
    		<INPUT id=Type_Manufacturer title=从事自主生产、代/加工制造业务的厂商  onclick="return checkBizType(this)" 
            type=checkbox value=1 name=jyms >生产加工&nbsp;
			<INPUT id=Type_Wholesale title=从事产品经销、批发、分销的商家 onclick="return checkBizType(this)" 
            type=checkbox value=2 name=jyms >经销批发&nbsp;
            <INPUT id=Type_Investment title=以自己的店号、品牌、产品及其他象征营业的东西招募合作伙伴的商家。包括：代理、加盟、特许经营、连锁合作、专卖等。 
            onclick="return checkBizType(this)" type=checkbox value=3 name=jyms >招商代理&nbsp;
			<INPUT id=Type_Service title=从事商业服务的商家。包括：培训、设计、物流、展会等。 onclick="return checkBizType(this)" 
            type=checkbox value=4 name=jyms >商业服务&nbsp;
			<INPUT id=Type_Other onclick="return checkBizType(this)" type=checkbox value=5 name=jyms >以上都不是<BR>
			<SPAN class=note>（最多选择2种经营模式）</SPAN> 
			<script type="text/javascript">
				check(jymsArray);
			</script>
    		</td>
    	</tr>
    	<tr>
    		<td align=right>主要经营地点：<font color=red>*</font></td>
    		<td><input type="text" name="jydz" value="${gsjbxx.jydz }" size="40">
    		<span class=note>（请填写业务部门工作地点）</span></td>
    	</tr>
    	<tr>
    		<td align=right>销售的产品：<font color=red>*</font></td>
    		<td><input type="text" name="xsdcp" value="${gsjbxx.xsdcp }" size="40">
    		</td>
    	</tr>
    	<tr>
    		<td align=right>采购的产品：<font color=red>*</font></td>
    		<td><input type="text" name="cgdcp" value="${gsjbxx.cgdcp }" size="40">
    		</td>
    	</tr>
    	<tr>
    		<td align=right>选择主营行业：<font color=red>*</font></td>
    		<td>
    		<table>
	    		<tr>
	    		<td  style="BORDER-RIGHT: #dac010 1px solid; PADDING-RIGHT: 3px; BORDER-TOP: #dac010 1px solid; PADDING-LEFT: 3px; PADDING-BOTTOM: 3px; BORDER-LEFT: #dac010 1px solid; PADDING-TOP: 3px; BORDER-BOTTOM: #dac010 1px solid" 
	            width="60%" bgColor=#ffffcc>请选择完整的行业大类和子类，并添加为主营行业，最多可添加 
	            <FONT color=#ff0000><B>6</B></FONT> 个！
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
    			<input onclick="doSubmit1('select')" type=button value=添加↓ name=Submit222> 
				<input onclick="doSubmit1('deselect')" type=button value=×删除 name=Submit2222> 
                  <br></td></tr></table>
            <table>
              <tbody>
              <tr>
              <td>
              <SPAN id=selectedText style="DISPLAY: none"><BR>以下是您已选择的主营行业：</SPAN>
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
    		<td>公司简介：<font color=red>*</font>(最多可输入1000字)</td>
    		<td>
            <FONT color=#999999>请用中文详细说明贵司的成立历史、主营产品、品牌、服务等优势</FONT>
    		<textarea name="gsjs" rows=10 cols=50  ><c:out value="${gsjbxx.gsjs}"/>
    		</textarea>
    		</td>
    		</tr>
    	</table>
    	<p>
    	联系方式的确认与修改
    	</p>
    	<table width="90%" border="1" cellspacing="0" cellpadding="2" align="CENTER" bordercolor="F0E68C">
               <tr>
               <td align=right> 姓名：<font color=red>*</font></td><td><input type="text" name="zsxm" value="${hyjbxx.zsxm}" size=20><SPAN class=note> 
                  请填写贵公司的联系人(2～30个汉字)。</SPAN></td>
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
               <td align=right>公司电话：<font color=red>*</font></td>
               <td>
               <TABLE cellSpacing=0 border=0>
                    <TBODY>
                    <TR>
                      <TD>区号：</TD>
                      <TD>电话号码：</TD>
                      <TD>分机：</TD></TR>
                    <TR>
                      <TD><INPUT maxLength=8 size=8  name=area value="<%=gddh[0]%>"></TD>
                      <TD><INPUT maxLength=8 size=8 name=phone value="<%=gddh[1]%>"></TD>
                      <TD><INPUT maxLength=30 size=12 name=extension value="<%=gddh[2]%>"></TD>
                    </TR>
                    </TBODY>
                    </TABLE>
                    <SPAN class=note>(只能填写固定电话！)</SPAN>
               </td>
               </tr>
               <tr>
               <td align=right>公司所在地：<font color=red>*</font></td><td><input type=text name="gsszd" value="${hyjbxx.gsszd }" size=54></td>
               </tr>
               <tr>
               <td align=right>Email:<font color=red>*</font></td><td><input type=text name="dzyx" value="${hyjbxx.dzyx }" size=27></td>
               </tr>
    	</table>
    	<p align=center>
    	<input type="button" onclick="updateBasicInfo();" value="提交公司基本资料">
    	</p>
    </form>		
    <script type="text/javascript">
    	//global variable zyhy
    	var zyhy = [];
    	//控制输入字数
    	function textCounter(field, countfield, maxlimit) {
			if (field.value.length > maxlimit) 
				field.value = field.value.substring(0,maxlimit);
			else 
				countfield.value = maxlimit - field.value.length;
		}
    	//一级菜单
    	function onChangeTopCategory(){
    		var paramname = $F("topCatFormKey");
    		var url = "<%=path%>/traceInfo.do?action=getSubCategory";
    		var pars = "topCatFormKey=" + paramname;
		    var myAjax = new Ajax.Request(url,{method: 'post', parameters: pars, onComplete: showChecked});
	  	}
	    function showChecked(originalRequest){
			var result= originalRequest.responseText.parseJSON();	
			var secondCatFormKey = $("secondCatFormKey");
			//清空数组
			secondCatFormKey.length = 0;
			for(var i=0;i<result.length;i++){
				secondCatFormKey[i] = new Option(result[i].name,result[i].id);
			}													
	  	} 
	  	//二级菜单
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
	  	//添加选项
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
		      alert('您最多可选择6个“主营行业”！');
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
			     alert('您已经选择过该“主营行业”！');
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
		        alert("您还未选择“主营行业”！");
		        return ;
		      }else
		      {
		      if(topFlag ==true&& secFlag==false&& leafFlag==false)
		      {alert("您的“主营行业”未选择完整，请继续选择行业大类！")
		      return;
		      }
		      else{
		        if(topFlag ==true&& secFlag==true&& leafFlag==false)
		        {
		          alert("您的“主营行业”未选择完整，请继续选择行业子类！")
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
		//添加或删除主营行业
	  	function doSubmit1(button_clicked){
	  	   var tmpform = document.basicInfoForm;
	  	   //主营行业
	  	   var zyhy = tmpform.zyhy.options;
	  	   if(button_clicked &&(button_clicked == "deselect"||button_clicked == "select")) {
		  	   //三级菜单
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
	    //加载主营行业
	  	function doInit(){
	  	   var tmpform = document.basicInfoForm;
	  	   //主营行业
	  	   var zyhy = tmpform.zyhy.options;
		  	   //三级菜单
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