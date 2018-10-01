package kr.co.bitbook.login.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.co.bitbook.common.db.MyAppSqlConfig;
import kr.co.bitbook.domain.Member;
import kr.co.bitbook.mapper.LoginMapper;

@WebServlet("/bitbook/FindId")
public class FindIdController extends HttpServlet{
	
	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		LoginMapper mapper = MyAppSqlConfig.getSqlSession().getMapper(LoginMapper.class);
		PrintWriter out = response.getWriter();
		String name = request.getParameter("name");
		System.out.println(name);
		String email = request.getParameter("email");
		Member info = mapper.selectMemberEmail(name,email);
		System.out.println(email);
		System.out.println(info);
		if(info == null ) {
			request.setAttribute("errId", "이름과 이메일이 일치하지 않습니다.");
			System.out.println("2");
		}else if(info.getMemName().equals(name)&&info.getMemEmail().equals(email)) {
			System.out.println("성공");
			out.println("<script>");
			out.println("alert('"+info.getMemId()+"')");
			out.println("location.href='login'");
			out.println("</script>");
			System.out.println(info.getMemId());
			//response.sendRedirect(request.getContextPath() + "/bitbook/login");
			return;
		}
	
		RequestDispatcher rd = request.getRequestDispatcher(
				"/bitbook/FindEmail"
		);
		rd.forward(request, response);
		
		
	}

}
