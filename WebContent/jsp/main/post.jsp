<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<!-- 개인 실행시 주석 열기
<html lang="en">
<head>
 -->
<meta charset="utf-8">
<meta
	content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0"
	name="viewport" />
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
<!-- Favicons -->
<link rel="apple-touch-icon" href="../assets/img/kit/free/apple-icon.png">
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
<style>
</style>
<!-- 개인 실행시 주석 열기
</head>
<body>

  -->
	<div class="row" style="margin-top: 0px; height: 600px;">
		<!-- 게시글 -->
		<div class="col-md-12" >
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
				<!-- 게시글 -->
				
				
				
				<!-- 덧글 불러오기 -->
						<c:import url="comment.jsp" >
					    <c:param name="게시글번호"> 게시글번호 넘겨주기 </c:param>
					  	</c:import>
				<!-- 덧글 불러오기 -->
						
		</div>
	</div>
	
	
	
<!-- 개인 실행시 주석 열기


</body>
</html>
 -->		