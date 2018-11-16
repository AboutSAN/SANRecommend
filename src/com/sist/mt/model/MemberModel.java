package com.sist.mt.model;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

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
	@RequestMapping("GoMountain/login_ok.do")
	  public String member_login_ok(HttpServletRequest req,HttpServletResponse res)
	  {
		  String loginid=req.getParameter("loginid");
		  String pwd=req.getParameter("password");
		  System.out.println("==============="+loginid+"|"+pwd);
		  //DB연동 
		  String result=MemberDAO.isLogin(loginid, pwd);
		  if(!(result.equals("NOID")&& result.equals("NOPWD")))
		  {
			  // 로그인이 되었을때
			  HttpSession session=req.getSession();
			  // session을 가지고 온다 
			  session.setAttribute("loginid", loginid);
			  session.setAttribute("name", result);
			  
			  // session에 저장
		  }
		  req.setAttribute("res", result);
		  return "member/login_ok.jsp";
	  }
	
	@RequestMapping("GoMountain/logout.do")
	  public String member_logout(HttpServletRequest req,HttpServletResponse res)
	  {
			HttpSession session=req.getSession();
			session.invalidate();
			
			return "redirect:main.do";
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
	  return "member/postfind_ok.jsp";
  }
  
  
  @RequestMapping("GoMountain/idcheck_ok.do")
  public String member_idcheck_ok(HttpServletRequest req,HttpServletResponse res)
  {
	  	  // DB연동 
		  String id=req.getParameter("id");
		  int count=MemberDAO.idcheck(id);
		  
		  req.setAttribute("count", count);
		  return "member/idcheck_ok.jsp";
  }
  
  @RequestMapping("GoMountain/idcheck.do")
  public String member_idcheck(HttpServletRequest req,HttpServletResponse res)
  {
		  return "member/idcheck.jsp";
  }
}





