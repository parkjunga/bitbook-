package kr.co.bitbook.Noti.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;

import kr.co.bitbook.common.db.MyAppSqlConfig;
import kr.co.bitbook.domain.Notification;
import kr.co.bitbook.mapper.NotificationMapper;

@WebServlet("/notification/updateNotiHide")
public class UpdtHideNotificationController extends HttpServlet {

	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		NotificationMapper mapper = MyAppSqlConfig.getSqlSession().getMapper(NotificationMapper.class);
		List<Notification> nList = mapper.selectNoti(Integer.parseInt(request.getParameter("memNo")));
	    mapper.updateNotiHide(Integer.parseInt(request.getParameter("notNo")));
		response.setContentType("application/json; charset=utf-8");
		PrintWriter out = response.getWriter();
		out.println(new Gson().toJson(nList));
		out.close();
	}
}
