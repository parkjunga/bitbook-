<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="utf-8">
<meta content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0" name="viewport" />
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
<link rel="apple-touch-icon" href="../assets/img/kit/free/apple-icon.png">
<link rel="icon" href="../assets/img/kit/free/favicon.png">
<title>Material Kit by Creative Tim</title>
<!--     Fonts and icons     -->
<link rel="stylesheet" type="text/css" href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700|Roboto+Slab:400,700|Material+Icons" />
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/latest/css/font-awesome.min.css" />
<link rel="stylesheet" href="../assets/css/material-kit.css?v=2.0.2">
<!-- Documentation extras -->
<!-- CSS Just for demo purpose, don't include it in your project -->
<link href="../assets/assets-for-demo/demo.css" rel="stylesheet" />
<!-- iframe removal -->
<script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>

</head>
<body class="index-page ">
	<div class="main main-raised">
		<div class="section section-basic"></div>
		<div class="section section-navbars cd-section" id="navigation">
			<div class="container" style="background: white; position: relative; max-width: 851px;">
				<div class="col-md-12" style="border: 1px solid #e0e0e0; height: 875px; margin: 0 auto;">
					<h4 style="border-bottom: 1px solid #e0e0e0; padding: 17px 0; font-weight: 700;">계정찾기</h4>
					<form method="post" action="${pageContext.request.contextPath}/bitbook/FindId"  onsubmit="return findId()" >					
						<div class="form-group">
							<label for="memName" class="bmd-label-floating"></label>
							<input type="text" class="form-control" id="FineName" name="name" placeholder="이름">
							<p id="alert">${errId}</p>
						</div>
						<div class="form-group">
							<label for="memEmail"></label>
							<input type="text" class="form-control" id="FinMail" name="email" aria-describedby="emailHelp" placeholder="이메일">
						</div>
						<div class="form-group" style="text-align: center;">
							<button type="submit" class="btn btn-sm btn-primary">확인</button>
							<a href="" class="btn btn-sm btn-warning">취소</a>
						</div>
					</form>
					
				
				
					<h4 style="border-bottom: 1px solid #e0e0e0; padding: 17px 0; font-weight: 700;">비밀번호찾기</h4>
					<form method="post" action="${pageContext.request.contextPath}/bitbook/FindEmailDirect"  onsubmit="return find()">					
						<div class="form-group">
							<label for="memName" class="bmd-label-floating"></label>
							<input type="text" class="form-control" id="memName" name="name" placeholder="이름">
							<p id="alert">${errPass}</p>
						</div>
						<div class="form-group">
							<label for="memEmail"></label>
							<input type="text" class="form-control" id="memEmail" name="email" aria-describedby="emailHelp" placeholder="이메일">
							<a href="#" id="FindEmail" class="btn btn-sm btn-success" type="button">인증번호 받기</a>
						</div>
						<div class="form-group">
							<label for="exampleInputPassword1">인증번호</label>
							<input type="text" class="form-control" id="code" placeholder="Code">
							<div id="Conmsg"></div>
						</div>
						<div class="form-group" style="text-align: center;">
							<button type="submit" class="btn btn-sm btn-primary">확인</button>
							<a href="" class="btn btn-sm btn-warning">취소</a>
						</div>
					</form>
					
				</div>
			</div>
		</div>
	</div>
	<script>
	
	// 계정찾기 --------------------------------------------------
	
	var regExp2 = /[a-z0-9]{2,}@[a-z0-9-]{2,}\.[a-z0-9]{2,}/i;
	//e-mail의 유효성 검사
	var regname = /^[가-힝]{2,}$/;
	//이름의 유효성 검사
	 function findId(){

		
		if($("#FindName").val()==""){
			alert("이름을 입력해주세요!");
			return false;
		}
		if($("#FindMail").val()== ""){
			alert("이메일을 입력해주세요!");
			return false;
		}

	}; 
	
	
	// 비번 찾기 ----------------------------------------------------
 function find(){

	if($("#memName").val()==""){
		alert("이름을 입력해주세요!");
		return false;
	}
	if($("#memEmail").val()== ""){
		alert("이메일을 입력해주세요!");
		return false;
	}
	if($("#code").val() == ""){
		alert("인증 받고 오세요 ");
		return false;
	}

}; 

	
var num = 0;
$("#FindEmail").on("click",function(){
	alert("인증번호를 발송했습니다.")
	$.ajax({
		type:"POST",
		data: "email="+$("#memEmail").val(),
		url : "/bitbook/bitbook/code",
		success : function(data) {
			num = data;
			console.log(num);
		}
	})


	});


$("#code").on("keyup", function() {
	console.log(num)
	console.log($("#code").val())
	
	if(parseInt($(this).val())-num == 0) {
		$("#Conmsg").text("사용가능");
		return;
	}else{
		$("#Conmsg").text("사용불가능");
		return;
	}
/*	
error : function(e) {
	console.log("에러", e.statusText)
	console.log("에러코드", e.status)
}
*/
});

  
  

 
</script>
</body>
</html>