package com.sist.mt.model;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.sist.controller.RequestMapping;
import com.sist.mt.member.MemberDAO;
import com.sist.mt.member.MemberVO;
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
		  //DB¿¬µ¿ 
		  String result=MemberDAO.isLogin(loginid, pwd);
		  if(!(result.equals("NOID")&& result.equals("NOPWD")))
		  {
			  // ·Î±×ÀÎÀÌ µÇ¾úÀ»¶§
			  HttpSession session=req.getSession();
			  // sessionÀ» °¡Áö°í ¿Â´Ù 
			  session.setAttribute("loginid", loginid);
			  session.setAttribute("name", result);
			  
			  // session¿¡ ÀúÀå
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
	  System.out.println("member_postfind_ok.....");
	  try
	  {
	     req.setCharacterEncoding("UTF-8");
	     String dong=req.getParameter("dong");
	     int count=MemberDAO.postCount(dong);
	     List<ZipcodeVO> list=MemberDAO.postfind(dong);
	     
	     req.setAttribute("count", count);
	     req.setAttribute("list", list);
	     
	  }catch(Exception ex){}
	  return "member/postfind_ok.jsp";
  }
<<<<<<< HEAD
  
  
  @RequestMapping("GoMountain/idcheck_ok.do")
  public String member_idcheck_ok(HttpServletRequest req,HttpServletResponse res)
  {
	  	  // DB¿¬µ¿ 
		  String id=req.getParameter("id");
		  int count=MemberDAO.idcheck(id);
		  
		  req.setAttribute("count", count);
		  return "member/idcheck_ok.jsp";
  }
  
  @RequestMapping("GoMountain/idcheck.do")
  public String member_idcheck(HttpServletRequest req,HttpServletResponse res)
  {
		  return "member/idcheck.jsp";
=======
  @RequestMapping("GoMountain/idcheck.do")
  public String member_idcheck(HttpServletRequest req,HttpServletResponse res)
  {
	  System.out.println("member_idcheck.....");
	  return "member/idcheck.jsp";
  }
  
  @RequestMapping("GoMountain/idcheck_ok.do")
  public String member_idcheck_ok(HttpServletRequest req,HttpServletResponse res)
  {
	  System.out.println("member_idcheck_ok.....");
	  try
	  {
	     req.setCharacterEncoding("UTF-8");
	     String id=req.getParameter("id");
	     int count=MemberDAO.idCheck(id);
 
	     req.setAttribute("count", count);
	     
	  }catch(Exception ex){}
	  return "member/idcheck_ok.jsp";
  }
  @RequestMapping("GoMountain/join.do")
  public String member_join(HttpServletRequest req,HttpServletResponse res)
  {
	  System.out.println("member_join.....");
	  try
	  {
		  /*
		  private String Member_id;
		  private String Member_pwd;
		  private String Member_sex;
		  private String Member_addr1;
		  private String Member_name;
		  private String Member_place;
		  private int Member_tel;
		  private int Member_age;
		  private int Member_admin;
		  private String Member_addr2;
		   */
		  req.setCharacterEncoding("EUC-KR");
		  String place =req.getParameter("addr1");
		  System.out.println(place);
		  place = place.substring(0,place.indexOf(" ")+1);
		  String tel =req.getParameter("tel1")+"-"+req.getParameter("tel2")+"-"+req.getParameter("tel3");
		  /*System.out.println("ë³€ê²½í›„:"+place + "ì „í™”:"+tel +"ì„±ë³„:"+req.getParameter("sex"));*/
		  
		  
		  
		  MemberVO vo = new MemberVO();
		  vo.setMember_id(req.getParameter("id"));
		  vo.setMember_pwd(req.getParameter("pwd"));
		  vo.setMember_sex(req.getParameter("sex"));
		  vo.setMember_addr1(req.getParameter("addr1"));
		  vo.setMember_name(req.getParameter("name"));
		  vo.setMember_tel(tel);
		  vo.setMember_place(place.trim());
		  vo.setMember_age(Integer.parseInt(req.getParameter("age")));
		  vo.setMember_admin(0);
		  vo.setMember_addr2(req.getParameter("addr2"));
		  System.out.println("ë³€ê²½í›„:"+vo.getMember_place());
		  MemberDAO.memberJoin(vo);
	  }catch (Exception e) {
		// TODO: handle exception
	}
	  
	  return "redirect:../GoMountain/main.do";
>>>>>>> branch 'master' of https://github.com/AboutSAN/SANRecommend.git
  }
}





