package com.sist.mt.model;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.sist.controller.RequestMapping;

public class LoginJoinModel {
	@RequestMapping("GoMountain/loginjoin.do")
	public String GoMountain_gallery(HttpServletRequest req,HttpServletResponse res)
	{
		req.setAttribute("change", "../member/login.jsp");
		return "main/main.jsp";
	}
}
