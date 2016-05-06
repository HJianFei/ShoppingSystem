/**
 * 
 */
package com.shoppingsystem.entity;

/**
 * @author HJianFei
 * @time 2016年4月28日
 */

public class Admin {
	private int admin_id;
	private String admin_name;
	private String admin_pass;

	public Admin() {
		super();
		// TODO Auto-generated constructor stub
	}

	public Admin(int admin_id, String admin_name, String admin_pass) {
		super();
		this.admin_id = admin_id;
		this.admin_name = admin_name;
		this.admin_pass = admin_pass;
	}

	public int getAdmin_id() {
		return admin_id;
	}

	public void setAdmin_id(int admin_id) {
		this.admin_id = admin_id;
	}

	/**
	 * @return
	 */
	public String getAdmin_name() {
		return admin_name;
	}

	public void setAdmin_name(String admin_name) {
		this.admin_name = admin_name;
	}

	public String getAdmin_pass() {
		return admin_pass;
	}

	public void setAdmin_pass(String admin_pass) {
		this.admin_pass = admin_pass;
	}

	@Override
	public String toString() {
		return "Admin [admin_id=" + admin_id + ", admin_name=" + admin_name + ", admin_pass=" + admin_pass + "]";
	}

}
