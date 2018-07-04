package kr.co.bitbook.main.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;

import kr.co.bitbook.common.db.MyAppSqlConfig;
import kr.co.bitbook.mapper.MainMapper;

@WebServlet("/tagmain")
public class TagByPostController extends HttpServlet{
	private MainMapper mapper;
	public TagByPostController() {
		mapper = MyAppSqlConfig.getSqlSession().getMapper(MainMapper.class);
	}
	@Override
	protected void service(HttpServletRequest arg0, HttpServletResponse arg1) throws ServletException, IOException {
		arg0.setAttribute("post",new Gson().toJson(mapper.selectPostByNo(Integer.parseInt(arg0.getParameter("postno")))));
		RequestDispatcher rd = arg0.getRequestDispatcher("/jsp/main/main.jsp");
		
		rd.forward(arg0, arg1);
	}
}
