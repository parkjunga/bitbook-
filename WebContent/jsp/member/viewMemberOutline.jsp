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
           		<div class="col-md-12" style="border: 1px solid black; height: 1151px; margin: 0 auto;">
           		
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
								<li class="nav-item"><a class="nav-link active show"
									href="#"> 개요 </a></li>
								<li class="nav-item"><a class="nav-link"
									href="career?memNo=${memberDetail.memNo }"
									>경력 및 학력</a></li>
								<li class="nav-item"><a class="nav-link"
									href="addr?memNo=${memberDetail.memNo }"> 거주했던 장소</a></li>
								<li class="nav-item"><a class="nav-link"
									href="contact?memNo=${memberDetail.memNo }"> 연락처 및 기본 정보</a></li>
								<li class="nav-item"><a class="nav-link"
									href="introduce?memNo=${memberDetail.memNo }"> 자세한 내 소개</a></li>
							</ul>
							<ul id="rightUl" class="nav flex-column"
								style="border-left: 1px solid #ccc; min-height: 280px; padding: 30px 24px 0; position: relative; width: 408px;">

								<c:if test="${memberDetail.memNo==sessionScope.user.memNo}">

									<h3>정보 공개 범위</h3>
									<form id=openForm action="/bitbook/member/updtInfoOpenRange"
										method="post">
										<input type="hidden" name="memNo"
											value="${memberDetail.memNo}">
										<div style="padding-top: 10px;"
											class="form-check form-check-radio">
											<label class="form-check-label"> <input
												class="form-check-input" type="radio" name="openRange"
												id="range1" value="1"> <i class="material-icons">public</i>전체
												공개 <span class="circle"> <span class="check"></span>
											</span>
											</label> <label class="form-check-label"> <input
												class="form-check-input" type="radio" name="openRange"
												id="range2" value="2"> <i class="material-icons">group</i>친구만
												<span class="circle"> <span class="check"></span>
											</span>
											</label> <label class="form-check-label"> <input
												class="form-check-input" type="radio" name="openRange"
												id="range3" value="3"> <i class="material-icons">lock</i>나만
												보기 <span class="circle"> <span class="check"></span>
											</span>
											</label>
											<button type="submit" class="btn btn-success btn-sm">저장하기</button>
										</div>
									</form>
								</c:if>
								<hr>
								<c:if test="${memberDetail.introduce ne null}">
									<h4>내 소개</h4>
									<div>
										<a id="data" style="font-size: 24px;">
											${memberDetail.introduce} </a>
									</div>
								</c:if>
								<c:if test="${memberDetail.birth ne null}">
									<h4>생일</h4>
									<div>
										<a id="data" style="font-size: 24px;">
											${memberDetail.birth.year+1900}-${memberDetail.birth.month+1}-${memberDetail.birth.day}
										</a>
									</div>
								</c:if>
								<c:if test='${memberDetail.blood ne null}'>
									<h4>혈액형</h4>
									<div>
										<a id="data" style="font-size: 24px;">
											${memberDetail.blood} </a>
									</div>
								</c:if>
								<c:if test='${memberDetail.phone ne null}'>
									<h4>휴대폰</h4>
									<div>
										<a id="data" style="font-size: 24px;">
											${memberDetail.phone} </a>
									</div>
								</c:if>
							
						</ul>
					</div>
					</div>
			</div>
          		</div>

                <!-- 	            end menu -->
            <!--             navbar -->
            <div id="navbar">
            </div>
            <!-- end navbar  -->
        </div>
        
    <!-- Classic Modal -->
    <div class="modal fade" id="myModal" tabindex="-1" role="dialog">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title">Modal title</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <i class="material-icons">clear</i>
                    </button>
                </div>
                <div class="modal-body">
                    <p>Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts. Separated they live in Bookmarksgrove right at the coast of the Semantics, a large language ocean. A small river named Duden flows by their place and supplies it with the necessary regelialia. It is a paradisematic country, in which roasted parts of sentences fly into your mouth. Even the all-powerful Pointing has no control about the blind texts it is an almost unorthographic life One day however a small line of blind text by the name of Lorem Ipsum decided to leave for the far World of Grammar.
                    </p>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-link">Nice Button</button>
                    <button type="button" class="btn btn-danger btn-link" data-dismiss="modal">Close</button>
                </div>
            </div>
        </div>
    </div>
    <!--  End Modal -->
    <footer class="footer ">
        <div class="container">

        </div>
    </footer>

    <script>
        $(document).ready(function() {
        	$(".navbar-nav li").attr("class","nav-item");
        	$("#nav-info").attr("class","nav-item active");
        	
        	radioRangeChk(`${memberDetail.infoOpenRange}`);
        	
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
        
       	function radioRangeChk(infoOpenRange){
       		var range="";
           	if(infoOpenRange=='1'){
	           	$('#range1').attr("checked","checked");
           	}
           	else if(infoOpenRange=='2'){
           		$('#range2').attr("checked","checked");
           	}
           	else if(infoOpenRange=='3'){
         	  	$('#range3').attr("checked","checked");
           	}
       	}
    </script>
</body>

</html>