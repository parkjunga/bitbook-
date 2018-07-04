<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="en">
<head>
<style>
	a #data:hover{
		
	}
	hr{
    border: 1px solid;
    background color: #90949c;
    width: 360px;
}
</style>
<!-- <script src="https://code.jquery.com/jquery-3.3.1.min.js"></script> -->

</head>
<body class="index-page ">
	
    <div class="main main-raised">
        <div class="section section-basic">
		</div>
        <div class="section section-navbars cd-section" id="navigation">
            <div class="container" style=" position: relative; max-width: 851px;">
           		<div class="col-md-12" style="border: 1px solid black; height: auto; margin: 0 auto;">
           		
           		<c:import url="../include/memberTop.jsp"></c:import>
           		
           		
           		<div class="col-md-12" style="border: 1px solid black;min-height:868px; height: auto; margin: 30px 0px; position: relative;">
					<p class="nav-link" style="color :#9c27b0; margin:0 12px 5px; padding:0; font-weight:700; font-size: 20px;margin-top: 10px;    background: #f6f7f9;
    border-bottom: 1px solid #d3d6db;
    border-radius: 2px 2px 0 0;
    margin-bottom: 15px;
    min-height: 66px;
    padding-top: 16px;"> 정보</p>
					<div style="  position: relative;   ">
							<ul class="nav   flex-column nav-pills nav-pills-icons" role="tablist" style="width: 242px;float: left">
								<li class="nav-item"><a class="nav-link"
									href="outline?memNo=${memberDetail.memNo }"> 개요 </a></li>
								<li class="nav-item"><a class="nav-link"
									href="career?memNo=${memberDetail.memNo }"
									>경력 및 학력</a></li>
								<li class="nav-item"><a class="nav-link"
									href="addr?memNo=${memberDetail.memNo }"> 거주했던 장소</a></li>
								<li class="nav-item"><a class="nav-link active show"
									href="#"> 연락처 및 기본 정보</a></li>
								<li class="nav-item"><a class="nav-link"
									href="introduce?memNo=${memberDetail.memNo }"> 자세한 내 소개</a></li>
							</ul>
							<ul  id="rightUl" class="nav flex-column" style="    border-left: 1px solid #ccc;
    min-height: 280px;
    padding: 30px 24px 0;
    position: relative;
    width: 408px;
}">	
						<h4>연락처 정보</h4>
						<hr>
						<h4>휴대폰</h4>
						<c:if test='${memberDetail.memNo eq sessionScope.user.memNo && memberDetail.phone eq null || memberDetail.phone eq ""}'>
						<li><button  name="btn-phone" type="button" class="btn btn-secondary" >
							<i class="material-icons">create</i><span>휴대폰 추가</span></button>
						</li>
						<hr>
						<div id="div-phone" style="display:none;">
						<form method='post' action='updtPhone' style="align-content: center">
							<input type="hidden" name="memNo" value="${sessionScope.user.memNo}" />
							<div class="form-group">
								    <label for="exampleInputPassword1">휴대폰</label>
								    <input type="text" class="form-control" name="phone" placeholder="000-0000-0000">
							</div>
							<button type='submit' class="btn btn-success btn-sm">변경 내용 저장하기</button>
							<button type="button" name="btn-phone" class="btn btn-rose btn-sm">취소</button>
						</form>
						</div>
						</c:if>
						<li id="phoneLi" class="dropdown nav-item">
						<div  style="float:left;">
						<a id="data" style="font-size:24px;">
							 ${memberDetail.phone}
							<c:if test='${memberDetail.phone eq null}'>
								<h5>표시할 휴대폰 정보가 없습니다.</h5>
							</c:if>
						</a>
						</div>
						<c:if test='${memberDetail.memNo eq sessionScope.user.memNo && memberDetail.phone ne null}'>
						<a style="float:left" href="#"
						class="dropdown-toggle nav-link" data-toggle="dropdown"
						aria-expanded="false"> 옵션 </a>
						<div class="dropdown-menu">
							<a href="javascript:formPhone()" class="dropdown-item">수정</a> 
							<a href='updtPhone?memNo=${memberDetail.memNo}&phone=' class="dropdown-item">삭제</a>
						</div>
						</c:if>
						</li>
						<hr>
						<h4>혈액형</h4>
						<c:if test='${memberDetail.memNo eq sessionScope.user.memNo && memberDetail.blood eq null || memberDetail.blood eq ""}'>
						<li><button  name="btn-blood" type="button" class="btn btn-secondary" >
							<i class="material-icons">create</i><span>혈액형 추가</span></button>
						</li>
						<hr>
						<div id="div-blood" style="display:none;">
						<form method='post' action='updtBlood' style="align-content: center">
							<input type="hidden" name="memNo" value="${sessionScope.user.memNo}" />
							<div class="form-group">
								    <label for="exampleInputPassword1">혈액형</label>
								    <input type="text" class="form-control" name="blood" placeholder="hr+ B">
							</div>
							<button type='submit' class="btn btn-success btn-sm">변경 내용 저장하기</button>
							<button type="button" name="btn-blood" class="btn btn-rose btn-sm">취소</button>
						</form>
						</div>
						</c:if>
						<li id="bloodLi" class="dropdown nav-item">
						<div  style="float:left;">
						<a id="data" style="font-size:24px;">
							 ${memberDetail.blood}
							<c:if test='${memberDetail.blood eq null}'>
								<h5>표시할 혈액형 정보가 없습니다.</h5>
							</c:if>
						</a>
						</div>
						<c:if test='${memberDetail.memNo eq sessionScope.user.memNo && memberDetail.blood ne null}'>
						<a style="float:left" href="#"
						class="dropdown-toggle nav-link" data-toggle="dropdown"
						aria-expanded="false"> 옵션 </a>
						<div class="dropdown-menu">
							<a href="javascript:formBlood()" class="dropdown-item">수정</a> 
							<a href='updtBlood?memNo=${memberDetail.memNo}&blood=' class="dropdown-item">삭제</a>
						</div>
						</c:if>
						</li>
						<hr>
						<h4>생일</h4>
						<c:if test='${memberDetail.memNo eq sessionScope.user.memNo && memberDetail.birth eq null || memberDetail.birth eq ""}'>
						<li><button  name="btn-birth" type="button" class="btn btn-secondary" >
							<i class="material-icons">create</i><span>생일 추가</span></button>
						</li>
						<hr>
						<div id="div-birth" style="display:none;">
						<form method='post' action='updtBirth' style="align-content: center">
							<input type="hidden" name="memNo" value="${sessionScope.user.memNo}" />
							<div class="form-group">
								    <label for="exampleInputPassword1">생일</label>
								    <input type="date" class="form-control" name="birth" >
							</div>
							<button type='submit' class="btn btn-success btn-sm">변경 내용 저장하기</button>
							<button type="button" name="btn-birth" class="btn btn-rose btn-sm">취소</button>
						</form>
						</div>
						</c:if>
						<li id="birthLi" class="dropdown nav-item">
						<div  style="float:left;">
						<a id="data" style="font-size:24px;">
							<c:if test="${memberDetail.birth ne null}">
							 ${memberDetail.birth.year+1900}-${memberDetail.birth.month+1}-${memberDetail.birth.day}
							</c:if>
							<c:if test='${memberDetail.birth eq null}'>
								<h5>표시할 생일 정보가 없습니다.</h5>
							</c:if>
						</a>
						</div>
						<c:if test='${memberDetail.memNo eq sessionScope.user.memNo && memberDetail.birth ne null}'>
						<a style="float:left" href="#"
						class="dropdown-toggle nav-link" data-toggle="dropdown"
						aria-expanded="false"> 옵션 </a>
						<div class="dropdown-menu">
							<a href="javascript:formBirth()" class="dropdown-item">수정</a> 
							<a href='updtBirth?memNo=${memberDetail.memNo}&birth=' class="dropdown-item">삭제</a>
						</div>
						</c:if>
						</li>


						</ul>

					</div>
				</div>
           		</div>
        </div>
          
          
    <script>
        $(document).ready(function() {
        	
        	if(`${memberDetail.infoOpenRange}`=='2'){
        		if(`${memberDetail.memNo}`!=`${sessionScope.user.memNo}`){
        			$.ajax({
		        		url:"/bitbook/member/InfoRangeCheck",
		        		type:"post",
		        		data:"memNo="+`${memberDetail.memNo}`+"&chk="+`${sessionScope.user.memNo}`,
		        		dataType:"json",
		        		success:function(result){
		        			if(!result){
		        				$("#rightUl").html("<h3>표시할 정보가 없습니다.</h3>");
		        			}
		        		}
		        	});
        		}else{
        			return;
        		}
        	}
        	else if(`${memberDetail.infoOpenRange}`=='3'){
        		if(`${memberDetail.memNo}`!=`${sessionScope.user.memNo}`){
        			$("#rightUl").html("<h3>표시할 정보가 없습니다.</h3>");
        		}
        	}
        	
        
        });
        function formPhone(){
			var html = "";
			html+='<div id="div-phone" style="display:block;">                                         ';
			html+='<form method="post" action="updtPhone" style="align-content: center">              ';
			html+='	<input type="hidden" name="memNo" value="${sessionScope.user.memNo}" />             ';
			html+='	<div class="form-group">                                                            ';
			html+='		    <label for="exampleInputPassword1">연락처</label>                           ';
			html+='		    <input type="text" class="form-control" name="phone" placeholder="${memberDetail.phone}">';
			html+='	</div>                                                                              ';
			html+='	<button type="submit" class="btn btn-success btn-sm">변경 내용 저장하기</button>    ';
			html+='</form>                                                                              ';
			html+='</div>                                                                               ';
        	$('#phoneLi').html(html);                                                            
    	}
        function formBlood(){
			var html = "";
			html+='<div id="div-blood" style="display:block;">                                         ';
			html+='<form method="post" action="updtBlood" style="align-content: center">              ';
			html+='	<input type="hidden" name="memNo" value="${sessionScope.user.memNo}" />             ';
			html+='	<div class="form-group">                                                            ';
			html+='		    <label for="exampleInputPassword1">연락처</label>                           ';
			html+='		    <input type="text" class="form-control" name="blood" placeholder="${memberDetail.blood}">';
			html+='	</div>                                                                              ';
			html+='	<button type="submit" class="btn btn-success btn-sm">변경 내용 저장하기</button>    ';
			html+='</form>                                                                              ';
			html+='</div>                                                                               ';
        	$('#bloodLi').html(html);                                                            
    	}
        function formBirth(){
			var html = "";
			html+='<div id="div-birth" style="display:block;">                                        ';
			html+='<form method="post" action="updtBirth" style="align-content: center">             ';
			html+='	<input type="hidden" name="memNo" value="${sessionScope.user.memNo}" />          ';
			html+='	<div class="form-group">                                                         ';
			html+='		    <label for="exampleInputPassword1">생일</label>                          ';
			html+='		    <input type="date" class="form-control" name="birth" >                   ';
			html+='	</div>                                                                           ';
			html+='	<button type="submit" class="btn btn-success btn-sm">변경 내용 저장하기</button> ';
			html+='</form>                                                                           ';
			html+='</div>                                                                            ';
			$('#birthLi').html(html);                                                            
    	}
        $('button[name="btn-phone"]').click(function(){
        	$("#div-phone").stop().toggle();
        });
        $('button[name="btn-blood"]').click(function(){
        	$("#div-blood").stop().toggle();
        });
        $('button[name="btn-birth"]').click(function(){
        	$("#div-birth").stop().toggle();
        });

		</script>
</body>

</html>