package kr.co.bitbook.login.controller;

import java.io.IOException;
import java.util.Date;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import kr.co.bitbook.common.db.MyAppSqlConfig;
import kr.co.bitbook.domain.Member;
import kr.co.bitbook.mapper.LoginMapper;

@WebServlet("/bitbook/login")
public class LoginController extends HttpServlet {
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		RequestDispatcher rd = request.getRequestDispatcher("/jsp/login/index.jsp");
		rd.forward(request, response);
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		LoginMapper mapper = MyAppSqlConfig.getSqlSession().getMapper(LoginMapper.class);
		String id = req.getParameter("id");
		String pass = req.getParameter("pass");
		Member login = mapper.selectMemberById(id);
		mapper.updateLogin(id);
//		login.setLogin(req.getParameter("login").charAt(0));
		if(login == null) {
			req.setAttribute("errId", "아이디를 입력해주세요");
			System.out.println("2");
		}else if(login.getMemId().equals(id)&&login.getMemPass().equals(pass)) {
			System.out.println("로그인 성공");
			HttpSession session = req.getSession();
			/*login.setLogin(req.getParameter("login").charAt(0));*/
			/*System.out.println(req.getParameter("login").charAt(0));*/
			login.setLogoutDate(new Date());
			
			session.setAttribute("user", login);
			
			resp.sendRedirect(req.getContextPath() + "/main");
			return;
		}
		else if(!login.getMemPass().equals(pass)){
			req.setAttribute("errPw", "패스워드를 확인하세요");
		}
	
		RequestDispatcher rd = req.getRequestDispatcher(
				"/jsp/login/index.jsp"
		);
		rd.forward(req, resp);
	}
	
}

