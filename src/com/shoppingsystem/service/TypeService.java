/**
 * 
 */
package com.shoppingsystem.service;

import java.util.List;

import org.hibernate.Query;

import com.shoppingsystem.entity.Type;

/**
 * @author HJianFei
 * @time 2016年5月1日
 */
public interface TypeService {

	void save(Type type);

	void update(Type type);

	void delete(int type_id);

	Type findById(int type_id);

	Query get(String hql);

	List<Type> getQuery(String hql);

	List<Type> getResult(String hql, int firstIndex, int maxSize);

}
