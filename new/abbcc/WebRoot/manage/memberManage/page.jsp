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
	    		alert('请输入有效的数字！');
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
		    <td>每页${lee.rowsPage}行</td>
		    <td>共${lee.totalRows}行</td>
		    <td>第${lee.currentPage}页</td><td>共${lee.totalPage}页</td>
		    <td>		    	
				<c:choose>
					<c:when test="${lee.currentPage==1}">
						<c:out value="首页　上一页" />
					</c:when>
					<c:otherwise>
						<a href="javascript:gotoPage(1)">首页</a>
		      			<a href="javascript:gotoPage(${lee.currentPage-1})">上一页</a>
					</c:otherwise>
				</c:choose>
		    	
		    	<c:choose>
		    		<c:when test="${lee.currentPage==lee.totalPage}">
		    			<c:out value="下一页　 尾页"></c:out>
		    		</c:when>
		    		<c:otherwise>
		    			<a href="javascript:gotoPage(${lee.currentPage+1})">下一页</a>   
		       			<a href="javascript:gotoPage(${lee.totalPage})">尾页</a>  
		    		</c:otherwise>
		    	</c:choose> 		    	  
		    </td>		
		    <td>		    	
				转到第<input type="text" id="jumpPage" name="jumpPage" size=3 onkeydown="jumping(event);" onFocus="regress()">页
		    </td>  
		  </tr>
		</table>
      
        