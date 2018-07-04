package kr.co.bitbook.member.controller;

import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.co.bitbook.common.db.MyAppSqlConfig;
import kr.co.bitbook.domain.MemberDetail;
import kr.co.bitbook.mapper.MemberMapper;

@WebServlet("/member/updtBirth")
public class UpdtBirthMember extends HttpServlet {

	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		MemberDetail memberDetail = MyAppSqlConfig.getSqlSession().getMapper(MemberMapper.class).selectMemberDetail(Integer.parseInt(request.getParameter("memNo")));
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
		System.out.println(request.getParameter("birth"));
		try {
			memberDetail.setBirth(sdf.parse(request.getParameter("birth")));
		} catch (Exception e) {
			System.out.println(e);
		}
		MyAppSqlConfig.getSqlSession().getMapper(MemberMapper.class).updateBirth(memberDetail);
		response.sendRedirect("contact?memNo="+Integer.parseInt(request.getParameter("memNo")));
	}
}
