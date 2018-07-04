package kr.co.bitbook.domain;

import java.util.Date;

public class Member {
	private int memNo;
	private String memId;
	private String memPass;
	private String memName;
	private String memEmail;
	private char join;
	private Date logoutDate;
	private String login;
	private String profilePath;
	private String coverPath;
	private int friendsNo;
	private char accState;
	
	public char getAccState() {
		return accState;
	}
	public void setAccState(char accState) {
		this.accState = accState;
	}
	public int getFriendsNo() {
		return friendsNo;
	}
	public void setFriendsNo(int friendsNo) {
		this.friendsNo = friendsNo;
	}
	public String getLogin() {
		return login;
	}
	public void setLogin(String login) {
		this.login = login;
	}
	public String getProfilePath() {
		return profilePath;
	}
	public void setProfilePath(String profilePath) {
		this.profilePath = profilePath;
	}
	public String getCoverPath() {
		return coverPath;
	}
	public void setCoverPath(String coverPath) {
		this.coverPath = coverPath;
	}
	public char getJoin() {
		return join;
	}
	public void setJoin(char join) {
		this.join = join;
	}
	
	
	public Date getLogoutDate() {
		return logoutDate;
	}
	public void setLogoutDate(Date logoutDate) {
		this.logoutDate = logoutDate;
	}
	public int getMemNo() {
		return memNo;
	}
	public void setMemNo(int memNo) {
		this.memNo = memNo;
	}
	public String getMemId() {
		return memId;
	}
	public void setMemId(String memId) {
		this.memId = memId;
	}
	public String getMemPass() {
		return memPass;
	}
	public void setMemPass(String memPass) {
		this.memPass = memPass;
	}
	public String getMemName() {
		return memName;
	}
	public void setMemName(String memName) {
		this.memName = memName;
	}
	public String getMemEmail() {
		return memEmail;
	}
	public void setMemEmail(String memEmail) {
		this.memEmail = memEmail;
	}
	@Override
	public String toString() {
		return "Member [memNo=" + memNo + ", memId=" + memId + ", memPass=" + memPass + ", memName=" + memName
				+ ", memEmail=" + memEmail + ", join=" + join + ", logoutDate=" + logoutDate + ", login=" + login
				+ ", profilePath=" + profilePath + ", coverPath=" + coverPath + ", friendsNo=" + friendsNo + "]";
	}
	
}
