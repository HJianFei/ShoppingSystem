/**
 * 
 */
package com.shoppingsystem.service.impl;

import java.util.List;

import org.hibernate.Query;

import com.shoppingsystem.dao.ProductDao;
import com.shoppingsystem.entity.Product;
import com.shoppingsystem.entity.Type;
import com.shoppingsystem.service.ProductService;

/**
 * @author HJianFei
 * @time 2016年5月1日
 */
public class ProductServiceImpl implements ProductService {

	private ProductDao productDao;

	@Override
	public void save(Product product) {

		productDao.save(product);
	}

	@Override
	public void update(Product product) {

		productDao.update(product);
	}

	@Override
	public void delete(int product_id) {
		if (productDao.findById(product_id) != null) {
			productDao.delete(product_id);
		}
	}

	@Override
	public Product findById(int product_id) {
		return productDao.findById(product_id);
	}

	@Override
	public List<Product> getQuery(String hql) {
		return productDao.getQuery(hql);
	}

	@Override
	public List<Type> getAllType(String hql) {
		return productDao.getAllType(hql);
	}

	public ProductDao getProductDao() {
		return productDao;
	}

	public void setProductDao(ProductDao productDao) {
		this.productDao = productDao;
	}

	@Override
	public Query get(String hql) {
		return productDao.get(hql);
	}

	@Override
	public List<Product> getResult(String hql, int firstIndex, int maxSize) {
		return productDao.getResult(hql, firstIndex, maxSize);
	}
}
