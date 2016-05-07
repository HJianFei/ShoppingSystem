/**
 * 
 */
package com.shoppingsystem.action;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionSupport;
import com.shoppingsystem.entity.User;
import com.shoppingsystem.service.UserService;

/**
 * @author HJianFei
 * @time 2016年5月2日
 */
public class UserAction extends ActionSupport {

	private static final long serialVersionUID = 1L;
	private UserService userService;
	private User user;

	/**
	 * 添加会员信息
	 * 
	 * @return
	 */
	public String save() {
		userService.save(user);
		allUser();
		return "all_user";
	}
	public String register() {
		userService.save(user);
		return "login";
	}

	public String update() {
		userService.update(user);
		HttpServletRequest request = ServletActionContext.getRequest();
		String flag = request.getParameter("flag");
		if ("info".equals(flag)) {
			return "shopping";
		} else {
			allUser();
			return "all_user";
		}
	}

	/**
	 * 删除会员信息
	 * 
	 * @return
	 */
	public String delete() {
		userService.delete(user.getUser_id());
		allUser();
		return "all_user";
	}

	public String login() {
		HttpServletRequest request = ServletActionContext.getRequest();
		String user_email = user.getUser_email();
		String user_pass = user.getUser_pass();
		String hql = "from User where user_email='" + user_email + "' and user_pass='" + user_pass + "'";
		List<User> u = userService.getQuery(hql);
		if (u != null) {
			String user_name = u.get(0).getUser_name();
			int user_id = u.get(0).getUser_id();
			HttpSession session = request.getSession();
			session.setAttribute("name", user_name);
			session.setAttribute("user_id", user_id);
		}
		return "login_success";
	}

	/**
	 * 查找全部会员信息
	 * 
	 * @return
	 */
	public String allUser() {
		HttpServletRequest request = ServletActionContext.getRequest();
		List<User> users = null;
		String hql = "from User u";
		users = userService.getQuery(hql);
		request.setAttribute("userlist", users);
		return "all_user";
	}

	/**
	 * 更改会员信息
	 * 
	 * @return
	 */
	public String tochange_user() {
		HttpServletRequest request = ServletActionContext.getRequest();
		String user_id=request.getParameter("user_id");
		if ("".equals(user_id) || user_id == null) {
			return "login";
		}
		User u = new User();
		u = userService.findById(user.getUser_id());
		request.setAttribute("user", u);
		if ("info".equals(request.getParameter("flag"))) {
			return "user_info";
		} else {
			return "tochange_user";
		}
	}

	public String change_user() {
		userService.update(user);
		allUser();
		return "all_user";
	}

	/**
	 * 根据名字查找会员
	 * 
	 * @return
	 */
	public String findWithName() {
		HttpServletRequest request = ServletActionContext.getRequest();
		User u = new User();
		u = userService.findById(user.getUser_id());
		request.setAttribute("user", u);
		return "find_user";
	}

	public UserService getUserService() {
		return userService;
	}

	public void setUserService(UserService userService) {
		this.userService = userService;
	}

	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}

}
