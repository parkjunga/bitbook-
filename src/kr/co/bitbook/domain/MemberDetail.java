package kr.co.bitbook.domain;

import java.util.Date;

public class MemberDetail {
	private int memNo;
	private String infoOpenRange;
	private int jobNo;
	private int	skill;
	private String college;
	private String home;
	private String phone;
	private Date birth; 
	private String gender;
	private String blood; 
	private String introduce;
	private String nickname;
	private String coverPath;
	private String profilePath;
	private String addr;
	
	public String getAddr() {
		return addr;
	}
	public void setAddr(String addr) {
		this.addr = addr;
	}
	public int getMemNo() {
		return memNo;
	}
	public void setMemNo(int memNo) {
		this.memNo = memNo;
	}
	public String getInfoOpenRange() {
		return infoOpenRange;
	}
	public void setInfoOpenRange(String infoOpenRange) {
		this.infoOpenRange = infoOpenRange;
	}
	public int getJobNo() {
		return jobNo;
	}
	public void setJobNo(int jobNo) {
		this.jobNo = jobNo;
	}
	public int getSkill() {
		return skill;
	}
	public void setSkill(int skill) {
		this.skill = skill;
	}
	public String getCollege() {
		return college;
	}
	public void setCollege(String college) {
		this.college = college;
	}
	public String getHome() {
		return home;
	}
	public void setHome(String home) {
		this.home = home;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public Date getBirth() {
		return birth;
	}
	public void setBirth(Date birth) {
		this.birth = birth;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public String getBlood() {
		return blood;
	}
	public void setBlood(String blood) {
		this.blood = blood;
	}
	public String getIntroduce() {
		return introduce;
	}
	public void setIntroduce(String introduce) {
		this.introduce = introduce;
	}
	public String getNickname() {
		return nickname;
	}
	public void setNickname(String nickname) {
		this.nickname = nickname;
	}
	public String getCoverPath() {
		return coverPath;
	}
	public void setCoverPath(String coverPath) {
		this.coverPath = coverPath;
	}
	public String getProfilePath() {
		return profilePath;
	}
	public void setProfilePath(String profilePath) {
		this.profilePath = profilePath;
	}
	@Override
	public String toString() {
		return "MemberDetail [memNo=" + memNo + ", infoOpenRange=" + infoOpenRange + ", jobNo=" + jobNo + ", skill="
				+ skill + ", college=" + college + ", home=" + home + ", phone=" + phone + ", birth=" + birth
				+ ", gender=" + gender + ", blood=" + blood + ", introduce=" + introduce + ", nickname=" + nickname
				+ ", coverPath=" + coverPath + ", profilePath=" + profilePath + ", addr=" + addr + "]";
	}
	
	
}
