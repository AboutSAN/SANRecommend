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
<<<<<<< HEAD
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
=======
<script type="text/javascript" src="http://code.jquery.com/jquery.js"></script>
<script type="text/javascript">
	/* $(document).ready(function(){
		아래의 함수와 같은 기능을 한다.	
	}) */
	$(function(){
		$('#idBtn').click(function(){
			//처리 ==> 버튼 클릭시 처리 영역
			var id=$('#id').val();
			/*
				1) val()
					input태그, select태그, textarea
				2) text()
					td,th,h...
					<h1><span>aaa</span></h1> : aaa을 읽어옴
				3) html()
					<h1><span>aaa</span></h1> : <span>aaa</span>을 읽어옴
				4) attr()
					<a> <img> 속성값 읽기
				
				태그 읽기
				$('.명') ==> class
				$('#명') ==> id
				$('태그명') : getElementByTagName()
				
				이벤트
					click => onClick()
					change => onChange()
					hover => onMouseOver()
					keyup => onKeyup()
				ex) 태그명.click(function(){
				})
					태그명.change(function(){
				}) 등등 같이 쓰인다.
			*/
			if(id.trim()=="")
			{
				$('#id').focus();
				return;
			}
			// id를 모델로 보내야한다.
			$.ajax({
				type:'post',
				url:'idcheck_ok.do',
				data:{"id":id},
				success:function(response)
				{
					var count=response.trim();
					/* alert(count); */
					if(count==0)
					{
						$('#result').html("<font color=blue>"
								+id+"는(은) 사용 가능합니다.</font>");
						$('#ok').html("<input type=button "+"id=idok value=확인 onclick=ok('"+id+"')>")
					}
					else
					{
						$('#result').html("<font color=red>"
								+id+"는(은) 이미 사용중입니다.</font>");
					}
				}
				/*
				error:function(res)
				{
					이렇게 하면 에러처리도 가능하다.
				}
				*/
			});
			
		});
	});
	
	function ok(id)
	{
		parent.joinFrm.id.value=id;
		parent.Shadowbox.close();
		
	}
>>>>>>> branch 'master' of https://github.com/AboutSAN/SANRecommend.git
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






