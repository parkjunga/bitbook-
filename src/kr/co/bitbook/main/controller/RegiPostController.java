package kr.co.bitbook.main.controller;

import java.io.File;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Enumeration;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.oreilly.servlet.MultipartRequest;

import kr.co.bitbook.common.db.MyAppSqlConfig;
import kr.co.bitbook.domain.FileUpload;
import kr.co.bitbook.domain.Post;
import kr.co.bitbook.mapper.FileMapper;
import kr.co.bitbook.mapper.MainMapper;
import utill.MlecFileRenamePolicy;

@WebServlet("/addpost")
public class RegiPostController extends HttpServlet{
	
	
	
	private MainMapper mapper;
	private FileMapper fMapper;
	
	public RegiPostController() {
		mapper = MyAppSqlConfig.getSqlSession().getMapper(MainMapper.class);
		fMapper = MyAppSqlConfig.getSqlSession().getMapper(FileMapper.class);
	}
	
	@Override
	protected void service(HttpServletRequest arg0, HttpServletResponse arg1) throws ServletException, IOException {
		ServletContext context = arg0.getServletContext();                    
		String saveFolder="/upload_images";
		String realFolder = context.getRealPath(saveFolder);
		String uploadPath = "/bitbook/upload_images";
		
		SimpleDateFormat sdf = new SimpleDateFormat("/yyyy/MM/dd/HH");
		String datePath = sdf.format(new Date());
		File file = new File(realFolder+datePath);
		boolean upload = false;
		int fileGroupNo = 0;
		if(!file.exists()) { file.mkdirs(); } // 디렉토리 생성
		//mRequset 객체 생성
		MultipartRequest mRequest = new MultipartRequest(arg0,
				realFolder+datePath,
				1024*1024*100,
				"UTF-8",
				new MlecFileRenamePolicy()
				);
		
		//파일 업로드
		Enumeration<String> names = mRequest.getFileNames();
		while(names.hasMoreElements()) {
			String name = names.nextElement();
			File f = mRequest.getFile(name);
			// db에 파일 정보를 올리는 과정
			if(f != null) {
				FileUpload fu = new FileUpload().setMemNo(Integer.parseInt(mRequest.getParameter("no")));
				if(!upload) {
					upload = true;
					fMapper.insertFileGroupNo(fu);
					fileGroupNo = fu.getFileGroupNo();
				}
				fu.setFilePath(uploadPath+datePath+"/"+mRequest.getFilesystemName(name))
				  .setSystemName(mRequest.getFilesystemName(name))
				  .setOriName(mRequest.getOriginalFileName(name))
				  .setFileType('i')
				  .setFileGroupNo(fileGroupNo);
				fMapper.insertFile(fu);
			}
		}
		
		//게시글 등록
		Post post = new Post().setPostContent(mRequest.getParameter("content"))
							  .setMemNo(Integer.parseInt(mRequest.getParameter("no")))
							  .setPostOpenRange((mRequest.getParameter("open_range").charAt(0)));
		if(upload) {
			post.setFileGroupNo(fileGroupNo);
			mapper.insertPostAddFile(post);
			}
		else {mapper.insertPost(post);}
		TagController tag = new TagController();
		// 게시글 태그
		tag.tagPost(post.getPostNo(),mRequest.getParameter("tag"),Integer.parseInt(mRequest.getParameter("no")));
		arg1.sendRedirect("/bitbook/main");
		
	}
}

