package kr.co.bitbook.friends.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.google.gson.Gson;

import kr.co.bitbook.common.db.MyAppSqlConfig;
import kr.co.bitbook.domain.Friends;
import kr.co.bitbook.domain.Member;
import kr.co.bitbook.domain.Notification;
import kr.co.bitbook.mapper.FriendsMapper;
import kr.co.bitbook.mapper.MainMapper;

@WebServlet("/friedns/insertReq")
public class RegiReqFriendsController extends HttpServlet{

	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		FriendsMapper mapper = MyAppSqlConfig.getSqlSession().getMapper(FriendsMapper.class);
		request.setCharacterEncoding("utf-8");
		Friends friends = new Friends();
		friends.setMemNo(Integer.parseInt(request.getParameter("memNo")));
		friends.setFriendsNo(Integer.parseInt(request.getParameter("friendsNo")));
		mapper.insertReqFriends(friends);
//		mapper.insertNotiReq(friends);
		
		MainMapper mapper1 = MyAppSqlConfig.getSqlSession().getMapper(MainMapper.class);
		Notification notification = new Notification().setSearchType(1)
				.setReqMemNo(Integer.parseInt(request.getParameter("memNo")))
				.setMemNo(Integer.parseInt(request.getParameter("friendsNo")));
		mapper1.insertNotification(notification);
		
		HttpSession session = request.getSession();
		Member member = (Member)session.getAttribute("user");
		member.setMemName(request.getParameter("name"));
		List<Member> list = mapper.selectSearchFriends(member);

		List<Integer> reqList = mapper.selectReqFriends(Integer.parseInt(request.getParameter("memNo")));
		List<Member> list1= mapper.selectMyFriends(member.getMemNo());
        Map<String, Object> result = new HashMap<>();
        result.put("list", list);
        result.put("list1", list1);
        result.put("reqList", reqList);
        
        response.setContentType("application/json; charset=utf-8");
        PrintWriter out = response.getWriter();
        out.println(new Gson().toJson(result));
		out.close();
	}
}
