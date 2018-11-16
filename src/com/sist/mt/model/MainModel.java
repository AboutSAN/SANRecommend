package com.sist.mt.model;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.sist.controller.RequestMapping;

public class MainModel {
	@RequestMapping("GoMountain/main.do")
	public String GoMountain_gallery(HttpServletRequest req,HttpServletResponse res)
	{
		req.setAttribute("change", "content.jsp");
		return "main/main.jsp";
	}
}
