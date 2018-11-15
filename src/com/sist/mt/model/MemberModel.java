package com.sist.mt.model;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.sist.controller.RequestMapping;
import com.sist.mt.member.MemberDAO;
import com.sist.mt.member.ZipcodeVO;

import java.util.*;
public class MemberModel {
  /*@RequestMapping("member/join.do")
  public String member_join(HttpServletRequest req,HttpServletResponse res)
  {
	  List<String> nList=NaverDaumManager.naverFindData();
	  req.setAttribute("nList", nList);
	  
	  List<String> dList=NaverDaumManager.daumFindData();
	  req.setAttribute("dList", dList);
	  
	  req.setAttribute("main_jsp","../member/join.jsp");
	  return "../main/main.jsp";
  }*/
  @RequestMapping("GoMountain/loginjoin.do")
  public String member_login(HttpServletRequest req,HttpServletResponse res)
  {
	  return "../member/login.jsp";
  }
  // .do => Model
  @RequestMapping("GoMountain/postfind.do")
  public String member_postfind(HttpServletRequest req,HttpServletResponse res)
  {
	  System.out.println("member_postfind.....");
	  return "member/postfind.jsp";
  }
  
  @RequestMapping("GoMountain/postfind_ok.do")
  public String member_postfind_ok(HttpServletRequest req,HttpServletResponse res)
  {
	  try
	  {
	     req.setCharacterEncoding("UTF-8");// 컴파일 예외(반드시 예외처리)
	     String dong=req.getParameter("dong");
	     int count=MemberDAO.postCount(dong);
	     List<ZipcodeVO> list=MemberDAO.postfind(dong);
	     
	     req.setAttribute("count", count);
	     req.setAttribute("list", list);
	     
	  }catch(Exception ex){}
	  return "../member/postfind_ok.jsp";
  }
}





