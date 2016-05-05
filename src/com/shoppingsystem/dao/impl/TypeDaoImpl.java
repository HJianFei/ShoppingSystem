/**
 * 
 */
package com.shoppingsystem.dao.impl;

import java.util.List;

import org.hibernate.Query;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import com.shoppingsystem.dao.TypeDao;
import com.shoppingsystem.entity.Type;

/**
 * @author HJianFei
 * @time 2016年5月1日
 */
public class TypeDaoImpl extends HibernateDaoSupport implements TypeDao {

	@Override
	public void save(Type type) {
		this.getHibernateTemplate().save(type);
		this.getHibernateTemplate().flush();
	}

	@Override
	public void update(Type type) {
		this.getHibernateTemplate().update(type);
		this.getHibernateTemplate().flush();

	}

	@Override
	public void delete(int type_id) {
		this.getHibernateTemplate().delete(findById(type_id));
		this.getHibernateTemplate().flush();
	}

	@Override
	public Type findById(int type_id) {
		Type type = (Type) this.getHibernateTemplate().get(Type.class, type_id);
		return type;
	}

	@Override
	public List<Type> getQuery(String hql) {
		@SuppressWarnings("unchecked")
		List<Type> types = this.getHibernateTemplate().find(hql);
		return types;
	}

	@Override
	public Query get(String hql) {
		return this.getSessionFactory().openSession().createQuery(hql);
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<Type> getResult(String hql, int firstIndex, int maxSize) {
		Query query = get(hql);
		if (firstIndex == 0 && maxSize == 0) {
			return query.list();
		} else {
			query.setFirstResult(firstIndex);
			query.setMaxResults(maxSize);
			return query.list();
		}
	}
}
