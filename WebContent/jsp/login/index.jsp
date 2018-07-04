<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta
	content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0"
	name="viewport" />
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
<!-- Favicons -->
<style>
body.index-page {
	background: #fff !important;
	/* -webkit-linear-gradient(135deg, rgb(251, 70, 131) 0%, rgb(206, 132, 157) 100%) !important;*/
}
/* .purple-filter:after {     background: none !important;}*/
.purple-filter:after {
	/*   background: rgba(101, 47, 142, 0.64);
    background: linear-gradient(45deg, rgba(101, 47, 142, 0.88) 0%, rgba(125, 46, 185, 0.45) 100%);
    background: -moz-linear-gradient(135deg, rgba(101, 47, 142, 0.88) 0%, rgba(125, 46, 185, 0.45) 100%);
    background: -webkit-linear-gradient(135deg, rgb(251, 70, 131) 0%, rgb(206, 132, 157) 100%) !important; */
	
}

.footer {
	color: #fff;
}

.purple-filter:after {
	opacity: 0.5 !important;
}
.btn {
margin:0 !important;
}
.error {     margin: 10px;
    padding-left: 15px;
    color: red;
    font-size:12px;
}}
</style>
<link rel="apple-touch-icon"
	href="/bitbook/jsp/assets/img/kit/free/apple-icon.png">
<link rel="icon" href="/bitbook/jsp/assets/img/kit/free/favicon.png">
<title>BitBook</title>
<!--     Fonts and icons     -->
<link rel="stylesheet" type="text/css"
	href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700|Roboto+Slab:400,700|Material+Icons" />
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/font-awesome/latest/css/font-awesome.min.css" />
<link rel="stylesheet"
	href="/bitbook/jsp/assets/css/material-kit.css?v=2.0.2">
<!-- Documentation extras -->
<!-- CSS Just for demo purpose, don't include it in your project -->
<link href="/bitbook/jsp/assets-for-demo/demo.css" rel="stylesheet" />
<!-- iframe removal -->
<!-- <script type="text/javascript"
	src="https://static.nid.naver.com/js/naverLogin_implicit-1.0.3.js"
	charset="utf-8"></script>-->
<script type="text/javascript"
	src="http://code.jquery.com/jquery-1.11.3.min.js"></script>
<script src="/bitbook/js/naveridlogin_js_sdk_2.0.0.js"></script>
</head>

