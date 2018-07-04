<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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

.navbar {
	display: none !important;
}
</style>
<link rel="apple-touch-icon"
	href="../assets/img/kit/free/apple-icon.png">
<link rel="icon" href="../assets/img/kit/free/favicon.png">
<title>Material Kit by Creative Tim</title>
<!--     Fonts and icons     -->
<link rel="stylesheet" type="text/css"
	href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700|Roboto+Slab:400,700|Material+Icons" />
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/font-awesome/latest/css/font-awesome.min.css" />
<link rel="stylesheet" href="../assets/css/material-kit.css?v=2.0.2">
<!-- Documentation extras -->
<!-- CSS Just for demo purpose, don't include it in your project -->
<link href="../assets/assets-for-demo/demo.css" rel="stylesheet" />
<!-- iframe removal -->
<script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script>
	$(function() {
		$("#joinId").on("keyup", function() {
			$.ajax({
				type : "POST",
				url : "/bitbook/bitbook/joinA",
				data : "id=" + this.value,
				dataType : "json",
				success : function(data) {

					if (data.id == 0) {
						$("#checkMsg").text("사용가능");
					} else if (data.id != 0) {
						$("#checkMsg").text("사용블가능");
					}
				},
				error : function(e) {
					console.log("에러", e.statusText)
					console.log("에러코드", e.status)
				}

			});

		});

	});

	function check() {
		var regExp1 = /^[a-zA-Z0-9]{4,12}$/;
		//id와 비밀번호의 유효성 검사
		var regExp2 = /[a-z0-9]{2,}@[a-z0-9-]{2,}\.[a-z0-9]{2,}/i;
		//e-mail의 유효성 검사
		var regname = /^[가-힝]{2,}$/;
		//이름의 유효성 검사

		// 아이디가 null인지 체크 
		if ($("#joinId").val() == "") {
			alert("아이디는 필수 입력값입니다.");
			$("#joinId").focus();
			return false;
		}

		// 비밀번호 null인지 체크 
		if ($("#joinPass").val() == "") {
			alert("비밀번호를 입력해주세요.");
			$("#joinPass").focus();
			return false;
		}
		;
		// 비밀번호 일치 하는지 체크 
		if ($("#joinPass").val() != $("#joinPassRe").val()) {
			alert("비밀번호가 일치하지않습니다. 다시 확인해주세요.");
			$("#joinPass").focus();
			return false;
		}

		if ($("#joinId").val() == $("#joinEmail").val()) {
			alert("아이디와  메일이 동일한 값은 올 수 없습니다.");
			$("#joinId").focus();
			return false;
		}
		// 이름 입력체크 
		if ($("#joinName").val() == "") {
			alert("이름을 입력해주세요.");
			$("#joinName").focus();
			return false;
		};
		if (regname.test($("#joinName").val()) == false) {
			alert("이름을 확인해주세요.");
			$("#joinName").focus();
			return false;
		}
		;
		
		

		// 이메일 입력체크 
		if ($("#joinEmail").val() == "") {
			alert("이메일 형식이 잘못되었습니다.");
			$("#joinEmail").focus();
			return false;
		}

		if (regExp2.test($("#joinEmail").val()) == false) {
			alert("이메일 형식이 잘못되었습니다.");
			$("#joinEmail").focus();
			return false;
		}
		;

		if ($("#keyValue").val() == "") {
			alert("인증을 해주세요.");
			return false;
		}
		alert("가입이 완료되었습니다.로그인해주세요!");

	};
	$(document)
			.ready(
					function() {
						$
								.ajax({
									url : "/bitbook/jsp/login/test.jsp",
									dataType : "json",
									success : function(data) {
										console
												.log("=========================")
										console.dir(data);
										console.log(data.key);
										$("#key").val(data.key);
										console
												.log("=========================")
										$("#div01")
												.html(
														"<img algin='center' src='/bitbook/img/"+data.captchaImageName+"'>");
									}
								});
						$("#btn01").on("click", function() {
							var form01Data = $("#joinForm").serialize();
							console.log(form01Data);
							$.ajax({
								url : "/bitbook/jsp/login/test.jsp",
								data : form01Data,
								dataType : "json",
								success : function(data) {
									alert("값이 일치합니다.")
									$("#keyValue").val("값일치");
								},
								error : function(request, status, error) {
									alert("값이 일치하지 않습니다.")
/* 									$("#msg").text("값이 틀려요!");
 */									location.reload();
									// 실패 시 처리
								},

							});
						});
					});
