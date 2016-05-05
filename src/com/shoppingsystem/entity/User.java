/**
 * 
 */
package com.shoppingsystem.entity;

/**
 * @author HJianFei
 * @time 2016年5月1日
 */
public class User {
	private int user_id;
	private String user_name;
	private String user_pass;
	private String user_email;
	private String user_nickname;
	private String user_sex;
	private String user_address;
	private String user_phone;
	private String user_remark;

	public User() {
		super();
		// TODO Auto-generated constructor stub
	}

	public User(int user_id, String user_name, String user_pass, String user_email, String user_nickname,
			String user_sex, String user_address, String user_phone, String user_remark) {
		super();
		this.user_id = user_id;
		this.user_name = user_name;
		this.user_pass = user_pass;
		this.user_email = user_email;
		this.user_nickname = user_nickname;
		this.user_sex = user_sex;
		this.user_address = user_address;
		this.user_phone = user_phone;
		this.user_remark = user_remark;
	}

	public int getUser_id() {
		return user_id;
	}

	public void setUser_id(int user_id) {
		this.user_id = user_id;
	}

	public String getUser_name() {
		return user_name;
	}

	public void setUser_name(String user_name) {
		this.user_name = user_name;
	}

	public String getUser_pass() {
		return user_pass;
	}

	public void setUser_pass(String user_pass) {
		this.user_pass = user_pass;
	}

	public String getUser_email() {
		return user_email;
	}

	public void setUser_email(String user_email) {
		this.user_email = user_email;
	}

	public String getUser_nickname() {
		return user_nickname;
	}

	public void setUser_nickname(String user_nickname) {
		this.user_nickname = user_nickname;
	}

	public String getUser_sex() {
		return user_sex;
	}

	public void setUser_sex(String user_sex) {
		this.user_sex = user_sex;
	}

	public String getUser_address() {
		return user_address;
	}

	public void setUser_address(String user_address) {
		this.user_address = user_address;
	}

	public String getUser_phone() {
		return user_phone;
	}

	public void setUser_phone(String user_phone) {
		this.user_phone = user_phone;
	}

	public String getUser_remark() {
		return user_remark;
	}

	public void setUser_remark(String user_remark) {
		this.user_remark = user_remark;
	}

	@Override
	public String toString() {
		return "User [user_id=" + user_id + ", user_name=" + user_name + ", user_pass=" + user_pass + ", user_email="
				+ user_email + ", user_nickname=" + user_nickname + ", user_sex=" + user_sex + ", user_address="
				+ user_address + ", user_phone=" + user_phone + ", user_remark=" + user_remark + "]";
	}

}