<body class="index-page ">
	<div class="page-header header-filter clear-filter purple-filter"
		data-parallax="true"
		style="background-image: url('/bitbook/img/bg.jpg');">
		<div class="container">
			<div class="row">
				<div class="col-md-8 ml-auto mr-auto" style="line-height: 420px;">
					<div class="brand">
						<h1>BitBook</h1>
					</div>
				</div>
				<div class="col-md-4 ml-auto mr-auto">
					<div class="card card-signup" style="margin-top: 87px;">

						<form class="form" method="post"
							action="${pageContext.request.contextPath}/bitbook/login">
							<div class="card-header card-header-primary text-center">
								<h4>Login</h4>
								<!-- 		<div class="social-line">
									<a href="#pablo" class="btn btn-link btn-just-icon"> <i
										class="fa fa-facebook-square"></i>
									</a> <a href="#pablo" class="btn btn-link btn-just-icon"> <i
										class="fa fa-twitter"></i>
									</a> <a href="#pablo" class="btn btn-link btn-just-icon"> <i
										class="fa fa-google-plus"></i>
									</a>
								</div> -->
							</div>
							<div class="card-body">
								<div class="input-group">
									<span class="input-group-addon"> <i
										class="material-icons">email</i>
									</span> <input type="text" name="id" class="form-control"
										placeholder="id...">
								</div>
								<p class="error">${errId}</p>
								<div class="input-group">
									<span class="input-group-addon"> <i
										class="material-icons">lock_outline</i>
									</span> <input type="password" name="pass" class="form-control"
										placeholder="pass...">
								</div>
								<p class="error">${errPw}</p>
							</div>
							<div class="card-footer justify-content-center">
								<button class="btn btn-primary">로그인</button>

							</div>


						</form>
						<form name="socialForm" method="post"
							action="${pageContext.request.contextPath}/bitbook/loginController">
							<input type="hidden" id="si" name="sId"> <input
								type="hidden" name="sName"> <input type="hidden"
								name="sEmail">
						</form>
						<a href="${pageContext.request.contextPath}/bitbook/joinForm"
							class="btn btn-link btn-primary btn-lg">회원가입</a> <a
							href="${pageContext.request.contextPath}/bitbook/FindEmail"
							class="btn btn-link btn-primary btn-lg">아이디찾기/비밀번호찾기</a>

						<div class="card-footer justify-content-center">
							<div id="naverIdLogin">
								<div id="naverIdLogin">
									<!-- <img src="https://static.nid.naver.com/oauth/big_g.PNG" width=320> -->
								</div>
							</div>

						</div>
					</div>
				</div>
			</div>
		</div>

	</div>
	<div>
		<footer class="footer "
			style="font-size: 12px; padding-top: 0; padding-bottom: 0; color: #3a3a3a; font-weight: 600;">
			<div class="container">
				<div class="copyright pull-right">© Bitbook 2018 박정아 정진솔 최운영</div>
			</div>
		</footer>
	</div>
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

	<script src="https://code.jquery.com/jquery-1.12.1.min.js"></script>
	<script
		src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
	<script type="text/javascript"
		src="https://static.nid.naver.com/js/naveridlogin_js_sdk_2.0.0.js"
		charset="utf-8"></script>

	<!-- 네이버아디디로로그인 초기화 Script -->
	<script type="text/javascript">
		var naverLogin = new naver.LoginWithNaverId({
			clientId : "2wQa5v5azfo7RqtDTtYw",
			callbackUrl : "http://localhost/bitbook/jsp/login/index.jsp",
			isPopup : false, /* 팝업을 통한 연동처리 여부 */
			loginButton : {
				color : "white",
				type : 2,
				height : 45
			}
		/* 로그인 버튼의 타입을 지정 */
		});

		/* 설정정보를 초기화하고 연동을 준비 */
		naverLogin.init();

		/* (4-1) 임의의 링크를 설정해줄 필요가 있는 경우 */
		/*	$("#gnbLogin").attr("href", naverLogin.generateAuthorizeUrl()); */

		/* (5) 현재 로그인 상태를 확인 */
		window.addEventListener('load', function() {
			naverLogin.getLoginStatus(function(status) {
				console.log(status);
				if (status) {
					/* (6) 로그인 상태가 "true" 인 경우 로그인 버튼을 없애고 사용자 정보를 출력합니다. */
					setLoginStatus();
				}
			});
		});

		/* (6) 로그인 상태가 "true" 인 경우 로그인 버튼을 없애고 사용자 정보를 출력합니다. */
		function setLoginStatus() {
			// 네이버 로그인 후 해야할 일 
			// 최초 로그인 이면 회원가입 필요
			// 회원 가입되어 있다면 로그인 세션에 추가 필요
			console.dir(naverLogin.user);
			/* 			if(email == undefined || email == null){
			 alert("이메일 정보가 필요해");
			 naverLogin.reprompt();
			 return;
			 }
			 */

			naverLogin.logout();
			// 회원가입할때 필요한 정보를 user에 있어야 됨.
			var profileImage = naverLogin.user.getProfileImage();
			var nickName = naverLogin.user.getNickName();
			var name = naverLogin.user.getName();
			var id = naverLogin.user.getId();
			var email = naverLogin.user.getEmail();
			var f = document.socialForm;
			f.sId.value = id;
			f.sName.value = name;
			f.sEmail.value = email;
			f.submit();
			//alert(f.sociaEmail);

			//var obb = [id,email,name];
			/* var allData = {"id": id, "email":email, "name":name} */
			//alert(email);
			//alert(obb);
			$("#gnbLogin").html("Logout");
			//	$("#naverIdLogin_loginButton").html('<br><br><img src="' + profileImage + '" height=50 /> <p>' + nickName + '님 반갑습니다.</p>');
			//$("#naverIdLogin_loginButton img").attr("src","/bitbook/img/nl.png");
			//			$("#naverIdLogin_loginButton").removeAttr("href");
			$("#naverIdLogin_loginButton").click(function() {
				$.ajax({
					//url:"/bitbook/bitbook/loginController",
					data : allData,
					success : function(data) {
						console.log(allData);
						//alert("타는지");
						//alert(allData);		
					}
				});

				/* (7) 로그아웃 버튼을 설정하고 동작을 정의합니다. */
				/* 		$("#gnbLogin").click(function () {
				 naverLogin.logout();
				 //location.reload();			
				 /* 	$.ajax({+
				 url:"/bitbook/join",
				 data:allData,
				 success:function(data){
				
				 alert("됨");
				 }
				
				 }); */

			});

		}
	</script>

</body>

</html>