<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@ page contentType="text/html;charset=gbk"%>
<%@ taglib uri="http://struts.apache.org/tags-logic" prefix="logic"%>
<%@ taglib uri="http://struts.apache.org/tags-tiles" prefix="tiles"%>
<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean"%>
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html"%>

<html xmlns="http://www.w3.org/1999/xhtml">
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
		<title>东方五金用户管理中心</title>
		<link rel="stylesheet" rev="stylesheet"
			href="http://style.china.abbcc.com/css/myabbcc/content.css?t=1117"
			type="text/css" />
		<script type="text/javascript">
var roots = {menu:[
	{id:"0",name:"掌上门户首页", url: "http://china.abbcc.com/member/myabbcc.htm?ca=true&tracelog=myali_menu_home" , children:[]},
	{id:"1",name:"供求信息",children:
		[		
    		{id:"1.1",name:"发布供求信息",url:"http://china.abbcc.com/offer/offer_post.htm?tracelog=myabbcc_fb_inyitihua", children:[]},
			{id:"1.2",name:"管理供求信息",url:"http://china.abbcc.com/offer/manage.htm?tracelog=myali_menu_manageoffer", children:[]},
			{id:"1.3",name:"信息自定义分类",url:"http://china.abbcc.com/offer/manage_offer_group.htm?tracelog=fb_offer_group", children:[]},
		]},
	{id:"2",name:"公司介绍",url:"http://china.abbcc.com/company/my_company.htm?tracelog=myali_menu_company_intro",  children:[]},
	{id:"3",name:"留言和邮箱",children:
		[
    		{id:"3.1",name:"我收到的留言",url:"http://china.abbcc.com/message/list_received_message.htm?ml=1&tracelog=myali_menu_myreceivedmessage", children:[]},
    		{id:"3.2",name:"我发出的留言",url:"http://china.abbcc.com/message/list_sent_message.htm?tracelog=myali_menu_mysendmessage", children:[]},	
    		{id:"3.3",name:"垃圾留言",url:"http://china.abbcc.com/message/list_spam_message.htm?tracelog=myali_menu_myrubbishmessage", children:[]},
		]
	},
	
	{id:"4",name:"会员资料",children:
		[
			{id:"4.1",name:"修改联系信息",url:"http://china.abbcc.com/member/modify_member_info.htm?ml=1&tracelog=myali_menu_modifyinfo", children:[]},
			{id:"4.2",name:"修改密码",url:"http://china.abbcc.com/member/modify_password.htm?tracelog=myali_menu_modifypassword", children:[]}
		]
	},

	{id:"8",name:"网站管理",statusIcon:"http://i04.c.aliimg.com/images/common/icon_v01/6002410.gif",children:	
		[
			{id:"8.7",name:"开通旺铺",statusIcon:"http://i01.c.aliimg.com/images/cn/home/070214/new_l.gif",url:"http://china.abbcc.com/domain/abbcc_manage.htm", children:[]},
			{id:"8.1",name:"网站外观设计",statusIcon:"http://i04.c.aliimg.com/images/common/icon_v01/6002410.gif",url:"http://esite.china.abbcc.com/esite/esite_config.htm",target:"_blank", children:[]},
			{id:"8.11",name:"网站浏览分析",statusIcon:"http://i04.c.aliimg.com/images/common/icon_v01/6002410.gif",url:"http://athena.china.abbcc.com/statistics/offer_view.htm", children:[]},
			{id:"1.2",name:"公司相册",children:[        		
   			{id:"1.2.1",name:"发布图片",url:"http://china.abbcc.com/product/product_post.htm?tracelog=myali_menu_postproduct", children:[]},
   			{id:"1.2.2",name:"管理图片",url:"http://china.abbcc.com/product/manage.htm?tracelog=myali_menu_magageproduct", children:[]},
   			{id:"1.2.3",name:"管理相册",url:"http://china.abbcc.com/product/manage_product_group.htm?tracelog=myali_menu_magageproduct_ser", children:[]}
    	]},
		{id:"8.8",name:"橱窗布置",children:[
		    {id:"8.2",name:"推荐供应信息",url:"http://athena.china.abbcc.com/mysite/recommend_view.htm?tracelog=myali_menu_myathenacollocation", children:[]},	
			{id:"8.8.2",name:"推荐公司相册",url:"http://athena.china.abbcc.com/mysite/recommend_album_view.htm", children:[]},
			{id:"8.5",name:"网站友情链接",url:"http://athena.china.abbcc.com/mysite/friendLink.htm?tracelog=myali_menu_otherlinks", children:[]},
			{id:"8.8.4",name:"发布公司动态",url:"http://blog.china.abbcc.com/bizblog/article/new.html?from=gsdt&tracelog=myali_menu_publishcompanynews",target:"_blank", children:[]}
		]},
		{id:"8.6",name:"企业在线",children:[
				{id:"8.6.1",name:"企业在线设置",url:"http://athena.china.abbcc.com/mysite/contacts_window_config.htm", children:[]},
				{id:"8.6.2",name:"联系人设置",url:"http://athena.china.abbcc.com/mysite/enterprise_contacts.htm", children:[]},
				{id:"8.6.3",name:"收到的邀请",url:"http://athena.china.abbcc.com/mysite/belonged_enterprises.htm", children:[]}
		]},
				{id:"8.4",name:"招聘中心",children:[
		    {id:"8.3.1",name:"发布招聘信息",url:"http://china.abbcc.com/offer/zhao_pin.htm?tracelog=myali_menu_publishcompanyjobs", children:[]},	
			{id:"8.3.2",name:"管理招聘信息",url:"http://china.abbcc.com/offer/zhao_pin_list.htm?tracelog=myali_menu_managecompanyjobs", children:[]}
		]}
										]
	},
	
	{id:"5",name:"交易管理",children:
		[
			{id:"5.1",name:"我是买家",url: "http://crm.alisoft.com/aso/aso?domain=china&target=china_3&sign_account=yys580&tracelog=myali_menu_buyer" , children:[]},
			{id:"5.2",name:"我是卖家",url: "http://crm.alisoft.com/aso/aso?domain=china&target=china_2&sign_account=yys580&tracelog=myali_menu_seller" , children:[]},
			{id:"5.3",name:"发起订单",url: "http://crm.alisoft.com/aso/aso?domain=china&target=china_4&sign_account=yys580&tracelog=myali_menu_addorder" , children:[]}
		]
	},

	 {id:"9",name:"我的客户管理",url: "http://crm.alisoft.com/aso/aso?domain=china&target=china_1&sign_account=yys580&tracelog=myali_menu_mycrm" ,target:"_blank", children:[]},
	 
	{id:"11",name:"电子商务培训",children:
        [
        	{id:"11.1",name:"全国巡回培训",url:"http://training.abbcc.com/course/list.htm?tracelog=myali_menu_alltrain",target:"_blank",children:[]},
        	{id:"11.2",name:"网上培训课程",url:"http://info.china.abbcc.com/biznews/pages/bizcollege/ali_lesson.html?tracelog=ui_aliacademe_peixun",target:"_blank", children:[]}
        ]
    },
        	
    {id:"12",name:"客服中心",children:
        [
        	{id:"12.1",name:"客服中心",url:"http://info.china.abbcc.com/helpcenter/subject?tracelog=myali_menu_helponline",target:"_blank",children:[]},
        	{id:"12.2",name:"我的疑问和解答",url:"http://china.abbcc.com/misc/feed_back_email_list.htm?tracelog=myali_menu_myquestion",target:"_blank", children:[]}
        ]
    }
	]}; 	
	function AlicnMenu(){
var value = null;
var children = [];
this.bindData = function(data){
value = data;
};
this.draw = function(parentObj){
for(var i=0;i<value.length;i++){
var nodeElement =  window.document.createElement("div");
nodeElement.id = "menu_"+ value[i].id;
nodeElement.className = "menu";
var statelink = window.document.createElement("a");
statelink.id = "statelink_"+value[i].id;
setStatueImg(value[i],statelink,true)
var namelink = window.document.createElement("a");
namelink.id = "menu" + value[i].id;
namelink.className = "linkItem";
if(value[i].children.length!=0){
statelink.href=namelink.href='javascript:menuClick(' + value[i].id + ',1)';
}else{
if(value[i].url&&value[i].url!="#"&&value[i].url!="")namelink.href =value[i].url;
if(value[i].target&&value[i].target=="_blank"&&value[i].target!="")namelink.target ="_blank";
}
namelink.innerHTML = value[i].name;
nodeElement.appendChild(statelink);
nodeElement.appendChild(namelink);
if(value[i].statusIcon){
var floatImg= window.document.createElement("img");
floatImg.src=value[i].statusIcon;
floatImg.alt='新';
floatImg.align="absmiddle";
nodeElement.appendChild(floatImg);
}
parentObj.appendChild(nodeElement);
if(value[i].children.length!=0){
drawChildren(value[i],parentObj);
}
}
};
this.setActivedItem=function(nodeId){
//document.write(document.all.tree1.innerHTML)
if(document.getElementById("statelink_"+nodeId)!=null){
var namelink = document.getElementById("statelink_"+nodeId);
if(namelink.parentNode.className=="menu"){//当前为menu
namelink.parentNode.className="indexmenu";
return;
}
namelink.parentNode.className="selectItem2";
if(namelink.parentNode.parentNode.className=="itembox"){
var nodeId=namelink.parentNode.parentNode.id.replace("children_","")
setStateImg(nodeId,"collapse")
namelink.parentNode.parentNode.style.display="block";
activeMenu = namelink.parentNode.parentNode;
}
if(namelink.parentNode.parentNode.parentNode.className=="itembox"){
namelink.parentNode.parentNode.parentNode.style.display="block";
var nodeId = namelink.parentNode.parentNode.parentNode.id.replace("children_","")
setStateImg(nodeId,"collapse")
activeMenu = namelink.parentNode.parentNode.parentNode;
getObj("menu_"+nodeId).className="activedmenu";//arrow
}
}
}
}
</script>
		<script type="text/javascript">
