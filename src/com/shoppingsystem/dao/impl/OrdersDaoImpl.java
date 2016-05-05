package com.shoppingsystem.dao.impl;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import com.shoppingsystem.dao.OrdersDao;
import com.shoppingsystem.entity.OrderProduct;
import com.shoppingsystem.entity.Orders;

public class OrdersDaoImpl extends HibernateDaoSupport implements OrdersDao {

	@SuppressWarnings("unchecked")
	@Override
	public int save(Orders orders) {
		this.getHibernateTemplate().save(orders);
		this.getHibernateTemplate().flush();
		Session session = this.getSession();
		Transaction tx = null;
		int i = 0;
		try {
			tx = session.beginTransaction();
			String hql = "select max(orders_id) from Orders";
			List<Integer> idList = session.createQuery(hql).list();
			if (idList.size() > 0) {
				i = idList.get(0);
			}
			tx.commit();
		} catch (RuntimeException re) {
			re.printStackTrace();
			tx.rollback();
		}
		session.close();
		return i;

	}

	@Override
	public void save(OrderProduct orderProduct) {
		this.getHibernateTemplate().save(orderProduct);
		this.getHibernateTemplate().flush();
	}

	@Override
	public void delete(int orders_id) {
		this.getHibernateTemplate().delete(findById(orders_id));
		this.getHibernateTemplate().flush();

	}

	@Override
	public void update(Orders orders) {
		this.getHibernateTemplate().update(orders);
		this.getHibernateTemplate().flush();

	}

	@Override
	public Orders findById(int orders_id) {
		Orders orders = (Orders) this.getHibernateTemplate().get(Orders.class, orders_id);
		return orders;
	}

	@Override
	public List<Orders> getQuery(String hql) {
		@SuppressWarnings("unchecked")
		List<Orders> orders = this.getHibernateTemplate().find(hql);
		return orders;
	}

	@Override
	public Query get(String hql) {
		return this.getSessionFactory().openSession().createQuery(hql);
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<Orders> getResult(String hql, int firstIndex, int maxSize) {
		Query query = get(hql);
		if (firstIndex == 0 && maxSize == 0) {
			return query.list();
		} else {
			query.setFirstResult(firstIndex);
			query.setMaxResults(maxSize);
			return query.list();
		}
	}

}
