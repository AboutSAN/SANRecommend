<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Write something else you want</title>
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
 
<!-- Optional theme -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp" crossorigin="anonymous">
 
<!-- Latest compiled and minified JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>
</head>
<body>
 <div class="container">
  <center><h3>게시물 작성</h3></center>
  <div class="row">
   <form method="post" action="#"
      enctype="multipart/form-data"
      >
      <%--
         enctype="multipart/form-data"
         파일업로드 프로토콜
       --%>
   <table class="table table-hover">
    <tr>
     <td width=15% class="text-right info">이름</td>
     <td width=85% class="text-left">
      <input type=text name=name size=15>
     </td>
    </tr>
    <tr>
     <td width=15% class="text-right info">제목</td>
     <td width=85% class="text-left">
      <input type=text name=subject size=45>
     </td>
    </tr>
    <tr>
     <td width=15% class="text-right info">내용</td>
     <td width=85% class="text-left">
       <textarea rows="10" cols="50" name=content></textarea>
     </td>
    </tr>
    <tr>
     <td width=15% class="text-right info">첨부파일</td>
     <td width=85% class="text-left">
      <input type=file name=upload size=30>
     </td>
    </tr>
    <tr>
     <td colspan="2" class="text-center">
      <input type="submit" class="btn btn-sm btn-primary" value="작성">
      <input type="button" class="btn btn-sm btn-danger" value="취소"
       onclick="javascript:history.back()"
      >     
     </td>
    </tr>
   </table>   
   </form>
  </div>
 </div>
</body>
</html>