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
			// �½�һ��SmartUpload����
			SmartUpload su = new SmartUpload();
			// �ϴ���ʼ��
			su.initialize(pageContext);
			// �趨�ϴ�����
			// 1.����ÿ���ϴ��ļ�����󳤶ȡ�
			su.setMaxFileSize(2000000);
			// 2.�������ϴ����ݵĳ��ȡ�
			//su.setTotalMaxFileSize(5000000);
			// 3.�趨�����ϴ����ļ���ͨ����չ�����ƣ�,����jpg,gif,jpeg,bmp,txt,doc,zip,rar,xls,chm,swf,wma,mp3�ļ���
			//su.setAllowedFilesList("jpg,gif,jpeg");
			// 4.�趨��ֹ�ϴ����ļ���ͨ����չ�����ƣ�,��ֹ�ϴ�����exe,bat,jsp,htm,html��չ�����ļ���û����չ�����ļ���
			//su.setDeniedFilesList("exe,bat,jsp,htm,html,,");
			// �ϴ��ļ�
			try
			{
				su.upload();
			}
			catch(Exception e)
			{
				out.println("<script>alert('�ϴ����ļ���С������Χ�����飡');history.back()</script>");
				return;
			}
				int locktopic=0;
				String MYsql="";
				DBConnect MYdbc = new DBConnect();			
				ResultSet MYrs=null;
				
				long currentTime=System.currentTimeMillis();
	
					//��ȡ������
					String time=su.getRequest().getParameter("currentTime");
					String username=su.getRequest().getParameter("userName");		//�û�ע����
					if(username!=null && (!(username.equals(""))))
						pusername = new String(username.getBytes("GBK"),"ISO-8859-1");	//�û���ת��
					
					//ȡ����������
					String content=su.getRequest().getParameter("EditorDefault");			
					//���������ݽ��� handle
					content=content.replaceAll("&nbsp;"," ");
					//&apos������
					content=content.replaceAll("'","&apos;");
					
					Hashtable requestParas=null;
						requestParas=new Hashtable();
						//------�Ž�Hashtable
       					requestParas.put("content",content);					//��������
       				
       				DTConvert filter=new DTConvert();					//�ж�IP,ID
     				
     						if(h==1)
							{
							String sql="";
							DBConnect dbc = new DBConnect();			
							ResultSet rs=null;
							try
							{
									com.jspsmart.upload.File file = su.getFiles().getFile(0);
									int fileSize=file.getSize();			//ȡ���ļ�����
		
									if(fileSize!=0)
									{
										//if(fileSize > 2000000) 			//�ж��ļ���С�������򲻱���(2M)
										//	FileFlag=1;
		
										String fileExt=file.getFileExt();	//ȡ���ļ���չ��(jpg,gif,jpeg,bmp,txt,doc,zip,rar,xls,chm,swf,wma,mp3)

										if(!(fileExt.equalsIgnoreCase("jpg")) && !(fileExt.equalsIgnoreCase("gif")) && !(fileExt.equalsIgnoreCase("jpeg")) && !(fileExt.equalsIgnoreCase("bmp")))		//�ж��ļ����ͣ������򲻱���
											FileFlag=2;
										//if(FileFlag==1)
    										//{
    										//	out.println("<script>alert('���ϴ����ļ���С�����⣡');history.back()</script>");
    										//}
    										//else 
    										if(FileFlag==2)
    										{
    											out.println("<script>alert('���ϴ����ļ���ʽ�����⣡');history.back()</script>");
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
    											String TopicFileName=year+month+day+hour+minute+second+millisecond;			//ͼƬ����
			
											String fileName=file.getFileName();				//ȡ���ļ���
											String realPath=request.getRealPath("/");		//����ָ��·��
											String UserHead=TopicFileName+"."+fileExt;		//���¶���ͼƬ�ļ���
		
											String FilePath="";					//�ϴ��ļ���·��
											if((fileExt.equalsIgnoreCase("jpg")) || (fileExt.equalsIgnoreCase("gif")) || (fileExt.equalsIgnoreCase("jpeg")) || (fileExt.equalsIgnoreCase("bmp")))
												FilePath="Upload/Image/"+tradeTemp+"/";
											if((fileExt.equalsIgnoreCase("xls")) || (fileExt.equalsIgnoreCase("doc")) || (fileExt.equalsIgnoreCase("rar")) || (fileExt.equalsIgnoreCase("zip")) || (fileExt.equalsIgnoreCase("txt")) || (fileExt.equalsIgnoreCase("chm")) || (fileExt.equalsIgnoreCase("swf")) || (fileExt.equalsIgnoreCase("wma")) || (fileExt.equalsIgnoreCase("mp3")))
												FilePath="Upload/File/"+tradeTemp+"/";
											// ��浽����ϵͳ�ĸ�Ŀ¼Ϊ�ļ���Ŀ¼��Ŀ¼��
											file.saveAs(realPath+FilePath+UserHead,su.SAVE_PHYSICAL);
											//�ϴ�ͼƬ���--------------------------------
		
    											//�Ž�HashTable
    											String fileUrl = FilePath + UserHead;				//�ļ�·��
        										requestParas.put("fileUrl",fileUrl);				//�ļ�·��
        										requestParas.put("fileName",fileName);				//�ļ�����
        										requestParas.put("FileType",fileExt);				//�ļ�����
        									
										}
									}
									file=null;
								}
								Forum theForum=ForumFactory.getForum(forumID,trade);
							
								pageno pageno1=new pageno();
								String pageno=pageno1.hcbbs_taxis(trade,forumIDTemp,rootID);
								
								//���������Ϣ
								rootID = Forum.addMSG1(requestParas,trade,bakflag);
			  		
								//����ʱ��
								if(!bakflag)
								{
								sql="update `"+trade+"bbs1` set Follor='"+UserName+"',FollorNick='"+NickName+"',FollorDate=now() where AnnounceID="+rootID+" ";
								dbc.executeUpdate(sql);
								}
								//END����ʱ��
								
								stats=theForum.getForumType()+"�ظ��ɹ�!";
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
 		      						
					//------------���������
        	StringProcess s=new StringProcess(); //���������
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
							out.println("<script>alert('��Ĳ������������ԣ�');history.back()</script>");
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
