/**
 * 
 */
package com.shoppingsystem.action;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionSupport;
import com.shoppingsystem.entity.Type;
import com.shoppingsystem.service.TypeService;

/**
 * @author HJianFei
 * @time 2016年5月1日
 */
public class TypeAction extends ActionSupport {

	private static final long serialVersionUID = 1L;
	private TypeService typeService;
	private Type type;

	/**
	 * 添加商品类别
	 * 
	 * @return
	 */
	public String save() {

		typeService.save(type);
		allType();
		return "allType";
	}

	/**
	 * 查询所有的商品分类信息
	 * 
	 * @return
	 */
	public String allType() {

		HttpServletRequest request = ServletActionContext.getRequest();
		int pageSize = 6; // 每页显示记录条数
		int pageNow = 1; // 初始化页数

		String spageNow = request.getParameter("pagenow");
		if (spageNow != null) {
			pageNow = Integer.parseInt(spageNow);
		}
		long pageMax = (long) typeService.getQuery("from Type").size();
		long pageCount = 0;
		if (pageMax % pageSize == 0) {
			pageCount = pageMax / pageSize; // 总的页数
		} else {
			pageCount = (pageMax / pageSize) + 1;

		}

		if (pageNow > pageCount || pageNow < 1) {
			if (pageNow > pageCount) {
				pageNow = (int) pageCount;
			}

			if (pageNow < 1) {
				pageNow = 1;
			}
		}
		List<Type> types = null;
		String hql = "from Type t";
		types = typeService.getResult(hql, (pageNow - 1) * pageSize, pageSize);
		// types=typeService.getQuery(hql);
		request.setAttribute("typelist", types);
		request.setAttribute("pagenow", pageNow);
		request.setAttribute("pagecount", pageCount);
		return "allType";
	}

	public String delete() {
		typeService.delete(type.getType_id());
		allType();
		return "allType";
	}

	public TypeService getTypeService() {
		return typeService;
	}

	public void setTypeService(TypeService typeService) {
		this.typeService = typeService;
	}

	public Type getType() {
		return type;
	}

	public void setType(Type type) {
		this.type = type;
	}

}
