package kr.co.bitbook.mapper;

import kr.co.bitbook.domain.Member;

public interface LoginMapper {
	Member selectMemberById(String id);
	void updateLogin(String id);
	void updateOut(String id);
	Member selectMemberEmail(String name);
	Member selectMemberCode(String email);
}