function treeInit(){

//菜单控件初始化
  var menu = null;
  var parent1 = document.getElementById("tree1");
  menu=new AlicnMenu();
  menu.bindData(roots.menu);
  menu.draw(parent1);

//设置当前高亮菜单
menuClick(1,1);

menu.setActivedItem("0");
  
//菜单高度自适应
  if(document.getElementById("leftmenu")&&document.getElementById("content")&&document.getElementById("content").offsetHeight){
	if(document.getElementById("content").offsetHeight > document.getElementById("leftmenu").offsetHeight+150){
		if(document.all){
			document.getElementById("leftmenu").style.height=document.getElementById("content").offsetHeight;
		}else{
			document.getElementById("leftmenu").setAttribute("style","height:"+document.getElementById("content").offsetHeight+"px")
		}
	}
}

}
</script>
	</head>
	<body>
		<script language="JavaScript" type="text/javascript">
<!--
    var r=Math.random();
    document.write("<img alt=\"\" width=\"1\" height=\"1\" style=\"display:none\" ");
    document.write("src=\"http://dmtracking.abbcc.com/b.jpg?cD0yJnU9ey9jaGluYS5hbGliYWJhLmNvbS9tZW1iZXIvbXlhbGliYWJhLmh0bT9jYT10cnVlfSZtPXtHRVR9JnM9ezIwMH0mcj17aHR0cDovL2NoaW5hLmFsaWJhYmEuY29tL21lbWJlci9zaWduaW4uaHRtfSZhPXtjX210PTN8Y19taWQ9eXlzNTgwfGNfbGlkPXl5czU4MHxjX21zPTJ9JmI9e2Nfd19zaWduZWQ9WXx5eXM1ODA9M30mYz17LX0=&time=1223002449&rand="+r+"\">");
