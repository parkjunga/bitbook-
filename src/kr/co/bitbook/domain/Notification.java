package kr.co.bitbook.domain;

import java.util.Date;

public class Notification {
	private int notNo;
	private int memNo;
	private String notType;
	private Date notRegDate;
	private String notState;
	private int reqMemNo;
	private String notMessage;
	private Date notReadDate;
	private int reqNo;
	private String profilePath;
	private String memName;
	private String login;
	private int searchType;
	
	public int getSearchType() {
		return searchType;
	}
	public Notification setSearchType(int searchType) {
		this.searchType = searchType;
		return this;
	}
	public String getLogin() {
		return login;
	}
	public Notification setLogin(String login) {
		this.login = login;
		return this;
	}
	public String getMemName() {
		return memName;
	}
	public Notification setMemName(String memName) {
		this.memName = memName;
		return this;
	}
	public String getProfilePath() {
		return profilePath;
	}
	public Notification setProfilePath(String profilePath) {
		this.profilePath = profilePath;
		return this;
	}
	public int getNotNo() {
		return notNo;
	}
	public Notification setNotNo(int notNo) {
		this.notNo = notNo;
		return this;
	}
	public int getMemNo() {
		return memNo;
	}
	public Notification setMemNo(int memNo) {
		this.memNo = memNo;
		return this;
	}
	public String getNotType() {
		return notType;
	}
	public Notification setNotType(String notType) {
		this.notType = notType;
		return this;
	}
	public Date getNotRegDate() {
		return notRegDate;
	}
	public Notification setNotRegDate(Date notRegDate) {
		this.notRegDate = notRegDate;
		return this;
	}
	public String getNotState() {
		return notState;
	}
	public Notification setNotState(String notState) {
		this.notState = notState;
		return this;
	}
	public int getReqMemNo() {
		return reqMemNo;
	}
	public Notification setReqMemNo(int reqMemNo) {
		this.reqMemNo = reqMemNo;
		return this;
	}
	public String getNotMessage() {
		return notMessage;
	}
	public Notification setNotMessage(String notMessage) {
		this.notMessage = notMessage;
		return this;
	}
	public Date getNotReadDate() {
		return notReadDate;
	}
	public Notification setNotReadDate(Date notReadDate) {
		this.notReadDate = notReadDate;
		return this;
	}
	public int getReqNo() {
		return reqNo;
	}
	public Notification setReqNo(int reqNo) {
		this.reqNo = reqNo;
		return this;
	}
	
}
