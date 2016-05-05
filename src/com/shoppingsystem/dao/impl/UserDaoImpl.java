/**
 * 
 */
package com.shoppingsystem.dao.impl;

import java.util.List;

import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import com.shoppingsystem.dao.UserDao;
import com.shoppingsystem.entity.User;

/**
 * @author HJianFei
 * @time 2016年5月1日
 */
public class UserDaoImpl extends HibernateDaoSupport implements UserDao {

	@Override
	public void save(User user) {
		this.getHibernateTemplate().save(user);
		this.getHibernateTemplate().flush();
	}

	@Override
	public void update(User user) {
		this.getHibernateTemplate().update(user);
		this.getHibernateTemplate().flush();

	}

	@Override
	public void delete(int user_id) {
		this.getHibernateTemplate().delete(findById(user_id));
		this.getHibernateTemplate().flush();
	}

	@Override
	public User findById(int user_id) {
		User user = this.getHibernateTemplate().get(User.class, user_id);
		return user;
	}

	@Override
	public List<User> getQuery(String hql) {
		@SuppressWarnings("unchecked")
		List<User> users = this.getHibernateTemplate().find(hql);
		return users;
	}

}
