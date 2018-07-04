package kr.co.bitbook.domain;

import java.util.Date;

public class LikeComment {
	private int commentNo;
	private int memNo;
	private Date commentLikeDate;
	private int upAndDown;
	
	public int getUpAndDown() {
		return upAndDown;
	}
	public LikeComment setUpAndDown(int upAndDown) {
		this.upAndDown = upAndDown;
		return this;
	}
	
	public int getCommentNo() {
		return commentNo;
	}
	public LikeComment setCommentNo(int commentNo) {
		this.commentNo = commentNo;
		return this;
	}
	public int getMemNo() {
		return memNo;
	}
	public LikeComment setMemNo(int memNo) {
		this.memNo = memNo;
		return this;
	}
	public Date getCommentLikeDate() {
		return commentLikeDate;
	}
	public LikeComment setCommentLikeDate(Date commentLikeDate) {
		this.commentLikeDate = commentLikeDate;
		return this;
	}
	
}
