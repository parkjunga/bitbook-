package kr.co.bitbook.mapper;

import java.util.List;

import kr.co.bitbook.domain.Comment;
import kr.co.bitbook.domain.LikeComment;
import kr.co.bitbook.domain.LikePost;
import kr.co.bitbook.domain.Notification;
import kr.co.bitbook.domain.Post;
import kr.co.bitbook.domain.PostTag;
import kr.co.bitbook.domain.SearchFriends;

public interface MainMapper {
	List<SearchFriends> searchMyFriends(SearchFriends search);
	void insertPostAddFile(Post post);
	void insertPost(Post post);
	void deletePostTag(int postNo);
	void insertPostTag(PostTag postTag);
	List<Post> selectPost(Post post);
	Post selectPostByNo(int postNo);
	void insertComment(Comment comment);
	void updatePostCCount(Comment comment);
	List<Comment> selectCommentList(int postNo);
	void deleteLikeCommentAll(Comment comment);
	void deleteCommentNo(Comment comment);
	void updateComment(Comment comment);
	void updateCommentLCount(LikeComment likeComment);
	LikeComment selectLikeComment(LikeComment likeComment);
	void insertLikeComment(LikeComment likeComment);
	void deleteLikeComment(LikeComment likeComment);
	void updatePostLCount(LikePost likePost);
	LikePost selectLikePost(LikePost likePost);
	void insertLikePost(LikePost likePost);
	void deleteLikePost(LikePost likePost);
	
	void deleteLikeCommentAllForPost(int postNo);
	void deleteCommentAll(int postNo);
	void deleteLikePostAll(int postNo);
	void deletePost(int postNo);
	void deletePostTagForPost(int postNo);
	
	
	void insertNotification(Notification notification);
	void updateNotification(Notification notification);
	void insertNotificationByLikeComment(Notification notification);

}
