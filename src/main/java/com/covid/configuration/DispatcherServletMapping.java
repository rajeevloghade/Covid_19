package com.covid.configuration;

import org.springframework.web.servlet.support.AbstractAnnotationConfigDispatcherServletInitializer;

//This is going to replace the DispatcherServlet mapping in web.xml
public class DispatcherServletMapping extends AbstractAnnotationConfigDispatcherServletInitializer {

	@Override
	protected Class<?>[] getRootConfigClasses() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	protected Class<?>[] getServletConfigClasses() {
		return new Class[] { ConfigFile.class };
	}

	@Override
	protected String[] getServletMappings() {
		return new String[] { "/" };
	}
}
