<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%
	String name = "홍길동";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>

</head>
<body>
	<div class="container1">

		<div class="up1">
			<font size="4px" style="font-weight: bold">reddresseson (김유리)</font>
			<br /> <br /> <font color="#888888"> 제주대학교 |
				reddresseson@jejunu.ac.kr </font>
			<button type="button" class="settingbutton1">프로필 관리</button>
		</div>


		<hr size="1px" color="#CCCCCC" />

		<img class="img2"
			src="https://avatars2.githubusercontent.com/u/26625229?s=400&u=2d80bafdaff8534bac59ea8b879e2e1bfad631ef&v=4"
			width="130px" height="130px" alt="프로필 사진" />

		<table class="about">
			<tr>
				<th>학교:</th>
				<td>&nbsp;<%=name%></td>
			</tr>
			<tr>
				<th>소속:</th>
				<td>&nbsp;<%=name%></td>
			</tr>
			<tr>
				<th>생일:</th>
				<td>&nbsp;<%=name%></td>
			</tr>
			<tr>
				<th>자기소개:</th>
				<td>&nbsp;<%=name%></td>
			</tr>
			<tr>
				<th>이메일:</th>
				<td>&nbsp;<%=name%></td>
			</tr>
			<tr>
				<th>휴대폰:</th>
				<td>&nbsp;<%=name%></td>
			</tr>
		</table>
	</div>
	<h3>참가 팀 목록</h3>
	<table class="table table-hover">
		<tr class="success">
			<th width=10% class="text-center">번호</th>
			<th width=45% class="text-center">제목</th>
			<th width=15% class="text-center">이름</th>
			<th width=20% class="text-center">작성일</th>
			<th width=10% class="text-center">조회수</th>
		</tr>
	</table>

</body>
</html>