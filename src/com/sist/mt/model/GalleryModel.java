package com.sist.mt.model;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.sist.controller.RequestMapping;

public class GalleryModel {
	@RequestMapping("GoMountain/gallery.do")
	public String GoMountain_gallery(HttpServletRequest req,HttpServletResponse res)
	{
		req.setAttribute("change", "../gallery/gallery.jsp");
		return "main/main.jsp";
	}
}
