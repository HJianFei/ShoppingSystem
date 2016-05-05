/**
 * 
 */
package com.shoppingsystem.service.impl;

import java.util.List;

import org.hibernate.Query;

import com.shoppingsystem.dao.TypeDao;
import com.shoppingsystem.entity.Type;
import com.shoppingsystem.service.TypeService;

/**
 * @author HJianFei
 * @time 2016年5月1日
 */
public class TypeServiceImpl implements TypeService {

	private TypeDao typeDao;

	@Override
	public void save(Type type) {
		typeDao.save(type);
	}

	@Override
	public void update(Type type) {
		typeDao.update(type);
	}

	@Override
	public void delete(int type_id) {
		if (typeDao.findById(type_id) != null) {
			typeDao.delete(type_id);
		}
	}

	@Override
	public Type findById(int type_id) {
		return typeDao.findById(type_id);
	}

	@Override
	public Query get(String hql) {
		return typeDao.get(hql);
	}

	@Override
	public List<Type> getQuery(String hql) {
		return typeDao.getQuery(hql);
	}

	@Override
	public List<Type> getResult(String hql, int firstIndex, int maxSize) {
		return typeDao.getResult(hql, firstIndex, maxSize);
	}

	public TypeDao getTypeDao() {
		return typeDao;
	}

	public void setTypeDao(TypeDao typeDao) {
		this.typeDao = typeDao;
	}

}
