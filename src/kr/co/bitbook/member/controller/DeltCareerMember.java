package kr.co.bitbook.member.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.co.bitbook.common.db.MyAppSqlConfig;
import kr.co.bitbook.domain.Job;
import kr.co.bitbook.mapper.MemberMapper;

@WebServlet("/member/deltCareer")
public class DeltCareerMember extends HttpServlet {

	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		MyAppSqlConfig.getSqlSession().getMapper(MemberMapper.class).deleteJob(Integer.parseInt(request.getParameter("jobNo")));
		response.sendRedirect("career?memNo="+Integer.parseInt(request.getParameter("memNo")));
	}
	
}
