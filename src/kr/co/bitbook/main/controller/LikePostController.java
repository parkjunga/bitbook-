package kr.co.bitbook.main.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.co.bitbook.common.db.MyAppSqlConfig;
import kr.co.bitbook.domain.LikePost;
import kr.co.bitbook.domain.Notification;
import kr.co.bitbook.mapper.MainMapper;

@WebServlet("/likepost")
public class LikePostController extends HttpServlet{
	private MainMapper mapper;
	

	public LikePostController() {
		mapper = MyAppSqlConfig.getSqlSession().getMapper(MainMapper.class);
	}
	
	
	@Override
	protected void service(HttpServletRequest arg0, HttpServletResponse arg1) throws ServletException, IOException {
		arg1.setContentType("application/json; charset=utf-8");
		int err = -1;
		
		LikePost likePost = new LikePost().setMemNo(Integer.parseInt(arg0.getParameter("memNo")))
												   .setPostNo(Integer.parseInt(arg0.getParameter("postNo")));
		Notification notification = new Notification().setSearchType(3)
				.setReqMemNo(Integer.parseInt(arg0.getParameter("memNo")))
				.setReqNo(Integer.parseInt(arg0.getParameter("postNo")))
				.setMemNo(0);
		if(mapper.selectLikePost(likePost) == null) {
			err = 1;
			mapper.insertNotification(notification);
			likePost.setUpAndDown(err);	
			mapper.insertLikePost(likePost);
		}else {
			likePost.setUpAndDown(err);
			mapper.deleteLikePost(likePost);
			mapper.updateNotification(notification);
		}
		
		mapper.updatePostLCount(likePost);
		
		PrintWriter out = arg1.getWriter();
		out.println(err);
		
	}
}
