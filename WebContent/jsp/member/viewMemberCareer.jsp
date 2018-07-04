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
								<li class="nav-item"><a class="nav-link active show"
									href="#"
									>경력 및 학력</a></li>
								<li class="nav-item"><a class="nav-link"
									href="addr?memNo=${memberDetail.memNo }"> 거주했던 장소</a></li>
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
				
						<h4>직장</h4>
						<c:if test='${memberDetail.memNo eq sessionScope.user.memNo }'>
							<li id="li-career">
							<button name="btn-career" type="button" class="btn btn-secondary" >
								<i class="material-icons">create</i>
								<span>직장 추가</span></button>
							</li>
							<div id="div-career" style="display: none">
							<form id="careerForm" method='post' action='regiCareer' style="align-content: center">
								<input type="hidden" name="memNo" value="${sessionScope.user.memNo}" />
								<div class="form-group">
									    <label for="exampleInputPassword1">회사이름</label>
									    <input type="text" class="form-control" name="jobName" placeholder="회사이름">
								</div>
								<div class="form-group">
									    <label for="exampleInputPassword1">직위</label>
									    <input type="text" class="form-control" name="jobPosition" placeholder="직위">
								</div>
								<div class="form-group">
									    <label for="exampleInputPassword1">도시</label>
									    <input type="text" class="form-control" name="jobCity" placeholder="도시">
								</div>
								<div class="form-group">
									    <label for="exampleInputPassword1">설명</label>
									    <input type="text" class="form-control" name="jobInfo" placeholder="설명">
								</div>
								<button type='submit' class="btn btn-success btn-sm">등록</button>
								<button type='button' name="btn-career" class="btn btn-rose btn-sm">취소</button>
							</form>
							</div>
						</c:if>
						<hr>
						<c:forEach var="j" items='${jList}'>
							<li id="careerLi${j.jobNo}" class="dropdown nav-item">
							<div  style="float:left;">
							<a id="data" style="font-size:24px;">${j.jobName}</a>
							<p>${j.jobInfo} ${j.jobPosition} ${j.jobCity}</p>
							</div>
							<c:if test='${memberDetail.memNo eq sessionScope.user.memNo }'>
								<a style="float:left" href="#"
								class="dropdown-toggle nav-link" data-toggle="dropdown"
								aria-expanded="false"> 옵션 </a>
								<div class="dropdown-menu">
									<a href='javascript:updateCareer(${j.jobNo})' class="dropdown-item">수정</a> 
									<a href='deltCareer?jobNo=${j.jobNo}&memNo=${memberDetail.memNo}' class="dropdown-item">삭제</a>
								</div>
							</c:if>
							</li>
						</c:forEach>
						<hr>
						<h4>대학교</h4>
						<c:if test='${memberDetail.memNo eq sessionScope.user.memNo && memberDetail.college eq null || memberDetail.college eq ""}'>
						<li><button  name="btn-college" type="button" class="btn btn-secondary" >
							<i class="material-icons">create</i><span>대학교 추가</span></button>
						</li>
						<hr>
						<div id="div-college" style="display:none;">
						<form method='post' action='updtCollege' style="align-content: center">
							<input type="hidden" name="memNo" value="${sessionScope.user.memNo}" />
							<div class="form-group">
								    <label for="exampleInputPassword1">대학교</label>
								    <input type="text" class="form-control" name="college" placeholder="대학교">
							</div>
							<button type='submit' class="btn btn-success btn-sm">변경 내용 저장하기</button>
							<button type="button" name="btn-college" class="btn btn-rose btn-sm">취소</button>
						</form>
						</div>
						</c:if>
						<li id="collegeLi" class="dropdown nav-item">
						<div  style="float:left;">
						<a id="data" style="font-size:24px;">
							 ${memberDetail.college}
							<c:if test='${memberDetail.college eq null}'>
								<h5>표시할 대학교 정보가 없습니다.</h5>
							</c:if>
						</a>
						</div>
						<c:if test='${memberDetail.memNo eq sessionScope.user.memNo && memberDetail.college ne null}'>
						<a style="float:left" href="#"
						class="dropdown-toggle nav-link" data-toggle="dropdown"
						aria-expanded="false"> 옵션 </a>
						<div class="dropdown-menu">
							<a href="javascript:formCollege()" class="dropdown-item">수정</a> 
							<a href='updtCollege?memNo=${memberDetail.memNo}&college=' class="dropdown-item">삭제</a>
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
        function formCollege(){
				var html = "";
				html+='<div id="div-college" style="display:block;">                                         ';
				html+='<form method="post" action="updtCollege" style="align-content: center">              ';
				html+='	<input type="hidden" name="memNo" value="${sessionScope.user.memNo}" />             ';
				html+='	<div class="form-group">                                                            ';
				html+='		    <label for="exampleInputPassword1">대학교</label>                           ';
				html+='		    <input type="text" class="form-control" name="college" placeholder="${memberDetail.college}">';
				html+='	</div>                                                                              ';
				html+='	<button type="submit" class="btn btn-success btn-sm">변경 내용 저장하기</button>    ';
				html+='</form>                                                                              ';
				html+='</div>                                                                               ';
	        	$('#collegeLi').html(html);                                                            
        }
        function updateCareer(jobNo){
        	$.ajax({
        		url:"/bitbook/member/formCareer",
        		data:"jobNo="+jobNo,
        		dataType: "json",
        		success: function(data){
					var html = "";
					html+='<div id="div-career" style="display: block">';
					html+='		<form id="careerForm" method="post" action="updtCareer" style="align-content: center">';
					html+='	<input type="hidden" name="memNo" value="${sessionScope.user.memNo}" />                ';
					html+='	<input type="hidden" name="jobNo" value="'+jobNo+'" />                 ';
					html+='	<div class="form-group">                                                                ';
					html+='		    <label for="exampleInputPassword1">회사이름</label>                             ';
					html+='		    <input type="text" class="form-control" name="jobName"  placeholder="'+data.jobName+'">  ';
					html+='	</div>                                                                                  ';
					html+='	<div class="form-group">                                                                ';
					html+='		    <label for="exampleInputPassword1">직위</label>                                 ';
					html+='		    <input type="text" class="form-control" name="jobPosition" placeholder="'+data.jobPosition+'">  ';
					html+='	</div>                                                                                  ';
					html+='	<div class="form-group">                                                                ';
					html+='		    <label for="exampleInputPassword1">도시</label>                                 ';
					html+='		    <input type="text" class="form-control" name="jobCity"  placeholder="'+data.jobCity+'">      ';
					html+='	</div>                                                                                  ';
					html+='	<div class="form-group">                                                                ';
					html+='		    <label for="exampleInputPassword1">설명</label>                                 ';
					html+='		    <input type="text" class="form-control" name="jobInfo" placeholder="'+data.jobInfo+'">      ';
					html+='	</div>                                                                                  ';
					html+='	<button type="submit" class="btn btn-success btn-sm">변경한 내용 저장하기</button>                      ';
					html+='</form>                                                                                  ';
					html+='</div>                                                                                  ';
		        	$('#careerLi'+jobNo).html(html); 
        		}
        	});
        }
        $('button[name="btn-career"]').click(function(){
        	$("#div-career").stop().toggle();
        });
        
        $('button[name="btn-college"]').click(function(){
        	$("#div-college").stop().toggle();
        });
    </script>
</body>

</html>