<%@ page language="java" contentType="text/html;charset=GBK" %>
<%@ page import = "net.acai.forum.util.*,java.sql.*,javax.servlet.*,javax.servlet.http.*,java.util.Vector,net.acai.forum.admin.*,net.acai.forum.admin.*"%>
<%@ page import="com.jspsmart.upload.*"%>
<%@ page import="usersystestingclient.*"%>
<%@ page import="java.util.Hashtable"%>
<%@ page import="net.acai.util.DTConvert" %>
<%@ page import="net.acai.database.DBConnect"%>
<%@ page import="net.acai.forum.UserTrack"%>
<%@ page import="net.acai.forum.Forum"%>
<%@ page import="net.acai.forum.pageno"%>
<%@ page import="net.acai.forum.ForumMSG"%>
<%@ page import="FileSearch.*"%>
<%@ page import="com.madeinchina.rss.*" %>
<%@ page import="com.madeinchina.bbs.*"%>
<%@ page import="com.yaphon.sso.bean.LoginBean" %>
<link rel=stylesheet type=text/css href=forum.css>
<%
	String errMsg="";
	try
	{
		String strbakflag=null;
		boolean bakflag=false;
		{		
			// 新建一个SmartUpload对象
			SmartUpload su = new SmartUpload();
			// 上传初始化
			su.initialize(pageContext);
			// 设定上传限制
			// 1.限制每个上传文件的最大长度。
			su.setMaxFileSize(2000000);
			// 2.限制总上传数据的长度。
			//su.setTotalMaxFileSize(5000000);
			// 3.设定允许上传的文件（通过扩展名限制）,允许jpg,gif,jpeg,bmp,txt,doc,zip,rar,xls,chm,swf,wma,mp3文件。
			//su.setAllowedFilesList("jpg,gif,jpeg");
			// 4.设定禁止上传的文件（通过扩展名限制）,禁止上传带有exe,bat,jsp,htm,html扩展名的文件和没有扩展名的文件。
			//su.setDeniedFilesList("exe,bat,jsp,htm,html,,");
			// 上传文件
			try
			{
				su.upload();
			}
			catch(Exception e)
			{
				out.println("<script>alert('上传的文件大小超出范围，请检查！');history.back()</script>");
				return;
			}
				int locktopic=0;
				String MYsql="";
				DBConnect MYdbc = new DBConnect();			
				ResultSet MYrs=null;
				
				long currentTime=System.currentTimeMillis();
	
					//获取表单参数
					String time=su.getRequest().getParameter("currentTime");
					String username=su.getRequest().getParameter("userName");		//用户注册名
					if(username!=null && (!(username.equals(""))))
						pusername = new String(username.getBytes("GBK"),"ISO-8859-1");	//用户名转码
					
					//取得帖子内容
					String content=su.getRequest().getParameter("EditorDefault");			
					//对帖子内容进行 handle
					content=content.replaceAll("&nbsp;"," ");
					//&apos单引号
					content=content.replaceAll("'","&apos;");
					
					Hashtable requestParas=null;
						requestParas=new Hashtable();
						//------放进Hashtable
       					requestParas.put("content",content);					//帖子内容
       				
       				DTConvert filter=new DTConvert();					//判断IP,ID
     				
     						if(h==1)
							{
							String sql="";
							DBConnect dbc = new DBConnect();			
							ResultSet rs=null;
							try
							{
									com.jspsmart.upload.File file = su.getFiles().getFile(0);
									int fileSize=file.getSize();			//取得文件长度
		
									if(fileSize!=0)
									{
										//if(fileSize > 2000000) 			//判断文件大小，超出则不保存(2M)
										//	FileFlag=1;
		
										String fileExt=file.getFileExt();	//取得文件扩展名(jpg,gif,jpeg,bmp,txt,doc,zip,rar,xls,chm,swf,wma,mp3)

										if(!(fileExt.equalsIgnoreCase("jpg")) && !(fileExt.equalsIgnoreCase("gif")) && !(fileExt.equalsIgnoreCase("jpeg")) && !(fileExt.equalsIgnoreCase("bmp")))		//判断文件类型，不符则不保存
											FileFlag=2;
										//if(FileFlag==1)
    										//{
    										//	out.println("<script>alert('你上传的文件大小有问题！');history.back()</script>");
    										//}
    										//else 
    										if(FileFlag==2)
    										{
    											out.println("<script>alert('你上传的文件格式有问题！');history.back()</script>");
    										}
    										else
    										{
    											java.util.GregorianCalendar clandar = new java.util.GregorianCalendar();
    											String year = String.valueOf(clandar.get(clandar.YEAR));
    											String month = String.valueOf(clandar.get(clandar.MONTH)+1);
    											String day = String.valueOf(clandar.get(clandar.DATE));
    											String hour = String.valueOf(clandar.get(clandar.HOUR));
    											String minute = String.valueOf(clandar.get(clandar.MINUTE));
    											String second = String.valueOf(clandar.get(clandar.SECOND));
    											String millisecond = String.valueOf(clandar.get(clandar.MILLISECOND));
    											String TopicFileName=year+month+day+hour+minute+second+millisecond;			//图片名字
			
											String fileName=file.getFileName();				//取得文件名
											String realPath=request.getRealPath("/");		//重新指定路径
											String UserHead=TopicFileName+"."+fileExt;		//重新定义图片文件名
		
											String FilePath="";					//上传文件的路径
											if((fileExt.equalsIgnoreCase("jpg")) || (fileExt.equalsIgnoreCase("gif")) || (fileExt.equalsIgnoreCase("jpeg")) || (fileExt.equalsIgnoreCase("bmp")))
												FilePath="Upload/Image/"+tradeTemp+"/";
											if((fileExt.equalsIgnoreCase("xls")) || (fileExt.equalsIgnoreCase("doc")) || (fileExt.equalsIgnoreCase("rar")) || (fileExt.equalsIgnoreCase("zip")) || (fileExt.equalsIgnoreCase("txt")) || (fileExt.equalsIgnoreCase("chm")) || (fileExt.equalsIgnoreCase("swf")) || (fileExt.equalsIgnoreCase("wma")) || (fileExt.equalsIgnoreCase("mp3")))
												FilePath="Upload/File/"+tradeTemp+"/";
											// 另存到操作系统的根目录为文件根目录的目录下
											file.saveAs(realPath+FilePath+UserHead,su.SAVE_PHYSICAL);
											//上传图片完毕--------------------------------
		
    											//放进HashTable
    											String fileUrl = FilePath + UserHead;				//文件路径
        										requestParas.put("fileUrl",fileUrl);				//文件路径
        										requestParas.put("fileName",fileName);				//文件名字
        										requestParas.put("FileType",fileExt);				//文件类型
        									
										}
									}
									file=null;
								}
								Forum theForum=ForumFactory.getForum(forumID,trade);
							
								pageno pageno1=new pageno();
								String pageno=pageno1.hcbbs_taxis(trade,forumIDTemp,rootID);
								
								//添加帖子信息
								rootID = Forum.addMSG1(requestParas,trade,bakflag);
			  		
								//更新时间
								if(!bakflag)
								{
								sql="update `"+trade+"bbs1` set Follor='"+UserName+"',FollorNick='"+NickName+"',FollorDate=now() where AnnounceID="+rootID+" ";
								dbc.executeUpdate(sql);
								}
								//END更新时间
								
								stats=theForum.getForumType()+"回复成功!";
								out.println(headLine(forumID,forumName,forumLogo,theForum.getForumType(),2,stats,trade));
								
								// add by wanglaibao
								try{
									DBConnect dbconn_inner = new DBConnect();			
									ResultSet rs_inner=null;
									String sql_Inner="select innerLetterState from "+trade+"bbs1 where AnnounceID=" +rootID;
									rs_inner=dbconn_inner.executeQuery(sql_Inner);
									if(rs_inner.next()){
										int innerLetterState=rs_inner.getInt("innerLetterState");
										if(innerLetterState==1){
											ForumMSG msg=new ForumMSG();
											msg.addInnerLetter(trade,username,Long.parseLong(rootID));
										}
									}
								}catch(Exception e){
								
								}
								
								/*String Urlend="http://"+mainservlet+"/mainServlet?areaid="+trade+"&operid=1&postrootid="+rootID+"&userid="+tempUserId+"&broadid="+forumIDTemp+"&spagetype=0&pageno="+pageno+"";
      								URL u = new URL(Urlend);
      															
       								InputStream is = u.openStream ();
	
 		      						is.close ();*/
 		      						
					//------------生成随机数
        	StringProcess s=new StringProcess(); //生成随机数
        	String s1=s.produceUniqueRandomString();
        	String s2=s.produceUniqueRandomString();
        	String s3=s.produceUniqueRandomString();
	        session.setAttribute("remoteIp",ip);	
	        session.setAttribute("remoteUser",pusername);	
	        session.setAttribute("currentTime",String.valueOf(currentTime));
					//-------------END----------	
								
						
		%>
		<%
		theForum=null;
							}	
							catch(Exception e2)
							{
								e2.printStackTrace();				
							}
							finally
							{
					      			if( rs != null )
					      			{
			  			  			rs.close();
			  			  			rs=null;
			  					}
		  					if(dbc!=null)
		  					{
		  						dbc.close();
		  						dbc=null;
		  					}
							sql="";
							}    
						}
     						else
     						{
							out.println("<script>alert('你的操作有误，请重试！');history.back()</script>");
     						}
					}
  				su=null;
  			}
  			else
  			{
  				response.sendRedirect("error.jsp");
  			}
    }
	catch(Exception ee)
	{
		ee.printStackTrace();
    	errMsg=ee.getMessage();
	}
%>
