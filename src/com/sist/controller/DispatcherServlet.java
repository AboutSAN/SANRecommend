package com.sist.controller;

import java.io.*;
import java.lang.reflect.Method;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
/*
 *    DispatcherServlet
 *    =================
 *      web.xml (XML로 등록된 패키지)
 *    ==>HandlerMapping 전송 : XML 파싱 
 *    ==>파싱된 XML코드를 
 *    ==>FileChange로 전송 : class이름 만든다 
 */
import java.util.*;
public class DispatcherServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
    private ArrayList<String> list=
    		  new ArrayList<String>();
	public void init(ServletConfig config) throws ServletException {
		// TODO Auto-generated method stub 
		String path=config.getInitParameter("contextConfigLocation");
		/*
		 *   <init-param>
		      <param-name>contextConfigLocation</param-name>
		      <param-value>C:\webDev\webStudy2\MVCIncudeProject\WebContent\WEB-INF\application.xml</param-value>
		    </init-param>
		    map형식 : key,value ==> 값을 얻기:key를 보낸다 
		    
		    
		    XML ==> 파싱 
		 */
		HandlerMapping hm=new HandlerMapping(path);
		FileChange fc=new FileChange();
		list=fc.componentScan(hm.list);
		
		for(String s:list)
		{
			System.out.println("s="+s);
		}
	}

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		try
		{
			String cmd=request.getRequestURI();
			// list.do
			/*
			 *   com.sist.music.model.BoardModel
			 */
			cmd=cmd.substring(request.getContextPath().length()+1);
			for(String strCls:list)
			{
				Class cls=Class.forName(strCls);
				Object obj=cls.newInstance();
				Method[] methods=cls.getDeclaredMethods();
				for(Method m:methods)
				{
					RequestMapping rm=
							m.getAnnotation(RequestMapping.class);
					if(rm.value().equals(cmd))
					{
						String jsp=(String)m.invoke(obj, request,response);
						if(jsp.startsWith("redirect"))
						{
							String str=jsp.substring(jsp.indexOf(":")+1);
							response.sendRedirect(str);
						}
						else
						{
						  RequestDispatcher rd=request.getRequestDispatcher(jsp);
						  rd.forward(request, response);
						}
						return;
					}
				}
			}
		}catch(Exception ex)
		{
			System.out.println(ex.getMessage());
		}
	}

}