-->
</script>
		<noscript>
			<img alt=""
				src="http://dmtracking.abbcc.com/b.jpg?cD0yJnU9ey9jaGluYS5hbGliYWJhLmNvbS9tZW1iZXIvbXlhbGliYWJhLmh0bT9jYT10cnVlfSZtPXtHRVR9JnM9ezIwMH0mcj17aHR0cDovL2NoaW5hLmFsaWJhYmEuY29tL21lbWJlci9zaWduaW4uaHRtfSZhPXtjX210PTN8Y19taWQ9eXlzNTgwfGNfbGlkPXl5czU4MHxjX21zPTJ9JmI9e2Nfd19zaWduZWQ9WXx5eXM1ODA9M30mYz17LX0=&time=1223002449&rand=1186812813"
				width="1" height="1" style="display:none" />
		</noscript>

		<!--header-->
		<div class="nav">
			<ul>
				<li class="nav_logo">
					<a href="http://china.abbcc.com/"><img
							src="http://i02.c.aliimg.com/images/cn/market/myabbcc/newmyali/logo_myali.gif"
							width="238" height="36" border="0" alt="欢迎登陆阿里助手" /> </a>
				</li>
				<li class="nav_search">
					<!--search/start-->
					<div id="searchBarN">
						<div class="searchT" id="searchBarT">
							<ul>
								<li class="nTab" id="node1" onclick="javascript:doclick(this,1)">
									找产品
								</li>
								<li class="nTab" id="node3" onclick="javascript:doclick(this,3)">
									找公司
								</li>
								<li class="nTab" id="node2" onclick="javascript:doclick(this,2)">
									找买家
								</li>
								<li class="nTab" id="node11"
									onclick="javascript:doclick(this,11)">
									交商友
								</li>
								<li class="nTab" id="node4" onclick="javascript:doclick(this,4)">
									资讯
								</li>
								<li class="nTab" id="node12" style="width:62px;"
									onclick="javascript:doclick(this,12)">
									阿里帮帮
								</li>
							</ul>
						</div>
						<div class="searchC">
							<form method="post" name="searchform" id="searchform"
								action="http://search.china.abbcc.com/search/offer_search.htm"
								onsubmit="return checkform()" target="_blank">
								<input class="textInput" type="text" name="keywords" value=""
									onfocus="this.value=''" size="30" />
								<input value="搜 索" type="submit" />
								<div id="linkKwords" class="linkKwords"></div>
							</form>
						</div>

						<script type="text/javascript">searchInit(1,"search_sellofferlist_","")</script>
					</div>
					<!--search/end-->
				</li>
				<li class="nav_link">
					<a href="http://china.abbcc.com" target="_blank">首页</a>│
					<a href="http://china.abbcc.com/buy/index.html" target="_blank">我要采购</a>│
					<a href="http://china.abbcc.com/sell/index.html" target="_blank">我要销售</a>│
					<a href="http://info.china.abbcc.com/" target="_blank">资讯</a>│
					<a href="http://club.china.abbcc.com/" target="_blank">论坛</a>
				</li>
			</ul>
		</div>
		<div class="nav_stat">
			<span class="nav_left"><img
					src="http://i05.c.aliimg.com/images/cn/market/myabbcc/newmyali/myali_status_icon.gif"
					width="21" height="27" alt="欢迎登陆阿里助手" class="statusImg" /> 欢迎
				yys580 登录阿里助手 [ <a href="http://china.abbcc.com/member/signout.htm">退出</a>
				] </span>
			<span class="nav_right">服务热线:0571-85027110</span>
		</div>
		<!--end/header-->

		<div id="screen">
			<!--content-->
			<div id="contentfloat">
				<div id="content">




					<script type="text/javascript">
