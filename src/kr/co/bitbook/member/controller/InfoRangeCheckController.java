package kr.co.bitbook.member.controller;

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

import com.google.gson.Gson;

import kr.co.bitbook.common.db.MyAppSqlConfig;
import kr.co.bitbook.domain.Member;
import kr.co.bitbook.mapper.FriendsMapper;

@WebServlet("/member/InfoRangeCheck")
public class InfoRangeCheckController extends HttpServlet{

	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		FriendsMapper mapper = MyAppSqlConfig.getSqlSession().getMapper(FriendsMapper.class);
		request.setCharacterEncoding("utf-8");
		List<Member> list=null;
		boolean result=false;
		try {
			 list = mapper.selectMyFriends(Integer.parseInt(request.getParameter("memNo")));
		} catch (Exception e) {
			System.out.println(e);
		}
		System.out.println("================");
		int friendsNo=Integer.parseInt(request.getParameter("chk"));
		int chk=0;
		for(Member m : list) {
			if(m.getMemNo()==friendsNo)
				chk++;
			System.out.println(m);
		}
        if(chk>0) {
        	result=true;
        }
        PrintWriter out = response.getWriter();
        out.println(result);
		out.close();
	}
}
