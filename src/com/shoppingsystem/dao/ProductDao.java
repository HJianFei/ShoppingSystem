/**
 * 
 */
package com.shoppingsystem.dao;

import java.util.List;

import org.hibernate.Query;

import com.shoppingsystem.entity.Product;
import com.shoppingsystem.entity.Type;

/**
 * @author HJianFei
 * @time 2016年5月1日
 */
public interface ProductDao {

	void save(Product product);

	void update(Product product);

	void delete(int product_id);

	Product findById(int product_id);

	List<Product> getQuery(String hql);

	List<Type> getAllType(String hql);

	Query get(String hql);

	List<Product> getResult(String hql, int firstIndex, int maxSize);

}
