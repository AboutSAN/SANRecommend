package com.sist.mt.model;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.sist.controller.RequestMapping;

public class QnaModel {
	@RequestMapping("GoMountain/qna.do")
	public String GoMountain_gallery(HttpServletRequest req,HttpServletResponse res)
	{
		req.setAttribute("change", "../qna/qnaboard.jsp");
		return "main/main.jsp";
	}
}
