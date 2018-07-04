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


@WebServlet("/commentdelete")
public class DeltCommentController extends HttpServlet{
	private MainMapper mapper;
	

	public DeltCommentController() {
		mapper = MyAppSqlConfig.getSqlSession().getMapper(MainMapper.class);
	}
	
	
	@Override
	protected void service(HttpServletRequest arg0, HttpServletResponse arg1) throws ServletException, IOException {
		arg1.setContentType("application/json; charset=utf-8");
		Comment comment = new Comment().setCommentNo(Integer.parseInt(arg0.getParameter("commentNo")))
							           .setPostNo(Integer.parseInt(arg0.getParameter("postNo")));

		mapper.deleteLikeCommentAll(comment);
		mapper.deleteCommentNo(comment);
		mapper.updatePostCCount(comment);
	}
}