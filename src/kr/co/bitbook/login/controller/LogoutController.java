package kr.co.bitbook.login.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import kr.co.bitbook.common.db.MyAppSqlConfig;
import kr.co.bitbook.domain.Member;
import kr.co.bitbook.mapper.LoginMapper;

@WebServlet("/bitbook/logout")
public class LogoutController extends HttpServlet {
	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		LoginMapper mapper = MyAppSqlConfig.getSqlSession().getMapper(LoginMapper.class);
		HttpSession session = request.getSession();
	    Member m = (Member)session.getAttribute("user");
		mapper.updateOut(m.getMemId());
		System.out.println("로그아웃되었나?" + m.getMemId() + m.getLogoutDate());
		request.getSession().invalidate();
		response.sendRedirect(request.getContextPath() + "/bitbook/login");
	}
}

