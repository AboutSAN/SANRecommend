<%-- <%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR" import="com.sist.manager.*,java.util.*"%>
<jsp:useBean id="mgr" class="com.sist.manager.searchManager"/>
<%
    ArrayList<String> list=mgr.searchData();
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
</head>
<body>
   <table class="table table-hover">
    <%
       int r=1;
       String color=""; // active ȸ��
       for(String s:list)
       {
    	   if(r%2==0)
    		   color="warning";
    	   else
    		   color="";
    %>
          <tr>
           <td class="text-left <%=color %>" ><%=r+"��. "+s %></td>
          </tr>
    <%
          r++;
       }
    %>
   </table>
</body>
</html>


 --%>