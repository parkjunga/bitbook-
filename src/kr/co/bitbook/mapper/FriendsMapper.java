package kr.co.bitbook.mapper;

import java.util.List;

import kr.co.bitbook.domain.Friends;
import kr.co.bitbook.domain.Member;

public interface FriendsMapper {
	List<Friends> selectListFriends(Friends friends);
	List<Member> selectSearchFriends(Member member);
	List<Member> selectReqList(int memNo);
	List<Member> selectSearchMyFriends(Member member);
	List<Member> selectMyFriends(int memNo);
	List<Integer> selectReqFriends(int memNo);
	Member selectMember(int memNo);
	void deleteFriends1(Friends friends);
	void deleteFriends2(Friends friends);
	void deleteReqFriends(Friends friends);
	void insertReqFriends(Friends friends);
	void insertAccFriends(Friends friends);
	void updateAccFriends(Friends friends);
	void deleteFriedns(Friends friends);
	void insertNotiReq(Friends friends);
	void deleteNotiFriends(Friends friends);
}
