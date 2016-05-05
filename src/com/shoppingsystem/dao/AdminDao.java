/**
 * 
 */
package com.shoppingsystem.dao;

import java.util.List;

import com.shoppingsystem.entity.Admin;


/**
 * @author HJianFei
 * @time 2016年4月28日
 */
public interface AdminDao {
	
	void save(Admin admin);
	
	void delete(int admin_id);
	
	void update(Admin admin);
	
	Admin findById(int admin_id);
	
	List<Admin> getQuery(String hql);

}
