package com.shoppingsystem.service.impl;

import java.util.List;

import org.hibernate.Query;

import com.shoppingsystem.dao.OrderProductDao;
import com.shoppingsystem.dao.OrdersDao;
import com.shoppingsystem.entity.OrderProduct;
import com.shoppingsystem.entity.Orders;
import com.shoppingsystem.service.OrdersService;

public class OrdersServiceImpl implements OrdersService {

	private OrdersDao ordersDao;
	private OrderProductDao orderProductDao;

	public OrdersDao getOrdersDao() {
		return ordersDao;
	}

	public void setOrdersDao(OrdersDao ordersDao) {
		this.ordersDao = ordersDao;
	}

	public OrderProductDao getOrderProductDao() {
		return orderProductDao;
	}

	public void setOrderProductDao(OrderProductDao orderProductDao) {
		this.orderProductDao = orderProductDao;
	}

	@Override
	public int save(Orders orders) {
		return ordersDao.save(orders);
	}

	@Override
	public void save(OrderProduct orderProduct) {
		ordersDao.save(orderProduct);
	}

	@Override
	public void delete(int orders_id) {
		if (ordersDao.findById(orders_id) != null) {
			ordersDao.delete(orders_id);
		}

	}

	@Override
	public void update(Orders orders) {
		ordersDao.update(orders);

	}

	@Override
	public Orders findById(int orders_id) {
		return ordersDao.findById(orders_id);
	}

	@Override
	public List<Orders> getQuery(String hql) {
		return ordersDao.getQuery(hql);
	}
	
	@Override
	public Query get(String hql) {
		return ordersDao.get(hql);
	}

	@Override
	public List<Orders> getResult(String hql, int firstIndex, int maxSize) {
		return ordersDao.getResult(hql, firstIndex, maxSize);
	}
}
