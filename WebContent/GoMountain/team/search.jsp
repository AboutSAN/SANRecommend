<%-- <%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>

<script type="text/javascript">
$(function(){
	$('#tabs').tabs();
	setInterval("init()",500);   // 1초에 한번씩 ajax 실행 -> ajax써서 실시간으로 확인 가능
	//init();
	// 1. 데이터 ==> html()
	// 2. 일반 데이터 ==> text()
});
function init()
{
	$.ajax({
		type:'post',
		url:'daumsearch.jsp',
		success:function(response)
		{
			$('#search').html(response);
		}
	});
}
</script>
</head>
<body>
 <div class="container">
  <h4></h4>
   <div class="row">
    <div class="col-md-7" style="width:100px">
	  <div id="tabs">
	    
	     <a href="#tabs-1"></a>
	    
	    <div id="tabs-1">
	     <div id="search"></div>
	    </div>
	  </div>
	</div>
   </div>
  </div>
</body>
</html> --%>