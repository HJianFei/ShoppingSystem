/**
 * 
 */
package com.shoppingsystem.dao;

import java.util.List;

import com.shoppingsystem.entity.OrderProduct;

/**
 * @author HJianFei
 * @time 2016年5月4日
 */
public interface OrderProductDao {

	void save(OrderProduct orderProduct);

	void delete(int orderProduct_id);

	void update(OrderProduct orderProduct);

	OrderProduct findById(int orderProduct_id);

	List<OrderProduct> getQuery(String hql);

}
