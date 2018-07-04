package kr.co.bitbook.mapper;

import kr.co.bitbook.domain.Member;

public interface JoinMapper {
	void insertJoin(Member member);
	void insertDetail(int memNo);
	int selectMemberCount(String id);
	
}
