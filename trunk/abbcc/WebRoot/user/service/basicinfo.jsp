<%@ page language="java" import="java.util.*" pageEncoding="gbk"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
	String path = request.getContextPath();
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>basicinfo of company</title>
    <style type="text/css">
    	.note {
			COLOR: #999999
		}
    </style>
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
       	  /*if(counter!=0||document.getElementById("Type_Other").checked){
	        if(document.getElementsByName('rightImg')[2])
	         {
		        document.getElementsByName('rightImg')[2].style.display='';
	         }
	        if(document.getElementById("note2"))
	        {
	        document.getElementById("note2").style.display = "none";
	        }
	      }
		 else {
		    if(document.getElementsByName('rightImg')[2])
	         {
		         document.getElementsByName('rightImg')[2].style.display='none';
	         }
		     if(document.getElementById("note2"))
		     {
			     document.getElementById("note2").style.display = "block";
		     }
          }*/
             return true;
        }
        document.getElementsByName('mainProduct2')[2].attachEvent('onclick',function(){
											document.getElementById("mainMajor0").style.display = "none";
											document.getElementById("mainMajor1").style.display = "none";
											document.getElementById("mainMajor2").style.display = "";
											   checkSelectText(false,"selectedText");

										document.getElementsByName("mainProduct2")[2].checked = true;
											});
	</script>
  </head>
  
  <body>
  <p>
  	公司基本资料
  </p>
  	<c:set var="leaguer" value="${leaguer}" scope="page" ></c:set>
    <table width="90%" border="1" cellspacing="0" cellpadding="2" align="CENTER" bordercolor="F0E68C"> 
    	<tr>
    		<td align=right>公司名称：*</td><td><input type="text" name="gsmc" value="${leaguer.gsmc}"  size="40"></td>
    	</tr>
    	<!-- <tr>
    		<td> 公司英文名称：</td><td><input type="text"  name="enCorpName" size="40"></td>
    	</tr>
    	 -->
    	<tr>
    		<td align=right>企业类型：*</td>
    		<td><select name="qylx" >
    			<option value="">其他</option>
					<option value="1">有限责任公司(独资)</option>
					<option value="2">股份有限公司(上市)</option>
					<option value="3" >股份有限公司(非上市)</option>
					<option value="4" >全民所有制企业</option>
					<option value="5" >集体所有制企业</option>
					<option value="6" >中外合资经营企业</option>
					<option value="7" >中外合作经营企业</option>
					<option value="8" >外商独资企业</option>
					<option value="9" >私营企业</option>
    		</td>
    	</tr>
    	<tr>
    		<td align=right>经营模式：*</td>
    		<td>
    		<!--  
    		<input type="checkbox" name="jyms" id=Type_Manufacturer  value="1" onclick="return checkBizType(this)">生产加工
    		<input type="checkbox" name="jyms" id=Type_Wholesale  value="2" onclick="return checkBizType(this)">经销批发
    		<input type="checkbox" name="jyms" id=Type_Investment  value="3" onclick="return checkBizType(this)">招商代理
    		<input type="checkbox" name="jyms"  value="4" onclick="return checkBizType(this)">商业服务
    		<input type="checkbox" name="jyms"  value="5" onclick="return checkBizType(this)">以上都不是 <br>
    		（最多选择2种经营模式）
    		-->
    		<INPUT id=Type_Manufacturer title=从事自主生产、代/加工制造业务的厂商  onclick="return checkBizType(this)" 
            type=checkbox value=1 name=jyms>生产加工&nbsp;
			<INPUT id=Type_Wholesale title=从事产品经销、批发、分销的商家 onclick="return checkBizType(this)" 
            type=checkbox value=2 name=jyms>经销批发&nbsp;
            <INPUT id=Type_Investment title=以自己的店号、品牌、产品及其他象征营业的东西招募合作伙伴的商家。包括：代理、加盟、特许经营、连锁合作、专卖等。 
            onclick="return checkBizType(this)" type=checkbox value=3 name=jyms>招商代理&nbsp;
			<INPUT id=Type_Service title=从事商业服务的商家。包括：培训、设计、物流、展会等。 onclick="return checkBizType(this)" 
            type=checkbox value=4 name=jyms>商业服务&nbsp;
			<INPUT id=Type_Other onclick="return checkBizType(this)" type=checkbox value=5 name=jyms>以上都不是<BR>
			<SPAN class=note>（最多选择2种经营模式）</SPAN> 
    		</td>
    	</tr>
    	<!--  
    	<tr>
    		<td>注册资本：*</td><td>人民币  万</td>
    	</tr>
    	-->
    	<tr>
    		<td align=right>主要经营地点：*</td>
    		<td><input type="text" name="zyjydd" value="${leaguer.jydz }" size="27">
    		<span class=note>（请填写业务部门工作地点）</span></td>
    	</tr>
    	<tr>
    		<td align=right>主营产品：<font color=red>*</font></td>
    		<td>
    			<table>
    				<tr>
    					<td>
    					<INPUT id=productionService_0 maxLength=20 size=10 name=zycp>
    					<INPUT id=productionService_1 maxLength=20 size=10 name=zycp>
    					<INPUT id=productionService_1 maxLength=20 size=10 name=zycp>
    					<INPUT id=productionService_1 maxLength=20 size=10 name=zycp>
    					</td>
    				</tr>
    				<tr>
    					<td>
    					<INPUT id=productionService_0 maxLength=20 size=10 name=zycp>
    					<INPUT id=productionService_1 maxLength=20 size=10 name=zycp>
    					<INPUT id=productionService_1 maxLength=20 size=10 name=zycp>
    					<INPUT id=productionService_1 maxLength=20 size=10 name=zycp>
    					</td>
    				</tr>
    				<tr>
    					<td>
    					<INPUT id=productionService_0 maxLength=20 size=10 name=zycp>
    					<INPUT id=productionService_1 maxLength=20 size=10 name=zycp>
    					<INPUT id=productionService_1 maxLength=20 size=10 name=zycp>
    					<INPUT id=productionService_1 maxLength=20 size=10 name=zycp>
    					<br>
    				<span class=note>（每空限填１种产品名称，建议10个字以下，如：钮扣）</span>
    					</td>
    				</tr>
    			</table>
    		</td>
    	</tr>
    	<tr>
    		<td>选择主营行业：<font color=red>*</font></td>
    		<td>
    		<table>
	    		<tr>
	    		<td  style="BORDER-RIGHT: #dac010 1px solid; PADDING-RIGHT: 3px; BORDER-TOP: #dac010 1px solid; PADDING-LEFT: 3px; PADDING-BOTTOM: 3px; BORDER-LEFT: #dac010 1px solid; PADDING-TOP: 3px; BORDER-BOTTOM: #dac010 1px solid" 
	            width="60%" bgColor=#ffffcc>请选择完整的行业大类和子类，并添加为主营行业，最多可添加 
	            <FONT color=#ff0000><B>6</B></FONT> 个！
	    		</td>
	    		</tr>
    			<tr>
    			<TD>
    			<SPAN id=prdMore>
    			<SELECT id=topCatFormKey style="WIDTH: 120px" onchange=onChangeTopCategory() size=8 name=topCatFormKey>
    				<c:forEach var="trade" items="${traList}" begin="0" end="7" step="1">    
				   		<option value="<c:out value="${trade.productId}"/>"><c:out value="${trade.name}"/></option>    
				    </c:forEach>
    				
    			</SELECT>
    			
    			<SELECT id=secondCatFormKey style="WIDTH: 120px" onchange=onChangeSecondCategory() size=8 name=secondCatFormKey></SELECT>
    			<SELECT id=leafCatFormKey style="WIDTH: 120px" onchange=onChangeLeafCategory() size=8 name=leafCatFormKey></SELECT> 
    			</SPAN><BR>
    			<INPUT onclick="doSubmit1('select')" type=button value=添加↓ name=Submit222> 
				<INPUT onclick="doSubmit1('deselect')" type=button value=×删除 name=Submit2222> 
                  <BR></TD></TR></TABLE>
            <TABLE>
              <TBODY>
              <TR>
              <SPAN id=selectedText style="DISPLAY: none"><BR>以下是您已选择的主营行业：</SPAN>
              <SELECT style="WIDTH: 368px" size=8 name=right_category_id> 
              	<OPTION value= selected></OPTION>
              </SELECT> 
               </TR
              ></TBODY>
    		</table>
    	</table>
    		
    <script type="text/javascript">
    	//入口参数
    	var topCatForm = document.form.topCatFormKey;
		var secondCatForm = document.form.secondCatFormKey;
		var beginIndex = 0;
    	function onChangeTopCategory(){
		    changeTopCategory();
		}
		function changeTopCategory(){
		    secondCatForm.value = "";
				if(topCatForm.selectedIndex == -1 || (topCatForm.selectedIndex == 0 && beginIndex == 1)) {
				if(beginIndex == 1){
		        	topCatForm.options[0].selected = true;
		
				}
		        var len = secondCatForm.options.length;
		        for (var i = len - 1; i > beginIndex - 1; i--) {
		            secondCatForm.options[i] = null;
		        }
			}
			else{
			   	var selectedTopCategory;
				//查出选择了那个顶极类目
				for(var j =0;j<topCatArr.length;j++){
					if(topCatForm.options[topCatForm.selectedIndex].value == topCatArr[j].id){
						selectedTopCategory = topCatArr[j];
					} 
				}
				        initSubOptions(selectedTopCategory.id, secondCatForm);
			}
			if (beginIndex == 1){
		        secondCatForm.options[0].selected = true;
			}
		    changeSecondCategory();
		}
    </script>
  </body>
</html>
