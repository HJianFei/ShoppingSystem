/**
 * 
 */
package com.shoppingsystem.dao;

import java.util.List;

import com.shoppingsystem.entity.User;

/**
 * @author HJianFei
 * @time 2016年5月1日
 */
public interface UserDao {

	void save(User user);

	void update(User user);

	void delete(int user_id);
	
	User findById(int user_id);

	List<User> getQuery(String hql);

}
