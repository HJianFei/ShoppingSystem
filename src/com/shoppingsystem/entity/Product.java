/**
 * 
 */
package com.shoppingsystem.entity;

/**
 * @author HJianFei
 * @time 2016年5月1日
 */
public class Product {

	private int product_id;
	private String product_name;
	private String product_number;
	private String product_pic;
	private int product_amount;
	private String product_type;
	private double product_price;
	private int product_sales;
	private String product_remark;
	public Product() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Product(int product_id, String product_name, String product_number, String product_pic, int product_amount,
			String product_type, double product_price, int product_sales, String product_remark) {
		super();
		this.product_id = product_id;
		this.product_name = product_name;
		this.product_number = product_number;
		this.product_pic = product_pic;
		this.product_amount = product_amount;
		this.product_type = product_type;
		this.product_price = product_price;
		this.product_sales = product_sales;
		this.product_remark = product_remark;
	}
	public int getProduct_id() {
		return product_id;
	}
	public void setProduct_id(int product_id) {
		this.product_id = product_id;
	}
	public String getProduct_name() {
		return product_name;
	}
	public void setProduct_name(String product_name) {
		this.product_name = product_name;
	}
	public String getProduct_number() {
		return product_number;
	}
	public void setProduct_number(String product_number) {
		this.product_number = product_number;
	}
	public String getProduct_pic() {
		return product_pic;
	}
	public void setProduct_pic(String product_pic) {
		this.product_pic = product_pic;
	}
	public int getProduct_amount() {
		return product_amount;
	}
	public void setProduct_amount(int product_amount) {
		this.product_amount = product_amount;
	}
	public String getProduct_type() {
		return product_type;
	}
	public void setProduct_type(String product_type) {
		this.product_type = product_type;
	}
	public double getProduct_price() {
		return product_price;
	}
	public void setProduct_price(double product_price) {
		this.product_price = product_price;
	}
	public int getProduct_sales() {
		return product_sales;
	}
	public void setProduct_sales(int product_sales) {
		this.product_sales = product_sales;
	}
	public String getProduct_remark() {
		return product_remark;
	}
	public void setProduct_remark(String product_remark) {
		this.product_remark = product_remark;
	}
	@Override
	public String toString() {
		return "Product [product_id=" + product_id + ", product_name=" + product_name + ", product_number="
				+ product_number + ", product_pic=" + product_pic + ", product_amount=" + product_amount
				+ ", product_type=" + product_type + ", product_price=" + product_price + ", product_sales="
				+ product_sales + ", product_remark=" + product_remark + "]";
	}
	

}