<!--
function newCheckAlitalkInstalled(){
  var obj;
  try{
    obj = new ActiveXObject("AlitalkSetup.Install");
  }
  catch(e){
  }
  if (null!=obj){
    delete obj;
    return true;
  } else {
    return false;
  }
}
function NewCheckAlitalkInstalled(){
  return newCheckAlitalkInstalled();
}



function startAlitalk(){
    //判断浏览者是否安装了贸易通
    if (newCheckAlitalkInstalled()){
        window.location = "Alitalk:";
     }else{
        //提示安装贸易通
        window.target="_blank";
        window.open("http://china.abbcc.com/misc/promotion_down.htm");
     }
}
        

    function alitalkVerSupportedSMS() {
    	var is = false;
    	try {
    		var obj = new ActiveXObject("Ali_Check.InfoCheck");
    		//当前版本号 字符格式： 数字.数字.数字字母
    		var mver = obj.GetValueBykey("AliTalkVersion");
    		//当前版本号 字符数组
    		var curver = mver.split(".");
    		//当前版本号 数字数组
    		var intCurver = new Array();
    		for(var i = 0 ; i < curver.length ; i++){
    			intCurver.push(parseInt(curver[i]));
    		}
    		// 大于 version 5.50.00
    		// 最小版本号 数字数组
    		var intMinver = [5,50,0];
    		// 版本号长度
    		var versionLengh = intCurver.length;
    		if(intMinver.length < versionLengh ){
    			versionLengh = intMinver.length;
    		}
    		//比较版本号，从高位往低位比
    		for(var j = 0 ; j < versionLengh ; j++){
    			//主号码比较大，直接返回true
    			if(intCurver[j] > intMinver[j]){
    				is = true
    				break;
    			}else if(intCurver[j] == intMinver[j]){
    				//是最后一个，说明版本号相等
    				if(j == versionLengh-1){
    					is = true ;
    				}
    			}else{
    			//主号码比较小，直接返回false
    				break;
    			}
    		}
    		//原来的版本比较，使用字符串比较 10.20.3 会小于 5.50.00
    		//if (mver >= "5.50.00") {
    		//	is = true;
    		//}
    	}
    	catch (e) {
    	}
    	return is;
    }
