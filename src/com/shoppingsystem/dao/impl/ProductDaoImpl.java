/**
 * 
 */
package com.shoppingsystem.dao.impl;

import java.util.List;

import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import com.shoppingsystem.dao.ProductDao;
import com.shoppingsystem.entity.Product;
import com.shoppingsystem.entity.Type;

/**
 * @author HJianFei
 * @time 2016年5月1日
 */
public class ProductDaoImpl extends HibernateDaoSupport implements ProductDao {

	@Override
	public void save(Product product) {
		this.getHibernateTemplate().save(product);
		this.getHibernateTemplate().flush();
	}

	@Override
	public void update(Product product) {
		this.getHibernateTemplate().update(product);
		this.getHibernateTemplate().flush();

	}

	@Override
	public void delete(int product_id) {
		this.getHibernateTemplate().delete(findById(product_id));
		this.getHibernateTemplate().flush();
	}

	@Override
	public Product findById(int product_id) {
		Product product = (Product) this.getHibernateTemplate().get(Product.class, product_id);
		return product;
	}

	@Override
	public List<Product> getQuery(String hql) {
		@SuppressWarnings("unchecked")
		List<Product> products = this.getHibernateTemplate().find(hql);
		return products;
	}

	@Override
	public List<Type> getAllType(String hql) {
		@SuppressWarnings("unchecked")
		List<Type>types=this.getHibernateTemplate().find(hql);
		return types;
	}
}