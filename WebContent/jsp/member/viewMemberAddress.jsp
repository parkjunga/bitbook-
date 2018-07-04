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
<script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
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
								<li class="nav-item"><a class="nav-link active show"
									href="#"> 거주했던 장소</a></li>
								<li class="nav-item"><a class="nav-link"
									href="contact?memNo=${memberDetail.memNo }"> 연락처 및 기본 정보</a></li>
								<li class="nav-item"><a class="nav-link"
									href="introduce?memNo=${memberDetail.memNo }"> 자세한 내 소개</a></li>
							</ul>
							<ul  id="rightUl" class="nav flex-column" style="    border-left: 1px solid #ccc;
    min-height: 280px;
    padding: 30px 24px 0;
    position: relative;
    width: 408px;
}">	
						<h4>거주지와 출신지</h4>
						<hr>
						<c:if test='${memberDetail.memNo eq sessionScope.user.memNo && memberDetail.addr eq null || memberDetail.addr eq ""}'>
						<li><button  name="btn-addr" type="button" class="btn btn-secondary" >
							<i class="material-icons">create</i><span>거주지 추가</span></button>
						</li>
						<hr>
						<div id="div-addr" style="display:none;">
						<form method='post' action='updtAddr' style="align-content: center">
							<input type="hidden" name="memNo" value="${sessionScope.user.memNo}" />
							<div class="form-group">
								    <label for="exampleInputPassword1">거주지</label>
								    <input type="text" class="form-control" name="addr" placeholder="거주지">
							</div>
							<button type='submit' class="btn btn-success btn-sm">변경 내용 저장하기</button>
							<button type="button" name="btn-addr" class="btn btn-rose btn-sm">취소</button>
						</form>
						</div>
						</c:if>
						<li id="addrLi" class="dropdown nav-item">
						<div  style="float:left;">
						<a id="data" style="font-size:24px;">
							 ${memberDetail.addr}
							<c:if test='${memberDetail.addr eq null}'>
								<h5>표시할 거주지 정보가 없습니다.</h5>
							</c:if>
						</a>
						<p>현재 거주지</p>
						</div>
						<c:if test='${memberDetail.memNo eq sessionScope.user.memNo && memberDetail.addr ne null}'>
						<a style="float:left" href="#"
						class="dropdown-toggle nav-link" data-toggle="dropdown"
						aria-expanded="false"> 옵션 </a>
						<div class="dropdown-menu">
							<a href="javascript:formAddr()" class="dropdown-item">수정</a> 
							<a href='updtAddr?memNo=${memberDetail.memNo}&addr=' class="dropdown-item">삭제</a>
						</div>
						</c:if>
						</li>
						<hr>
						
						<c:if test='${memberDetail.memNo eq sessionScope.user.memNo && memberDetail.home eq null || memberDetail.home eq ""}'>
						<li><button  name="btn-home" type="button" class="btn btn-secondary" >
							<i class="material-icons">create</i><span>출신지 추가</span></button>
						</li>
						<hr>
						<div id="div-home" style="display:none;">
						<form method='post' action='updtHome' style="align-content: center">
							<input type="hidden" name="memNo" value="${sessionScope.user.memNo}" />
							<div class="form-group">
								    <label for="exampleInputPassword1">출신지</label>
								    <input type="text" class="form-control" name="home" placeholder="출신지">
							</div>
							<button type='submit' class="btn btn-success btn-sm">변경 내용 저장하기</button>
							<button type="button" name="btn-home" class="btn btn-rose btn-sm">취소</button>
						</form>
						</div>
						</c:if>
						<li id="homeLi" class="dropdown nav-item">
						<div  style="float:left;">
						<a id="data" style="font-size:24px;">
							 ${memberDetail.home}
							<c:if test='${memberDetail.home eq null}'>
								<h5>표시할 출신지 정보가 없습니다.</h5>
							</c:if>
						</a>
						<p>출신지</p>
						</div>
						<c:if test='${memberDetail.memNo eq sessionScope.user.memNo && memberDetail.home ne null}'>
						<a style="float:left" href="#"
						class="dropdown-toggle nav-link" data-toggle="dropdown"
						aria-expanded="false"> 옵션 </a>
						<div class="dropdown-menu">
							<a href="javascript:formHome()" class="dropdown-item">수정</a> 
							<a href='updtHome?memNo=${memberDetail.memNo}&home=' class="dropdown-item">삭제</a>
						</div>
						</c:if>
						</li>
						
						
						</ul>
					</div>
				</div>
           		</div>

                <!-- 	            end menu -->
            <!--             navbar -->
            <div id="navbar">
            </div>
            <!-- end navbar  -->
        </div>
          <!--   Core JS Files   -->
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
        function formAddr(){
			var html = "";
			html+='<div id="div-addr" style="display:block;">                                         ';
			html+='<form method="post" action="updtAddr" style="align-content: center">              ';
			html+='	<input type="hidden" name="memNo" value="${sessionScope.user.memNo}" />             ';
			html+='	<div class="form-group">                                                            ';
			html+='		    <label for="exampleInputPassword1">거주지</label>                           ';
			html+='		    <input type="text" class="form-control" name="addr" placeholder="${memberDetail.addr}">';
			html+='	</div>                                                                              ';
			html+='	<button type="submit" class="btn btn-success btn-sm">변경 내용 저장하기</button>    ';
			html+='</form>                                                                              ';
			html+='</div>                                                                               ';
        	$('#addrLi').html(html);                                                            
    	}
        function formHome(){
			var html = "";
			html+='<div id="div-home" style="display:block;">                                         ';
			html+='<form method="post" action="updtHome" style="align-content: center">              ';
			html+='	<input type="hidden" name="memNo" value="${sessionScope.user.memNo}" />             ';
			html+='	<div class="form-group">                                                            ';
			html+='		    <label for="exampleInputPassword1">출신지</label>                           ';
			html+='		    <input type="text" class="form-control" name="home" placeholder="${memberDetail.home}">';
			html+='	</div>                                                                              ';
			html+='	<button type="submit" class="btn btn-success btn-sm">변경 내용 저장하기</button>    ';
			html+='</form>                                                                              ';
			html+='</div>                                                                               ';
        	$('#homeLi').html(html);                                                            
    	}
        $('button[name="btn-addr"]').click(function(){
        	$("#div-addr").stop().toggle();
        });
        $('button[name="btn-home"]').click(function(){
        	$("#div-home").stop().toggle();
        });
    </script>
</body>

</html>