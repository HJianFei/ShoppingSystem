package com.shoppingsystem.action;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionSupport;
import com.shoppingsystem.entity.OrderProduct;
import com.shoppingsystem.service.OrderProductService;

@SuppressWarnings("serial")
public class OrderProductAction extends ActionSupport {
	private OrderProductService orderProductService;

	public String orderproduct_detail() {

		HttpServletRequest request = ServletActionContext.getRequest();
		String orders_number=request.getParameter("orders_number");
		List<OrderProduct> opProducts = null;
		String hql = "select new com.shoppingsystem.entity.OrderProduct(o.orders_handler,o.orders_time,o.totalMenoy,o.orders_number,op.product_amount,p.product_name,p.product_pic)"
				+ " from orders as o,order_product as op,product as p "
				+ "where o.orders_id=op.orders_id and op.product_id=p.product_id "
				+ "and o.orders_number='"+orders_number+"'";
		opProducts = orderProductService.getQuery(hql);
		request.setAttribute("orderslist", opProducts);
		return "orderproduct_detail";
	}

	public OrderProductService getOrderProductService() {
		return orderProductService;
	}

	public void setOrderProductService(OrderProductService orderProductService) {
		this.orderProductService = orderProductService;
	}

}
