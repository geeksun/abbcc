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
  	��˾��������
  </p>
  	<c:set var="leaguer" value="${leaguer}" scope="page" ></c:set>
    <table width="90%" border="1" cellspacing="0" cellpadding="2" align="CENTER" bordercolor="F0E68C"> 
    	<tr>
    		<td align=right>��˾���ƣ�*</td><td><input type="text" name="gsmc" value="${leaguer.gsmc}"  size="40"></td>
    	</tr>
    	<!-- <tr>
    		<td> ��˾Ӣ�����ƣ�</td><td><input type="text"  name="enCorpName" size="40"></td>
    	</tr>
    	 -->
    	<tr>
    		<td align=right>��ҵ���ͣ�*</td>
    		<td><select name="qylx" >
    			<option value="">����</option>
					<option value="1">�������ι�˾(����)</option>
					<option value="2">�ɷ����޹�˾(����)</option>
					<option value="3" >�ɷ����޹�˾(������)</option>
					<option value="4" >ȫ����������ҵ</option>
					<option value="5" >������������ҵ</option>
					<option value="6" >������ʾ�Ӫ��ҵ</option>
					<option value="7" >���������Ӫ��ҵ</option>
					<option value="8" >���̶�����ҵ</option>
					<option value="9" >˽Ӫ��ҵ</option>
    		</td>
    	</tr>
    	<tr>
    		<td align=right>��Ӫģʽ��*</td>
    		<td>
    		<!--  
    		<input type="checkbox" name="jyms" id=Type_Manufacturer  value="1" onclick="return checkBizType(this)">�����ӹ�
    		<input type="checkbox" name="jyms" id=Type_Wholesale  value="2" onclick="return checkBizType(this)">��������
    		<input type="checkbox" name="jyms" id=Type_Investment  value="3" onclick="return checkBizType(this)">���̴���
    		<input type="checkbox" name="jyms"  value="4" onclick="return checkBizType(this)">��ҵ����
    		<input type="checkbox" name="jyms"  value="5" onclick="return checkBizType(this)">���϶����� <br>
    		�����ѡ��2�־�Ӫģʽ��
    		-->
    		<INPUT id=Type_Manufacturer title=����������������/�ӹ�����ҵ��ĳ���  onclick="return checkBizType(this)" 
            type=checkbox value=1 name=jyms>�����ӹ�&nbsp;
			<INPUT id=Type_Wholesale title=���²�Ʒ�������������������̼� onclick="return checkBizType(this)" 
            type=checkbox value=2 name=jyms>��������&nbsp;
            <INPUT id=Type_Investment title=���Լ��ĵ�š�Ʒ�ơ���Ʒ����������Ӫҵ�Ķ�����ļ���������̼ҡ����������������ˡ�������Ӫ������������ר���ȡ� 
            onclick="return checkBizType(this)" type=checkbox value=3 name=jyms>���̴���&nbsp;
			<INPUT id=Type_Service title=������ҵ������̼ҡ���������ѵ����ơ�������չ��ȡ� onclick="return checkBizType(this)" 
            type=checkbox value=4 name=jyms>��ҵ����&nbsp;
			<INPUT id=Type_Other onclick="return checkBizType(this)" type=checkbox value=5 name=jyms>���϶�����<BR>
			<SPAN class=note>�����ѡ��2�־�Ӫģʽ��</SPAN> 
    		</td>
    	</tr>
    	<!--  
    	<tr>
    		<td>ע���ʱ���*</td><td>�����  ��</td>
    	</tr>
    	-->
    	<tr>
    		<td align=right>��Ҫ��Ӫ�ص㣺*</td>
    		<td><input type="text" name="zyjydd" value="${leaguer.jydz }" size="27">
    		<span class=note>������дҵ���Ź����ص㣩</span></td>
    	</tr>
    	<tr>
    		<td align=right>��Ӫ��Ʒ��<font color=red>*</font></td>
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
    				<span class=note>��ÿ������ֲ�Ʒ���ƣ�����10�������£��磺ť�ۣ�</span>
    					</td>
    				</tr>
    			</table>
    		</td>
    	</tr>
    	<tr>
    		<td>ѡ����Ӫ��ҵ��<font color=red>*</font></td>
    		<td>
    		<table>
	    		<tr>
	    		<td  style="BORDER-RIGHT: #dac010 1px solid; PADDING-RIGHT: 3px; BORDER-TOP: #dac010 1px solid; PADDING-LEFT: 3px; PADDING-BOTTOM: 3px; BORDER-LEFT: #dac010 1px solid; PADDING-TOP: 3px; BORDER-BOTTOM: #dac010 1px solid" 
	            width="60%" bgColor=#ffffcc>��ѡ����������ҵ��������࣬������Ϊ��Ӫ��ҵ���������� 
	            <FONT color=#ff0000><B>6</B></FONT> ����
	    		</td>
	    		</tr>
    			<tr>
    			<TD>
    			<SPAN id=prdMore>
    			<SELECT id=topCatFormKey style="WIDTH: 120px" onchange=onChangeTopCategory() size=8 name=topCatFormKey>
    			<option value="1">������ҵ</option>
    			</SELECT>
    			<SELECT id=secondCatFormKey style="WIDTH: 120px" onchange=onChangeSecondCategory() size=8 name=secondCatFormKey></SELECT>
    			<SELECT id=leafCatFormKey style="WIDTH: 120px" onchange=onChangeLeafCategory() size=8 name=leafCatFormKey></SELECT> 
    			</SPAN><BR>
    			<INPUT onclick="doSubmit1('select')" type=button value=���ӡ� name=Submit222> 
				<INPUT onclick="doSubmit1('deselect')" type=button value=��ɾ�� name=Submit2222> 
                  <BR></TD></TR></TABLE>
            <TABLE>
              <TBODY>
              <TR>
              <SPAN id=selectedText style="DISPLAY: none"><BR>����������ѡ�����Ӫ��ҵ��</SPAN>
              <SELECT style="WIDTH: 368px" size=8 name=right_category_id> 
              	<OPTION value= selected></OPTION>
              </SELECT> 
               </TR
              ></TBODY>
    		</table>
    	</table>
    		
    <script type="text/javascript">
    	//��ڲ���
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
				//���ѡ�����Ǹ�������Ŀ
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