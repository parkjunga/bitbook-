package kr.co.bitbook.member.controller;

import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Enumeration;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;
import com.oreilly.servlet.MultipartRequest;

import kr.co.bitbook.common.db.MyAppSqlConfig;
import kr.co.bitbook.domain.Member;
import kr.co.bitbook.mapper.MemberMapper;
import utill.MlecFileRenamePolicy;

@WebServlet("/member/updtCoverPath")
public class UpdtCoverMember extends HttpServlet{
	
	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		ServletContext context = request.getServletContext();                    
		String saveFolder="/upload_images";
		String realFolder = context.getRealPath(saveFolder);
		System.out.println(realFolder);
		String uploadPath = "/bitbook/upload_images";
		
		SimpleDateFormat sdf = new SimpleDateFormat("/yyyy/MM/dd/HH");
		String datePath = sdf.format(new Date());
		File file = new File(realFolder+datePath);
		if(!file.exists()) { file.mkdirs(); } // 디렉토리 생성
		
		MultipartRequest mRequest = new MultipartRequest(
				request,  
				realFolder+datePath,
				1024 * 1024 * 100, 
				"utf-8",  
				new MlecFileRenamePolicy() 
		);
		
		// 게시물 등록
		// 파일 저장..
		Enumeration<String> names = mRequest.getFileNames();
		while (names.hasMoreElements()) {
			String name = names.nextElement();
			File f = mRequest.getFile(name);
			if (f != null) {
//				String oriName = mRequest.getOriginalFileName(name);
//				String systemName = mRequest.getFilesystemName(name);
//				long fileSize = f.length();
				Member member = new Member();
				member.setCoverPath(uploadPath+datePath+"/"+mRequest.getFilesystemName(name));
				System.out.println(member.getCoverPath());
				member.setMemNo(Integer.parseInt(mRequest.getParameter("memNo")));
				MyAppSqlConfig.getSqlSession().getMapper(MemberMapper.class).updateCover(member);
				response.sendRedirect("/bitbook/member/outline?memNo="+Integer.parseInt(mRequest.getParameter("memNo")));
//				PrintWriter out = response.getWriter();
//				out.println(new Gson().toJson(member));
//				out.close();
//				// 데이터베이스에 파일 정보 저장
//				BoardFile bf = new BoardFile();
//				bf.setNo(board.getNo());
//				bf.setFilePath(datePath);
//				bf.setOriName(oriName);
//				bf.setSystemName(systemName);
//				bf.setFileSize(fileSize);
//				mapper.insertBoardFile(bf);
			}
		}
		
	}
}
