	document.ondragstart = function(){
		return false;
	}
	var validatedInfo		= "填写正确";
	var requireErrorInfo	= " 此项为必填项。 <br \/>";
	var msgInfo	= new Array();
	//validator info
	msgInfo[0]				= new Array('由4-15个字母或数字组成。不支持中文，不区分大小写，注册成功后不可修改。','您的填写有误。会员登录名只能由4-15个英文字母或数字组成(不支持中文、不区分大小写)。');
	var loginid	 		= new formEle(true,"loginid",null,"loginid_info",msgInfo[0],"loginid_info_check");
	msgInfo[1]				= new Array('6-20个字母（区分大小写）或数字组成。',
	'您输入的密码有误。密码是由6-20位英文字母和数字组成的，区分大小写','为安全起见，密码不能与会员登录名相同，请重新设置密码！',' 为安全起见，密码不能用连续的数字，请重新设置密码！',' 您输入的密码有误。密码是由6-20位英文字母和数字组成的，区分大小写',' 您输入的密码有误。密码是由6-20位英文字母和数字组成的，区分大小写','您输入的密码有误。密码是由6-20位英文字母和数字组成的，区分大小写');
	var password	 		= new formEle(true,"password",null,"password_info",msgInfo[1],"password_info_check");
	msgInfo[2]				= new Array('请再输入一遍上面填写的密码。','两次输入的密码有误，请重新输入。', '两次输入的密码不相同，请重新输入上面的密码。');
	var confirm_password	= new formEle(true,"confirm_password",null,"confirm_password_info",msgInfo[2],"confirm_password_info_check");
	
	msgInfo[3]=new Array(	'这是客户与您联系的首选方式，请谨慎填写。',
							'电子邮件格式不正确，请重新输入正确的电子邮箱格式。<a href="http://mail.163.com/" target="_blank">注册网易邮箱</a>、<a href="http://mail.sina.com.cn/cgi-bin/register/regMember1.cgi" target="_blank">注册新浪邮箱</a>。');
	var email=new formEle(true,"email",null,"email_info",msgInfo[3],"email_info_check");
	msgInfo[4]=new Array('方便客户及时联系到您！慧聪不绑定任何收费服务。','手机号码超出最大长度16个字','请填写正确的手机号码');
	var mobile=new formEle(false,"mobile",null,"mobile_info",msgInfo[4],"mobile_info_check");
	
	msgInfo[5]=new Array('注册企业请填写工商局注册的全称，无商号的个体经营者请填写执照上的姓名，并标注个体经营。如：<font color="#FF0000">李四（个体经营）</font>','&nbsp;','公司名称含有非法字符','<font color="#FF0000">公司名称错误，</font><span class="STYLE4">公司名称不能用连续的字符或完全使用数字表示。','<font color="#FF0000">公司名称错误，</font>公司名称不能用连续的字符或完全使用数字表示。</h1>');
	var company=new formEle(true,"company",null,"company_info",msgInfo[5],"company_info_check");
	
	msgInfo[6]=new Array('请详细填写贵公司经营地址。如“海淀区西直门北大街42号1001信箱。”', '详细地址超长。</h1>','详细地址含有非法字符');
	
	var address = new formEle(true,"address",null,"address_info",msgInfo[6],"address_info_check");
	msgInfo[7]=new Array('&nbsp;','姓名必须是1-32个字','姓名含有非法字符');
	var first_name = new formEle(true,"first_name",null,"first_name_info",msgInfo[7],"first_name_info_check");

	
	msgInfo[8]= new Array('&nbsp;','电话号码只能用数字。');
	var CountryCode = new formEle(true,"CountryCode",null,"phone_info",msgInfo[8],"phone_info_check");
	var CityCode = new formEle(true,"CityCode",null,"phone_info",msgInfo[8],"phone_info_check");
	msgInfo[9]= new Array('&nbsp;','电话号码错误，中国地区的电话号码只能是7或8位。','电话号码错误，中国地区的电话号码只能是7或8位。');
	var phone_number = new formEle(true,"phone_number",null,"phone_info",msgInfo[9],"phone_info_check");
	
	msgInfo[10]= new Array('&nbsp;','分机号只能用数字表示');
	var ext_phone_number = new formEle(false,"ext_phone_number",null,"phone_info",msgInfo[10],"phone_info_check");
	
	msgInfo[15]				= new Array('请填写自己最熟悉的问题，并牢记！用于忘记密码时重设密码。','请输入正确的密码提示问题。','密码提示问题含有非法字符');
	var confirm_question	= new formEle(true,"confirm_question",null,"confirm_question_info",msgInfo[15],"confirm_question_info_check");
	
	msgInfo[13]				= new Array('&nbsp;','职位名称超出最大长度16个字','职位含有非法字符');
	var job_title = new formEle(true,"job_title",null,"job_title_info",msgInfo[13],"job_title_info_check");

	msgInfo[16]				= new Array(	'密码提示答案不能与密码提示问题和登录名相同！','请输入正确的密码提示答案。','密码提示答案含有非法字符','<font color="#FF0000">密码提示答案错误。</font>密码提示答案和密码提示问题不能相同，请输入正确的密码提示答案。','<font color="#FF0000">密码提示答案错误。</font>密码提示答案不能与密码提示问题和登录名相同。</h1>');
	var confirm_answer	= new formEle(true,"confirm_answer",null,"confirm_answer_info",msgInfo[16],"confirm_answer_info_check");
	msgInfo[17]				= new Array('中国地区用户请填写规范的<font color="#FF0000">6位</font>邮政编码&nbsp;','邮政编码只能使用数字！请输入6位邮政编码。','请输入6位邮政编码。');
	var confirm_zipcode	= new formEle(false,"confirm_zipcode",null,"confirm_zipcode_info",msgInfo[17],"confirm_zipcode_info_check");
	msgInfo[19]				= new Array('只能填写一个独立域名的公司网址 ','&nbsp;','公司网址含有非法字符');
	var confirm_website	= new formEle(false,"confirm_website",null,"confirm_website_info",msgInfo[19],"confirm_website_info_check");
	msgInfo[20]				= new Array('请您选择公司类型。按ctr键可多选。','公司类型不能为空！，请选择公司类型。</h1>');
	var confirm_type1	= new formEle(true,"confirm_type1",null,"confirm_type1_info",msgInfo[20],"confirm_type1_info_check");
	msgInfo[21]				= new Array('只需输入主营产品名称的关键字,如:电脑,笔记本,服务器','主营产品不能为空！，请输入主营产品。</h1>','主营产品含有非法字符');
	var confirm_mainpro	= new formEle(true,"confirm_mainpro",null,"confirm_mainpro_info",msgInfo[21],"confirm_mainpro_info_check");
	msgInfo[22]				= new Array('为了给您提供匹配的产品信息，请填写贵公司的主营采购（或服务）关键字。<br>如有多个，请用逗号分隔。如：布料，拉链','&nbsp;','主营采购含有非法字符');
	var confirm_mainbuy	= new formEle(false,"confirm_mainbuy",null,"confirm_mainbuy_info",msgInfo[22],"confirm_mainbuy_info_check");
	msgInfo[23]= new Array('请选择主营行业。','请选择主营行业。','请选择主营行业。');
	var category= new formEle(false,"category",null,"category_info",msgInfo[23],"category_info_check");
	
	msgInfo[24]= new Array(	'请将左侧图片的数字准确的填写到文本框中。','验证码不能为空！请输入4位验证码。</h1>');
	var validate_code= new formEle(true,"validate_code",null,"validate_code_info",msgInfo[24],"validate_code_info_check");
	
	msgInfo[25]= new Array('请填写自己最熟悉的问题，并牢记！用于忘记密码时重设密码。','请输入正确的密码提示问题。','密码提示问题含有非法字符');
	var confirm_question_input	= new formEle(false,"",null,"",msgInfo[25],"");
		
	msgInfo[11]=new Array('为了给您提供匹配的产品信息，请填写贵公司采购的产品（或服务）关键字。如有多个，请用逗号分隔。如：布料，拉链','为了给您提供匹配的产品信息，请填写贵公司采购的产品（或服务）关键字。如有多个，请用逗号分隔。如：布料，拉链','为了给您提供匹配的产品信息，请填写贵公司销售的产品（或服务）关键字。如有多个，请用逗号分隔。如：布料，拉链','销售的产品含有非法字符','采购的产品有非法字符','为了给您提供匹配的产品信息，请填写贵公司销售的产品（或服务）关键字。如有多个，请用逗号分隔。如：布料，拉链');
	msgInfo[26]=new Array('为了给您提供匹配的产品信息，请填写贵公司销售的产品（或服务）关键字。如有多个，请用逗号分隔。如：布料，拉链','为了给您提供匹配的产品信息，请填写贵公司采购的产品（或服务）关键字。如有多个，请用逗号分隔。如：布料，拉链','为了给您提供匹配的产品信息，请填写贵公司销售的产品（或服务）关键字。如有多个，请用逗号分隔。如：布料，拉链','销售的产品含有非法字符','采购的产品有非法字符','为了给您提供匹配的产品信息，请填写贵公司采购的产品（或服务）关键字。如有多个，请用逗号分隔。如：布料，拉链');
	var buykeyword = new formEle(true,"buykeyword",null,"business_info",msgInfo[11],"keywords_info_check");
	
	var salekeyword = new formEle(true,"salekeyword",null,"business_info",msgInfo[26],"keywords_info_check");
	
	msgInfo[12]= new Array('&nbsp;','电话号码只能使用数字或\"/\",\"-\"','<font color=\"#FF0000\">电话号码错误，</font>中国地区的电话号码只能是7或8位。');
	msgInfo[14]= new Array('&nbsp;','区号和国家号码只能使用数字');

	
	msgInfo[18]= new Array('&nbsp;','&nbsp;');
	var FaxCountryCode = new formEle(false,"FaxCountryCode",null,"fax_info",msgInfo[14],"fax_info_check");
	var FaxCityCode = new formEle(false,"FaxCityCode",null,"fax_info",msgInfo[14],"fax_info_check");
	var fax_number = new formEle(false,"fax_number",null,"fax_info",msgInfo[12],"fax_info_check");
	var ext_fax_number = new formEle(false,"ext_fax_number",null,"fax_info",msgInfo[10],"fax_info_check");
	
