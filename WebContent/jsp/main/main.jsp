<%@ page contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
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
	href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700|Roboto+Slab:400,700|Material+Icons" />
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/font-awesome/latest/css/font-awesome.min.css" />
<!-- Documentation extras -->
<!-- CSS Just for demo purpose, don't include it in your project -->
<!-- iframe removal -->
<style>

	body{background: #f6f7f9 !important;}
	
	.f_info div .f_link>img {
	    margin: 10px 10px 10px 10px;
	    width: 50px;
	    height: 50px;
	    float: left;
	    clear: both;
	    display: block;
	}
	.f_info div.friendMember {
	    height: 80px;
	}

	.f_info div:hover {
		background: #d991e8 !important;
	}
	
	.img-fluid{
		width: 50px !important;
		height: 50px !important;
	}

	#open_range_td{
		z-index: 1;
	}

	.search_friends{
		z-index: 1;
	}


	#searchBox{
		width: 100%;
		margin-top: 42px;
		padding:10px;
	}
	.friendMember{
		background-color: white;
		height: 80px;
	}
	#searchName{
		width: 100%;
	}

	#content{
		min-height: 50px;
		height: 50px;
		margin-bottom: 5px;
		font-size: 20px;
		width: 530px;
	}
	#content[placeholder]:empty:before {
	    content: attr(placeholder);
	    color: #555; 
	}
	#content div{
		font-size: 20px;
	}
	.imgs{
		height: 100px;
	    width: 100px;
	    position: relative;
	    padding: 2px;
	    display: block;
	    margin: 8px;
	    border-radius: 20px;
		
	}
	.imgs_field:hover>img{
		transition:0.5s;
		background-color: #9c27b0;
		opacity: 0.2;
	}
	
	.imgs_field:hover>span{
		transition:0.3s;
		opacity: 0.9;
	}
	
	.imgs_field{
		float: left;
	    position: relative;
	    width: 110px;
	}
	#options{
		clear: both;
	}
	.del_img{
		position: absolute;
	    width: 25px;
	    height: 25px;
	    top: 6px;
	    right: 0;
	    z-index: 2;
	    opacity: 0;
		
	}
	#imgarea{
		min-height: 10px;
		margin-bottom: 10px;
		display: block;
	}
	#open_range{
		float: right;
	}
	#post_tag_list{
		font-size: 15px;
	}
	
	.imgInp{
		display: none;
	}
	#attachBtn{
		float: left;
	}
	#tag_friends{
		width: 300px;
		margin-top: 10px;
	}
	#options{
		width: 100%;
	}
	
	#submit_span{
		float: right;
	}
	
	#submit_td{
		width: 10px;
	}
	#tag_area{
		width: 200px;
		height: 10px;
		display: block;

	}
	.f_img{
		height: 50px !important;
		width: 50px !important;
		float: left;
		padding: 0px;
		margin-top: 10px;
		margin-right: 10px;
		margin-left: 10px;
	}
	.tag_img{
		height: 30px !important;
		width: 30px !important;
	}
	.f_name{
		float:left;
		font-size: 14px;
		padding-bottom: 10px;
		font-weight: bold;
		width: 250px;
	}
	#f_list{
		position: absolute;
		top:68px;
		width:300px;
		left: 97px;
		background-color: white;
		border: 1px solid black;
		display: none;
		z-index: 1;
	}
	.f_search{
		font-size: 15px;
		width: 30px;
		height: 20px;
		margin-right: 10px;
		font-weight: bold;
	}
	.f_list_detail{
		clear: both;
		width: 300px;
	}
	.search_friends{height: 50px;}
	.search_friends:hover{
		background-color: #d991e8;
	}
	#search_btn_i:hover{
		background-color: #d991e8;
		transition:.5s;
		transition-delay:.1s;
	}
	#tag{
		min-height: 10px;
		margin-bottom: 5px;
		margin-top: 5px;
		display: block;
		z-index : 7;
	}
	.del_icon{
		font-size: 16px;
		opacity: 0;
	}
	.tag_name{
		font-size: 16px;
		font-weight: bold;
		color: blue;
	}
	.tags:hover>.del_icon{
		opacity: 0.7;
		transition:0.5s;
    }
    #together{
    	float: left;
    }
	#tags{
		text-align: right;
	}
	#content_copy{
		display: none;
	}
	#submit{
		margin-bottom: 5px;
    	margin-right: 0px;
	}
	#attachBtn,#submit,#comment_plus,.open_range_view{
	margin-bottom: 0px;
    background-color: #9c27b0;
    border-color: #d400c8;
    box-shadow: 0 2px 2px 0 #cc95c963, 0 3px 1px -2px rgba(0, 188, 212, 0.2), 0 1px 5px 0 rgba(0, 188, 212, 0.12);
    opacity: 0.7;
	}
	#searchArea{
		background-color: #9c27b0;
		width:550px;
		height: 52px;
		opacity: 0.9;
		margin-top: 100px;
		margin-bottom: 20px;
	}
	.select_info{
		z-index: 2;
	}
	img.profile {
	    display: block;
	    float: left;
	    top: 4px;
	    left: -10px;
	    vertical-align: middle;
	    width: 50px;
	    height: 50px;
	    position: relative;
	    margin-left: 15px;
	}
	.content{
		background-color: white;
	}
	div.comment_info{
		height: 60px;
	}
	button.post_like{
		float: right !important;
	}
	.post{
		margin-top: 30px;
		margin-bottom: 80px;
		border: 1px solid #9c27b0 !important;
	}
	#comment_plus{
		float: right;
		display: none;
	}
	.commentArea{
		display: none;
	}
	.upload_imgs{
		width: 100px;
		height: 100px;
		margin: 5px;
		border: 1px solid #9c27b0;
		cursor: pointer;
	}
	.open_range_view{
		float: right;
		height: 19px;
		width:60px;
		color:white;
		text-align:center;
		font-weight: bold;
	}
	.detail_img{
		position: fixed;
		z-index: 4;
		display: none;
		border: 1px solid #9c27b0;
	}
	.loading_img{
		position: fixed;
		z-index: 10;
		display: none;
	}
	#back_ground_black,#back_ground_black2,#back_ground_black3{
		background-color: black;
		z-index: 3;
		opacity: 0.7;
		width: 100%;
		height: 100%;
		position: fixed;
		left: 0px;
		display: none;
	}
	.c_info{
		width:50px;
	}
	.c_content{
		height: auto;
		min-height: 40px;
	}
	.c_submit{
		top: 7px !important;
	}
	.post_likey{
		top:5px !important;
	}
	.comment_likey{
		bottom:-22px !important;
		border-radius:5px !important;
		width:80px !important;
		top: -52px;
	}
	.update_comment{
		float: right;
		margin-right: 12px;
	}
	.coment{
		padding-top: 10px !important;
		padding-bottom: 10px !important;
	}
    .loading_img{
        position: fixed;
        z-index: 10;
        display: none;
	}
    #loading_img{
        width: 100px;
        height: 100px;
    }
    #min_post{
    	width: 550px;
    	font-weight: bold;
    	text-align: center;
    	display: none;
    }
