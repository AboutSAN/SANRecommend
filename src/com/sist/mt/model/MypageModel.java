package com.sist.mt.model;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.sist.controller.RequestMapping;

public class MypageModel {
	@RequestMapping("GoMountain/mypage.do")
	public String GoMountain_gallery(HttpServletRequest req,HttpServletResponse res)
	{
		req.setAttribute("change", "../member/mypage.jsp");
		return "main/main.jsp";
	}
}
