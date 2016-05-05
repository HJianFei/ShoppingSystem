package com.shoppingsystem.service.impl;

import java.util.List;

import com.shoppingsystem.dao.OrderProductDao;
import com.shoppingsystem.entity.OrderProduct;
import com.shoppingsystem.service.OrderProductService;

public class OrderProductServiceImpl implements OrderProductService {

	private OrderProductDao orderProductDao;

	public OrderProductDao getOrderProductDao() {
		return orderProductDao;
	}

	public void setOrderProductDao(OrderProductDao orderProductDao) {
		this.orderProductDao = orderProductDao;
	}

	@Override
	public void save(OrderProduct orderProduct) {
		orderProductDao.save(orderProduct);
	}

	@Override
	public void delete(int orderProduct_id) {
		if (orderProductDao.findById(orderProduct_id) != null) {
			orderProductDao.delete(orderProduct_id);
		}

	}

	@Override
	public void update(OrderProduct orderProduct) {
		orderProductDao.update(orderProduct);

	}

	@Override
	public OrderProduct findById(int orderProduct_id) {
		return orderProductDao.findById(orderProduct_id);
	}

	@Override
	public List<OrderProduct> getQuery(String hql) {
		return orderProductDao.getQuery(hql);
	}

}
