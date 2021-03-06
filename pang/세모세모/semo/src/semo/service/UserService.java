package semo.service;

import java.util.List;

import semo.domain.User;

public interface UserService {
	
	void registerUser(User userId);
	void searchId(String id);
	List<User> searchUserByName(String name);
	User searchUserById(String id);
	List<User> searchUserAll();
	
	void removeUser(String id);
	void modifyUser(User user);
	User searchFriendById(String id);
	List<User> searchFriendAll(String userId);
	void searchFriend(String userId, String friendId);
	void removeFriend(String userId, String friendId);
	

}
