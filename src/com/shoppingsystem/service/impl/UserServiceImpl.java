/**
 * 
 */
package com.shoppingsystem.service.impl;

import java.util.List;

import com.shoppingsystem.dao.UserDao;
import com.shoppingsystem.entity.User;
import com.shoppingsystem.service.UserService;

/**
 * @author HJianFei
 * @time 2016年5月1日
 */
public class UserServiceImpl implements UserService {

	private UserDao userDao;

	@Override
	public void save(User product) {
		userDao.save(product);
	}

	@Override
	public void update(User product) {
		userDao.update(product);
	}

	@Override
	public void delete(int user_id) {
		if (userDao.findById(user_id) != null) {
			userDao.delete(user_id);
		}
	}

	@Override
	public User findById(int user_id) {
		return userDao.findById(user_id);
	}

	@Override
	public List<User> getQuery(String hql) {
		return userDao.getQuery(hql);
	}

	public UserDao getUserDao() {
		return userDao;
	}

	public void setUserDao(UserDao userDao) {
		this.userDao = userDao;
	}

}
