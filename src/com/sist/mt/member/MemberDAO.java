package com.sist.mt.member;

import java.io.*;
import java.util.*;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

public class MemberDAO {
	private static SqlSessionFactory ssf;
	static {
		try {
			Reader reader = Resources.getResourceAsReader("Config.xml");
			ssf = new SqlSessionFactoryBuilder().build(reader);
		} catch (Exception ex) {
			System.out.println(ex.getMessage());
		}
	}

	public static List<ZipcodeVO> postfind(String dong) {
		List<ZipcodeVO> list = new ArrayList<ZipcodeVO>();
		SqlSession session = null;
		// getConnection()
		try {
			session = ssf.openSession();
			list = session.selectList("postFindData", dong);

		} catch (Exception ex) {
			System.out.println(ex.getMessage());
		} finally {
			// disConnection
			session.close();
		}
		return list;
	}

	public static int postCount(String dong) {
		int count = 0;
		SqlSession session = null;
		// getConnection()
		try {
			session = ssf.openSession();
			count = session.selectOne("postCount", dong);

		} catch (Exception ex) {
			System.out.println(ex.getMessage());
		} finally {
			// disConnection
			session.close();
		}
		return count;
	}
	
	// 로그인 처리
	 public static String isLogin(String loginid,String pwd)
	 {
	      String result="";
	      SqlSession session=null;
	      try
	      {
	         session=ssf.openSession();
	         int count=session.selectOne("idCount",loginid);
	         if(count==0)
	         {
	            result="NOID";
	         }
	         else
	         {
	            MemberVO vo=session.selectOne("memberGetPwd", loginid);
	            if(pwd.equals(vo.getMember_pwd()))
	            {
	               result=vo.getMember_name();
	            }
	            else
	            {
	               result="NOPWD";
	            }
	         }
	      }catch(Exception ex)
	      {
	         ex.printStackTrace();
	      }
	      finally
	      {
	         session.close();
	      }
	      return result;
	 }

	public static int idCheck(String id) {
		int count = 0;

		SqlSession session = null;
		try {
			session = ssf.openSession();
			count = session.selectOne("idCheck", id);
		} catch (Exception e) {
			// TODO: handle exception
			System.out.println("idCheck:" + e.getMessage());
		} finally {
			session.close();
		}

		return count;
	}

	public static void memberJoin(MemberVO vo)
	 {
		   SqlSession session=null;
		   // getConnection()
		   try
		   {
			   session=ssf.openSession(true);
			   session.selectOne("memberJoin",vo);
			   
		   }catch(Exception ex)
		   {
			   System.out.println(ex.getMessage());
		   }
		   finally
		   {
			   // disConnection
			   session.close();
		   }
	 }  
}
