package com.abbcc.servlet;

import javax.servlet.ServletConfig;
import javax.servlet.ServletContext;
import javax.servlet.http.HttpServlet;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.context.ApplicationContext;
import org.springframework.web.context.support.WebApplicationContextUtils;

public class StartServlet extends HttpServlet {
	private   Log log = LogFactory.getLog(StartServlet.class);

	private static ApplicationContext context;

	public void init(ServletConfig config) {
		this.initContext(config.getServletContext());
	}

	private void initContext(ServletContext servlet) {

		context = WebApplicationContextUtils.getWebApplicationContext(servlet);

	}

	public static Object getBean(String name) {
		 
		return context.getBean(name);
	}
}
