<%@ page contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="utf-8">
<meta
	content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0"
	name="viewport" />
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
<!-- Favicons -->
<style>
.purple-filter:after {
	background: rgba(101, 47, 142, 0.64);
	background: linear-gradient(45deg, rgba(101, 47, 142, 0.88) 0%,
		rgba(125, 46, 185, 0.45) 100%);
	background: -moz-linear-gradient(135deg, rgba(101, 47, 142, 0.88) 0%,
		rgba(125, 46, 185, 0.45) 100%);
	background: -webkit-linear-gradient(135deg, rgb(251, 70, 131) 0%,
		rgb(206, 132, 157) 100%) !important;
}

.float-frame {
	background: #eee;
	border: 1px solid #ddd;
	padding: 10px;
	overflow: hidden;
	zoom: 1;
}

.float-unit {
	background: #333;
	color: #fff;
	font-size: 18px;
	font-weight: bold;
	text-align: center;
	float: left;
	width: 24%;
	padding: 15px 0;
	margin: 0 1px;
}

.temp>img {
	float: left;
	width: 150px;
	height: 150px;
}

.list img {
	margin: 6px;
}

a img:hover {
	transform: scale(1.1, 1.1);
	transition: 3s;
}

#lay_pop {
	position: absolute;
	z-index: 500;
	width: 570px;
	height: 300px;
	overflow-y: auto;
	display: none;
	background-color: #ffffff;
	border: 2px solid #cccccc
}

#all_body {
	position: absolute;
	z-index: 9;
	display: block;
	filter: alpha(opacity = 50);
	opacity: 0.5;
	-moz-opacity: 0.5;
	background-color: #000000;
	left: 0;
	top: 0
}

#img_pop {
	position: absolute;
	z-index: 500;
	width: 1124px;
	height: 500px;
	overflow-y: scroll;
	display: none;
	background-color: #red;
	border: 2px solid #cccccc
}

