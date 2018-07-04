<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
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
.purple-filter:after {
	background: rgba(101, 47, 142, 0.64);
	background: linear-gradient(45deg, rgba(101, 47, 142, 0.88) 0%,
		rgba(125, 46, 185, 0.45) 100%);
	background: -moz-linear-gradient(135deg, rgba(101, 47, 142, 0.88) 0%,
		rgba(125, 46, 185, 0.45) 100%);
	background: -webkit-linear-gradient(135deg, rgb(251, 70, 131) 0%,
		rgb(206, 132, 157) 100%) !important;
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
<link rel="stylesheet"
	href="/bitbook/jsp/assets/css/material-kit.css?v=2.0.2">
<!-- Documentation extras -->
<!-- CSS Just for demo purpose, don't include it in your project -->

<link href="/bitbook/jsp/assets/assets-for-demo/demo.css?ver=1"
	rel="stylesheet" />
<link href="/bitbook/jsp/assets/assets-for-demo/common.css?ver=1"
	rel="stylesheet" />
<!-- iframe removal -->
<!--  순서가 중요하다 .-->
    <script src="/bitbook/jsp/assets/js/core/jquery.min.js"></script>
    <script src="/bitbook/jsp/assets/js/core/popper.min.js"></script>
    <script src="/bitbook/jsp/assets/js/bootstrap-material-design.js"></script>

<!-- <script	src="http://ajax.googleapis.com/ajax/libs/jquery/1.10.1/jquery.min.js"></script> -->
<!-- <script src="/bitbook/js/topMenu.js"></script> -->
<style>
#noti_Container {
	right:10px;
	position: relative;
}
/* A CIRCLE LIKE BUTTON IN THE TOP MENU. */
#noti_Button {
	width: 22px;
	height: 22px;
	line-height: 22px;
	border-radius: 50%;
	-moz-border-radius: 50%;
	-webkit-border-radius: 50%;
	background: #9c27b0;
	margin: -3px 10px 0 10px;
	cursor: pointer;
}

/* THE POPULAR RED NOTIFICATIONS COUNTER. */
#noti_Counter {
	display: block;
	position: absolute;
	background: #E1141E;
	color: #FFF;
	font-size: 12px;
	font-weight: normal;
	padding: 1px 3px;
	margin: -8px 0 0 25px;
	border-radius: 2px;
	-moz-border-radius: 2px;
	-webkit-border-radius: 2px;
	z-index: 1;
}

/* THE NOTIFICAIONS WINDOW. THIS REMAINS HIDDEN WHEN THE PAGE LOADS. */
#notifications {
	display: none;
	width: 480px;
	position: absolute;
	top: 30px;
	left: 0;
	background: #FFF;
	border: solid 1px rgba(100, 100, 100, .20);
	-webkit-box-shadow: 0 3px 8px rgba(0, 0, 0, .20);
	z-index: 0;
}
/* AN ARROW LIKE STRUCTURE JUST OVER THE NOTIFICATIONS WINDOW */
#notifications:before {
	content: '';
	display: block;
	width: 0;
	height: 0;
	color: transparent;
	border: 10px solid #CCC;
	border-color: transparent transparent #FFF;
	margin-top: -20px;
	margin-left: 10px;
}

h3 {
	display: block;
	color: #333;
	background: #FFF;
	font-weight: bold;
	font-size: 13px;
	padding: 8px;
	margin: 0;
	border-bottom: solid 1px rgba(100, 100, 100, .30);
}

.seeAll {
	background: #F6F7F8;
	padding: 8px;
	font-size: 12px;
	font-weight: bold;
	border-top: solid 1px rgba(100, 100, 100, .30);
	text-align: center;
}


#coverSpan{
	opacity: 0;
}
#coverSpan:hover{
	opacity: 1;
	    transition: opacity .3s cubic-bezier(.175, .885, .32, 1.275), width .3s step-end;
}
/* 호버시 효과
     .seeAll a {
        color:#3b5998;
    }
    .seeAll a:hover {
        background:#F6F7F8;
        color:#3b5998;
        text-decoration:underline;
    } */