</script>
</head>

<body class="index-page ">


	<div class="main main-raised">
		<div class="section section-basic" style="padding: 0;"></div>
		<!-- 	<div class="section section-navbars cd-section" id="navigation"
			style="padding: 0;"> -->
		<div class="container"></div>
		<!-- <div class="section section-tabs"> -->
		<div class="container">
			<div class="section section-signup page-header"
				style="background-image: url('assets/img/kit/free/city.jpg'); height: auto;">
				<div class="container">
					<div class="row">
						<div class="col-md-4 ml-auto mr-auto">
							<div class="card card-signup">
								<form class="form" id="joinForm" onsubmit="return check()"
									method="post"
									action="${pageContext.request.contextPath}/bitbook/join">
									<div class="card-header card-header-primary text-center">
										<h4>Sign Up</h4>
									</div>
									<div class="card-body">
										<div class="input-group">
											<span class="input-group-addon"> <i
												class="material-icons">face</i>
											</span> <input id="joinId" type="text" name="id"
												class="form-control" placeholder="아이디">
											<!-- <a id="test" href="">중복확인</a> -->
											<div id="checkMsg"></div>
										</div>
										<div class="input-group">
											<span class="input-group-addon"> <i
												class="material-icons">lock_outline</i>
											</span> <input type="password" id="joinPass" name="pass"
												class="form-control" placeholder="비밀번호">
										</div>
										<div class="input-group">
											<span class="input-group-addon"> <i
												class="material-icons">lock_outline</i>
											</span> <input type="password" id="joinPassRe" name="pass_repeat"
												class="form-control" placeholder="비밀번호 재확인">
										</div>
										<div class="input-group">
											<span class="input-group-addon"> <i
												class="material-icons">face</i>
											</span> <input type="text" name="name" id="joinName"
												class="form-control" placeholder="이름">
										</div>
										<div class="input-group">
											<span class="input-group-addon"> <i
												class="material-icons">email</i>
											</span> <input type="text" id="joinEmail" name="email"
												class="form-control" placeholder="Email...">
										</div>

										<div class="input-group">
											<div id="div01"
												style="width: 200px; height: 100px; margin: auto;"></div>

										</div>
										<div class="input-group" style="margin-top: 0;">
											<div>
												<input type="hidden" id="key" name="key"> <input
													type="text" class="form-control" name="value"
													style="width: 200px;">
												<button type="button" id="btn01"
													style="top: 0; position: absolute; right: 0;">전송</button>
											</div>
											<input type="hidden" name="msg" value="" id="keyValue">
											<!-- <div id="msg" style="position: absolute; top: 40px;"></div> -->
										</div>

										<div class="card-footer justify-content-center">
											<button class="btn btn-primary">가입하기</button>
											<a href="${pageContext.request.contextPath}/bitbook/login"
							class="btn btn-link btn-primary btn-lg">홈으로</a>

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
							regelialia. It is a paradisematic country, in which roasted parts
							of sentences fly into your mouth. Even the all-powerful Pointing
							has no control about the blind texts it is an almost
							unorthographic life One day however a small line of blind text by
							the name of Lorem Ipsum decided to leave for the far World of
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
<!-- 		<footer class="footer ">
			<div class="container">

				<div class="copyright pull-right">
					&copy;
					<script>
						document.write(new Date().getFullYear())
					</script>
					, made with <i class="material-icons">favorite</i> by <a
						href="https://www.creative-tim.com" target="_blank">Creative
						Tim</a> for a better web.
				</div>
			</div>
		</footer> -->
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