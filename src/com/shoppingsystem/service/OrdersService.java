package com.shoppingsystem.service;

import java.util.List;

import org.hibernate.Query;

import com.shoppingsystem.entity.OrderProduct;
import com.shoppingsystem.entity.Orders;

public interface OrdersService {

	int save(Orders orders);
	
	void save(OrderProduct orderProduct);

	void delete(int orders_id);

	void update(Orders orders);

	Orders findById(int orders_id);

	List<Orders> getQuery(String hql);
	
	Query get(String hql);

	List<Orders> getResult(String hql, int firstIndex, int maxSize);

}
