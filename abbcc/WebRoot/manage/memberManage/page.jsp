<%@ page language="java" pageEncoding="GBK"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
  <script language="JavaScript">
    function jumping(event)
    {
    	event = event?event:window.event;	
    	if(event.keyCode == 13)
    	{
    		var regObj = /^\d*$/g;
	    	var jumpPage = document.PageForm.jumpPage.value;
	    	if(!regObj.test(jumpPage))
	    	{
	    		alert('��������Ч�����֣�');
	    		return;
	    	}else{
    			document.PageForm.submit();
    		}
    	}
    }
    function gotoPage(pagenum){
       document.PageForm.jumpPage.value = pagenum;
       document.PageForm.submit();       
    }
    function regress()
    {
    	document.PageForm.jumpPage.value = "";
    }
  </script>    
		<table align="center">  
		  <tr>
		    <td>ÿҳ${lee.rowsPage}��</td>
		    <td>��${lee.totalRows}��</td>
		    <td>��${lee.currentPage}ҳ</td><td>��${lee.totalPage}ҳ</td>
		    <td>		    	
				<c:choose>
					<c:when test="${lee.currentPage==1}">
						<c:out value="��ҳ����һҳ" />
					</c:when>
					<c:otherwise>
						<a href="javascript:gotoPage(1)">��ҳ</a>
		      			<a href="javascript:gotoPage(${lee.currentPage-1})">��һҳ</a>
					</c:otherwise>
				</c:choose>
		    	
		    	<c:choose>
		    		<c:when test="${lee.currentPage==lee.totalPage}">
		    			<c:out value="��һҳ�� βҳ"></c:out>
		    		</c:when>
		    		<c:otherwise>
		    			<a href="javascript:gotoPage(${lee.currentPage+1})">��һҳ</a>   
		       			<a href="javascript:gotoPage(${lee.totalPage})">βҳ</a>  
		    		</c:otherwise>
		    	</c:choose> 		    	  
		    </td>		
		    <td>		    	
				ת����<input type="text" id="jumpPage" name="jumpPage" size=3 onkeydown="jumping(event);" onFocus="regress()">ҳ
		    </td>  
		  </tr>
		</table>
      
        