</style>
</head>

<body class="index-page " >
<div id="back_ground_black"></div>
<div id="back_ground_black2"></div>
<div id="back_ground_black3">
    <div class="loading_img">
        <img id="loading_img" src="/bitbook/jsp/main/loading.gif"/>
    </div>
</div>

	<div class="detail_img">
		<img id="detail_img_src" src=""/>
	</div>
	
					<div class="row">
						<div class="col-md-12" style="margin-top: 20px; left:7%">
						
							<div style="background: #f6f7f9; width:550px;">
					
					
					
<form  method="post" action="/bitbook/addpost" enctype="multipart/form-data">
							
					
							
							
							
							
						<input type="hidden" id="memNo" name="no" value="${sessionScope.user.memNo}">

					<div class="row">
						<div id="create_post" class="col-md-12" style="margin-top: 30px; top:30px;">
							<div style="background: #ffffff; border:1px solid #9c27b0;">


								<div class="title_head">
									<h5 class="title" style="margin-top: 0px;">게시물올리기</h5>
								</div>
								<div class="min_content">
									<a href="#"> <img class="profile rounded-circle img-fluid"
										src="${sessionScope.user.profilePath}" alt="Circle Image" style="top:2px;">
									</a>
									<div>
									<div id="content" placeholder="어떤 생각을 하고 계신가요?" contenteditable="true"></div>
									<input type="hidden" id="content_copy" name="content" value="">
									<div id="imgarea"></div>
									<br>
									<div id="tags"><div id="tagCnt"></div> <input type="hidden" id="tag" name="tag" value="">
									</div>
									</div>
								</div>
								
								
								
								<div class="min_foot" style="height:80px; position: relative;">
								
								<table id="options">
								<tr>
									<td>
										<button id="attachBtn" type="button" class="btn btn-info btn-sm" style="margin: 0px;">
											사진올리기
										</button>
									</td>

								</tr>
 		   						<tr> 
	 		   						<td>		   						
										<span class="f_search">함께한 친구</span><input type="text" id="tag_friends" placeholder=" 누구와 계신가요?">
	 		   						
	 		   							<div id = "tag_area">
			    <div id = "f_list"> 
			    		<%--
						<div class="f_list_detail">
				           <img src="/bitbook/member_profile/defalutImg.jpg" alt="Circle Image" 	class="f_img rounded-circle img-fluid">
				           <span class="f_name">이름</span>
						</div>
			    		 --%>
				</div>
	 		   							</div>
	 		   						</td>
	 		   						<td id="open_range_td">
										<select id="open_range" class="select_info" name="open_range">
											<option value="1">전체공개</option>
											<option value="2">친구공개</option>
											<option value="3">나만보기</option>
										</select>
									</td>
	 		   						<td id="submit_td">
										<button type="submit" id="submit" class="btn btn-info btn-sm" style="margin-bottom: 0px;">등록</button>
									</td>
 		   						</tr>

								</table>
							</div>
						</div>
					</div>
				</div>
</form>

<div id="" style="background: #9c27b0 !important">
<div class="row" style="margin-top: 57px;">
						<div class="col-md-12" style="margin: 1px 1px 1px 1px;">
							<div class="col-md-12">
								      <form class="form-inline ml-auto">
          <div class="form-group has-white" style="width: 242px;">
            <input type="text" id="search" class="form-control" placeholder="Search" style="width: 259px; color:#fff;">
          </div>
          <button type="button" id="search_btn" style="margin-bottom:-18px"class="btn btn-white btn-raised btn-fab btn-fab-mini btn-round">
              <i id="search_btn_i" class="material-icons" >search</i>
          </button>
      </form>
      <div style="position: absolute; right:0; top:13px; margin-right: 10px;">
      						    <select id="order" class="select_info">
									<option value="1">최신순보기</option>
									<option value="2">좋아요순</option>
									<option value="3">덧글순</option>
								</select> 
								<select id="searchType" class="select_info">
									<option value="1">전체보기</option>
									<option value="2">친구꺼보기</option>
									<option value="3">내꺼보기</option>
								</select>
								</div>
							</div>
						</div>
					</div>


