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
  <!-- ����Ʈ -->
  <div class="container">                                        
    <div class="row"> 
    <div class="col-12"> 
     <ul class="nav nav-tabs" id="cart-picker-acc-select" role="tablist"> 
      <li class="nav-item"> 
       <a class="nav-link login-link active" id="form-login-top" role="tab" data-toggle="tab" href="#form-login"> 
                      ���� 
       </a> 
      </li> 
       <li class="nav-item"> 
        <a class="nav-link register-link" id="form-register-top" role="tab" data-toggle="tab" href="#form-register"> 
                      ���κ� 
        </a> 
       </li>  
     </ul> 
    </div> 
</div> 
<div class="row"> 
    <div class="col-13"> 
     <div class="tab-content"> 
      <div id="form-login" class="tab-pane fade show active" role="tabpanel" aria-labelledby="form-login-top"> 
        <a href="" class="btn btn">1�����̳�</a> 
        <a href="" class="btn btn">1��������</a>
        <a href="" class="btn btn">�Ѵ��̳�</a>
        <a href="" class="btn btn">�Ѵ�����</a>
      </div> 
       <div id="form-register" class="tab-pane fade" role="tabpanel" aria-labelledby="form-register-top"> 
        <a href="" class="btn btn">����</a>
        <a href="" class="btn btn">���</a>
        <a href="" class="btn btn">�λ�</a>
        <a href="" class="btn btn">���</a>
        <a href="" class="btn btn">�뱸</a>
        <a href="" class="btn btn">����</a>
        <a href="" class="btn btn">����</a>
        <a href="" class="btn btn">��õ</a>
        <a href="" class="btn btn">���</a>
        <a href="" class="btn btn">��û��</a>
        <a href="" class="btn btn">����</a>
        <a href="" class="btn btn">������</a> 
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
              <h4 class="card-title"><p>������� ������</p>
              </h4>
              <p class="card-text">�������</p>
            <div class="row">
             <div class="col-xs-12 col-md-6">
               <p class="card-hour">11�� 30�� ���</p>
             </div>
             <div class="col-xs-12 col-md-6 text-right">
               <a class="btn btn-success" href="detail.jsp">�󼼺���</a>
             </div>
           </div>
           </div>
         </div>
       </div>
       <div class="col-lg-6 portfolio-item">
          <div class="card h-100">
            <div class="card-body">
              <h4 class="card-title"><p>�������</p>
              </h4>
              <p class="card-text">������ ���</p>
            <div class="row">
             <div class="col-xs-12 col-md-6">
               <p class="card-hour">12�� 31�� ���</p>
             </div>
             <div class="col-xs-12 col-md-6 text-right">
               <a class="btn btn-success" href="#">�󼼺���</a>
             </div>
           </div>
           </div>
         </div>
       </div>
     </div>
</div>
     <table class="table">
     <!-- ã�� -->
       <tr>
         <td class="text-left">
         <form method="post" action="">
         <select name=search>
           <option value="team_title">����</option>
           <option value="mt_roadno">����</option>
         </select>
         <input type=text name=ss size=10>
         <input type=submit value=ã�� class="btn btn-xs primary">
         </form>
        </td>
        
        <!-- ������ �ѱ�� -->
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