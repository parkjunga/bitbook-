package kr.co.bitbook.mapper;

import java.util.List;

import kr.co.bitbook.domain.Friends;
import kr.co.bitbook.domain.Member;
import kr.co.bitbook.domain.Notification;

public interface NotificationMapper {
	List<Notification> selectNoti(int memNo);
	void updateNotiHide(int notNo);
	void updateNotiRead(int notNo);
}
