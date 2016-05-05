package com.shoppingsystem.dao.impl;

import java.util.List;

import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import com.shoppingsystem.dao.OrderProductDao;
import com.shoppingsystem.entity.OrderProduct;

public class OrderProductDaoImpl extends HibernateDaoSupport implements OrderProductDao {

	@Override
	public void save(OrderProduct orderProduct) {
		this.getHibernateTemplate().save(orderProduct);
		this.getHibernateTemplate().flush();

	}

	@Override
	public void delete(int orderProduct_id) {
		this.getHibernateTemplate().delete(findById(orderProduct_id));
		this.getHibernateTemplate().flush();

	}

	@Override
	public void update(OrderProduct orderProduct) {
		this.getHibernateTemplate().update(orderProduct);
		this.getHibernateTemplate().flush();

	}

	@Override
	public OrderProduct findById(int orderProduct_id) {
		OrderProduct orderProduct = (OrderProduct) this.getHibernateTemplate().get(OrderProduct.class, orderProduct_id);
		return orderProduct;
	}

	@Override
	public List<OrderProduct> getQuery(String hql) {
		@SuppressWarnings("unchecked")
		List<OrderProduct> orderProducts = this.getHibernateTemplate().find(hql);
		return orderProducts;
	}

}
