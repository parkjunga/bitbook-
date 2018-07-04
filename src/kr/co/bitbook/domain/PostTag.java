package kr.co.bitbook.domain;

public class PostTag {
	private int postNo;
	private int memNo;
	private String memName;
	
	public String getMemName() {
		return memName;
	}
	public PostTag setMemName(String memName) {
		this.memName = memName;
		return this;
	}
	public int getPostNo() {
		return postNo;
	}
	public PostTag setPostNo(int postNo) {
		this.postNo = postNo;
		return this;
	}
	public int getMemNo() {
		return memNo;
	}
	public PostTag setMemNo(int memNo) {
		this.memNo = memNo;
		return this;
	}
	
}