-->
</script>
					<table width="100%" border="0" cellpadding="0" cellspacing="0">
						<tr>
							<td height="10">
								贵公司的网站地址为：
								<a href="http://yys580.cn.abbcc.com?tracelog=myabbcc_tp_athena"
									target=_blank>http://yys580.cn.abbcc.com</a>&nbsp;&nbsp;
								<img
									src="http://i01.c.aliimg.com/images/chs/myabbcc/indexpoint.gif"
									width="5" height="9" />
								<a href='#' onClick=this.style.behavior=
									'url(#default#homepage)&tracelog=myabbcc_tp_settop';this.setHomePage('http://yys580.cn.abbcc.com');>点此设置成首页</a>
							</td>
						</tr>
					</table>
					<table width="100%" align="center" cellpadding="0" cellspacing="0"
						class="tx_box" id="inforbox_1055"
						style="display:block;margin-bottom:16px;margin-top:8px">
						<tr>
							<td class="tx_content">
								<p>
									<strong>尊敬的阿里巴巴会员：</strong>
									<br />
									为创造良好和谐的网络环境，应相关部门要求，阿里巴巴将对网站上各类信息进行集中清理，范围包括但不限于供求信息、公司介绍、
									社区文章等，清理重点为各类政治性敏感言论，和国家法律法规所禁止销售或违反公共良俗的各类物品信息等。如给您带来不便敬请见谅！
									<br />
									如您的信息符合以上规范，将不受此次清理的影响，感谢您对阿里巴巴的支持！
								</p>
							</td>
							<td width="10" rowspan="3" valign="top" style="padding:4px">
								<span
									onclick="document.getElementById('inforbox_1055').style.display='none'"
									style="cursor:pointer;"><img
										src="http://i03.c.aliimg.com/images/cn/home/070418/Icon_close01_12x.gif" />
								</span>
							</td>
						</tr>
						<tr>
							<td align="right" class="tx_content">
								阿里巴巴公司
								<br />
								2008年8月4日
							</td>
						</tr>
					</table>
					<script language="javascript" type="text/javascript">
			var inforbox = document.getElementById("inforbox_1055");
			var timer = setTimeout(inforClose,15000);//设置定时器
			inforbox.onmouseover = function(){
				clearTimeout(timer);
				
			}
			inforbox.onmouseout = function(){
				timer = setTimeout(inforClose,15000);
			}
			
			function inforClose(){
			inforbox.style.display = "none";				
			}
		</script>
					<table width="100%" border="0" cellspacing="0" cellpadding="0">
						<tr>
							<td class="smalltitle">
								重要操作提醒
							</td>
						</tr>
					</table>
					<table width="100%" border="0" cellpadding="0" cellspacing="0"
						class="tx_box">
						<tr>
							<td>
								<table width="100%" border="0" align="center" cellpadding="0"
									cellspacing="0">

									<tr id='aliTalk' style="display:none">
										<td align="right" valign="middle">
											<img
												src="http://i05.c.aliimg.com/images/chs/myabbcc/myabbcc_index_13.gif"
												width="22" height="22" align="absmiddle" />
										</td>
										<td height="20" class="tx_title">
											<a
												href="http://alitalk.abbcc.com.cn/?tracelog=myali_maoyitong"
												target="_blank">您还未安装贸易通，它是您网上即时联系的必备工具</a>
											<span class="tx_content"> <input type="button"
													onclick="javascript:window.open('http://alitalk.abbcc.com.cn/?tracelog=myali_maoyitong')"
													class="m" value="立即下载" /> </span>
										</td>
									</tr>
								</table>
								<br />

								<table width="96%" border="0" align="center" cellpadding="0"
									cellspacing="0" style="border:#DDDDDD 1px solid;">
									<tr>
										<td valign="top" class="list_left_box">
											<span class="m">供求信息</span>
										</td>
										<td>
											<table width="100%" border="0" cellpadding="5"
												cellspacing="0">
												<tr>
													<td valign="top" class="list_right_box">
														有
														<font color="#ff0000"><b> 12 </b> </font>条供求信息已过期，无法在网上展示
														<a
															href="http://china.abbcc.com/offer/manage.htm?show_type=expired&tracelog=myabbcc_repost2"
															target="_blank">马上重发</a>
													</td>
												</tr>
												<tr>
													<td valign="top" class="list_right_box">
														您是不是还要采购
														<a
															href="http://china.abbcc.com/offer/dis_post_step_1.htm?no_show_select_page=true&type=BUY&keywords=%C6%FB%D3%CD%BB%FA%C5%E4%BC%FE"
															onmousedown="return aliclick(this,'?tracelog=pro_selloffer_1');">汽油机配件</a>，
														<input type="button" name="gobeginPage12" value="立即发布求购信息"
															onclick="javascript:window.location.href='http://china.abbcc.com/offer/dis_post_step_1.htm?no_show_select_page=true&type=BUY'"
															onmousedown="return aliclick(this,'?tracelog=pro_selloffer_1');" />
														30分钟上百家供应商任您选！
													</td>
												</tr>

											</table>
										</td>
									</tr>


									<tr id="msgPlane" style="display:none">
										<td valign="top" class="list_left_box">
											<span class="m">留言</span>
										</td>
										<td>
											<table width="100%" border="0" cellpadding="5"
												cellspacing="0">
												<tr id="msgPlaneWeb" style="display:none">
													<td valign="top" class="list_right_box">
														<div id="msgWeb"></div>
													</td>
												</tr>
												<tr id="msgPlaneIm" style="display:none">
													<td valign="top" class="list_right_box">
														<div id="msgIm"></div>
													</td>
												</tr>
											</table>
										</td>
									</tr>




									<tr>
										<td valign="top" class="list_left_box">
											<span class="m">诚信通档案</span>
										</td>
										<td>
											<table border="0" cellpadding="5" cellspacing="0"
												width="100%">
												<tbody>
													<tr>
														<td width="100%" class="list_right_box">
															您从未上传过证书，
															<a
																href="http://athena.china.abbcc.com/athena/add_certify.htm?tracelog=alzs_cxpd_zs1"
																target="_blank">立即上传证书</a>，为您
															<a
																href="http://info.china.abbcc.com/helpcenter/tips/s5003008-d5354445.html?tracelog=alzs_cxtzs_help"
																target="_blank">诚信通指数</a> 加分，排名靠前！
															<br />
															税务类证书积
															<font color="#ff0000"><b> 5 </b> </font>分，其他类证书积
															<font color="#ff0000"><b> 2 </b> </font>分
														</td>
													</tr>
												</tbody>
											</table>
										</td>

									</tr>

									<tr>
										<td valign="top" class="list_left_box">
											<span class="m">商机快递</span>
										</td>
										<td>
											<table width="100%" border="0" cellpadding="5"
												cellspacing="0">
												<tr>
													<td valign="top" class="list_right_box">
														您还未指定商机快递接受邮箱，无法第一时间接收最新商机
														<a
															href="http://china.abbcc.com/bizexpress/change_email.htm"
															onmousedown="return aliclick(this,'?tracelog=cpd_bizmyali_modifymail');">立即指定邮箱</a>
													</td>
												</tr>
											</table>
										</td>
									</tr>
									<tr>
										<td valign="top" class="list_left_box">
											<span class="m">Winport 旺铺</span>
										</td>
										<td>
											<table width="100%" cellspacing="0" cellpadding="5"
												border="0">
												<tr>
													<td valign="top" class="list_right_box">
														您还未开通旺铺，开通您将获得顶级域名，企业在线、网站浏览分析等功能，让您的生意更旺！
														<a href="http://china.abbcc.com/domain/abbcc_manage.htm">点此开通旺铺</a>
													</td>
												</tr>
											</table>
										</td>
									</tr>


									<tr>
										<td valign="top" class="list_left_box">
											<span class="m">企业活跃排名</span>
										</td>
										<td>
											<table width="100%" border="0" cellpadding="5"
												cellspacing="0">
												<tr>
													<td valign="top" class="list_right_box">
														您上周在
														<font color="#ff0000">浙江</font><font color="#ff0000">机械及行业设备行业</font>活跃排名为
														<a
															href="http://china.abbcc.com/misc/activeRank/my_list.htm?tracelog=paihang_myabbcc"
															target="_blank">18497</a> ↑ ，还差18447名即可上企业活跃排行榜
														<a
															href="http://page.china.abbcc.com/gongyepin/hypaihang/yure/index.html?tracelog=huoyue_myabbcc"
															target="_blank">查看详情</a>
													</td>
												</tr>
											</table>
										</td>
									</tr>
								</table>
								<br />
							</td>
						</tr>

					</table>

					<!--贸易通离线消息数目查询接口-->
					<script language="javascript" type="text/JavaScript"
						src="http://interface.im.alisoft.com/iminterface/offlinemsg?uid=8TJjC1ll67P0%2BCiz5tGfew%3D%3D&from=chinasite&ver=1.0"></script>
					<script language="JavaScript" type="text/JavaScript">

           //判断浏览者是否安装了贸易通

