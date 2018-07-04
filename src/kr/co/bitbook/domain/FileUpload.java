package kr.co.bitbook.domain;

public class FileUpload {
	private int fileGroupNo;
	private int fileNo; 
	private int memNo;
	private String filePath;
	private String oriName;
	private String systemName;
	private char fileType;
	public int getFileGroupNo() {
		return fileGroupNo;
	}
	public FileUpload setFileGroupNo(int fileGroupNo) {
		this.fileGroupNo = fileGroupNo;
		return this;
	}
	public int getFileNo() {
		return fileNo;
	}
	public FileUpload setFileNo(int fileNo) {
		this.fileNo = fileNo;
		return this;
	}
	public int getMemNo() {
		return memNo;
	}
	public FileUpload setMemNo(int memNo) {
		this.memNo = memNo;
		return this;
	}
	public String getFilePath() {
		return filePath;
	}
	public FileUpload setFilePath(String filePath) {
		this.filePath = filePath;
		return this;
	}
	public String getOriName() {
		return oriName;
	}
	public FileUpload setOriName(String oriName) {
		this.oriName = oriName;
		return this;
	}
	public String getSystemName() {
		return systemName;
	}
	public FileUpload setSystemName(String systemName) {
		this.systemName = systemName;
		return this;
	}
	public char getFileType() {
		return fileType;
	}
	public FileUpload setFileType(char fileType) {
		this.fileType = fileType;
		return this;
	}
	
	
	
}