</div>



	
	<div id="post_area">
				
			
			
			




				
		</div>	<!-- end #post_area -->							
	</div>
	<div id="min_post">남은 게시글이 없습니다!<hr>
		<div id="refresh_btn" class="btn btn-default">맨 위로 돌아가기</div>
	</div>
						</div>
							</div>	
			
			
				

					<div class="row"
						style="width: 100%; height: 71%; position: relative; ">
						<div class="col-md-12"

							style="height:89%; background:#9c27b0 !important; top: 67px; right: 0; position: fixed; width: 400px; padding: 0; border: 1px solid #e9eaea;">
							<div class="friendList" style="height: 95%;">
									<h5 class="f_title">
										친구목록
									</h5>
									<div class="f_info" id="f_info" style="overflow: auto; height: 84%">	<%-- 친구목록 시작 --%>		
									
									</div>	<%-- 친구목록 종료 --%>
									<div id="searchBox"> <%-- 내 친구 검색 --%>
									<span>
									<i class="material-icons" style="position:absolute; right:12px;">&#xE8B6;</i>
									<input type="text" id="searchName" placeholder=" 내 친구 검색하기"></span>
									</div>	
								</div>				


						</div>
					</div>
				



		<!-- Classic Modal -->
		<!--  End Modal -->
		<footer class="footer ">
			<div class="container">
				<!-- 					<div class="copyright pull-right">
						&copy;
						<script>
							document.write(new Date().getFullYear())
						</script>
						, made with
						<i class="material-icons">favorite</i>
						by
						<a href="https://www.creative-tim.com" target="_blank">Creative Tim</a>
						for a better web.
					</div> -->
			</div>
		</footer>


		<script>

	
		
		//태그 된 게시물 보여주기
		if('${post}'!= ''){
			$(load(tagPost,500,${post}));
 
		}else{
			// 메인화면 접속 또는 새로고침시 최근 게시물을 보여주기 위해 실행되는 이벤트
			$(load(post_list,500));
		}
		
		function tagPost(post){
	       	$("#post_area").html("");
	        
    		let imgs = "";
    		let up_del = ""; 	
    		let id_index = post.postNo;
    		let open_range ="";
    		if(post.postOpenRange == "1") open_range = "전체공개"
    		else if(post.postOpenRange == "2") open_range = "친구공개"
    		else open_range = "나만보기"
    		$("#min_post").css({display:"block"});

    		if(post.memNo == ${sessionScope.user.memNo}) up_del = 'style="display: block;"'
    		else up_del = 'style="display: none;"'
    		
			let tag = `<span style="font-weight: bold; padding-right: 10px; display: inline-block;">함께한 친구</span>`
            if(post.postTag.length == 0) tag="";
            else{
                let tagList = "";
                for(t of post.postTag){
                    tagList += `<a class="tag" href="/bitbook/member/outline?memNo=`+t.memNo+`">`+t.memName+`</a>`
                }
                tag = tag+tagList;
            }
			
			if(post.fileUpload != undefined){
				for(i of post.fileUpload){
					imgs += `<img class="upload_imgs" src="`+i.filePath+`"/>`
				}
			}
			
			

		$("#post_area").append(`
    			
    			<div class="post">
    		    <div>
    		            <div class="min_content">
    		                <a href="/bitbook/member/outline?memNo=`+post.memNo+`"> <img class="profile rounded-circle img-fluid"
    		                    src="`+post.profilePath+`" alt="Circle Image">
    		                </a>
    		                <div class="board_wrap" style="margin-left: 75px;">
    		                    <div class="p_info">
    		                   		<span class="open_range_view">`+open_range+`</span>
    		                   		<a href="/bitbook/member/outline?memNo=`+post.memNo+`"> <span class="c_info" >`+post.memName+`</span></a> <span>`+date_info(post.postRegDate)+`</span>
    		                    </div>
    		                    <div class="board_content">
    		                      	`+post.postContent+`
    		                    </div>
								<div class="upload_img_area">
								`+imgs+`
								</div>
    		                    <div style="height: 40px;">
    		                        <div class="tag_wrap">
                                    `+tag+`
                                    </div>
    		                        <div style="display: inline-block;">
    		                        <!-- 내 게시글일경우 보이기 -->
    		                        <div class="update_post" `+up_del+`>
    		                            <button type="submit" id="`+id_index+`update_post" class="up_post_class btnA">수정</button>
    		                            <span>| </span>
    		                            <button type="submit" id="`+id_index+`delete_post"class="del_post_class btnB">삭제</button>
    		                        </div>
    		                        <!-- 내 게시글일경우 보이기 -->
    		                        </div>
    		                    </div>
    		                </div>
    		            </div>
    		            
    		        <div class="title_head comment_info" style="">
    		                <button id="`+id_index+`like_post"
    		                    class="post_likey likey btn btn-primary btn-fab btn-fab-mini btn-round post_like"
    		                    style="border-radius: 5px; width: 80px;">
    		                    <i class="likey_icon material-icons">favorite</i> <em
    		                     id="`+post.postNo+`likey_index_post"   class="likey_num">`+post.postLCount+`</em>
    		                </button>
    		                <button type="button" id="`+id_index+`p_comment" class="comment_open c_c_write btn btn-primary">
    		                    댓글 <span id="`+id_index+`spans">`+post.postCCount+`개</span>
    		                </button>
    		            </div>
    		        </div>

    		<!-- 게시글 -->

    		<div class="commentArea" id="`+id_index+`sp_comment_area">
    		<div id="reg_comment">
    		        
    		
    		        <!-- 댓글쓰기 -->
    		        <div class="coment">
    		            <a href="#" style="margin-left: 16px; display: block;"> <img
    		                style="display: block; float: left; width: 47px;"
    		                src="${sessionScope.user.profilePath}" alt="Circle Image"
    		                class="rounded-circle img-fluid">
    		            </a>
    		            <div class="c_wrap">
    		                <span class="c_info" >${sessionScope.user.memName}</span> <span
    		                    class="c_content" > <div contenteditable="true"
    		                        id="`+id_index+`c_text_area" class="c_text" style="width: 270px;"></div>
    		                </span>
    		            </div>
    		            <button id="`+id_index+`comment_add" class="c_submit btn btn-lg btn-primary disabled" type="button" style="">등록</button>
    		            </div>
    		        
    		        
    		</div><!-- end #reg_comment -->
    		<div id="`+id_index+`commentList">
    		</div><!-- end #commentList -->
    		<div>
    		    <button type="button"  id="comment_plus" class="`+id_index+`c_plus btn btn-info btn-sm">댓글 더보기</button>
    		</div>	
    	`)
    		$(window).scrollTop("1000");
		}
		
		
		
        // 로딩 함수
        // func 는 괄호 없이 함수명만 넣는다.
        // time 는 로딩 지속시간을 넣는다.
    	function load(func,time,post_no){
			$("#back_ground_black3").css({display:"block"});
			 let left = parseInt($("#back_ground_black3").css("width"))/2 - 50;
			 let top = parseInt($("#back_ground_black3").css("height"))/2 - 50;
            $(".loading_img").css({display:"block","top":top,"left":left}) 
            setTimeout(()=>{
                $(".loading_img").css({display:"none"})
                $("#back_ground_black3").css({display:"none"});
            },time)
            if(post_no==undefined) setTimeout(func,time);
            else setTimeout(()=>(func(post_no)),time);
        }

		
		
		// 게시글 작성시 주변 어두워지게 하는 함수
		$("#create_post").on("click",()=>{
			$("#back_ground_black2").css({display:"block"});
			$("#content").css({height:"auto"});
			$("#create_post").css({overflow:"","z-index":"8"})
			$("#imgarea").css({display:"block"});
			$("#tags").css({display:"block"});
		})
		
		// 작성된 게시글에 사진 클릭시 주변 어두워지고 사진을 화면 중앙에 보여주는 함수
		$("#post_area").on("click",".upload_imgs",function(e){
			$("#back_ground_black").css({display:"block"});
			let left = parseInt($("#back_ground_black").css("width"))/2 - (e.currentTarget.naturalWidth / 2);
			let top = parseInt($("#back_ground_black").css("height"))/2 - (e.currentTarget.naturalHeight / 2);
			let src = e.currentTarget.src
			$(".detail_img").css({display:"block","top":top,"left":left})
			$("#detail_img_src").attr({src:src});
		})
		
		// 게시글 작성중 어두운 부분을 클릭하면 실행되는 함수
		$("#back_ground_black").on("click",function(){
			$(".detail_img").css({display:"none"})
			$("#content").css({height:"50px"});
			$("#create_post").css({overflow:"hidden"});
			$("#imgarea").css({display:"none"});
			$("#tags").css({display:"none"});
			$(this).css({display:"none"})
		})
		
		// 첨부된 이미지를 감상중 어두운 부분을 클릭하면 실행되는 함수
		$("#back_ground_black2").on("click",function(){
			$("#content").css({height:"50px"});
			$("#create_post").css({overflow:"hidden","z-index":"1"});
			$("#imgarea").css({display:"none"});
			$("#tags").css({display:"none"});
			$(this).css({display:"none"})
		})
		
		//스크롤 페이징 함수
		
		var max_post_cnt = 4;
		var page_controll = false;
		
		function page(post){
				$(window).scroll(function(){
					if(page_controll){
						return;
					}
					if($(document).height() < $(window).scrollTop() + $(window).height() + 1){
						$(window).scrollTop($(window).scrollTop()-200);	
						$(load(post_list,200));
					}
				});
		}


		// 맨 위로 새로고침 하는 함수
		$("#refresh_btn").on("click",()=>{load(refresh_btn,500)});
		function refresh_btn(){
			max_post_cnt = 4;
			page_controll = false;
			$(window).scrollTop("0");
			post_list();
			$("#min_post").css({display:"none"});
		}
		
		
		
		

		
		//검색 조건(공개범위)이 바뀌면 게시물을 다시 검색하여 보여주는 이벤트
		$("#searchType").on("change",()=>{load(post_list,1000)});
		
		//검색 조건(정렬방식)이 바뀌면 게시물을 다시 검색하여 보여주는 이벤트
		$("#order").on("change",()=>{load(post_list,1000)});
		
		//검색어 입력후 확인을 누르면 해당 조건에 맞게 실행되는 이벤트
		$("#search_btn").on("click",()=>{load(post_list,1000)});
		
		var post_index = 0;
		
		//게시물을 페이지에 보여주는 함수
		function post_list() {
			$.ajax({
                url:"/bitbook/listpost",
                type:"POST",
                dataType:"JSON",
                data:{"memNo":"${sessionScope.user.memNo}","searchType":$("#searchType").val(),"order":$("#order").val(),"search":$("#search").val()},
                success:(post_list)=>{
                	$("#post_area").html("");
                	let post_cnt = 0;
                	let min_post = 0;
                	for(post of post_list){
                		let imgs = "";
                		let up_del = ""; 	
                		let id_index = post.postNo;
                		let open_range ="";
                		if(post.postOpenRange == "1") open_range = "전체공개"
                		else if(post.postOpenRange == "2") open_range = "친구공개"
                		else open_range = "나만보기"
                		
                		if(post_list.length<4){page_controll = true; $("#min_post").css({display:"block"});}
                		else if(post_list.length%4 == 0){
                			if(post_list.length==max_post_cnt) { page_controll = true; $("#min_post").css({display:"block"}); }
                		}
                		else if(min_post == post_list.length%4){page_controll = true; $("#min_post").css({display:"block"});}
                		
                		if(post_list.length < max_post_cnt) { min_post++ }
						if(post_cnt == max_post_cnt) { page(); break; }
                		if(post.memNo == ${sessionScope.user.memNo}) up_del = 'style="display: block;"'
                		else up_del = 'style="display: none;"'
						post_cnt++;
						let tag = `<span style="font-weight: bold; padding-right: 10px; display: inline-block;">함께한 친구</span>`
                        if(post.postTag.length == 0) tag="";
                        else{
                            let tagList = "";
                            for(t of post.postTag){
                                tagList += `<a class="tag" href="/bitbook/member/outline?memNo=`+t.memNo+`">`+t.memName+`</a>`
                            }
                            tag = tag+tagList;
                        }
						if(post.fileUpload != undefined){
							for(i of post.fileUpload){
								imgs += `<img class="upload_imgs" src="`+i.filePath+`"/>`
							}
						}
						
						

					$("#post_area").append(`
                			
                			<div class="post">
                		    <div>
                		            <div class="min_content">
                		                <a href="/bitbook/member/outline?memNo=`+post.memNo+`"> <img class="profile rounded-circle img-fluid"
                		                    src="`+post.profilePath+`" alt="Circle Image">
                		                </a>
                		                <div class="board_wrap" style="margin-left: 75px;">
                		                    <div class="p_info">
                		                   		<span class="open_range_view">`+open_range+`</span>
                		                   		<a href="/bitbook/member/outline?memNo=`+post.memNo+`"> <span class="c_info" >`+post.memName+`</span></a> <span>`+date_info(post.postRegDate)+`</span>
                		                    </div>
                		                    <div class="board_content">
                		                      	`+post.postContent+`
                		                    </div>
    										<div class="upload_img_area">
    										`+imgs+`
											</div>
                		                    <div style="height: 40px;">
                		                        <div class="tag_wrap">
                                                `+tag+`
                                                </div>
                		                        <div style="display: inline-block;">
                		                        <!-- 내 게시글일경우 보이기 -->
                		                        <div class="update_post" `+up_del+`>
                		                            <button type="submit" id="`+id_index+`update_post" class="up_post_class btnA">수정</button>
                		                            <span>| </span>
                		                            <button type="submit" id="`+id_index+`delete_post"class="del_post_class btnB">삭제</button>
                		                        </div>
                		                        <!-- 내 게시글일경우 보이기 -->
                		                        </div>
                		                    </div>
                		                </div>
                		            </div>
                		            
                		        <div class="title_head comment_info" style="">
                		                <button id="`+id_index+`like_post"
                		                    class="post_likey likey btn btn-primary btn-fab btn-fab-mini btn-round post_like"
                		                    style="border-radius: 5px; width: 80px;">
                		                    <i class="likey_icon material-icons">favorite</i> <em
                		                     id="`+post.postNo+`likey_index_post"   class="likey_num">`+post.postLCount+`</em>
                		                </button>
                		                <button type="button" id="`+id_index+`p_comment" class="comment_open c_c_write btn btn-primary">
                		                    댓글 <span id="`+id_index+`spans">`+post.postCCount+`개</span>
                		                </button>
                		            </div>
                		        </div>

                		<!-- 게시글 -->

                		<div class="commentArea" id="`+id_index+`sp_comment_area">
                		<div id="reg_comment">
                		        
                		
                		        <!-- 댓글쓰기 -->
                		        <div class="coment">
                		            <a href="#" style="margin-left: 16px; display: block;"> <img
                		                style="display: block; float: left; width: 47px;"
                		                src="${sessionScope.user.profilePath}" alt="Circle Image"
                		                class="rounded-circle img-fluid">
                		            </a>
                		            <div class="c_wrap">
                		                <span class="c_info" >${sessionScope.user.memName}</span> <span
                		                    class="c_content" > <div contenteditable="true"
                		                        id="`+id_index+`c_text_area" class="c_text" style="width: 270px;"></div>
                		                </span>
                		            </div>
                		            <button id="`+id_index+`comment_add" class="c_submit btn btn-lg btn-primary disabled" type="button" style="">등록</button>
                		            </div>
                		        
                		        
                		</div><!-- end #reg_comment -->


                		<div id="`+id_index+`commentList">
                		        
                		</div><!-- end #commentList -->
                		<div>
                		    <button type="button"  id="comment_plus" class="`+id_index+`c_plus btn btn-info btn-sm">댓글 더보기</button>
                		</div>	
                			
     			
                			
                	
                			
                	`)
					
					
					
					
				} // end for
                	 max_post_cnt = max_post_cnt + 4;
                }
            })
           
		}

		// 게시글 좋아요
		$("#post_area").on("click",".post_likey",function(){
			let post_no = parseInt($(this).prop("id"));
			let mem_no = ${sessionScope.user.memNo};
			let likey = $("#"+post_no+"likey_index_post")
			let like = parseInt(likey.text());
 			$.ajax({
                url:"/bitbook/likepost",
                type:"POST",
                data:{"postNo":post_no,"memNo":mem_no},
                success:(err)=>{
                	if(err==1){
                		likey.html(like+1);
                	}else{
                		likey.html(like-1);
                	}
                }
			}) 
		})
		
		//게시글 삭제
		$("#post_area").on("click",".del_post_class",function(){
			let post_no = parseInt($(this).prop("id"));
			console.log("눌러지나요")
 			$.ajax({
                url:"/bitbook/postdelete",
                type:"POST",
                data:{"postNo":post_no}
			}) 
			load(post_list,1000);
		})
		
		
		
		
		// 덧글 펼치기
		$("#post_area").on("click",".comment_open",function(){
			let post_no = parseInt($(this).prop("id"));
			let area = $("#"+post_no+"sp_comment_area");
			area.css("display") == "none" ? area.css({display:"block"})
					  : area.css({display:"none"})
			comment_list(post_no,5)
		})
		
		// 덧글 더보기
		$("#post_area").on("click","#comment_plus",function(){
			let post_no = parseInt($(this).prop("class"));
			let max;
			if($(this).attr("max")==undefined){
				$(this).attr({"max":10})
				max = parseInt($(this).attr("max"));
			}else{
				max = parseInt($(this).attr("max"))+5;
				$(this).attr({"max":max})
			}
				load(comment_list,500,post_no)
				return;
		})

		
		
		// 덧글 출력
		function comment_list(post_no,max_cnt){
            $("#"+post_no+"commentList").html("")
			$.ajax({
                url:"/bitbook/listcomment",
                type:"POST",
                dataType:"JSON",
                data:{"postNo":post_no},
                success:(commentList)=>{
                	if(max_cnt==undefined){
            			if($("."+post_no+"c_plus").attr("max")==undefined){
            				max_cnt = 5;
            			}else{
            				max_cnt = $("."+post_no+"c_plus").attr("max");
            			}
                	}
                	
                	if(max_cnt<commentList.length){
                		$("."+post_no+"c_plus").css({display:"block"})
                	}else{
                		$("."+post_no+"c_plus").css({display:"none"})
                	}
                	
                	
                	let cnt = 0;
                	$("#"+post_no+"spans").html(commentList.length+"개");
                	for(comment of commentList){
                		if(cnt==max_cnt) break;
                		cnt++;
                		
                		let comment_info = "";
                        if(comment.memNo == ${sessionScope.user.memNo}){
                            comment_info = 
                            `
                                    <button class="`+post_no+`post_comment_index up_comment_btn btnA" id="`+comment.commentNo+`update_comment">수정</button>
									<span>|</span>
                                    <button class="`+post_no+`post_comment_index del_comment_btn btnB" id="`+comment.commentNo+`del_comment">삭제</button>
                            `        
                        }

	                	$("#"+post_no+"commentList").append(`
	                			
	                			
								<div class="`+comment.commentNo+` coment" id="`+comment.memNo+`comment_class">
								<a href="/bitbook/member/outline?memNo=`+comment.memNo+`" style="margin-left: 16px; display: block;"> <img
									style="display: block; float: left; width: 47px;"
									src="`+comment.profilePath+`" alt="Circle Image"
									class="rounded-circle img-fluid">
								</a>
								<div class="c_wrap">
									<a href="/bitbook/member/outline?memNo=`+comment.memNo+`"><span class="c_info">`+comment.memName+`</span></a> <span id="`+comment.commentNo+`c_content" class="c_content">`+comment.commentContent+`</span>
								</div>
								<div
									style="margin-left: 70px; margin-top: 5px; position: relative;">
									<div id="`+comment.commentNo+`up_comment" class="update_comment">`+comment_info+`
									</div>
									<span class="year" style="margin-left: 10px; font-size: 13px;">`+date_info(comment.commentRegDate)+`</span>
									<button id="`+comment.commentNo+`comment_like"
										class="`+comment.memNo+`comment_class comment_likey likey btn btn-primary btn-fab btn-fab-mini btn-round" style="left:382px !important;">
										<i class="likey_icon material-icons">favorite</i> <em
											id="`+comment.commentNo+`likey_index_comment" class="likey_num">`+comment.commentLCount+`</em>
									</button>
								</div>
							</div>	
							
							
	                			`);
                	}
                }
			})

		}
		
				// 덧글 등록
		$("#post_area").on("click",".c_submit",function(){
			let post_no = parseInt($(this).prop("id"));
			let comment_content = $("#"+post_no+"c_text_area").html();
			console.log($("#"+post_no+"c_text_area").html());
			$("#"+post_no+"c_text_area").html("");
			$.ajax({
                url:"/bitbook/commentwrite",
                type:"POST",
                data:{"memNo":"${sessionScope.user.memNo}","postNo":post_no,"commentContent":comment_content},
			})
            load(comment_list,500,post_no)
		})
		
		
			// 덧글 삭제
		
		$("#post_area").on("click",".del_comment_btn",function(){
			let comment_no = parseInt($(this).prop("id"));
			let post_no = parseInt($(this).prop("class"));
		
			
			$.ajax({
                url:"/bitbook/commentdelete",
                type:"POST",
                data:{"commentNo":comment_no,"postNo":post_no}
			})
           	load(comment_list,500,post_no)
		})
		
			// 덧글 수정
		$("#post_area").on("click",".up_comment_btn",function(){
			let comment_no = parseInt($(this).prop("id"));
			let post_no = parseInt($(this).prop("class"));
			let comment_info = 
                `
                <button class="`+comment_no+`post_comment_index up_ok_comment_btn btnA" id="`+comment_no+`ok_comment">확인</button>
				<span>|</span>
                <button class="`+comment_no+`post_comment_index up_no_comment_btn btnB" id="`+comment_no+`no_comment">취소</button>
      		  `;     
      		  
      		let next_btn = 
                `
                <button class="`+post_no+`post_comment_index up_comment_btn btnA" id="`+comment_no+`update_comment">수정</button>
				<span>|</span>
                <button class="`+post_no+`post_comment_index del_comment_btn btnB" id="`+comment_no+`del_comment">삭제</button>
       			 `     
      		
      		let content_html = $("#"+comment_no+"c_content").html()

      		$("#"+comment_no+"c_content").attr({contenteditable:true}) 
			$("#"+comment_no+"up_comment").html(comment_info)
			
			
			$("#post_area").on("click","#"+comment_no+"no_comment",function(){
				$("#"+comment_no+"c_content").attr({contenteditable:false})
				$("#"+comment_no+"c_content").html(content_html)
				$("#"+comment_no+"up_comment").html(next_btn)
			})
			
			$("#post_area").on("click","#"+comment_no+"ok_comment",function(){
				$("#"+comment_no+"c_content").attr({contenteditable:false})
				$("#"+comment_no+"up_comment").html(next_btn)
				let update_html = $("#"+comment_no+"c_content").html();
 			 	$.ajax({
	                url:"/bitbook/commentupdate",
	                type:"POST",
	                data:{"commentNo":comment_no,"commentContent":update_html}
				})
	           	load(up_comment(comment_no,update_html),1000)
			})
		})

		function up_comment(comment_no,update_html){
			$("#"+comment_no+"c_content").html(update_html)	
		}
		
		
			// 덧글 좋아요
		$("#post_area").on("click",".comment_likey",function(){
			let comment_no = parseInt($(this).prop("id"));
			let mem_no = ${sessionScope.user.memNo};
			let likey = $("#"+comment_no+"likey_index_comment")
			let like = parseInt(likey.text());
 			$.ajax({
                url:"/bitbook/likecomment",
                type:"POST",
                data:{"commentNo":comment_no,"memNo":mem_no},
                success:(err)=>{
                	console.log(err)
                	if(err==1){
                		likey.html(like+1);
                	}else{
                		likey.html(like-1);
                	}
                }
			}) 
		})
			
			
		
		
		
		
		
	    $(friendsList());
	    setInterval(friendsList,1000);
		$("#searchName").on("keyup",()=>{friendsList()});
	     
	        function friendsList(){
	            $.ajax({
	                url:"/bitbook/listFriendsInfo",
	                type:"POST",
	                dataType:"JSON",
	                data:{"memNo":${sessionScope.user.memNo},"searchName":$("#searchName").val()},
	                success:(friendslist)=>{
	                	$("#f_info").html("");
	                    for(let fl of friendslist){
	                    	let date;
	                    	fl.login == ('i'||'I') ? date = "활동중입니다." : date = timeDiff(fl.logoutDate)+"전까지 활동 했습니다.";
	                        let login = fl.login == ('i'||'I') ? 'green' : 'gray';
	                        let memUrl = "/bitbook/member/outline?memNo="+fl.memNo;
	                        $("#f_info").append(`
	                        <div class="friendMember">
	                        <a class="f_link"style="display: block;" href="`+memUrl+`">
	                        <img src="`+fl.profilePath+`" alt="Circle Image" 	class="f_img rounded-circle img-fluid">
	                        </a>
	                        <div class="login" style="background:`+login+`"></div>
	                        <p><a href="`+memUrl+`"><span class="f_name c_info" >`+fl.memName+`</span></a><br><br><p class="friendInfo">`+date+`</p></p>
	                        </div>
	                        `);
	                    }
	                }
	            })
	        }
	        
	        function timeDiff(date){
	            var diff = new Date()-new Date(date); 
	            var currMinute =  60 * 1000;// 초 * 밀리세컨
	            var currHour = currMinute * 60;//분 * 초 * 밀리세컨
	             var currDay = currHour * 24;// 시 * 분 * 초 * 밀리세컨
	             var currMonth = currDay * 30;// 월 만듬
	             var currYear = currMonth * 12; // 년 만듬
	            if(parseInt(diff/currMinute)<60){
	               return parseInt(diff/currMinute)+"분 ";
	            }
	            if(parseInt(diff/currHour)<25){
	               return parseInt(diff/currHour)+"시간 ";
	            }
	            if(parseInt(diff/currDay)<30){
	               return parseInt(diff/currDay)+"일 ";
	            }
	            if(parseInt(diff/currMonth)<12){
	               return parseInt(diff/currMonth)+"달 ";
	            }
	            return parseInt(diff/currYear)+"년 ";
	         }
	        
	        
	        function date_info(date){
	            var date = new Date(date); 
				var time = date.getFullYear() + "-" 
				         + (date.getMonth() + 1) + "-" 
				         + date.getDate() + " "
				         + date.getHours() + ":"
				         + date.getMinutes() + ":"
				         + date.getSeconds();
			    return time;
	        }
	        
	        
	    	$("#submit").on("click",()=>{
	    		let content = $("#content").html()
	    		$("#content_copy").val(content);
	    	})

	    
	    	// 친구 태그하기 ----------------------------------------------------------------
	    	    	$("#tag_friends").on("keyup",()=>{
	    	    		if($("#tag_friends").val().length==0){
	    	    			$("#f_list").css({"display":"none"});
	                        $("#f_list").html("");
	    	    			return;
	    	    		}
	    	    		
	                    $.ajax({
	                        url:"/bitbook/listFriendsInfo",
	                        type:"POST",
	                        dataType:"JSON",
	                        data:{"memNo":${sessionScope.user.memNo},"searchName":$("#tag_friends").val()},
	                        success:(friendslist)=>{
	                            if(friendslist.length == 0){
	                            	$("#f_list").css({"display":"none"});
	                                $("#f_list").html("");
	                            	return;
	                            }
	                            
	                            $("#f_list").css({"display":"block"});
	                            $("#f_list").html("");
	                            for(let fl of friendslist){
	                            	if($("#tag").val().indexOf(fl.friendsNo,0)!=-1)continue;
	                            	let memUrl = "";
	                                $("#f_list").append(`
	                                <div class="search_friends" id="`+fl.friendsNo+`_`+fl.memName+`">
	                                <div class="f_list_detail">
	                                <img src="`+fl.profilePath+`" alt="Circle Image" class="tag_img f_img rounded-circle img-fluid">
	                                <a href="#"><span class="f_name">`+fl.memName+`</span></a>
	                                </div></div>
	                                `);
	                            }
	                        }
	                    })
	                })
	    
	        var tagCnt = 0; // 태그한 친구 수        
	                // 태그 추가
	        $("#f_list").on("click",".search_friends",function(){
	        	let tag = [];	// 0번째 회원번호  1번째 회원 이름
	        	tag = this.id.split("_")
	        	$("#tags").append(`
	        			<span class="tags" id="`+tag[0]+`"><span class="tag_name">`+tag[1]+`</span><i class="material-icons del_icon" id="`+tag[0]+`del">indeterminate_check_box</i></span>
	        			`)
	        	$("#tag_friends").val("");
	        	$("#f_list").html("");
	        	$("#f_list").css({"display":"none"});
	        	$("#tag").val($("#tag").val()!=""?$("#tag").val()+"/"+tag[0]:$("#tag").val()+tag[0])
	        	$("#tagCnt").text(++tagCnt+" 명의 친구와 함께합니다.");
	        })
	        
	        	// 태그 삭제
	        $("#tags").on("click","i",function(){
	        	--tagCnt;
	        	let del = parseInt(this.id);
	        	let index = $("#tag").val();
	        	let index_of = index.indexOf(del,0);
	        	let tag;
	        	
	        	if(tagCnt==0)tag="";
	        	else index_of == 0 ? tag = index.replace(del+"/","") : tag = index.replace("/"+del,""); 			
	        	$("#tag").val(tag);
	        	$("#"+del).remove();
	        	if($("#tag").val().length == 0) $("#tagCnt").text("");
	        	else $("#tagCnt").text(tagCnt+" 명의 친구와 함께합니다.");
	        })
	                
	                
	                
	    
	    
	    
	    	// 이미지 첨부 스크립트 --------------------------------------------------------------------------------------------------
	    	var imgIndex = 0; //이미지 및 미리보기 연결과 겹치지 않게 구분해주는 변수
	    	var imgCnt = 0;	//현재 이미지 첨부한 개수
	    	var maxImg = 4;	//최대 이미지 첨부 가능 개수
	    	
	    	$("#attachBtn").on("click",()=>{ /** 이미지 첨부 버튼 클릭시 발생하는 이벤트 */
	            $(".tempInp").remove(); // 주석 1	
	    		$("#imgarea").append($("<input>").attr({type:"file",class:"tempInp imgInp",accept:"image/*"}).click()); // 주석 2
	    		/**
	    			주석1 : 이전에 생성되어 있는 <input class="tempInp"> 를 삭제해준다.
	    			주석2 : imgarea 태그에 input태그 생성
	    				      아직 이미지가 첨부되지 않은 input태그는 tempInp 클래스명을 갖게된다.
	    				      첨부가능 파일은 image 로 제한
	    				      생성된 input 태그를 강제로 클릭
	    		*/
	    	})
	    
			// 이미지 첨부시 발생하는 이벤트(미리보기 포함) -----------------------------------------------------    	
	       // $(function() {
	            $("#imgarea").on('change',"input",function(){ /**이미지 첨부시 해당 input태그의 value가 바뀌어 onChange 이벤트 발생, 동적 태그라서 imgarea 하위 태그로 검색해야함*/
	            	let fileext = $(this).val(); // 주석1	
	            	fileext = fileext.slice(fileext.indexOf(".")+1).toUpperCase();
	            	if(fileext != "JPG"
	            	 &&fileext != "PNG"
	            	 &&fileext != "GIF"
	            	 &&fileext != "BMP"
	            	){
	            		alert("이미지 파일만 등록이 가능합니다.")
	                	$(".tempInp").remove();	// 주석2
	            		return;
	            	}else if(imgCnt==maxImg){
	            		alert("이미지는 "+maxImg+"개 까지 등록이 가능합니다.")            		
	                	$(".tempInp").remove();
	            		return;
	            	}
	                $(this).attr({class:"imgInp",id:"imgInp"+(++imgIndex),name:"imgInp"+(imgIndex)}) // 주석3
	                readURL(this); //주석4
	            });
	        //});
			/**
				주석1 : 유저가 선택한 첨부파일의 경로와 파일명(확장자포함)을 받아온다.
					      확장자를 가져오기 위해 경로와 파일명 뒤에 .확장자 가 들어가기떄문에 .으로 문자열을 나누고 구분을 위하여 대문자로 변환한다.
			        주석2 : 첨부에 실패하면 이미지 첨부를 위해 생성된 tempInp 클래스를 지운다.    
				주석3 : 첨부에 성공하면 tempInp 클래스명을 변경하고 다른 input 태그와 구분을 위해 id를 부여한다.
				주석4 : 미리보기 생성을 위한 함수
			    
			*/
	    	
	    	
	        function readURL(input) { /** 첨부 이미지 미리보기 생성 함수 */

	            if (input.files && input.files[0]) {
	            var reader = new FileReader();
	            reader.onload = function (e) {
	            		
	                    $("#imgarea").append($("<div>").attr({class:"imgs_field",id:"imgBox"+imgIndex})).css({height:"100px"});
	                    $("#imgBox"+imgIndex).append($("<img>").attr({class:"imgs",id:"blah"+imgIndex}));
	                    $("#imgBox"+imgIndex).append($("<span>").attr({class:"del_img",id:imgIndex+"blahDel"}));
	                    $("#blah"+imgIndex).attr('src', e.target.result);
	                    $(".del_img").html('<i class="material-icons">indeterminate_check_box</i>');
	                    imgCnt++;
	                }
	              reader.readAsDataURL(input.files[0]);
	              
	            }
	        }
			// 이미지 첨부시 발생하는 이벤트 -----------------------------------------------------    	
			
	      
	    	// 첨부한 이미지 제거 -------------------------------------- 
			$("#imgarea").on("click","span",(e)=>{
				let imgNumber = parseInt(e.currentTarget.id);
				$("#imgBox"+imgNumber).remove();
				$("#imgInp"+imgNumber).remove();
				imgCnt--;
				if(imgCnt==0) $("#imgarea").css({height:"10px"});
			})
	    	// 첨부한 이미지 제거 --------------------------------------     
	        
		</script>
</body>
</html>