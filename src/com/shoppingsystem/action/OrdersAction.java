package com.shoppingsystem.action;

import java.sql.Timestamp;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import java.util.Random;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionSupport;
import com.shoppingsystem.entity.OrderProduct;
import com.shoppingsystem.entity.Orders;
import com.shoppingsystem.entity.Product;
import com.shoppingsystem.service.OrdersService;

@SuppressWarnings("serial")
public class OrdersAction extends ActionSupport {
	private OrdersService ordersService;
	private Orders orders;

	/**
	 * 查询全部订单
	 * 
	 * @return
	 */
	public String AllOrders() {

		HttpServletRequest request = ServletActionContext.getRequest();
		int pageSize = 6; // 每页显示记录条数
		int pageNow = 1; // 初始化页数

		String spageNow = request.getParameter("pagenow");
		if (spageNow != null) {
			pageNow = Integer.parseInt(spageNow);
		}
		long pageMax = (long) ordersService.getQuery("from Orders").size();
		long pageCount = 0;
		if (pageMax % pageSize == 0) {
			pageCount = pageMax / pageSize; // 总的页数
		} else {
			pageCount = (pageMax / pageSize) + 1;

		}

		if (pageNow > pageCount || pageNow < 1) {
			if (pageNow > pageCount) {
				pageNow = (int) pageCount;
			}

			if (pageNow < 1) {
				pageNow = 1;
			}
		}
		List<Orders> or = null;
		String orders_handler = request.getParameter("orders_handler");
		String hql = "select new com.shoppingsystem.entity.Orders(o.orders_id,o.orders_number,o.orders_time,o.orders_handler,u.user_name) from Orders as o,User as u where o.users_id=u.user_id";
		if ("1".equals(orders_handler)) {
			hql = "select new com.shoppingsystem.entity.Orders(o.orders_id,o.orders_number,o.orders_time,o.orders_handler,u.user_name) from Orders as o,User as u where o.users_id=u.user_id and o.orders_handler='1'";
		} else if ("0".equals(orders_handler)) {
			hql = "select new com.shoppingsystem.entity.Orders(o.orders_id,o.orders_number,o.orders_time,o.orders_handler,u.user_name) from Orders as o,User as u where o.users_id=u.user_id and o.orders_handler='0'";
		}

		or = ordersService.getResult(hql, (pageNow - 1) * pageSize, pageSize);
		request.setAttribute("orderslist", or);
		request.setAttribute("pagenow", pageNow);
		request.setAttribute("pagecount", pageCount);
		return "all_orders";
	}

	/**
	 * 保存订单信息
	 * 
	 * @return
	 */
	@SuppressWarnings("unchecked")
	public String addOrders() {

		HttpServletRequest request = ServletActionContext.getRequest();
		HttpSession session = request.getSession();

		List<Product> shoppingorder = (List<Product>) session.getAttribute("shoppingorder");
		Orders o = new Orders();
		String ordersNumber = "HCH";
		DateFormat format = new SimpleDateFormat("yyMMddHHmmss");
		String formatDate = format.format(new Date());
		int random = new Random().nextInt(100000);
		ordersNumber = ordersNumber + formatDate + random;
		o.setOrders_number(ordersNumber);
		int user_id = (int) session.getAttribute("user_id");
		o.setUsers_id(user_id);
		double totalMoney = (Double) session.getAttribute("totalMoney");
		o.setOrders_time(new Timestamp(new Date().getTime()));
		o.setOrders_handler("0");
		o.setTotalMenoy(totalMoney);

		// 保存订单
		int ordersId = ordersService.save(o);
		Orders od = ordersService.findById(ordersId);
		for (Product product : shoppingorder) {
			OrderProduct orderProduct = new OrderProduct();
			orderProduct.setOrders_id(od.getOrders_id());
			orderProduct.setProduct_id(product.getProduct_id());
			orderProduct.setProduct_amount(product.getProduct_amount());
			// 保存商品订单
			ordersService.save(orderProduct);
		}
		session.removeAttribute("shoppingorder");
		session.removeAttribute("totalMoney");
		return "success";
	}

	public OrdersService getOrdersService() {
		return ordersService;
	}

	public void setOrdersService(OrdersService ordersService) {
		this.ordersService = ordersService;
	}

	public Orders getOrders() {
		return orders;
	}

	public void setOrders(Orders orders) {
		this.orders = orders;
	}

}
