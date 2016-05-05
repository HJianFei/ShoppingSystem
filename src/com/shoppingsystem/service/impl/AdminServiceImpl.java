package com.shoppingsystem.service.impl;

import java.util.List;

import com.shoppingsystem.dao.AdminDao;
import com.shoppingsystem.entity.Admin;
import com.shoppingsystem.service.AdminService;

public class AdminServiceImpl implements AdminService {

	private AdminDao adminDao;

	public AdminDao getAdminDao() {
		return adminDao;
	}

	public void setAdminDao(AdminDao adminDao) {
		this.adminDao = adminDao;
	}

	@Override
	public void save(Admin admin) {
		adminDao.save(admin);
	}

	@Override
	public void delete(int admin_id) {
		if (adminDao.findById(admin_id) != null) {
			adminDao.delete(admin_id);
		}

	}

	@Override
	public void update(Admin admin) {
		adminDao.update(admin);

	}

	@Override
	public Admin findById(int admin_id) {
		return adminDao.findById(admin_id);
	}

	@Override
	public List<Admin> getQuery(String hql) {
		return adminDao.getQuery(hql);
	}

}
