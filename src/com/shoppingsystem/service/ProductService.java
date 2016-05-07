package com.shoppingsystem.service;

import java.io.File;
import java.io.IOException;
import java.util.List;

import org.hibernate.Query;

import com.shoppingsystem.entity.Product;
import com.shoppingsystem.entity.Type;

public interface ProductService {

	void save(Product product, String filePath, String fileFileName);

	void update(Product product,File file, String fileFileName);

	void delete(int product_id);

	Product findById(int product_id);

	List<Product> getQuery(String hql);

	List<Type> getAllType(String hql);

	Query get(String hql);

	List<Product> getResult(String hql, int firstIndex, int maxSize);
}
