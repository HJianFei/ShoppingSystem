package com.shoppingsystem.service;

import java.util.List;

import com.shoppingsystem.entity.OrderProduct;


public interface OrderProductService {

	void save(OrderProduct orderProduct);

	void delete(int orderProduct_id);

	void update(OrderProduct orderProduct);

	OrderProduct findById(int orderProduct_id);

	List<OrderProduct> getQuery(String hql);

}
