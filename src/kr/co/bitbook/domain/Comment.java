package kr.co.bitbook.domain;

import java.util.Date;

public class Comment {
	private int commentNo;
	private int postNo;
	private int postCCount;
	private int memNo;
	private int commentLCount;
	private String commentContent;
	private Date commentRegDate;
	private String memName; 
	private String profilePath;
	
	
	
	public int getPostCCount() {
		return postCCount;
	}
	public Comment setPostCCount(int postCCount) {
		this.postCCount = postCCount;
		return this;
	}
	public String getMemName() {
		return memName;
	}
	public Comment setMemName(String memName) {
		this.memName = memName;
		return this;
	}
	public String getProfilePath() {
		return profilePath;
	}
	public Comment setProfilePath(String profilePath) {
		this.profilePath = profilePath;
		return this;
	}
	public int getCommentNo() {
		return commentNo;
	}
	public Comment setCommentNo(int commentNo) {
		this.commentNo = commentNo;
		return this;
	}
	public int getPostNo() {
		return postNo;
	}
	public Comment setPostNo(int postNo) {
		this.postNo = postNo;
		return this;
	}
	public int getMemNo() {
		return memNo;
	}
	public Comment setMemNo(int memNo) {
		this.memNo = memNo;
		return this;
	}
	public int getCommentLCount() {
		return commentLCount;
	}
	public Comment setCommentLCount(int commentLCount) {
		this.commentLCount = commentLCount;
		return this;
	}
	public String getCommentContent() {
		return commentContent;
	}
	public Comment setCommentContent(String commentContent) {
		this.commentContent = commentContent;
		return this;
	}
	public Date getCommentRegDate() {
		return commentRegDate;
	}
	public Comment setCommentRegDate(Date commentRegDate) {
		this.commentRegDate = commentRegDate;
		return this;
	}	
	
}
