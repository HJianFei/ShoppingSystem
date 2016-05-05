package com.shoppingsystem.service;

import java.util.List;

import com.shoppingsystem.entity.User;

public interface UserService {

	void save(User user);

	void delete(int user_id);

	void update(User user);

	User findById(int user_id);

	List<User> getQuery(String hql);

}
