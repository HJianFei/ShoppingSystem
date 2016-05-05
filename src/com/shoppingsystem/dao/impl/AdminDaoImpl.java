package com.shoppingsystem.dao.impl;

import java.util.List;

import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import com.shoppingsystem.dao.AdminDao;
import com.shoppingsystem.entity.Admin;

public class AdminDaoImpl extends HibernateDaoSupport implements AdminDao {

	@Override
	public void save(Admin admin) {
		this.getHibernateTemplate().save(admin);
		this.getHibernateTemplate().flush();

	}

	@Override
	public void delete(int admin_id) {
		this.getHibernateTemplate().delete(findById(admin_id));
		this.getHibernateTemplate().flush();

	}

	@Override
	public void update(Admin admin) {
		this.getHibernateTemplate().update(admin);
		this.getHibernateTemplate().flush();

	}

	@Override
	public Admin findById(int admin_id) {
		Admin admin=(Admin)this.getHibernateTemplate().get(Admin.class,admin_id);
		return admin;
	}

	@Override
	public List<Admin> getQuery(String hql) {
		@SuppressWarnings("unchecked")
		List<Admin>admins=this.getHibernateTemplate().find(hql);
		return admins;
	}

}
