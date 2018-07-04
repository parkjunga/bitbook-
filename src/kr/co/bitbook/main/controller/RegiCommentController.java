package kr.co.bitbook.main.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.co.bitbook.common.db.MyAppSqlConfig;
import kr.co.bitbook.domain.Comment;
import kr.co.bitbook.domain.Notification;
import kr.co.bitbook.mapper.MainMapper;

@WebServlet("/commentwrite")
public class RegiCommentController extends HttpServlet{
	private MainMapper mapper;
	

	public RegiCommentController() {
		mapper = MyAppSqlConfig.getSqlSession().getMapper(MainMapper.class);
	}
	
	
	@Override
	protected void service(HttpServletRequest arg0, HttpServletResponse arg1) throws ServletException, IOException {
		arg1.setContentType("application/json; charset=utf-8");
		Comment comment = 	new Comment().setMemNo(Integer.parseInt(arg0.getParameter("memNo")))
										 .setPostNo(Integer.parseInt(arg0.getParameter("postNo")))
										 .setCommentContent(arg0.getParameter("commentContent"))
										 .setCommentNo(0);
		mapper.insertComment(comment);
		mapper.updatePostCCount(comment);
		
		Notification notification = new Notification().setSearchType(4)
				.setReqMemNo(Integer.parseInt(arg0.getParameter("memNo")))
				.setReqNo(Integer.parseInt(arg0.getParameter("postNo")))
				.setMemNo(0);
		mapper.insertNotification(notification);
	}
}
