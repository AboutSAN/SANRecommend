<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>

<head>

<meta charset="EUC-KR">

<title></title>
<script type="text/javascript" src="shadow/js/shadowbox.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
<link rel="stylesheet" type="text/css"
	href="vendor/bootstrap/css/bootstrap.min.css">
<link rel="stylesheet" type="text/css"
	href="vendor/bootstrap/css/mypage.css">
<link rel="stylesheet" type="text/css"
	href="vendor/bootstrap/css/title-bck.css">
<link rel="stylesheet" type="text/css"
	href="vendor/bootstrap/css/together2.css">
<link rel="stylesheet" type="text/css"
	href="vendor/bootstrap/css/gallery.css">
<link rel="stylesheet" type="text/css" href="shadow/css/shadowbox.css">
<link rel="stylesheet" type="text/css"
	href="vendor/bootstrap/css/bootstrap.min.css">
<style type="text/css">
.titlebar {
	height: 400px;
}
</style>
<!-- Bootstrap core CSS -->
<script src="vendor/bootstrap/js/login.js"></script>
<!-- Custom styles for this template -->
<link href="css/shop-homepage.css" rel="stylesheet">
<script type="text/javascript">
	$(function(){
		
	});
	</script>

</head>

<body>
		<!-- Navigation -->
		<nav class="navbar navbar-expand-lg navbar-dark bg-dark fixed-top">
			<jsp:include page="menubar.jsp"></jsp:include>
		</nav>

		<div class="row">
			<jsp:include page="title.jsp"></jsp:include>
		</div>

		<!-- Page Content -->

		<div class="bck">

			<div class="row" style="width: 100%; min-height:1000px;">

				<div class="col-sm-3">
					<div class="row">
						<!-- search.jsp -->
					</div>
				</div>
				<!-- /.col-lg-3 -->

				<div class="col-sm-6" style="width: 100%; height: 750px;">



					<!-- content -->
					<jsp:include page="${change }"></jsp:include>
					<!-- /.row -->

				</div>
				<!-- /.col-lg-9 -->
				<div class="col-sm-3">
					<div class="container">
						<!-- news들어갈 곳 -->
					</div>
					<div class="container"></div>
				</div>
			</div>
			<!-- /.row -->

		</div>

		<!-- /.container -->

		<!-- Footer -->
		<footer class="py-5 bg-dark" style="width: 100%">
			<jsp:include page="footer.jsp"></jsp:include>
			<!-- /.container -->
		</footer>

		<!-- Bootstrap core JavaScript -->
		<!-- <script src="vendor/jquery/jquery.min.js"></script>
    <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script> -->


		<script src="vendor/jquery/jquery.min.js"></script>
		<script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
</body>

</html>
