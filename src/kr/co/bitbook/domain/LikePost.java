package kr.co.bitbook.domain;

import java.util.Date;

public class LikePost {
	private int postNo;
	private int memNo;
	private Date postLikeDate;
	private int upAndDown;
	
	public int getUpAndDown() {
		return upAndDown;
	}
	public LikePost setUpAndDown(int upAndDown) {
		this.upAndDown = upAndDown;
		return this;
	}
	
	public int getPostNo() {
		return postNo;
	}
	public LikePost setPostNo(int postNo) {
		this.postNo = postNo;
		return this;
	}
	public int getMemNo() {
		return memNo;
	}
	public LikePost setMemNo(int memNo) {
		this.memNo = memNo;
		return this;
	}
	public Date getPostLikeDate() {
		return postLikeDate;
	}
	public LikePost setPostLikeDate(Date postLikeDate) {
		this.postLikeDate = postLikeDate;
		return this;
	}
	
}
