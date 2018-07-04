package kr.co.bitbook.member.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.google.gson.Gson;

import kr.co.bitbook.common.db.MyAppSqlConfig;
import kr.co.bitbook.domain.Job;
import kr.co.bitbook.domain.Member;
import kr.co.bitbook.domain.MemberDetail;
import kr.co.bitbook.mapper.FriendsMapper;
import kr.co.bitbook.mapper.MemberMapper;

@WebServlet("/member/formCareer")
public class FormCareerMember extends HttpServlet{

	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setCharacterEncoding("UTF-8");
		response.setContentType("application/json;charset=UTF-8");

		Job job =  MyAppSqlConfig.getSqlSession().getMapper(MemberMapper.class).selectJobNo(Integer.parseInt(request.getParameter("jobNo")));
		PrintWriter out = response.getWriter();
		out.println(new Gson().toJson(job));
		out.close();
	}
}
