<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
 <div class="container" style="width:1340px">
 <a class="navbar-brand" href="#">${sessionScope.loginid }</a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
          <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarResponsive">
          <ul class="navbar-nav ml-auto">
            <c:if test="${sessionScope.loginid!=null }">
            <li class="nav-item">
              <a class="nav-link" href="mypage.do">����������</a>
            </li>
            </c:if>
            
            
            <li class="nav-item">
              <a class="nav-link" href="main.do">Ȩ</a>
            </li>
             
            <li class="nav-item">
              <a class="nav-link" href="together2.do">�Բ�������</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="list.do">��ȸ</a>
            </li>
             <li class="nav-item">
              <a class="nav-link" href="gallery.do">������</a>
            </li>
             <li class="nav-item">
              <a class="nav-link" href="qna.do">Q&A</a>
            </li>
            <c:if test="${sessionScope.loginid==null }">
            <li class="nav-item active">
              <a class="nav-link" href="loginjoin.do">�α���
                <span class="sr-only">(current)</span>
              </a>
            </li>
            </c:if>
            <c:if test="${sessionScope.loginid!=null }">
            <li class="nav-item active">
             <a class="nav-link" href="logout.do">�α׾ƿ�
             </a>
             </li>
            </c:if>
          </ul>
        </div>
  </div>
</body>
</html>