<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>

  <head>

    <meta charset="EUC-KR">

    <title>Shop Homepage - Start Bootstrap Template</title>

    <!-- Bootstrap core CSS -->
    <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="css/shop-homepage.css" rel="stylesheet">
    <style type="text/css">
.list-group{
  margin-top: 10%; 
  margin-bottom: 5%;         
}
</style>
  </head>

  <body>

    <!-- Navigation -->
    <nav class="navbar navbar-expand-lg navbar-dark bg-dark fixed-top">
      
    </nav>

    <!-- Page Content -->
    <div class="container">

      <div class="row">

        <div class="col-lg-3">
          <h3 class="my-4">산 이름</h3>
          <img src="mt.jpg" width=400 height=300>
        </div>
        
       <div class="col-lg-2"></div>
     
      <div class="col-lg-7">
      <table class="table">
       <tr>
          <div class="list-group" style="width:110px">
            <a class="list-group-item">상세정보</a>
          </div>
        <th class="success text-center" width=20%>산 고유번호</th>
        <td width=30% class="text-center"></td>
        <th class="success text-center" width=20%>등산로 번호</th>
        <td width=30% class="text-center"></td>
       </tr>
       <tr>
        <th class="success text-center" width=20%>산 위치</th>
        <td width=30% class="text-center"></td>
        <th class="success text-center" width=20%>산 난이도</th>
        <td width=30% class="text-center"></td>
       </tr>
       <tr>
       <tr>
        <th class="success text-center" width=20%>상행시간</th>
        <td width=30% class="text-center"></td>
        <th class="success text-center" width=20%>하행시간</th>
        <td width=30% class="text-center"></td>
       </tr>
      </table>
     
     <table class="table">
       <tr>
          <div class="list-group" style="width:115px">
            <a class="list-group-item">방장의 말</a>
          </div>
       <tr>
        <th class="success text-center" width=50%></th>
        <td colspan="3" class="text-left"></td>
       </tr>
       <tr>
        <td colspan="2" class="text-right">
          <a href="main.jsp" class="btn btn-xs btn-success">뒤로</a>
          <a href="#" class="btn btn-xs btn-warning">참가</a>
        </td>
          
       </tr>
      </table> 
      
     </div>
    </div>
    
  </div>
  
 <footer class="py-5 bg-dark">
  <%-- <jsp:include page="footer.jsp"></jsp:include> --%>
 </footer>
 
</body>
</html>