var aliObj = document.getElementById('aliTalk');
if(aliObj)
{
   if (Alitalk.isInstallAltalk()) 
     {
     document.getElementById('aliTalk').style.display='none';
           }else{
      document.getElementById('aliTalk').style.display='';
     }
}

//根据网站留言数和贸易通留言数确定是否显示对应的提示信息
function showMsgPlane(){
        //alitalkText返回的字符串形如chatMsgCount=%d;notifyMsgCount=%d;
		//取出chatMsgCount
		offlineNum = getOfflineNum();
		websiteNum = 0;
		
		if(!isUnsignedInteger(websiteNum)){
		   websiteNum = 0;
		}else{
		   websiteNum = parseInt(websiteNum);
		}
			
		var webWord = '您在最近3个月有<font color="#ff0000"><b> '+websiteNum+' </b></font>条网站未读留言 <a href="http://china.abbcc.com/message/list_received_message.htm" target="_blank">点此查看</a>';
		var imWord = '截至目前您共有<font color="#ff0000"><b> '+offlineNum+' </b></font>条旺旺未读留言 <a href="javascript:check2()" onmousedown="return aliclick(this,\'?tracelog=cpd_myali_ww\');">点此登录查看</a>';
		
		var msgPlane = document.getElementById('msgPlane');
		var msgPlaneWeb = document.getElementById('msgPlaneWeb');
		var msgWeb = document.getElementById('msgWeb');
		var msgPlaneIm = document.getElementById('msgPlaneIm');
		var msgIm = document.getElementById('msgIm');
		//网站留言数或贸易通留言数>0则显示留言板块
		if(websiteNum>0||offlineNum>0){
		   if(msgPlane){
		   	  msgPlane.style.display='';
		   }
		   //网站留言数>0,显示网站留言条目
		   if(websiteNum>0&&msgPlaneWeb&&msgWeb){
		      msgPlaneWeb.style.display='';
			  msgWeb.innerHTML=webWord;
		   }
		   //贸易通留言数>0,显示贸易通留言条目
		   if(offlineNum>0&&msgPlaneIm&&msgIm){
		      msgPlaneIm.style.display='';
			  msgIm.innerHTML=imWord;
		   }
		}
}

function getOfflineNum(){
        //alitalkText返回的字符串形如chatMsgCount=%d;notifyMsgCount=%d;
		//取出chatMsgCount
		if(typeof(chatMsgCount)=="undefined"){
			chatMsgCount = 0;
		}
		
		if(!isUnsignedInteger(chatMsgCount)){
		   chatMsgCount = 0;
		}
		return chatMsgCount;
}

//检查是否为正整数   
function isUnsignedInteger(strInteger)   {   
         var newPar=/^\d+$/   
         return newPar.test(strInteger);   
}   
}

