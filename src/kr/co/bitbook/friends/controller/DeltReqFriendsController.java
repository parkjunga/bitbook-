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
import javax.websocket.Session;

import com.google.gson.Gson;

import kr.co.bitbook.common.db.MyAppSqlConfig;
import kr.co.bitbook.domain.Friends;
import kr.co.bitbook.domain.Member;
import kr.co.bitbook.mapper.FriendsMapper;

@WebServlet("/friedns/deleteReq")
public class DeltReqFriendsController extends HttpServlet{

	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		FriendsMapper mapper = MyAppSqlConfig.getSqlSession().getMapper(FriendsMapper.class);
		request.setCharacterEncoding("utf-8");
		Friends friends = new Friends();
		friends.setMemNo(Integer.parseInt(request.getParameter("memNo")));
		friends.setFriendsNo(Integer.parseInt(request.getParameter("friendsNo")));
		mapper.deleteReqFriends(friends);
		mapper.deleteNotiFriends(friends);
		
		HttpSession session = request.getSession();
		Member member = (Member)session.getAttribute("user");
		member.setMemName(request.getParameter("name"));
		List<Member> list = mapper.selectSearchFriends(member);
		List<Member> list1= mapper.selectMyFriends(member.getMemNo());
		List<Integer> reqList = mapper.selectReqFriends(Integer.parseInt(request.getParameter("memNo")));
		
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
