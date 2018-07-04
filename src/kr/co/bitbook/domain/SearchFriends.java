package kr.co.bitbook.domain;

import java.util.Date;

public class SearchFriends {
	
	private String memName;
	private int memNo;
	private int friendsNo;
	private char login;
	private String profilePath;
	private Date logoutDate;
	
	
	
	public Date getLogoutDate() {
		return logoutDate;
	}
	public SearchFriends setLogoutDate(Date logoutDate) {
		this.logoutDate = logoutDate;
		return this;
	}
	public int getMemNo() {
		return memNo;
	}
	public SearchFriends setMemNo(int memNo) {
		this.memNo = memNo;
		return this;
	}
	public String getMemName() {
		return memName;
	}
	public SearchFriends setMemName(String memName) {
		this.memName = memName;
		return this;
	}
	public int getFriendsNo() {
		return friendsNo;
	}
	public SearchFriends setFriendsNo(int friendsNo) {
		this.friendsNo = friendsNo;
		return this;
	}
	public char getLogin() {
		return login;
	}
	public SearchFriends setLogin(char login) {
		this.login = login;
		return this;
	}
	public String getProfilePath() {
		return profilePath;
	}
	public SearchFriends setProfilePath(String profilePath) {
		this.profilePath = profilePath;
		return this;
	}
	
}
