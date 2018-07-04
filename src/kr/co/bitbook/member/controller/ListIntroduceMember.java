package kr.co.bitbook.member.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import kr.co.bitbook.common.db.MyAppSqlConfig;
import kr.co.bitbook.domain.Job;
import kr.co.bitbook.domain.Member;
import kr.co.bitbook.domain.MemberDetail;
import kr.co.bitbook.mapper.FriendsMapper;
import kr.co.bitbook.mapper.MemberMapper;

@WebServlet("/member/introduce")
public class ListIntroduceMember extends HttpServlet{

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
		}
		member = MyAppSqlConfig.getSqlSession().getMapper(FriendsMapper.class).selectMember(memNo);
		System.out.println(memNo);
		MemberDetail memberDetail=MyAppSqlConfig.getSqlSession().getMapper(MemberMapper.class).selectMemberDetail(memNo);
		
		request.setAttribute("member", member);
		request.setAttribute("memberDetail", memberDetail);
		System.out.println(memberDetail);
		RequestDispatcher rd = request.getRequestDispatcher("/jsp/member/viewMemberIntroduce.jsp");
		rd.forward(request, response);	
	}
	
}
