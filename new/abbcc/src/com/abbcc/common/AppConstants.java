package com.abbcc.common;

/**
 * @author geeksun
 * @category 工具类
 * @see 存放操作的常量字符串
 *  create by 2009-1-12
 */
public class AppConstants {
	//	用来存放应用里的常量
	public static final String LOGIN_USER = "hydlm";
	public static final String PASSWORD = "mm";
	public static final String RepeatLogin = "repeatLogin";
	public static final String EMPTY = "";
	
	public static final int validate = 1;
	public static final int invalidate = -1;
	
	public static final boolean VIRTUAL = false;
	public static final boolean ACTUAL = true;
	
	//顶级种类ID
	public static final String TOPCATEGORYID = "0";
	public static final int PRODUCT_TYPE_TOP_ID = 0;

	
	//访问标记和操作标记name
	public static final String ACCESS_MARK = "access_mark";
	public static final String OPERA_FLAG = "opera_flag";
	public static final String DISPLAY_FLAG = "display_flag";
	public static final String MODIFY_PASS = "modify_pass";
	public static final String UPDATE_DATAILINFO = "update_detailInfo";
	public static final String CHECKFILE_INFO = "checkfile_Info";
	public static final String FCK_UPLOADPATH = "fck_uploadpath";
	public static final String MANAGER_LOGININFO = "manager_logininfo";
	public static final String CUSTOMER_LOGININFO = "customer_logininfo";

	
	
	//访问标记和操作标记value
	public static final String ACCESS_FIRST = "access_first";
	public static final String ACCESS_QUESTION_PASSWORD = "access_question_password";
	public static final String MODIFY_PASS_QUESTION = "modify_pass_question";
	public static final String HONOR_REFER = "honor_refer";
	public static final String TECHNOLOGY_REFER = "technology_refer";
	public static final String COMPANYLOGO_REFER = "companylogo_refer";
	//FCK 上传的文件夹名称 begin
	public static final String FCK_UPLOADDIR_1 = "honor";
	public static final String FCK_UPLOADDIR_2 = "technology";
	public static final String FCK_UPLOADDIR_3 = "companylogo";
	//end
	public static final String MANAGER_LOGININFO_1 = "用户名不能为空";
	public static final String MANAGER_LOGININFO_2 = "密码不能为空";
	public static final String MANAGER_LOGININFO_3 = "用户名或密码错误";
	public static final String MANAGER_LOGININFO_4 = "你无执行此操作权限";
	public static final String MANAGER_LOGININFO_5 = "你进行了非法操作";
	public static final String AUDIT_REGISTER_MEMBER = "audit_register_member";
	public static final Object AUDIT_REGISTER_INFO_1 = "你无权进行此操作";
	public static final Object AUDIT_REGISTER_INFO_2 = "你的会员ID不存在";
	public static final Object AUDIT_REGISTER_INFO_3 = "你的会员信息不存在";
	
	public static final String CUSTOMER_LOGININFO_1 = "用户名或密码错误";
	
	public static final String PRODUCT_PICTURE_SAVE_DIR="/update/product";
	
	
	
	
	
	
	
	
	//服务异常500
	public static final String DISPLAY_CRASH = "display_crash";
	public static final String DISPLAY_CRASH_1 = "display_crash_1";
	
	
	
	//公司基本信息修改成功后,跳转到详细信息页面的提示信息
	public static final String BASICINFOUPDATED = "basicInfoUpdated";
	
	
	//短消息
	public static final int MESSAGE_STATE_ALL=0;
	public static final int MESSAGE_STATE_UN_READ=1;
	public static final int MESSAGE_STATE_READ=2;
	public static final int MESSAGE_STATE_REPLAY=3;
	public static final int MESSAGE_TYPE_BUY=1;
	public static final int MESSAGE_TYPE_SALE=2;
	public static final int MESSAGE_FROM=1;
	public static final int MESSAGE_TO=2;

	public static final int MESSAGE_DELETE_STATE_FORM=2;

	public static final int MESSAGE_DELETE_STATE_TO=2;
 
	
	public static final String CPGQXX_SFYX_All="4";//所有
	public static final String CPGQXX_SFYX_1="1";//已发布上网 
	public static final String CPGQXX_SFYX_2="2";//审核中 
	public static final String CPGQXX_SFYX_3="3";//审核未通过   
	
	public static final String CPGOXX_OVERDUE_ALL="3";//所有
	public static final String CPGOXX_OVERDUE="1";//已过期
	public static final String CPGOXX_UN_OVERDUE="2";//已过期
	public static final String CPGOXX_OVERDUE_10_DAY="1";//10 天
	public static final String CPGOXX_OVERDUE_20_DAY="2";//20 天
	public static final String CPGOXX_OVERDUE_1_MONTH="3";//1个月
	public static final String CPGOXX_OVERDUE_3_MONTH="4";//3个月
	public static final String CPGOXX_OVERDUE_6_MONTH="5";//6个月
 	
	
	public static final String PRODUCT_SALE_ALL="4";//所有
	public static final String PRODUCT_SALE="1";//供应
	public static final String PRODUCT_BUY="2";//求购
	public static final String PRODUCT_QUICK_BUY="3";//紧急求购
	
	
	public static final int PRODUCT_TYPE_IN_NET=1;
	public static final int PRODUCT_TYPE_IN_AUDIT=2;
	public static final int PRODUCT_TYPE_UN_AUDIT=3;
	public static final int PRODUCT_TYPE_OVERDUE=4;
	

	
	
	
	
}
