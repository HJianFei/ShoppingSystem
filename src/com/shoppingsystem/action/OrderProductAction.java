package com.shoppingsystem.action;

import com.opensymphony.xwork2.ActionSupport;
import com.shoppingsystem.service.OrderProductService;

@SuppressWarnings("serial")
public class OrderProductAction extends ActionSupport {
	private OrderProductService orderProductService;

	public OrderProductService getOrderProductService() {
		return orderProductService;
	}

	public void setOrderProductService(OrderProductService orderProductService) {
		this.orderProductService = orderProductService;
	}
	
	
}
