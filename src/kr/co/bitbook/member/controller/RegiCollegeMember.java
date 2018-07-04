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

@WebServlet("/member/regiCareer")
public class RegiCollegeMember extends HttpServlet {

	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		Job job = new Job();
		job.setMemNo(Integer.parseInt(request.getParameter("memNo")));
		job.setJobName(request.getParameter("jobName"));
		job.setJobCity(request.getParameter("jobCity"));
		job.setJobPosition(request.getParameter("jobPosition"));
		job.setJobInfo(request.getParameter("jobInfo"));
		MyAppSqlConfig.getSqlSession().getMapper(MemberMapper.class).insertJob(job);
		response.sendRedirect("career?memNo="+Integer.parseInt(request.getParameter("memNo")));
	}
	
}
