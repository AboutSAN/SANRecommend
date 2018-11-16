<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<style type="text/css">
.row{
  margin: 0px auto;
  width:450px;
}

</style>
<script type="text/javascript" src="http://code.jquery.com/jquery.js"></script>
<script type="text/javascript">
$(function(){
	$('#postBtn').click(function(){
		var dong=$('#dong').val();
		if(dong.trim()=="")
		{
			// 입력 안된 경우 
			$('#dong').focus();
			return;
		}
		// dong=>결과값 받기  => ?dong=신촌
		$.ajax({
			type:'POST',
			url:'postfind_ok.do',
			data:{"dong":dong},
			success:function(res)
			{
				$('#result').html(res);
			}
			/* error:function(res)
			{
				
			} */
		});
	});
});
</script>
</head>
<body>
   <div class="container">
     <div class="row">
      <table class="table">
       <tr>
        <td>
         입력:<input type=text id="dong" size=15>
         <input type=button value="검색"
           class="btn btn-xs btn-danger" id="postBtn">
        </td>
       </tr>
      </table>
      <div id="result"></div>
     </div>
   </div>
</body>
</html>




