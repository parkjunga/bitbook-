<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
	<div id="cover-div" style="border: 1px solid black; background-image: url('${member.coverPath}'); height: 100%; 
					    background-position: center;
					    background-repeat: no-repeat;
					    background-size: cover; height: 200px; margin: 0 auto; position: relative;">
	<c:if test="${member.memNo eq sessionScope.user.memNo}">
		<div id="cover" class="filebox" style="position: absolute; right: 14px;  top: 150px;">
			<span id="coverSpan"><i class="material-icons">camera_alt</i><button>커버사진추가하기</button></span>
		</div>
	</c:if>
	<div id="profile"data-toggle="tooltip" data-placement="top" title="프로필사진업데이트"
		style="border: 1px solid white;background-image: url('${member.profilePath}'); height: 100%; margin-top:50px;
					    background-position: center;
					    background-repeat: no-repeat;
					    background-size: cover; width:140px; height: 140px; overflow: visible; margin-left: 15px;">
	</div>
	<nav class="navbar navbar-expand-lg navbar-light bg-primary"
		style="height: 48px;TOP: -2PX">
		<div class="container">
			<a class="navbar-brand">${member.memName}</a>
			<button class="navbar-toggler" type="button" data-toggle="collapse"
				data-target="#navbarNavDropdown" aria-controls="navbarNavDropdown"
				aria-expanded="false" aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>
			<div class="collapse navbar-collapse" id="navbarNavDropdown">
				<ul class="navbar-nav">
					<li id="nav-home" class="nav-item"><a class="nav-link"
						href="../main">Home<span class="sr-only">(current)</span></a></li>
					<li id="nav-info" class="nav-item"><a class="nav-link"
						href="../member/outline?memNo=${member.memNo}">정보</a></li>
					<li id="nav-friends" class="nav-item"><a class="nav-link"
						href="../friends/list?memNo=${member.memNo}">친구 <span id="topFriends"></span></a></li>
<!-- 					<li id="nav-picture" class="nav-item"><a class="nav-link"
						href="../gallery/list-pic.jsp">사진(추후 개발)</a></li> -->
				</ul>
			</div>
		</div>
	</nav>
	<c:if test="${member.memNo eq sessionScope.user.memNo}">
		<form id="profileForm" method='post' action="/bitbook/member/updtProfile"
			enctype="multipart/form-data">
			<input type="hidden" name="memNo" value="${sessionScope.user.memNo}">
			<input type="file" name="profile" id="profile_upload"
				style="display: none" accept="image/*">
			<button type="submit" id="profile_upload_submit" style="display: none"></button>
		</form>
		<form id="coverForm" method='post' action="/bitbook/member/updtCoverPath"
			enctype="multipart/form-data">
			<input type="hidden" name="memNo" value="${sessionScope.user.memNo}">
			<input type="file" name="cover" id="cover_upload"
				style="display: none" accept="image/*">
			<button type="submit" id="cover_upload_submit" style="display: none"></button>
		</form>
	</c:if>
</div>
<script>
 $("#profile").on("click",function(){
	$("#profile_upload").click().on("change",function(){$("#profileForm").submit();
	
	});
 }); 	
 $("#cover").on("click",function(){
	$("#cover_upload").click().on("change",function(){$("#coverForm").submit();

	});
 }); 	
	
 $("#cover-div").hover(function(){
	 $("#coverSpan").css("opacity",1);
 });
 $("#cover-div").mouseleave(function(){
	 $("#coverSpan").css("opacity",0);
 });
 $(document).ready(function(){
	   $.ajax({
			url: "/bitbook/friedns/myList2",
			type: "POST",
			data: {
				"memNo": ${member.memNo}
			},
			dataType: "json",
			success: function (data) {
				$("#topFriends").html(data.list.length);
			} 
	  });	
  });
/* 	console.log(${sessionScope.user.memNo});
	 var form = $('#profileForm')[0];
    var data = new FormData(form);
    data.append("memNo", ${sessionScope.user.memNo});
	console.log(formData );
	$("#profile_upload_submit").prop("disabled", true);
		$.ajax({
			url:"/bitbook/member/updtProfile",
	        processData: false,  
	        contentType: false,
	        data: data,
	        cache: false,
			dataType:"json",
			success: function(data){
				console.dir(data);
				$('myObject').css('background-image', 'url(' + imageUrl + ')');
			}
		}); */



</script>