#img_body {
	position: absolute;
	z-index: 9;
	display: block;
	filter: alpha(opacity = 50);
	opacity: 0.5;
	-moz-opacity: 0.5;
	background-color: #000000;
	left: 0;
	top: 0
}
.btn-close{color: #4b4f56; font-size: 12px; padding:0px;right:0; top:0; position:absolute;z-index:10;}
.content {background: none !important;
    padding-bottom: 0px !important;
    height: auto;
    min-height: 0px !important;}
</style>
<script type="text/javascript">
	function pushLayer() {
		var $width = parseInt($("#lay_pop").css("width"));
		var $height = parseInt($("#lay_pop").css("height"));
		var left = ($(window).width() - $width) / 2;
		var sctop = $(window).scrollTop() * 2;
		var top = ($(window).height() - $height + sctop) / 2;
		var height = document.getElementsByTagName("body")[0].scrollHeight;
		$("#lay_pop").css("left", left);
		$("#lay_pop").css("top", top);
		$("#lay_pop").css("display", "block");
		$("#lay_pop").css("z-index", "555");
		$("#all_body").css("display", "block");
		$("#all_body").css("width", $(window).width());
		$("#all_body").css("height", height);

	}
	function layerClose(lay1, lay2) {
		$("#" + lay1).css("display", "none");
		$("#" + lay2).css("display", "none");
	}
	
	
	function imgLayer() {
		var $width = parseInt($("#img_pop").css("width"));
		var $height = parseInt($("#img_pop").css("height"));
		var left = ($(window).width() - $width) / 2;
		var sctop = $(window).scrollTop() * 2;
		var top = ($(window).height() - $height + sctop) / 2;
		var height = document.getElementsByTagName("body")[0].scrollHeight;
		$("#img_pop").css("left", left);
		$("#img_pop").css("top", top);
		$("#img_pop").css("display", "block");
		$("#img_pop").css("z-index", "555");
		$("#img_body").css("display", "block");
		$("#img_body").css("width", $(window).width());
		$("#img_body").css("height", height);

	}
	function imgClose(lay1, lay2) {
		$("#" + lay1).css("display", "none");
		$("#" + lay2).css("display", "none");
	}
	
	
</script>
<link rel="apple-touch-icon"
	href="../assets/img/kit/free/apple-icon.png">
<link rel="icon" href="../assets/img/kit/free/favicon.png">
<title>Material Kit by Creative Tim</title>
<!--     Fonts and icons     -->
<link rel="stylesheet" type="text/css"
	href="../assets/assets-for-demo/common.css">
<link rel="stylesheet" type="text/css"
	href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700|Roboto+Slab:400,700|Material+Icons" />
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/font-awesome/latest/css/font-awesome.min.css" />
<link rel="stylesheet" href="../assets/css/material-kit.css?v=2.0.2">
<!-- Documentation extras -->
<!-- CSS Just for demo purpose, don't include it in your project -->
<link href="../assets/assets-for-demo/demo.css" rel="stylesheet" />
<!-- iframe removal -->
</head>

<body class="index-page ">
	<div id="lay_pop">

		<div class="row" style="margin-left: 0; margin-right: 0;">
			<span class="btn-close "><a
				href="javascript:;" class="insert_btn btn btn-lg btn-primary"
				onclick="layerClose('lay_pop','all_body')">닫기</a></span>

			<div class="col-md-12" style="padding:0;">
				<div style="background: #f6f7f9;">

					<div class="title_head">
						<h5 class="title" style="margin-top:0;">사진올리기</h5>
					</div>
					<div class="min_content">
						<a href="#"> <img class="profile rounded-circle img-fluid"
							src="assets/img/kit/faces/avatar.jpg" alt="Circle Image">
						</a>
						<textarea class="insert"></textarea>
					</div>
					<div class="min_foot">
						<div class="filebox">
							<label for="ex_file">사진/동영상</label> <input type="file"
								id="ex_file">
						</div>
						<!-- <span style="font-size: 13px;">친구태그하기</span> <select
							class="select_info">
							<option>선택하세요</option>
							<option>전체공개</option>
							<option>친구공개</option>
						</select> --> 
						<span style="color: #4b4f56; font-size: 12px; padding: 17px;">
							<button type="button" class="insert_btn btn btn-lg btn-primary"
								disabled>등록</button>
						</span>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div id="all_body"></div>
	
		<div id="img_pop">


<div class="row" style="margin-top: 0px; height: 600px;">
			<span style="color: #4b4f56; font-size: 12px;right: 0;z-index:10;
    /* float: right; */
    padding: 0;
    position: absolute;"><a
				href="" class="insert_btn btn btn-lg btn-primary"
				onclick="layerClose('img_pop','img_body')">닫기</a></span>
										<div class="col-md-8" >
							<div class="content">
							  <img style="background: red; width:800px; height:400px; display: block;"src =""/>
							</div>
							
							<!-- 댓글  -->
							<div class="coment">
								<a href="#" style="margin-left: 16px; display: block;"> <img
									style="display: block; float: left; width: 47px;"
									src="assets/img/kit/faces/avatar.jpg" alt="Circle Image"
									class="rounded-circle img-fluid">
								</a>
								<div class="c_wrap">
									<span class="c_info">박보영</span> <span class="c_content">텍스트입이낟.ㅇㄹㄴㅇsdfsdfsdfsdfsdfsfdsfsfsdfsdfㅎㄶㄴㅇㅎㄴㅇㅎㄴㅎㄴㅇㅎㅇ</span>
								</div>
								<div
									style="margin-left: 70px; margin-top: 5px; position: relative;">
									<button class="btnA">수정</button>
									<span>|</span>
									<button class="btnB">삭제</button>
									<span class="year" style="margin-left: 10px; font-size: 13px;">2018-10-20-11-33-40</span>
									<button
										class="likey btn btn-primary btn-fab btn-fab-mini btn-round"
										style="left:324px !important;bottom:-22px; border-radius: 5px; width: 80px;">
										<i class="likey_icon material-icons">favorite</i> <em
											class="likey_num">1</em>
									</button>
								</div>
							</div>
						</div>
						<div class="col-md-4" >
							<div class="content">
								<div class="title_head">
									<h5 class="title">피드</h5>
								</div>
								<div class="min_content">
									<a href="#"> <img class="profile rounded-circle img-fluid"
										src="assets/img/kit/faces/avatar.jpg" alt="Circle Image">
									</a>
									<div class="board_wrap" style="margin-left: 75px;">
										<div class="p_info">
											<span class="c_info" >박보영</span> <span>2018-11-11-12-32-33</span>
										</div>
										<div class="board_content">
											내용입니다. <br> 내용입니다. <br> 내용입니다. <br>
										</div>
										<div style="height: 40px;">
											<div class="tag_wrap">
												<span
													style="font-weight: bold; padding-right: 10px; display: inline-block;">함께한
													친구</span> <a class="tag" href="#">홍길동</a> <a class="tag" href="#">홍홍</a>
											</div>
											<div style="display: inline-block;">
												<button type="submit" class="btnA">수정</button>
												<span>|</span>
												<button type="submit" class="btnB">삭제</button>
											</div>
										</div>
									</div>
								</div>
								<div class="title_head" style="">
									<button
										class="likey btn btn-primary btn-fab btn-fab-mini btn-round"
										style="border-radius: 5px; width: 80px;">
										<i class="likey_icon material-icons">favorite</i> <em
											class="likey_num">1</em>
									</button>
									<button type="button" class="c_c_write btn btn-primary">
										댓글 <span>11개</span>
									</button>
								</div>
							</div>
							<!-- 댓글  -->
							<div class="coment">
								<a href="#" style="margin-left: 16px; display: block;"> <img
									style="display: block; float: left; width: 47px;"
									src="assets/img/kit/faces/avatar.jpg" alt="Circle Image"
									class="rounded-circle img-fluid">
								</a>
								<div class="c_wrap">
									<span class="c_info">박보영</span> <span class="c_content">텍스트입이낟.ㅇㄹㄴㅇsdfsdfsdfsdfsdfsfdsfsfsdfsdfㅎㄶㄴㅇㅎㄴㅇㅎㄴㅎㄴㅇㅎㅇ</span>
								</div>
								<div
									style="margin-left: 70px; margin-top: 5px; position: relative;">
									<button class="btnA">수정</button>
									<span>|</span>
									<button class="btnB">삭제</button>
									<span class="year" style="margin-left: 10px; font-size: 13px;">2018-10-20-11-33-40</span>
									<button
										class="likey btn btn-primary btn-fab btn-fab-mini btn-round"
										style="left:324px !important;bottom:-22px; border-radius: 5px; width: 80px;">
										<i class="likey_icon material-icons">favorite</i> <em
											class="likey_num">1</em>
									</button>
								</div>
							</div>
							<!-- 댓글쓰기 -->
							<div class="coment">
								<a href="#" style="margin-left: 16px; display: block;"> <img
									style="display: block; float: left; width: 47px;"
									src="assets/img/kit/faces/avatar.jpg" alt="Circle Image"
									class="rounded-circle img-fluid">
								</a>
								<div class="c_wrap">
									<span class="c_info" style="width: 42px;">박보영</span> <span
										class="c_content" style="width: 294px;"> <textarea
											class="c_text" style="width: 270px;"></textarea>
									</span>
								</div>
								<button class="c_submit btn btn-lg btn-primary"
									disabled" type="submit" style="">등록</button>
							</div>
						</div>
					</div>
	</div>
	<div id="img_body"></div>
	<div class="main main-raised">
		<div class="section section-basic"></div>
		<div class="section section-navbars cd-section" id="navigation">
			<div class="container"
				style="background: gray; position: relative; max-width: 851px;">
				<div class="col-md-12"
					style="border: 1px solid black; height: 875px; margin: 0 auto;">
					개인정보
					<div
						style="border: 1px solid black; height: 200px; margin: 0 auto; position: relative;">
						상단 사진 커버 이름
						<div
							style="border: 1px solid black; width: 140px; height: 140px; overflow: visible; margin-left: 20px;">프로필
							사진</div>
						<nav class="navbar navbar-expand-lg navbar-light bg-primary"
							style="height: 48px;">
							<div class="container">
								<a class="navbar-brand">홍길동</a>
								<button class="navbar-toggler" type="button"
									data-toggle="collapse" data-target="#navbarNavDropdown"
									aria-controls="navbarNavDropdown" aria-expanded="false"
									aria-label="Toggle navigation">
									<span class="navbar-toggler-icon"></span>
								</button>
								<div class="collapse navbar-collapse" id="navbarNavDropdown">
									<ul class="navbar-nav">
										<li class="nav-item active"><a class="nav-link"
											href="../main/main.jsp">Home <span class="sr-only">(current)</span>
										</a></li>
										<li class="nav-item"><a class="nav-link"
											href="../member/infoMember.jsp">정보</a></li>
										<li class="nav-item"><a class="nav-link" href="#">친구</a>
										</li>
										<li class="nav-item dropdown"><a
											class="nav-link dropdown-toggle" href="#"
											id="navbarDropdownMenuLink" data-toggle="dropdown"
											aria-haspopup="true" aria-expanded="false"> 사진 </a>
											<div class="dropdown-menu"
												aria-labelledby="navbarDropdownMenuLink">
												<a class="dropdown-item" href="#">Action</a> <a
													class="dropdown-item" href="#">Another action</a> <a
													class="dropdown-item" href="#">Something else here</a>
											</div></li>
										<li class="nav-item"><a class="nav-link" href="#"
											style="margin-left: 137px;">친구 끊기</a></li>
									</ul>
								</div>
							</div>
						</nav>
					</div>
					<div class="col-md-12"
						style="border: 1px solid black; height: 600px; margin: 30px 0px; position: relative;">

						<p class="nav-link"
							style="color: #9c27b0; margin: 0 12px 5px; padding: 0; font-weight: 700; font-size: 20px; margin-top: 10px; background: #f6f7f9; border-bottom: 1px solid #d3d6db; border-radius: 2px 2px 0 0; margin-bottom: 15px; min-height: 66px; padding-top: 16px;">
							사진

							<!-- 							<button type="button" class="btn btn-primary">사진 등록</button> -->
							<input type="button" class="btn btn-primary" value="사진 등록"
								onclick="pushLayer()">
						</p>

						<div style="position: relative;">

							<ul class="float-frame">
								<li class="float-unit"><a class="temp nav-link active"
									href="#" onclick="imgLayer()"><img src="../images/bo.jpg"></a>
								<li class="float-unit"><a class="temp nav-link active"
									href="#" onclick="imgLayer()"><img src="../images/bo.jpg"></a></li>
								<li class="float-unit"><a class="temp nav-link active"
									href="#" onclick="imgLayer()"><img src="../images/bo.jpg"></a></li>
								<li class="float-unit"><a class="temp nav-link active"
									href="#" onclick="imgLayer()"><img src="../images/bo.jpg"></a></li>
							</ul>

						</div>
					</div>
				</div>

				<!-- 	            end menu -->
				<!--             navbar -->
				<div id="navbar"></div>
				<!-- end navbar  -->


			</div>

			<!-- Classic Modal -->
			<div class="modal fade" id="myModal" tabindex="-1" role="dialog">
				<div class="modal-dialog" role="document">
					<div class="modal-content">
						<div class="modal-header">
							<h5 class="modal-title">Modal title</h5>
							<button type="button" class="close" data-dismiss="modal"
								aria-label="Close">
								<i class="material-icons">clear</i>
							</button>
						</div>
						<div class="modal-body">
							<p>Far far away, behind the word mountains, far from the
								countries Vokalia and Consonantia, there live the blind texts.
								Separated they live in Bookmarksgrove right at the coast of the
								Semantics, a large language ocean. A small river named Duden
								flows by their place and supplies it with the necessary
								regelialia. It is a paradisematic country, in which roasted
								parts of sentences fly into your mouth. Even the all-powerful
								Pointing has no control about the blind texts it is an almost
								unorthographic life One day however a small line of blind text
								by the name of Lorem Ipsum decided to leave for the far World of
								Grammar.</p>
						</div>
						<div class="modal-footer">
							<button type="button" class="btn btn-link">Nice Button</button>
							<button type="button" class="btn btn-danger btn-link"
								data-dismiss="modal">Close</button>
						</div>
					</div>
				</div>
			</div>
			<!--  End Modal -->
			<footer class="footer ">
				<div class="container"></div>
			</footer>
			<!--   Core JS Files   -->
			<script src="../assets/js/core/jquery.min.js"></script>
			<script src="../assets/js/core/popper.min.js"></script>
			<script src="../assets/js/bootstrap-material-design.js"></script>
			<!--  Plugin for Date Time Picker and Full Calendar Plugin  -->
			<script src="../assets/js/plugins/moment.min.js"></script>
			<!--	Plugin for the Datepicker, full documentation here: https://github.com/Eonasdan/bootstrap-datetimepicker -->
			<script src="../assets/js/plugins/bootstrap-datetimepicker.min.js"></script>
			<!--	Plugin for the Sliders, full documentation here: http://refreshless.com/nouislider/ -->
			<script src="../assets/js/plugins/nouislider.min.js"></script>
			<!-- Material Kit Core initialisations of plugins and Bootstrap Material Design Library -->
			<script src="../assets/js/material-kit.js?v=2.0.2"></script>
			<!-- Fixed Sidebar Nav - js With initialisations For Demo Purpose, Don't Include it in your project -->
			<script src="../assets/assets-for-demo/js/material-kit-demo.js"></script>
			<script>
				$(document).ready(function() {

					//init DateTimePickers
					materialKit.initFormExtendedDatetimepickers();

					// Sliders Init
					materialKit.initSliders();
				});
			</script>
</body>

</html>