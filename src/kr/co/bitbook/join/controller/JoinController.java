package kr.co.bitbook.join.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.co.bitbook.common.db.MyAppSqlConfig;
import kr.co.bitbook.domain.Member;
import kr.co.bitbook.mapper.JoinMapper;

@WebServlet("/bitbook/join")
public class JoinController extends HttpServlet {
	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		JoinMapper mapper = MyAppSqlConfig.getSqlSession().getMapper(JoinMapper.class);
		Member m = new Member();
		m.setMemId(request.getParameter("id"));
		m.setMemPass(request.getParameter("pass"));
		m.setMemName(request.getParameter("name"));
		m.setMemEmail(request.getParameter("email"));
		mapper.insertJoin(m);		
		mapper.insertDetail(m.getMemNo());
		response.sendRedirect(request.getContextPath()+ "/bitbook/login");
	}

}
