<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:choose>
 <c:when test="${res=='NOID' }">
   <script>
    alert("ID가 존재하지 않습니다");
    history.back();
    
   </script>
 </c:when>
 <c:when test="${res=='NOPWD' }">
   <script>
    alert("PWD가 틀립니다");
    history.back();
    
   </script>
 </c:when>
 <c:otherwise>
    
   <c:redirect url="main.do"/>
 </c:otherwise>
</c:choose>