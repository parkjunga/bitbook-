package kr.co.bitbook.main.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.co.bitbook.common.db.MyAppSqlConfig;
import kr.co.bitbook.domain.LikeComment;
import kr.co.bitbook.domain.Notification;
import kr.co.bitbook.mapper.MainMapper;

@WebServlet("/likecomment")
public class LikeCommentController extends HttpServlet{
	private MainMapper mapper;
	

	public LikeCommentController() {
		mapper = MyAppSqlConfig.getSqlSession().getMapper(MainMapper.class);
	}
	
	
	@Override
	protected void service(HttpServletRequest arg0, HttpServletResponse arg1) throws ServletException, IOException {
		arg1.setContentType("application/json; charset=utf-8");
		int err = -1;
		
		LikeComment likeComment = new LikeComment().setMemNo(Integer.parseInt(arg0.getParameter("memNo")))
												   .setCommentNo(Integer.parseInt(arg0.getParameter("commentNo")));
		
		if(mapper.selectLikeComment(likeComment) == null) {
			err = 1;
			likeComment.setUpAndDown(err);	
			mapper.insertLikeComment(likeComment);
		}else {
			likeComment.setUpAndDown(err);
			mapper.deleteLikeComment(likeComment);
		}
		
		mapper.updateCommentLCount(likeComment);
		
		Notification notification = new Notification().setSearchType(4)
				.setReqMemNo(Integer.parseInt(arg0.getParameter("memNo")))
				.setReqNo(Integer.parseInt(arg0.getParameter("commentNo")));
		mapper.insertNotificationByLikeComment(notification);
		
		
		PrintWriter out = arg1.getWriter();
		out.println(err);
		
	}
}
