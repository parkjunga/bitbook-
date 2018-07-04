package kr.co.bitbook.mapper;

import java.util.List;

import kr.co.bitbook.domain.Job;
import kr.co.bitbook.domain.Member;
import kr.co.bitbook.domain.MemberDetail;

public interface MemberMapper {
	MemberDetail selectMemberDetail(int memNo);
	List<Job> selectJob(int memNo);
	Job selectJobNo(int jobNo);
	void updateJob(Job job);
	void insertJob(Job job);
	void deleteJob(int jobNo);
	void updateMemberDetail(MemberDetail memberDetail);
	void updateAddr(MemberDetail memberDetail);
	void updateCollege(MemberDetail memberDetail);
	void updateSkill(MemberDetail memberDetail);
	void updateHome(MemberDetail memberDetail);
	void updatePhone(MemberDetail memberDetail);
	void updateBirth(MemberDetail memberDetail);
	void updateGender(MemberDetail memberDetail);
	void updateBlood(MemberDetail memberDetail);
	void updateNickname(MemberDetail memberDetail);
	void updateIntroduce(MemberDetail memberDetail);
	void updateInfoOpenRange(MemberDetail memberDetail);
	void updateLogin(MemberDetail memberDetail);
	void updateLogoutDate(MemberDetail memberDetail);
	void updateProfile(Member member);
	void updateCover(Member member);
}
