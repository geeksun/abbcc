<%@ page language="java"  pageEncoding="gbk" contentType="text/html;charset=gbk"%>
<%
	String path = request.getContextPath();
%> 
<html>
  <head>
    <title>welcome to abbcc</title> 
	  <style type="text/css">
			dl{	background-color:#FFDAB9;color:#000E00;width:200px;}
			dt{ cursor:pointer;width:100%;background-color:#F0E68C;}
			.expand {overflow:visible;}
			.collapse {height:16px;overflow:hidden;}
		</style>
		<script type="text/javascript">
			function toggleDl(dt){
				var dl = dt.parentNode;
				if("collapse" == dl.className) dl.className = "expand";
				else dl.className = "collapse";	
			}
		</script>
		<meta http-equiv="pragma" content="no-cache">
		<meta http-equiv="cache-control" content="no-cache">
  </head> 
  <body>
     <dl>
     	<dt onclick="toggleDl(this)">��Ա����</dt>
     	<dd><a href="<%=path%>/memberManage.do?action=displayRegisterMember" target="right">���û�ע�����</a></dd>
     	<dd><a href="<%=path%>/memberManage.do?action=displayPendMember" target="right">�����Ա����</a></dd>
     	<dd><a href="<%=path%>/memberManage.do?action=displayDetailInfo" target="right">����δ���ѻ�Ա����</a></dd> 
     	<dd><a href="<%=path%>/memberManage.do?action=displayChargedMember" target="right">���շѻ�Ա</a></dd>
     </dl>
     <dl>
     	<dt onclick="toggleDl(this)">��Ա�ͷ�</dt>
     	<dd><a href="#" >��Ա�ͷ�</a></dd>
     	<dd><a href="#">��¼�ʼ�����</a></dd>
     	<dd><a href="#">Ⱥ�����������Ϣ</a></dd> 
     	<dd><a href="#">�������</a></dd>
     	<dd><a href="#">�ʼ��б�</a></dd>
     </dl>
     <dl>
     	<dt onclick="toggleDl(this)">��ҵ�������</dt>
     	<dd><a href="#">��ҵ����</a></dd>
     	<dd><a href="#">������ҵ����</a></dd>
     </dl>
     <dl>
     	<dt onclick="toggleDl(this)">��Ʒ����</dt>
     	<dd><a href="#">�����Ʒ����</a></dd>
     </dl>
      <dl>
     	<dt onclick="toggleDl(this)">�˲��г�����</dt>
     	<dd><a href="#">��Ƹ����</a></dd>
     </dl>
      <dl>
     	<dt onclick="toggleDl(this)">��վϵͳ����</dt>
     	<dd><a href="#">��վϵͳ����</a></dd>
     </dl>
     
  </body>
</html>
 