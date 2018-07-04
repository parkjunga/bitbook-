package kr.co.bitbook.domain;

import java.util.Date;

public class Gallery {
	private int galleryNo;
	private int fileGroupNo;
	private int memNo;
	private Date galleryRegDate;
	private String galleryContent;
	public int getGalleryNo() {
		return galleryNo;
	}
	public void setGalleryNo(int galleryNo) {
		this.galleryNo = galleryNo;
	}
	public int getFileGroupNo() {
		return fileGroupNo;
	}
	public void setFileGroupNo(int fileGroupNo) {
		this.fileGroupNo = fileGroupNo;
	}
	public int getMemNo() {
		return memNo;
	}
	public void setMemNo(int memNo) {
		this.memNo = memNo;
	}
	public Date getGalleryRegDate() {
		return galleryRegDate;
	}
	public void setGalleryRegDate(Date galleryRegDate) {
		this.galleryRegDate = galleryRegDate;
	}
	public String getGalleryContent() {
		return galleryContent;
	}
	public void setGalleryContent(String galleryContent) {
		this.galleryContent = galleryContent;
	}
	
}