</style>
</head>
<body class="index-page ">
	<nav class="navbar fixed-top navbar-expand-lg " color-on-scroll="100"
		id="sectionsNav"
		style="position: fixed; color: #fff; background-color: #9c27b0 !important; -webkit-box-shadow: 0 4px 20px 0 rgba(0, 0, 0, 0.14), 0 7px 12px -5px rgba(156, 39, 176, 0.46); box-shadow: 0 4px 20px 0 rgba(0, 0, 0, 0.14), 0 7px 12px -5px rgba(156, 39, 176, 0.46);">
		<div class="container">
			<div class="navbar-translate">
			<a href="${pageContext.request.contextPath}/main"
							class="btn btn-link btn-primary btn-lg"style="color: #fff;font-size:14px;">
				Bit
					book </a>
				<button class="navbar-toggler" type="button" data-toggle="collapse"
					aria-expanded="false" aria-label="Toggle navigation">
					<span class="navbar-toggler-icon"></span> <span
						class="navbar-toggler-icon"></span> <span
						class="navbar-toggler-icon"></span>
				</button>
			</div>
			<div class="collapse navbar-collapse">
				<ul class="navbar-nav ml-auto">
				
					<li id="noti_Container">
						<div id="noti_Counter"></div> <!--SHOW NOTIFICATIONS COUNT.--> <!--A CIRCLE LIKE BUTTON TO DISPLAY NOTIFICATION DROPDOWN.-->
						<div id="noti_Button">
							<i class="material-icons">notifications</i>
						</div> <!--THE NOTIFICAIONS DROPDOWN BOX.-->
						<div id="notifications">
							<h3>알림</h3>
							<div style="height: 300px;">
								<div id="noti-board" class="f_info col-md-12" style="height: 300px; overflow: auto;">
									<!-- <div><a class="f_link" style="display: block;" href=""> <img
											src="assets/img/kit/faces/avatar.jpg" alt="Circle Image"
											class="f_img rounded-circle img-fluid"></a>
										<div class="login"></div>
										<a href=""><span class="f_name c_info">박보영</span></a>
										<p class="friendInfo">님이 친구신청 하였습니다.</p>
									<button onclick="" class="btn btn-sm ">이 알림 숨기기</button></div> -->
								</div>
							</div>
							<!--      <div class="seeAll"><a href="#">See All</a></div>  알림목록 전체보기  -->
						</div>
						
					</li>
					<li class="nav-item">
						 <!--  세션이 유지되어있을때는  -->
							<c:choose>
									<c:when test="${empty sessionScope.user}">
										<a class="nav-link" href="<c:url value="/bitbook/login" />">로그인</a>
									</c:when>
									<c:otherwise>
								<div> <a style="color:white;" href='/bitbook/member/outline?memNo=${sessionScope.user.memNo}'> ${sessionScope.user.memId}님 접속 </a></div>
				
										<!--      <input type="hidden" name="login" value="N"> -->
									</c:otherwise>
								</c:choose>
							
							<div class="ripple-container"></div></li>
					
					<li class="nav-item">
					<c:if test="${!empty sessionScope.user }">
					<a class="nav-link" href="<c:url value="/bitbook/logout" />">로그아웃</a>
					</c:if>
					</li>
					<li class="nav-item"><a class="nav-link"
						href="/bitbook/friends/list?memNo=${sessionScope.user.memNo}" onclick="scrollToDownload()"> 친구 찾기
							<div class="ripple-container"></div>
					</a></li>
				
				</ul>
			</div>
		</div>
	</nav>
<script>
var memNo = ${sessionScope.user.memNo};
var notCnt = 0;
$(document).ready(function () {
    // ANIMATEDLY DISPLAY THE NOTIFICATION COUNTER.
    $.ajax({
			url:"/bitbook/notification/list",
			data:"memNo="+memNo,
			dataType:"json",
			success:function(data){
				makeNoti(data);
			}
		});
  	setInterval(function(){ 
		$.ajax({
			url:"/bitbook/notification/list",
			data:"memNo="+memNo,
			dataType:"json",
			success:function(data){
				makeNoti(data);
			}
		});
  	}, 1000);

    $('#noti_Button').click(function () {

        // TOGGLE (SHOW OR HIDE) NOTIFICATION WINDOW.
        $('#notifications').fadeToggle('fast', 'linear', function () {
            if ($('#notifications').is(':hidden')) {
                $('#noti_Button').css('background-color', '#9c27b0');
            }
            else $('#noti_Button').css('background-color', '#9c27b0');        // CHANGE BACKGROUND COLOR OF THE BUTTON.
        });

        $('#noti_Counter').fadeOut('slow');                

        return false;
    });

    $(document).click(function () {
        $('#notifications').hide();

        if ($('#noti_Counter').is(':hidden')) {
            $('#noti_Button').css('background-color', '#9c27b0');
        }
    });

});
function makeNoti(data){
	var html="";
	$("#noti-board").html(html);
	for(n in data){
		var date = new Date(data[n].notRegDate); 
		var regDate = " "+date.getMonth()+"월 "+date.getDate()+"일 "+date.getHours()+":"+date.getMinutes();
		if(data[n].memNo==data[n].reqMemNo)
			continue;
		if(data[n].notState=='N'||data[n].notState=='R'){
			html+='<div';
			if(data[n].notState=='N'){
				notCnt++;
				html+=' style="background-color:#edf2fa"';
			};
	 	 	html+='><a class="f_link" style="display: block;" href="/bitbook/notification/updateNotiRead?memNo='+data[n].memNo+'&notNo='+data[n].notNo+'&postno='+data[n].reqNo+'"> <img      ';
			html+='src="'+data[n].profilePath+'" alt="Circle Image"          ';
			html+='class="f_img rounded-circle img-fluid">                     ';
			html+='		<div ';
			if(data[n].login=='i'){
				html+= ' style="background:green;" ';
			}
			html+='	class="login"></div>';
			html+='<span class="f_name c_info" style="width: 250px;">'+data[n].memName+'님이 '+data[n].notType+" "+data[n].notMessage+'</span></a>          ';
			html+='<span style="color:black"class="friendInfo">'+regDate+'</span>               ';
			html+='<button onclick="javascript:updateNotiHide('+data[n].notNo+')" class="btn btn-sm ">이 알림 숨기기</button></div>'; 
		}
	}
	$("#noti-board").html(html); 
	if(notCnt!=0){
	    $('#noti_Counter')
	        .css({ opacity: 0 })
	        .text(notCnt)              
	        .css({ top: '-10px' })
	        .animate({ top: '-2px', opacity: 1 }, 500);
	    notCnt=0;
	}
}
function updateNotiHide(notNo){
	$.ajax({
		url:"/bitbook/notification/updateNotiHide",
		data:{
			"notNo":notNo,
			"memNo":memNo
		},
		success:function(data){
			$("#noti-board").html("  ");
			makeNoti(data);
		}
	});
}
</script>
</body>
</html>
