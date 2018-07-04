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
import kr.co.bitbook.domain.SearchFriends;
import kr.co.bitbook.mapper.MainMapper;

@WebServlet("/listFriendsInfo")
public class ListFriendsInfoController extends HttpServlet{
	private MainMapper mapper;
	
	public ListFriendsInfoController() {
		mapper = MyAppSqlConfig.getSqlSession().getMapper(MainMapper.class);
	}
	
	@Override
	protected void service(HttpServletRequest arg0, HttpServletResponse arg1) throws ServletException, IOException {
		arg1.setContentType("application/json; charset=utf-8");
		List<SearchFriends> sf = mapper.searchMyFriends(new SearchFriends().setMemNo(Integer.parseInt(arg0.getParameter("memNo"))).setMemName(arg0.getParameter("searchName")));
		PrintWriter out = arg1.getWriter();
		out.println(new Gson().toJson(sf));
	}
}
