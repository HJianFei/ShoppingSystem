/**
 * 
 */
package com.shoppingsystem.entity;

import java.sql.Timestamp;

/**
 * @author HJianFei
 * @time 2016年5月1日
 */
public class OrderProduct {
	private int orderproduct_id;
	private int product_id;
	private int orders_id;
	private int product_amount;
	private String orders_handler;
	private Timestamp orders_time;
	private double totalMenoy;
	private String orders_number;
	private String product_name;
	private String product_pic;

	public OrderProduct() {
		super();
	}

	public OrderProduct(int orderproduct_id, int product_id, int orders_id, int product_amount) {
		this.orderproduct_id = orderproduct_id;
		this.product_id = product_id;
		this.orders_id = orders_id;
		this.product_amount = product_amount;
	}

	public OrderProduct(int product_amount, String orders_handler, Object orders_time, double totalMenoy,
			String orders_number, String product_name, String product_pic) {
		super();
		this.product_amount = product_amount;
		this.orders_handler = orders_handler;
		this.orders_time = (Timestamp) orders_time;
		this.totalMenoy = totalMenoy;
		this.orders_number = orders_number;
		this.product_name = product_name;
		this.product_pic = product_pic;
	}

	public int getOrderproduct_id() {
		return orderproduct_id;
	}

	public void setOrderproduct_id(int orderproduct_id) {
		this.orderproduct_id = orderproduct_id;
	}

	public int getProduct_id() {
		return product_id;
	}

	public void setProduct_id(int product_id) {
		this.product_id = product_id;
	}

	public int getOrders_id() {
		return orders_id;
	}

	public void setOrders_id(int orders_id) {
		this.orders_id = orders_id;
	}

	public int getProduct_amount() {
		return product_amount;
	}

	public void setProduct_amount(int product_amount) {
		this.product_amount = product_amount;
	}

	public String getOrders_handler() {
		return orders_handler;
	}

	public void setOrders_handler(String orders_handler) {
		this.orders_handler = orders_handler;
	}

	public Timestamp getOrders_time() {
		return orders_time;
	}

	public void setOrders_time(Timestamp orders_time) {
		this.orders_time = orders_time;
	}

	public double getTotalMenoy() {
		return totalMenoy;
	}

	public void setTotalMenoy(double totalMenoy) {
		this.totalMenoy = totalMenoy;
	}

	public String getOrders_number() {
		return orders_number;
	}

	public void setOrders_number(String orders_number) {
		this.orders_number = orders_number;
	}

	public String getProduct_name() {
		return product_name;
	}

	public void setProduct_name(String product_name) {
		this.product_name = product_name;
	}

	public String getProduct_pic() {
		return product_pic;
	}

	public void setProduct_pic(String product_pic) {
		this.product_pic = product_pic;
	}

}
