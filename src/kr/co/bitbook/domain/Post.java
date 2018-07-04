package kr.co.bitbook.domain;

import java.util.Date;
import java.util.List;

public class Post {
	private int postNo;
	private int memNo;
	private String postContent;
	private Date postRegDate;
	private char postOpenRange;
	private int fileGroupNo;
	private int postCCount;
	private int postLCount;
	private List<FileUpload> fileUpload;
	private List<PostTag> postTag;
	private String search;
	private char order;
	private char searchType;
	private String profilePath;
	private String memName;
	
	
	
	public List<PostTag> getPostTag() {
		return postTag;
	}
	public Post setPostTag(List<PostTag> postTag) {
		this.postTag = postTag;
		return this;
	}
	public String getMemName() {
		return memName;
	}
	public Post setMemName(String memName) {
		this.memName = memName;
		return this;
	}
	public char getSearchType() {
		return searchType;
	}
	public Post setSearchType(char searchType) {
		this.searchType = searchType;
		return this;
	}
	public String getSearch() {
		return search;
	}
	public Post setSearch(String search) {
		this.search = search;
		return this;
	}
	public char getOrder() {
		return order;
	}
	public Post setOrder(char order) {
		this.order = order;
		return this;
	}
	public List<FileUpload> getFileUpload() {
		return fileUpload;
	}
	public Post setFileUpload(List<FileUpload> fileUpload) {
		this.fileUpload = fileUpload;
		return this;
	}
	public String getProfilePath() {
		return profilePath;
	}
	public Post setProfilePath(String profilePath) {
		this.profilePath = profilePath;
		return this;
	}
	public int getPostCCount() {
		return postCCount;
	}
	public Post setPostCCount(int postCCount) {
		this.postCCount = postCCount;
		return this;
	}
	public int getPostLCount() {
		return postLCount;
	}
	public Post setPostLCount(int postLCount) {
		this.postLCount = postLCount;
		return this;
	}
	public int getPostNo() {
		return postNo;
	}
	public Post setPostNo(int postNo) {
		this.postNo = postNo;
		return this;
	}
	public int getMemNo() {
		return memNo;
	}
	public Post setMemNo(int memNo) {
		this.memNo = memNo;
		return this;
	}
	public String getPostContent() {
		return postContent;
	}
	public Post setPostContent(String postContent) {
		this.postContent = postContent;
		return this;
	}
	public Date getPostRegDate() {
		return postRegDate;
	}
	public Post setPostRegDate(Date postRegDate) {
		this.postRegDate = postRegDate;
		return this;
	}
	public char getPostOpenRange() {
		return postOpenRange;
	}
	public Post setPostOpenRange(char postOpenRange) {
		this.postOpenRange = postOpenRange;
		return this;
	}
	public int getFileGroupNo() {
		return fileGroupNo;
	}
	public Post setFileGroupNo(int fileGroupNo) {
		this.fileGroupNo = fileGroupNo;
		return this;
	}
	
	
	
}
