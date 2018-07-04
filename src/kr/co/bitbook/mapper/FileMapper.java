package kr.co.bitbook.mapper;

import kr.co.bitbook.domain.FileUpload;

public interface FileMapper {
	void insertFileGroupNo(FileUpload fileupload);
	void insertFile(FileUpload fileupload);
}
