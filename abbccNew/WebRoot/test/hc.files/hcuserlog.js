var hcUesrLogUrl = "http://log.b2b.hc360.com/logmanage/userlog.jsp";



function dowriteuser(username,userid,providerid,opercode,infoid,opercat,oper_param){
		var r = new AjaxRequest("post",hcUesrLogUrl,false);
		//r.setParameter("urlStr",urlStr);
		r.setParameter("username",username);
		r.setParameter("userid",userid);
		r.setParameter("providerid",providerid);
		r.setParameter("opercode",opercode);
		r.setParameter("portalid",'my');	
		r.setParameter("infoid",infoid);	
		r.setParameter("opercat",opercat);
		if(oper_param==null){
		   r.setParameter("operparam",'');
		}else{
		   r.setParameter("operparam",oper_param);
		}
		
		r.send(null);
    	r.onresult = function(){
		   //showInfoHaveUsed(obj,r.getText());
		}
		
		
}

function dowriteuser4pageLoad(username,userid,providerid,opercode,infoid,opercat){
if(document.images) 
		{
	    (new Image()).src= hcUesrLogUrl +"?username="+ username +"&userid="+userid+"&providerid="+providerid+"&opercode="+opercode+"&portalid=my&infoid="+infoid+"&opercat="+opercat;
	  	}
}