showMsgPlane();
       </script>
					<br />
					<table width="100%" border="0" cellspacing="0" cellpadding="0">
						<tr>
							<td width="52%" valign="top">



								<table width="98%" border="0" cellspacing="0" cellpadding="0">
									<tr>
										<td class="smalltitle">
											最新功能
										</td>
									</tr>
								</table>
								<table width="98%" border="0" cellpadding="4" cellspacing="0"
									class="tx_box">
									<tr>
										<td align="left">
											<table width="100%" border="0" cellpadding="0"
												cellspacing="0">
												<tr>
													<td height="24" valign="top">
														买家搜索排行榜
														<img
															src="http://i01.c.aliimg.com/images/cn/home/070214/new_l.gif"
															width="16" height="10" border="0" />
													</td>
												</tr>
												<tr>
													<td height="24" valign="top">
														你所在行业：
														<a href="http://top.china.abbcc.com/catalog/14.html"
															onmousedown="return aliclick(this, '?tracelog=myabbcc_tp_toplist');"
															target="_blank">机械及行业设备搜索排行榜</a>
													</td>
												</tr>
												<tr>
													<td height="24" valign="top">
														你所在地区：
														<a href="http://top.china.abbcc.com/area/3478.html"
															onmousedown="return aliclick(this, '?tracelog=myabbcc_tp_toplist');"
															target="_blank">浙江搜索排行榜</a>
													</td>
												</tr>
												<tr>
													<td height="24" valign="top">
														【
														<font color="#ff0000"><b>功能妙用</b> </font>】根据排行榜，赶快调整您的产品关键字，提高信息排名！
													</td>
												</tr>
											</table>
										</td>
									</tr>
								</table>
							</td>
							<td width="48%" valign="top">
								<table width="100%" border="0" cellspacing="0" cellpadding="0">
									<tr>
										<td class="smalltitle">
											最新活动
										</td>
									</tr>
								</table>
								<table width="100%" border="0" cellpadding="4" cellspacing="0"
									class="tx_box">
									<tr>
										<td align="left">
											<table width="100%" border="0" cellpadding="0"
												cellspacing="0">
												<tr>
													<td height="24" valign="top">
														·
														<a
															href="http://page.china.abbcc.com/winport.html?tracelog=ad_myabbcc_wz02_wp"
															target="_blank">【闯过五关，送980元……】</a>
														<img
															src="http://i04.c.aliimg.com/images/cn/home/070214/hot_l.gif"
															width="16" height="10" border="0" />
													</td>
												</tr>
												<tr>
													<td height="24" valign="top">
														·
														<a
															href="http://club.china.abbcc.com/forum/thread/view/50_25422116_.html?tracelog=ad_myabbcc_wz02_n"
															target="_blank">揭密：各地骗局大曝光</a>
														<img
															src="http://i04.c.aliimg.com/images/cn/home/070214/hot_l.gif"
															width="16" height="10" border="0" />
													</td>
												</tr>
												<tr>
													<td height="24" valign="top">
														·
														<a
															href="http://page.china.abbcc.com/promotion/wangjiaohui/200809/index.html?tracelog=ad_myabbcc_wz04_wjh"
															target="_blank">最后一周抢订单，赶快行动！</a>
													</td>
												</tr>
												<tr>
													<td height="24" valign="top">
														·
														<a
															href="http://page.china.abbcc.com/winport_v4_4.html?tracelog=ad_myabbcc_wz04_wp"
															target="_blank">买家最爱优质旺铺，快来学习！</a>
													</td>
												</tr>
											</table>
										</td>
									</tr>
								</table>

							</td>
						</tr>
					</table>
					<br />

					<!--banner/login after 468x60_myali-->

					<a href="http://china.abbcc.com/member/my_bidding.htm"
						target="_blank"><img
							src="http://i01.c.aliimg.com/images/myabbcc/560x80_danai2.gif"
							width="560" height="80" border="0" /> </a>
					<br />
					<table width="100%" border="0" cellspacing="0" cellpadding="2">
						<tr>
							<td>
								<iframe frameborder="0" height="140" width="100%" scrolling="no"
									src='http://athena.china.abbcc.com/athena/trust_homepage.htm?iframe_delete=true'></iframe>
							</td>
						</tr>
					</table>
					<br />
					<table width="100%" border="0" cellspacing="0" cellpadding="0">
						<tr>
							<td width="90" height="90" align="center"
								background="http://i05.c.aliimg.com/images/chs/myabbcc/myabbcc_index_02.gif">
								<b>服务专区</b>
							</td>
							<td align="left"
								background="http://i05.c.aliimg.com/images/chs/myabbcc/myabbcc_index_02.gif">
								<table width="400" border="0" cellspacing="0" cellpadding="0">
									<tr align="middle">
										<td>
											<a
												href="http://athena.china.abbcc.com/keyword/introduction.htm?Bidding=myabbccindex"
												target="_blank"><img
													src="http://i02.c.aliimg.com/images/chs/myabbcc/myabbcc_index_03.gif"
													width="66" height="66" border="0" /> </a>
										</td>
										<td>
											<a
												href="http://page.china.abbcc.com/safetycenter.html?tracelog=cxpd_safetycenter_sy"
												target="_blank"><img
													src="http://i05.c.aliimg.com/images/chs/myabbcc/myabbcc_index_04.gif"
													width="66" height="66" border="0" /> </a>
										</td>
										<td>
											<a
												href="http://club.china.abbcc.com/forum/iask/index.html?tracelog=myabbcc_tp_iask"
												target="_blank"><img
													src="http://i02.c.aliimg.com/images/chs/myabbcc/myabbcc_index_05.gif"
													width="66" height="66" border="0" /> </a>
										</td>
										<td>
											<a
												href="http://china.abbcc.com/misc/credit_use.htm?tracelog=myabbcc_tp_credituse"
												target="_blank"><img
													src="http://i05.c.aliimg.com/images/chs/myabbcc/myabbcc_index_06.gif"
													width="66" height="66" border="0" /> </a>
										</td>
										<td>
											<a
												href="http://china.abbcc.com//member/legalese/agreement.htm?tracelog=myabbcc_tp_agreement"
												target="_blank"><img
													src="http://i02.c.aliimg.com/images/chs/myabbcc/myabbcc_index_07.gif"
													width="66" height="66" border="0" /> </a>
										</td>
										<td>
											<a
												href="http://info.china.abbcc.com/list/bsd/index.html?tracelog=myabbcc_tp_bsd"
												target="_blank"><img
													src="http://i01.c.aliimg.com/images/cn/member/12322_60x60_0709_damaijia_end.gif"
													border="0" /> </a>
										</td>
									</tr>
								</table>
							</td>
						</tr>
						<tr>
							<td width="100%" colspan="2">
								<hr size="1" />
							</td>
						</tr>
					</table>
					<br />
					<div id="popDiv"
						style="left: 0px; visibility: hidden;position: absolute; top: 0px;width:248px;height:180px;">
						<div id="float_box" onmouseover="overPopDiv()"
							onmouseout="outPopDiv()">

							<!--pop start-->
							<table width="240" border="0" cellpadding="0" cellspacing="0"
								bgcolor="dbebfd" style="border:#2867ab 1px solid;">
								<tr>
									<td>
										<div style="padding-top:5px; "></div>
										<table width="227" height="133" border="0" align="center"
											cellpadding="4" cellspacing="0"
											background="http://i03.c.aliimg.com/images/cn/home/060516/middle_bg.gif">
											<tr>
												<td width="199" class="lh13 m">
													<font color="#FF0000">[免费展示，点击付费]</font>
												</td>
											</tr>
											<tr>
												<td valign="top" class="c">
													阿里巴巴
													<font color="#FF0000">点击推广服务</font>全新上线，免费展示、效果公开，获得点击才收费，现在购买还有三重豪礼赠送！
													<br />
													<table width="98%" border="0" cellspacing="0"
														cellpadding="0" style="margin-top:3px;">
														<tr>
															<td align="right">
																<img
																	src="http://i01.c.aliimg.com/images/chs/myabbcc/indexpoint.gif"
																	width="5" height="9" border="0" />
																<a
																	href="http://china.abbcc.com/member/my_bidding.htm?tracelog=p4p_myali_popup"
																	target="_blank" class="lh13 m">马上参加</a>
															</td>
														</tr>
													</table>
												</td>
											</tr>
										</table>
										<div style="padding-top:5px; "></div>
									</td>
								</tr>
							</table>
							<!--pop end-->
						</div>
					</div>
					<script language="javascript" type="text/javascript"
						src="http://style.china.abbcc.com/js/list/listpop.js?t=0716"></script>
					<script type="text/javascript">
	if(getMsgCookie("listShowMsgCookie")==null && document.all)
  		getMsg();
