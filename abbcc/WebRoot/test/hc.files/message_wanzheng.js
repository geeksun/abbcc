	document.ondragstart = function(){
		return false;
	}
	var validatedInfo		= "��д��ȷ";
	var requireErrorInfo	= " ����Ϊ����� <br \/>";
	var msgInfo	= new Array();
	//validator info
	msgInfo[0]				= new Array('��4-15����ĸ��������ɡ���֧�����ģ������ִ�Сд��ע��ɹ��󲻿��޸ġ�','������д���󡣻�Ա��¼��ֻ����4-15��Ӣ����ĸ���������(��֧�����ġ������ִ�Сд)��');
	var loginid	 		= new formEle(true,"loginid",null,"loginid_info",msgInfo[0],"loginid_info_check");
	msgInfo[1]				= new Array('6-20����ĸ�����ִ�Сд����������ɡ�',
	'�����������������������6-20λӢ����ĸ��������ɵģ����ִ�Сд','Ϊ��ȫ��������벻�����Ա��¼����ͬ���������������룡',' Ϊ��ȫ��������벻�������������֣��������������룡',' �����������������������6-20λӢ����ĸ��������ɵģ����ִ�Сд',' �����������������������6-20λӢ����ĸ��������ɵģ����ִ�Сд','�����������������������6-20λӢ����ĸ��������ɵģ����ִ�Сд');
	var password	 		= new formEle(true,"password",null,"password_info",msgInfo[1],"password_info_check");
	msgInfo[2]				= new Array('��������һ��������д�����롣','��������������������������롣', '������������벻��ͬ��������������������롣');
	var confirm_password	= new formEle(true,"confirm_password",null,"confirm_password_info",msgInfo[2],"confirm_password_info_check");
	
	msgInfo[3]=new Array(	'���ǿͻ�������ϵ����ѡ��ʽ���������д��',
							'�����ʼ���ʽ����ȷ��������������ȷ�ĵ��������ʽ��<a href="http://mail.163.com/" target="_blank">ע����������</a>��<a href="http://mail.sina.com.cn/cgi-bin/register/regMember1.cgi" target="_blank">ע����������</a>��');
	var email=new formEle(true,"email",null,"email_info",msgInfo[3],"email_info_check");
	msgInfo[4]=new Array('����ͻ���ʱ��ϵ�������۴ϲ����κ��շѷ���','�ֻ����볬����󳤶�16����','����д��ȷ���ֻ�����');
	var mobile=new formEle(false,"mobile",null,"mobile_info",msgInfo[4],"mobile_info_check");
	
	msgInfo[5]=new Array('ע����ҵ����д���̾�ע���ȫ�ƣ����̺ŵĸ��徭Ӫ������дִ���ϵ�����������ע���徭Ӫ���磺<font color="#FF0000">���ģ����徭Ӫ��</font>','&nbsp;','��˾���ƺ��зǷ��ַ�','<font color="#FF0000">��˾���ƴ���</font><span class="STYLE4">��˾���Ʋ������������ַ�����ȫʹ�����ֱ�ʾ��','<font color="#FF0000">��˾���ƴ���</font>��˾���Ʋ������������ַ�����ȫʹ�����ֱ�ʾ��</h1>');
	var company=new formEle(true,"company",null,"company_info",msgInfo[5],"company_info_check");
	
	msgInfo[6]=new Array('����ϸ��д��˾��Ӫ��ַ���硰��������ֱ�ű����42��1001���䡣��', '��ϸ��ַ������</h1>','��ϸ��ַ���зǷ��ַ�');
	
	var address = new formEle(true,"address",null,"address_info",msgInfo[6],"address_info_check");
	msgInfo[7]=new Array('&nbsp;','����������1-32����','�������зǷ��ַ�');
	var first_name = new formEle(true,"first_name",null,"first_name_info",msgInfo[7],"first_name_info_check");

	
	msgInfo[8]= new Array('&nbsp;','�绰����ֻ�������֡�');
	var CountryCode = new formEle(true,"CountryCode",null,"phone_info",msgInfo[8],"phone_info_check");
	var CityCode = new formEle(true,"CityCode",null,"phone_info",msgInfo[8],"phone_info_check");
	msgInfo[9]= new Array('&nbsp;','�绰��������й������ĵ绰����ֻ����7��8λ��','�绰��������й������ĵ绰����ֻ����7��8λ��');
	var phone_number = new formEle(true,"phone_number",null,"phone_info",msgInfo[9],"phone_info_check");
	
	msgInfo[10]= new Array('&nbsp;','�ֻ���ֻ�������ֱ�ʾ');
	var ext_phone_number = new formEle(false,"ext_phone_number",null,"phone_info",msgInfo[10],"phone_info_check");
	
	msgInfo[15]				= new Array('����д�Լ�����Ϥ�����⣬���μǣ�������������ʱ�������롣','��������ȷ��������ʾ���⡣','������ʾ���⺬�зǷ��ַ�');
	var confirm_question	= new formEle(true,"confirm_question",null,"confirm_question_info",msgInfo[15],"confirm_question_info_check");
	
	msgInfo[13]				= new Array('&nbsp;','ְλ���Ƴ�����󳤶�16����','ְλ���зǷ��ַ�');
	var job_title = new formEle(true,"job_title",null,"job_title_info",msgInfo[13],"job_title_info_check");

	msgInfo[16]				= new Array(	'������ʾ�𰸲�����������ʾ����͵�¼����ͬ��','��������ȷ��������ʾ�𰸡�','������ʾ�𰸺��зǷ��ַ�','<font color="#FF0000">������ʾ�𰸴���</font>������ʾ�𰸺�������ʾ���ⲻ����ͬ����������ȷ��������ʾ�𰸡�','<font color="#FF0000">������ʾ�𰸴���</font>������ʾ�𰸲�����������ʾ����͵�¼����ͬ��</h1>');
	var confirm_answer	= new formEle(true,"confirm_answer",null,"confirm_answer_info",msgInfo[16],"confirm_answer_info_check");
	msgInfo[17]				= new Array('�й������û�����д�淶��<font color="#FF0000">6λ</font>��������&nbsp;','��������ֻ��ʹ�����֣�������6λ�������롣','������6λ�������롣');
	var confirm_zipcode	= new formEle(false,"confirm_zipcode",null,"confirm_zipcode_info",msgInfo[17],"confirm_zipcode_info_check");
	msgInfo[19]				= new Array('ֻ����дһ�����������Ĺ�˾��ַ ','&nbsp;','��˾��ַ���зǷ��ַ�');
	var confirm_website	= new formEle(false,"confirm_website",null,"confirm_website_info",msgInfo[19],"confirm_website_info_check");
	msgInfo[20]				= new Array('����ѡ��˾���͡���ctr���ɶ�ѡ��','��˾���Ͳ���Ϊ�գ�����ѡ��˾���͡�</h1>');
	var confirm_type1	= new formEle(true,"confirm_type1",null,"confirm_type1_info",msgInfo[20],"confirm_type1_info_check");
	msgInfo[21]				= new Array('ֻ��������Ӫ��Ʒ���ƵĹؼ���,��:����,�ʼǱ�,������','��Ӫ��Ʒ����Ϊ�գ�����������Ӫ��Ʒ��</h1>','��Ӫ��Ʒ���зǷ��ַ�');
	var confirm_mainpro	= new formEle(true,"confirm_mainpro",null,"confirm_mainpro_info",msgInfo[21],"confirm_mainpro_info_check");
	msgInfo[22]				= new Array('Ϊ�˸����ṩƥ��Ĳ�Ʒ��Ϣ������д��˾����Ӫ�ɹ�������񣩹ؼ��֡�<br>���ж�������ö��ŷָ����磺���ϣ�����','&nbsp;','��Ӫ�ɹ����зǷ��ַ�');
	var confirm_mainbuy	= new formEle(false,"confirm_mainbuy",null,"confirm_mainbuy_info",msgInfo[22],"confirm_mainbuy_info_check");
	msgInfo[23]= new Array('��ѡ����Ӫ��ҵ��','��ѡ����Ӫ��ҵ��','��ѡ����Ӫ��ҵ��');
	var category= new formEle(false,"category",null,"category_info",msgInfo[23],"category_info_check");
	
	msgInfo[24]= new Array(	'�뽫���ͼƬ������׼ȷ����д���ı����С�','��֤�벻��Ϊ�գ�������4λ��֤�롣</h1>');
	var validate_code= new formEle(true,"validate_code",null,"validate_code_info",msgInfo[24],"validate_code_info_check");
	
	msgInfo[25]= new Array('����д�Լ�����Ϥ�����⣬���μǣ�������������ʱ�������롣','��������ȷ��������ʾ���⡣','������ʾ���⺬�зǷ��ַ�');
	var confirm_question_input	= new formEle(false,"",null,"",msgInfo[25],"");
		
	msgInfo[11]=new Array('Ϊ�˸����ṩƥ��Ĳ�Ʒ��Ϣ������д��˾�ɹ��Ĳ�Ʒ������񣩹ؼ��֡����ж�������ö��ŷָ����磺���ϣ�����','Ϊ�˸����ṩƥ��Ĳ�Ʒ��Ϣ������д��˾�ɹ��Ĳ�Ʒ������񣩹ؼ��֡����ж�������ö��ŷָ����磺���ϣ�����','Ϊ�˸����ṩƥ��Ĳ�Ʒ��Ϣ������д��˾���۵Ĳ�Ʒ������񣩹ؼ��֡����ж�������ö��ŷָ����磺���ϣ�����','���۵Ĳ�Ʒ���зǷ��ַ�','�ɹ��Ĳ�Ʒ�зǷ��ַ�','Ϊ�˸����ṩƥ��Ĳ�Ʒ��Ϣ������д��˾���۵Ĳ�Ʒ������񣩹ؼ��֡����ж�������ö��ŷָ����磺���ϣ�����');
	msgInfo[26]=new Array('Ϊ�˸����ṩƥ��Ĳ�Ʒ��Ϣ������д��˾���۵Ĳ�Ʒ������񣩹ؼ��֡����ж�������ö��ŷָ����磺���ϣ�����','Ϊ�˸����ṩƥ��Ĳ�Ʒ��Ϣ������д��˾�ɹ��Ĳ�Ʒ������񣩹ؼ��֡����ж�������ö��ŷָ����磺���ϣ�����','Ϊ�˸����ṩƥ��Ĳ�Ʒ��Ϣ������д��˾���۵Ĳ�Ʒ������񣩹ؼ��֡����ж�������ö��ŷָ����磺���ϣ�����','���۵Ĳ�Ʒ���зǷ��ַ�','�ɹ��Ĳ�Ʒ�зǷ��ַ�','Ϊ�˸����ṩƥ��Ĳ�Ʒ��Ϣ������д��˾�ɹ��Ĳ�Ʒ������񣩹ؼ��֡����ж�������ö��ŷָ����磺���ϣ�����');
	var buykeyword = new formEle(true,"buykeyword",null,"business_info",msgInfo[11],"keywords_info_check");
	
	var salekeyword = new formEle(true,"salekeyword",null,"business_info",msgInfo[26],"keywords_info_check");
	
	msgInfo[12]= new Array('&nbsp;','�绰����ֻ��ʹ�����ֻ�\"/\",\"-\"','<font color=\"#FF0000\">�绰�������</font>�й������ĵ绰����ֻ����7��8λ��');
	msgInfo[14]= new Array('&nbsp;','���ź͹��Һ���ֻ��ʹ������');

	
	msgInfo[18]= new Array('&nbsp;','&nbsp;');
	var FaxCountryCode = new formEle(false,"FaxCountryCode",null,"fax_info",msgInfo[14],"fax_info_check");
	var FaxCityCode = new formEle(false,"FaxCityCode",null,"fax_info",msgInfo[14],"fax_info_check");
	var fax_number = new formEle(false,"fax_number",null,"fax_info",msgInfo[12],"fax_info_check");
	var ext_fax_number = new formEle(false,"ext_fax_number",null,"fax_info",msgInfo[10],"fax_info_check");
	
