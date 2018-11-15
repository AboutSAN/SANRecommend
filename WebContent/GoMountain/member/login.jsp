<%@ page language="java" contentType="text/html; charset=EUC-KR"
   pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
<!-- <link rel="stylesheet" type="text/css" href="css/bootstrap.min.css"> -->

<script type="text/javascript">
Shadowbox.init({
	players:["iframe"]
});
function idcheck()
{
	Shadowbox.open({
		content:'member/idcheck.do',
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
</script>
</head>
<body>
   <div class="container">
      <div class="row">
         <div class="col-md-6 col-md-offset-3">
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
                        <form id="login-form" action="https://phpoll.com/login/process"
                           method="post" role="form" style="display: block;">
                           <div class="form-group">
                              <input type="text" name="username" id="idcheck()" tabindex="1"
                                 class="form-control" placeholder="아이디" value="">
                           </div>
                           <div class="form-group">
                              <input type="password" name="password" id="password"
                                 tabindex="2" class="form-control" placeholder="비밀번호">
                           </div>
                           <!-- <div class="form-group text-center">
                              <input type="checkbox" tabindex="3" class="" name="remember"
                                 id="remember"> <label for="remember">
                                 Remember Me</label>
                           </div> -->
                           <div class="form-group">
                              <div class="row">
                                 <div class="col-sm-6 col-sm-offset-3">
                                    <input type="submit" name="login-submit" id="login-submit"
                                       tabindex="4" class="form-control btn btn-login" value="로그인">
                                 </div>
                              </div>
                           </div>
                           <div class="form-group">
                              <div class="row">
                                 <div class="col-lg-12">
                                    <div class="text-center">
                                       <a href="https://phpoll.com/recover" tabindex="5"
                                          class="forgot-password">비밀번호찾기</a>
                                    </div>
                                 </div>
                              </div>
                           </div>
                        </form>
                        <form id="register-form"
                           action="https://phpoll.com/register/process" method="post"
                           role="form" style="display: none;">
                           <div class="form-group">
                              아이디:&nbsp;&nbsp;&nbsp;&nbsp; <input type=text name=id size=15
                                 readonly required>
                              <input type=button value="중복체크" class="btn btn-xs btn-primary"
                                 id="checkBtn" onclick="idcheck()">
                           </div>
                           <div class="form-group">
                              비밀번호:&nbsp; <input type=password name=pwd size=15 required>
                              <!-- <input type=password name=pwd1 size=15 placeholder="재입력"> -->
                           </div>
                           <div class="form-group">
                              이름: &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <input type=text
                                 name=name size=15 required>
                           </div>
                           
                           <div class="form-group">
                              생년월일:&nbsp;<input type=date name=birthday size=35 required>
                           </div>
                           <div class="form-group">
                              우편번호: <input type=text name=post1 size=5 readonly>- <input
                                 type=text name=post2 size=5 readonly> <input
                                 type=button value="우편번호검색" class="btn btn-xs btn-primary"
                                 id="postBtn" onclick="postfind()">
                           </div>
                           <div class="form-group">
                              주소:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <input type=text name=addr1 size=45 readonly>
                           </div>
                           <div class="form-group">
                              상세주소: <input type=text   name=addr2 size=45>
                           </div>
                           <div class="form-group">
                              <div class="row">
                                 <!-- <div class="col-sm-6 col-sm-offset-3"> -->
                                 <div colspan="2" class="text-center">
                                    <input type="submit" name="register-submit"
                                       id="register-submit" tabindex="4"
                                       class="form-control btn btn-register join" value="회원가입" style="width:250px">
                                    <a href="#" tabindex="5" type="text-right">취소</a>
                                    
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