</script>


				</div>
			</div>
			<!--end/content-->
			<!--left-->

			<!--菜单数据初始化-->


			<div id="leftmenu">
				<!--menu-->
				<div id="tree1"></div>
				<script type="text/javascript">treeInit();</script>
				<!--end/menu-->
				<div class="suggest">
					对阿里助手有意见或建议？
					<br />
					<a
						href="http://china.abbcc.com/misc/feed_back_email_list.htm?locationFlag=up"
						target="_blank"><img
							src="http://i03.c.aliimg.com/news/upload/0831/wytw_new_1189149999849.gif "
							width="160" height="80" border="0" /> </a>
				</div>
			</div>
			<!--end/left-->
		</div>

		<!--footer-->
		<!--标准底部 start-->
		<link media="screen" type="text/css"
			href="http://style.china.abbcc.com/css/common/footer.css"
			rev="stylesheet" rel="stylesheet" />
		<div class="footerBox">
			<div class="footer">
				<ul>
					<li>
						阿里巴巴版权所有 1999-2008
						<a
							href="http://info.china.abbcc.com/biznews/pages/alihome/js_zzq.html">著作权与商标声明</a>
					</li>
					<li>
						<a
							href="http://info.china.abbcc.com/biznews/pages/alihome/js_fl.html">法律声明</a>
					</li>
					<li>
						<a
							href="http://info.china.abbcc.com/biznews/pages/alihome/js_fw.html">服务条款</a>
					</li>
					<li>
						<a
							href="http://info.china.abbcc.com/biznews/pages/alihome/js_ys.html">隐私声明</a>
					</li>
					<li>
						<a href="http://page.china.abbcc.com/shtml/about/ali_china8.shtml"
							target="_blank">联系我们</a>
					</li>
					<li>
						<a href="http://page.china.abbcc.com/sitemap/sitemap.html">网站地图</a>
					</li>
					<li class="no_border">
						<a href="http://tiyan.china.abbcc.com/">产品体验中心</a>
					</li>
				</ul>
				<ul>
					<li class="no_border sli">
						<a href="http://page.china.abbcc.com/shtml/about/ali_group1.shtml"
							target="_blank">阿里巴巴集团</a> ：阿里巴巴网络&nbsp;-&nbsp;
						<a href="http://china.abbcc.com" target="_blank">中国站</a>
					</li>
					<li class="no_border sli">
						<a href="http://www.abbcc.com/" target="_blank">国际站</a>
					</li class="no_border">
					<li class="sli2">
						<a href="http://www.abbcc.co.jp" target="_blank">日文站</a>
					</li>
					<li>
						<a href="http://www.taobao.com" target="_blank">淘宝站</a>
					</li>
					<li>
						<a href="http://www.alipay.com" target="_blank">支付宝</a>
					</li>
					<li>
						<a href="http://www.yahoo.com.cn/" target="_blank">中国雅虎</a>
					</li>
					<li>
						<a href="http://www.koubei.com/" target="_blank">雅虎口碑网</a>
					</li>
					<li>
						<a href="http://www.alisoft.com" target="_blank">阿里软件</a>
					</li>
					<li class="no_border">
						<a href="http://www.alimama.com/" target="_blank">阿里妈妈</a>
					</li>
				</ul>
			</div>
			<div>
				<font color="#ffffff">exodus_web25 </font>
			</div>

		</div>
		<!--标准底部 end-->

		<!--广告压力测试-->
		<iframe
			src="http://cn2.adserver.yahoo.com/a?f=2121040045&p=cnabbcc&l=AM2"
			width=1 height=1></iframe>
	</body>
</html>
