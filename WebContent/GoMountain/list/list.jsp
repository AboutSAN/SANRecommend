<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">
<title>2 Col Portfolio - Start Bootstrap Template</title>
<!-- Custom styles for this template -->
<link href="css/2-col-portfolio.css" rel="stylesheet">
</head>
<body>
  <!-- 리스트 -->
  <div class="container">                                        
    <div class="row"> 
    <div class="col-12"> 
     <ul class="nav nav-tabs" id="cart-picker-acc-select" role="tablist"> 
      <li class="nav-item"> 
       <a class="nav-link login-link active" id="form-login-top" role="tab" data-toggle="tab" href="#form-login"> 
                      팀별 
       </a> 
      </li> 
       <li class="nav-item"> 
        <a class="nav-link register-link" id="form-register-top" role="tab" data-toggle="tab" href="#form-register"> 
                      등산로별 
        </a> 
       </li>  
     </ul> 
    </div> 
</div> 
<div class="row"> 
    <div class="col-13"> 
     <div class="tab-content"> 
      <div id="form-login" class="tab-pane fade show active" role="tabpanel" aria-labelledby="form-login-top"> 
        <a href="" class="btn btn">1주일이내</a> 
        <a href="" class="btn btn">1주일이후</a>
        <a href="" class="btn btn">한달이내</a>
        <a href="" class="btn btn">한달이후</a>
      </div> 
       <div id="form-register" class="tab-pane fade" role="tabpanel" aria-labelledby="form-register-top"> 
        <a href="" class="btn btn">서울</a>
        <a href="" class="btn btn">경기</a>
        <a href="" class="btn btn">부산</a>
        <a href="" class="btn btn">울산</a>
        <a href="" class="btn btn">대구</a>
        <a href="" class="btn btn">대전</a>
        <a href="" class="btn btn">광주</a>
        <a href="" class="btn btn">인천</a>
        <a href="" class="btn btn">경상도</a>
        <a href="" class="btn btn">충청도</a>
        <a href="" class="btn btn">전라도</a>
        <a href="" class="btn btn">강원도</a> 
       </div>  
     </div> 
    </div> 
</div>
<!-- content -->
<div>
  <div class="row">
        <div class="col-lg-6 portfolio-item">
          <div class="card h-100">
            <div class="card-body">
              <h4 class="card-title"><p>히말라야 정복팀</p>
              </h4>
              <p class="card-text">히말라야</p>
            <div class="row">
             <div class="col-xs-12 col-md-6">
               <p class="card-hour">11월 30일 출발</p>
             </div>
             <div class="col-xs-12 col-md-6 text-right">
               <a class="btn btn-success" href="detail.jsp">상세보기</a>
             </div>
           </div>
           </div>
         </div>
       </div>
       <div class="col-lg-6 portfolio-item">
          <div class="card h-100">
            <div class="card-body">
              <h4 class="card-title"><p>상급자팀</p>
              </h4>
              <p class="card-text">알프스 산맥</p>
            <div class="row">
             <div class="col-xs-12 col-md-6">
               <p class="card-hour">12월 31일 출발</p>
             </div>
             <div class="col-xs-12 col-md-6 text-right">
               <a class="btn btn-success" href="#">상세보기</a>
             </div>
           </div>
           </div>
         </div>
       </div>
     </div>
</div>
     <table class="table">
     <!-- 찾기 -->
       <tr>
         <td class="text-left">
         <form method="post" action="">
         <select name=search>
           <option value="team_title">제목</option>
           <option value="mt_roadno">등산로</option>
         </select>
         <input type=text name=ss size=10>
         <input type=submit value=찾기 class="btn btn-xs primary">
         </form>
        </td>
        
        <!-- 페이지 넘기기 -->
        <td class="text-right">
          <ul class="pagination justify-content-center">
          <li class="page-item">
          <a class="page-link" href="#" aria-label="Previous">
            <span aria-hidden="true">&laquo;</span>
            <span class="sr-only">Previous</span>
          </a>
          </li>
         <li class="page-item">
          <a class="page-link" href="#">1</a>
         </li>
         <li class="page-item">
          <a class="page-link" href="#">2</a>
         </li>
         <li class="page-item">
          <a class="page-link" href="#">3</a>
         </li>
         <li class="page-item">
          <a class="page-link" href="#" aria-label="Next">
            <span aria-hidden="true">&raquo;</span>
            <span class="sr-only">Next</span>
          </a>
         </li>
        </ul>
       </td>
     </table>
      </div>
</body>
</html>