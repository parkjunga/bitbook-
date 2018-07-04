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
import kr.co.bitbook.mapper.JoinMapper;
import kr.co.bitbook.mapper.LoginMapper;

@WebServlet("/bitbook/loginController")
public class NaverLoginController extends HttpServlet {
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		RequestDispatcher rd = request.getRequestDispatcher("/jsp/login/index.jsp");
		rd.forward(request, response);
	}

	@Override
	// alt + shift + a 전체 드래그
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException 
	{ JoinMapper mapper = MyAppSqlConfig.getSqlSession().getMapper(JoinMapper.class);
		LoginMapper Lmapper = MyAppSqlConfig.getSqlSession().getMapper(LoginMapper.class);
		String id = req.getParameter("sId");
		String name = req.getParameter("sName");
		String email = req.getParameter("sEmail");
		int count = mapper.selectMemberCount(id);
		if(count == 0) {
			System.out.println("가입안되어있음");
			Member member = new Member();
			member.setMemEmail(email);
			member.setMemName(name);
			member.setMemId(id);
			member.setMemPass("naver");
			mapper.insertJoin(member);
		}else if(count == 1) {
			System.out.println("가입되어있음");
			HttpSession session = req.getSession();
			Member login = Lmapper.selectMemberById(id);
			Lmapper.updateLogin(id);
			// login.setLogin(req.getParameter("login").charAt(0));
			//System.out.println(req.getParameter("login").charAt(0));
			login.setLogoutDate(new Date());
			session.setAttribute("user", login);
			resp.sendRedirect(req.getContextPath() + "/main");
			return;
		}
		else {
			req.setAttribute("errPw", "패스워드를 확인하세요");
		}
	
		RequestDispatcher rd = req.getRequestDispatcher(
				"/jsp/login/index.jsp"
		);
		rd.forward(req, resp);
	}
}
	


