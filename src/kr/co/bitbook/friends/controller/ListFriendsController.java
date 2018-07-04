package kr.co.bitbook.friends.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import kr.co.bitbook.common.db.MyAppSqlConfig;
import kr.co.bitbook.domain.Member;
import kr.co.bitbook.mapper.FriendsMapper;

@WebServlet("/friends/list")
public class ListFriendsController extends HttpServlet{

	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int memNo=0;
		Member member = new Member();
		try {
			memNo = Integer.parseInt(request.getParameter("memNo"));
		} catch (Exception e) {
			HttpSession session = request.getSession();
			member = (Member)session.getAttribute("user");
			memNo= member.getMemNo();
			//memNo= 1;
		}
		member = MyAppSqlConfig.getSqlSession().getMapper(FriendsMapper.class).selectMember(memNo);
		request.setAttribute("member", member);
		RequestDispatcher rd = request.getRequestDispatcher("/jsp/friends/friends.jsp");
		rd.forward(request, response);
	}
	
}
