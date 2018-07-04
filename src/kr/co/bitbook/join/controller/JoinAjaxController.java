package kr.co.bitbook.join.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.co.bitbook.common.db.MyAppSqlConfig;
import kr.co.bitbook.mapper.JoinMapper;

@WebServlet("/bitbook/joinA")
public class JoinAjaxController extends HttpServlet {
	
	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		JoinMapper mapper = MyAppSqlConfig.getSqlSession().getMapper(JoinMapper.class);
		response.setContentType("application/json; charset=utf-8");
		String id= request.getParameter("id");
		System.out.println(id);
		int count = mapper.selectMemberCount(id);
		System.out.println(count);
		PrintWriter out = response.getWriter();
		out.write("{\"id\":"+ count+"}");
		out.close();
	}

}
