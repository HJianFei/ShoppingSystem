/**
 * 
 */
package com.shoppingsystem.entity;

/**
 * @author HJianFei
 * @time 2016年5月1日
 */
public class OrderProduct {
	private int orderproduct_id;
	private int product_id;
	private int orders_id;
	private int product_amount;
	public OrderProduct() {
		super();
		// TODO Auto-generated constructor stub
	}
	public OrderProduct(int orderproduct_id, int product_id, int orders_id, int product_amount) {
		super();
		this.orderproduct_id = orderproduct_id;
		this.product_id = product_id;
		this.orders_id = orders_id;
		this.product_amount = product_amount;
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
	@Override
	public String toString() {
		return "OrderProduct [orderproduct_id=" + orderproduct_id + ", product_id=" + product_id + ", orders_id="
				+ orders_id + ", product_amount=" + product_amount + "]";
	}
	
}
