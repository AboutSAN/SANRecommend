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
  width:280px;
}

</style>
<!-- 라이브러리 import -->
<script type="text/javascript" src="http://code.jquery.com/jquery.js"></script>
<!-- 처리(이벤트)  -->
<script type="text/javascript">
// 일반 Javascript : window.onload=function(){}
// $(document).ready(function(){}):((document).ready)생략가능)
$(function(){
	$('#idBtn').click(function(){
		// 처리 ==> 버튼 클릭시 처리 영역
		// 입력한 ID를 읽는다 
		var id=$('#id').val();
		
		if(id.trim()=="")
		{
			$('#id').focus();
			return; //프로그램 종료 (입력전 상태로 돌아간다)
		}
		       
		//id => Model로 전송(MemberModel)
		// 빅데이터 => 전송 (XML,JSON(***))
		// {"id":id} ==> idcheck_ok.do?id=aaa
		$.ajax({
			type:'post',
			url:'idcheck_ok.do',
			data:{"id":id},
			success:function(response)
			{
				var count=response.trim();
				if(count==0)
				{
					$('#result').html("<font color=blue>"
							+id+"는(은) 사용가능한 아이디입니다</font>");
					$('#ok').html("<input type=button "
							+"id=idok value=확인 onclick=ok('"+id+"')>");
				}
				else
				{
					$('#result').html("<font color=red>"
						+id+"는(은) 이미사용중입니다</font>");
				}
				
			}
			/* error:function(res)
			{
				// 에러 처리
			} */
		});
		
	});
});

function ok(id)
{
	parent.joinFrm.id.value=id;
	parent.Shadowbox.close();
}
</script>
</head>
<body>
  <div class="container">
    <div class="row">
     <table class="table">
      <tr>
       <td>
        ID:<input type=text id="id">
        <input type=button value="중복체크" id="idBtn"
         class="btn btn-xs btn-primary">
       </td>
      </tr>
      <tr>
       <td class="text-center" id="result"></td>
      </tr>
      <tr>
        <td class="text-center" id="ok"></td>
      </tr>
     </table>
    </div>
  </div>
</body>
</html>






