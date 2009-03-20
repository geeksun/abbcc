var t;
t=outlookbar.addtitle('会员管理');
outlookbar.additem('新注册用户',t,'../../default.do');
outlookbar.additem('待审普通会员',t,'../admin/hygl/nocheck_pt.jsp');
outlookbar.additem('待审未付费会员',t,'../admin/hygl/nocheck_nocharge.jsp');
outlookbar.additem('已收费会员',t,'../admin/hygl/yes_charge.jsp');

t=outlookbar.addtitle('会员客服');
outlookbar.additem('会员客服',t,'../admin/hykf/default.jsp');
outlookbar.additem('邮件提醒',t,'../admin/hykf/mail_jack.jsp');
outlookbar.additem('消息群发',t,'../admin/hykf/message_q.jsp');
outlookbar.additem('意见建议',t,'../admin/hykf/sugguest.jsp');
outlookbar.additem('邮件列表',t,'../admin/hykf/default.jsp');

t=outlookbar.addtitle('商业机会');
outlookbar.additem('商业机会',t,'../admin/syjh/default.jsp');
outlookbar.additem('已审商业机会',t,'../admin/syjh/yescheck_syjh.jsp');

t=outlookbar.addtitle('产品管理');
outlookbar.additem('待审产品',t,'../admin/product/default.jsp');

t=outlookbar.addtitle('人才市场');
outlookbar.additem('招聘信息',t,'../admin/rcsc/default.jsp');

t=outlookbar.addtitle('网站系统');
outlookbar.additem('管理员帐号',t,'../admin/system/default.jsp');
outlookbar.additem('网站基本信息',t,'../admin/system/system_info.jsp');

t=outlookbar.addtitle('退出系统');
outlookbar.additem('<br><img src=exit.ico border=0><br>退出系统',t,'../admin/exitsystem.jsp');
