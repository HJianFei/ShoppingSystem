/**
 * 
 */
package com.shoppingsystem.entity;

import java.io.Serializable;

/**
 * @author HJianFei
 * @time 2016年5月1日
 */
public class Type implements Serializable{

	private static final long serialVersionUID = 1L;
	private int type_id;
	private String type_name;
	
	public Type() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Type(int type_id, String type_name) {
		super();
		this.type_id = type_id;
		this.type_name = type_name;
	}
	public int getType_id() {
		return type_id;
	}
	public void setType_id(int type_id) {
		this.type_id = type_id;
	}
	public String getType_name() {
		return type_name;
	}
	public void setType_name(String type_name) {
		this.type_name = type_name;
	}
	@Override
	public String toString() {
		return "Type [type_id=" + type_id + ", type_name=" + type_name + "]";
	}
	
	

}
