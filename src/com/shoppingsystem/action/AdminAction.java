package com.shoppingsystem.action;

import com.opensymphony.xwork2.ActionSupport;
import com.shoppingsystem.entity.Admin;
import com.shoppingsystem.service.AdminService;

@SuppressWarnings("serial")
public class AdminAction extends ActionSupport {
	private AdminService adminService;
	private Admin admin;
	//保存管理员信息
	public String login(){
		adminService.save(admin);
		return "admin";
	}
	public AdminService getAdminService() {
		return adminService;
	}
	public void setAdminService(AdminService adminService) {
		this.adminService = adminService;
	}
	public Admin getAdmin() {
		return admin;
	}
	public void setAdmin(Admin admin) {
		this.admin = admin;
	}
}
