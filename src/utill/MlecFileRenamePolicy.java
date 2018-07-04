package utill;

import java.io.File;
import java.util.UUID;

import com.oreilly.servlet.multipart.FileRenamePolicy;

public class MlecFileRenamePolicy implements FileRenamePolicy{

	@Override
	public File rename(File file) {
		String parent = file.getParent();
		String name = file.getName();
//		원본 파일의 확장자
		String ext = "";
		int index = name.lastIndexOf(".");
		if(index != -1) {
//			ext == ".txt"
			ext = name.substring(index);
		}
//		고유한 파일 이름을 생성
		String uName = UUID.randomUUID().toString();
		
		return new File(parent, uName+ext);
	}

}
