/**
 * 
 */
package com.shoppingsystem.entity;

import java.sql.Timestamp;

/**
 * @author HJianFei
 * @time 2016年5月4日
 */
public class Orders {
	private int orders_id;
	private String orders_number;
	private int users_id;
	private Timestamp orders_time;
	private String orders_handler;
	private double totalMenoy;
	private int user_id;
	private String user_name;
	public Orders() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	public Orders(int orders_id, String orders_number, Object orders_time, String orders_handler, String user_name) {
		super();
		this.orders_id = orders_id;
		this.orders_number = orders_number;
		this.orders_time = (Timestamp)orders_time;
		this.orders_handler = orders_handler;
		this.user_name = user_name;
	}

	public Orders(int orders_id, String orders_number, int users_id, Timestamp orders_time, String orders_handler,
			double totalMenoy) {
		super();
		this.orders_id = orders_id;
		this.orders_number = orders_number;
		this.users_id = users_id;
		this.orders_time = orders_time;
		this.orders_handler = orders_handler;
		this.totalMenoy = totalMenoy;
	}
	public int getOrders_id() {
		return orders_id;
	}
	public void setOrders_id(int orders_id) {
		this.orders_id = orders_id;
	}
	public String getOrders_number() {
		return orders_number;
	}
	public void setOrders_number(String orders_number) {
		this.orders_number = orders_number;
	}
	public int getUsers_id() {
		return users_id;
	}
	public void setUsers_id(int users_id) {
		this.users_id = users_id;
	}
	public Timestamp getOrders_time() {
		return orders_time;
	}
	public void setOrders_time(Timestamp orders_time) {
		this.orders_time = orders_time;
	}
	public String getOrders_handler() {
		return orders_handler;
	}
	public void setOrders_handler(String orders_handler) {
		this.orders_handler = orders_handler;
	}
	public double getTotalMenoy() {
		return totalMenoy;
	}
	public void setTotalMenoy(double totalMenoy) {
		this.totalMenoy = totalMenoy;
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
	@Override
	public String toString() {
		return "Orders [orders_id=" + orders_id + ", orders_number=" + orders_number + ", users_id=" + users_id
				+ ", orders_time=" + orders_time + ", orders_handler=" + orders_handler + ", totalMenoy=" + totalMenoy
				+ "]";
	}
	
}
