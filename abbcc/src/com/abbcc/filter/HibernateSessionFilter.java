package com.abbcc.filter;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;

import com.abbcc.factory.HibernateSessionFactory;

/**
 * @author geeksun
 *	����session�Ĺر�
 */
public class HibernateSessionFilter implements Filter {
	private static final Log log = LogFactory.getLog(HibernateSessionFilter.class);  
	   
    public void init(FilterConfig filterConfig) throws ServletException {
		System.out.println("HibernateSessionFilter is start") ;
	} 

    public void doFilter(ServletRequest arg0, ServletResponse arg1, FilterChain chain) throws IOException, ServletException {  
      log.debug("HibernateSessionFilter start");  
      
      try{  
          //request ֮ǰҪ����Ĵ���
          chain.doFilter(arg0, arg1);     
         //response֮��ҪҪ����Ĵ���    
         
      }catch (Exception e) {  
          e.printStackTrace();             
      }   finally{          
          HibernateSessionFactory.closeSession();             
      }  
  }
   
   public void destroy() {     
     System.out.println("HibernateSessionFilter is end") ;
   }  
}
