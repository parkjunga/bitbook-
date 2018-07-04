package kr.co.bitbook.main.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;

import kr.co.bitbook.common.db.MyAppSqlConfig;
import kr.co.bitbook.domain.Post;
import kr.co.bitbook.mapper.MainMapper;

@WebServlet("/listpost")
public class ListPostController extends HttpServlet{
	private MainMapper mapper;
	

	public ListPostController() {
		mapper = MyAppSqlConfig.getSqlSession().getMapper(MainMapper.class);
	}
	
	
	@Override
	protected void service(HttpServletRequest arg0, HttpServletResponse arg1) throws ServletException, IOException {
		arg1.setContentType("application/json; charset=utf-8");
		List<Post> post = mapper.selectPost(new Post().setMemNo(Integer.parseInt(arg0.getParameter("memNo")))
													  .setOrder(arg0.getParameter("order").charAt(0))
													  .setSearchType(arg0.getParameter("searchType").charAt(0))
													  .setSearch(arg0.getParameter("search")));
		PrintWriter out = arg1.getWriter();
		out.println(new Gson().toJson(post));
	}
}
