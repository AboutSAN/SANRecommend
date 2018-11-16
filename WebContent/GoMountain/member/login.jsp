<%@ page language="java" contentType="text/html; charset=EUC-KR"
   pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
<!-- <link rel="stylesheet" type="text/css" href="css/bootstrap.min.css"> -->
<script type="text/javascript" src="http://code.jquery.com/jquery.js"></script>
<script type="text/javascript">
Shadowbox.init({
	players:["iframe"]
});
function idcheck()
{
	Shadowbox.open({
		content:'idcheck.do',
		title:'아이디중복체크',
		player:'iframe',
		width:300,
		height:150
	});
	
	
}
// .do ==> ~Model
function postfind()
{
	Shadowbox.open({
		content:'postfind.do',
		title:'우편번호 검색',
		player:'iframe',
		width:480,
		height:350
	});
}
function login()
{
	var loginid=$('#loginid').val();
	if(loginid.trim()=="")
	{
	    $('#loginid').focus();
	    return;
	}
	var pwd=$('#password').val();
	if(pwd.trim()=="")
	{
	    $('#password').focus();
	    return;
	}
	
	$('#login-form').submit();
}
function findpwd()
{
}

</script>
</head>
<body>
      <div class="row">
         <div class="col-md-12 col-md-offset-3">
            <div class="panel panel-login">
               <div class="panel-heading">
                  <div class="row">
                     <div class="col-xs-6">
                        <a href="#" class="active" id="login-form-link">로그인</a>
                     </div>
                     <div class="col-xs-6">
                        <a href="#" id="register-form-link">회원가입</a>
                     </div>
                  </div>
                  <hr>
               </div>
               <div class="panel-body">
                  <div class="row">
                     <div class="col-lg-12">
<<<<<<< HEAD
                     <%-- Login Form --%>
                        <form id="login-form" action="login_ok.do"
                           method="post" role="form" style="display: block;">
=======
                        <form id="Login-form">
>>>>>>> branch 'master' of https://github.com/AboutSAN/SANRecommend.git
                           <div class="form-group">
<<<<<<< HEAD
                              <input type="text" name="loginid" id="loginid" tabindex="1"
                                 class="form-control" placeholder="아이디" value="">
=======
                              <input type="text" name="username" id="idcheck()" tabindex="1"
                                 class="form-control" placeholder="아이디" value="" style="width:40%;">
>>>>>>> branch 'master' of https://github.com/AboutSAN/SANRecommend.git
                           </div>
                           <div class="form-group">
                              <input type="password" name="password" id="password"
                                 tabindex="2" class="form-control" placeholder="비밀번호" style="width:40%;">
                           </div>
                           <!-- <div class="form-group text-center">
                              <input type="checkbox" tabindex="3" class="" name="remember"
                                 id="remember"> <label for="remember">
                                 Remember Me</label>
                           </div> -->
                           <div class="row">
                                 <div class="col-sm-6">
                                    <input type="button" name="login-submit" id="login-submit"
                                       tabindex="4" class="form-control btn btn-login" value="로그인" onclick="login()">
                                 </div>
                           <%-- Login End --%>
                                 <div class="col-sm-6">
                                       <!-- <a href="#" tabindex="5"
                                          class="forgot-password">비밀번호찾기</a> -->
                                       <input type="button" name="login-findpwd" id="login-findpwd"
                                          tabindex="4" class="form-control btn btn-login" value="비밀번호찾기" onclick="findpwd()"> 
                                 </div>
                           </div>
                        </form>
                        <div style="min-height:800px;">
								<form id="register-form" name="joinFrm" method="post"
									action="join.do" style="display: none;">
									<div class="form-group">
										아이디:&nbsp;&nbsp;&nbsp;&nbsp; <input type=text name=id size=15
											readonly required> <input type=button value="중복체크"
											class="btn btn-xs btn-primary" id="checkBtn"
											onclick="idcheck()">
									</div>
									<div class="form-group">
										비밀번호:&nbsp; <input type=password name=pwd size=15 required>
										<!-- <input type=password name=pwd1 size=15 placeholder="재입력"> -->
									</div>
									<div class="form-group">
										이름: &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <input
											type=text name=name size=15 required>
									</div>

									<div class="form-group">
										나이:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type=text name=age size=15 required>
									</div>
									<div class="form-group">
										전화번호:&nbsp;<input type=text name=tel1 size=5 required>-<input type=text name=tel2 size=5 required>-<input type=text name=tel3 size=5 required>
									</div>
									<div class="form-group">
										우편번호: <input type=text name=post1 size=5 readonly>- <input type=text name=post2 size=5 readonly> 
										<input type=button value="우편번호검색" class="btn btn-xs btn-primary"
											id="postBtn" onclick="postfind()">
									</div>
									<div class="form-group">
										주소:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <input type=text
											name=addr1 size=45 readonly>
									</div>
								
								<!-- <div class="form-group">
										<label class="radio-inline">성별:<input type="radio" name="sex" checked value="남">남</label> 
										<label class="radio-inline"><input type="radio" name="sex" value="여">여</label>
									</div> -->
									<div class="form-group">
										상세주소: <input type=text name=addr2 size=45>
									</div>
									<div class="form-group">
									<label>성별 :</label>
									<select class="form-control" name="sex" style="width:40%;">
										<option value="남">남</option>
										<option value="여">여</option>
									</select>
								</div>
									<div class="form-group">
										<div class="row">
											<!-- <div class="col-sm-6 col-sm-offset-3"> -->
											<div colspan="2" class="text-center">
												<input type="submit" name="register-submit"
													id="register-submit" tabindex="4"
													class="form-control btn btn-register join" value="회원가입"
													style="width: 250px"> <a href="#" tabindex="5"
													type="text-right">취소</a>
											</div>
										</div>
									</div>
								</form>
							</div>
						</div>
                  </div>
               </div>
            </div>
         </div>
      </div>
</body>
</html>