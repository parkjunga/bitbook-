package kr.co.bitbook.main.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.co.bitbook.common.db.MyAppSqlConfig;
import kr.co.bitbook.domain.Comment;
import kr.co.bitbook.mapper.MainMapper;

@WebServlet("/commentupdate")
public class UpdtCommentController extends HttpServlet{
	private MainMapper mapper;
	

	public UpdtCommentController() {
		mapper = MyAppSqlConfig.getSqlSession().getMapper(MainMapper.class);
	}
	
	
	@Override
	protected void service(HttpServletRequest arg0, HttpServletResponse arg1) throws ServletException, IOException {
		arg1.setContentType("application/json; charset=utf-8");
		Comment comment = new Comment().setCommentNo(Integer.parseInt(arg0.getParameter("commentNo")))
							           .setCommentContent(arg0.getParameter("commentContent"));

		mapper.updateComment(comment);
	}
}