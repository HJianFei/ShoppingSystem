/**
 * 
 */
package com.shoppingsystem.dao;

import java.util.List;

import org.hibernate.Query;

import com.shoppingsystem.entity.OrderProduct;
import com.shoppingsystem.entity.Orders;

/**
 * @author HJianFei
 * @time 2016年5月4日
 */
public interface OrdersDao {

	int save(Orders orders);

	void save(OrderProduct orderProduct);

	void delete(int orders_id);

	void update(Orders orders);

	Orders findById(int orders_id);

	List<Orders> getQuery(String hql);

	Query get(String hql);

	List<Orders> getResult(String hql, int firstIndex, int maxSize);

}
