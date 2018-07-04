package kr.co.bitbook.main.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.co.bitbook.common.db.MyAppSqlConfig;
import kr.co.bitbook.mapper.MainMapper;

@WebServlet("/postdelete")
public class DeltPostController extends HttpServlet{
	private MainMapper mapper;
	

	public DeltPostController() {
		mapper = MyAppSqlConfig.getSqlSession().getMapper(MainMapper.class);
	}
	
	
	@Override
	protected void service(HttpServletRequest arg0, HttpServletResponse arg1) throws ServletException, IOException {
		arg1.setContentType("application/json; charset=utf-8");
		int postNo = Integer.parseInt(arg0.getParameter("postNo"));
		System.out.println(postNo);
		mapper.deleteLikeCommentAllForPost(postNo);
		mapper.deleteCommentAll(postNo);
		mapper.deleteLikePostAll(postNo);
		mapper.deletePostTagForPost(postNo);
		mapper.deletePost(postNo);
	}
}