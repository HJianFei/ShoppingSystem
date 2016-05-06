/**
 * 
 */
package com.shoppingsystem.action;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionSupport;
import com.shoppingsystem.entity.Product;
import com.shoppingsystem.entity.Type;
import com.shoppingsystem.service.ProductService;

/**
 * @author HJianFei
 * @time 2016年5月2日
 */
public class ProductAction extends ActionSupport {

	private static final long serialVersionUID = 1L;
	private Product product;
	private ProductService productService;

	/**
	 * 添加商品信息
	 * 
	 * @return
	 */
	public String save() {

		productService.save(product);
		allProduct();
		return "all_product";
	}

	/**
	 * 获取全部商品信息
	 * 
	 * @return
	 */
	public String allProduct() {
		HttpServletRequest request = ServletActionContext.getRequest();
		int pageSize = 6; // 每页显示记录条数
		int pageNow = 1; // 初始化页数

		String spageNow = request.getParameter("pagenow");
		if (spageNow != null) {
			pageNow = Integer.parseInt(spageNow);
		}
		long pageMax = (long) productService.getQuery("from Product").size();
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
		List<Product> products = null;
		String hql = "from Product p";
		products = productService.getResult(hql, (pageNow - 1) * pageSize, pageSize);
		request.setAttribute("productlist", products);
		request.setAttribute("pagenow", pageNow);
		request.setAttribute("pagecount", pageCount);
		String info = request.getParameter("flag");
		if ("info".equals(info)) {
			return "show_product";
		} else {
			return "all_product";
		}
	}

	/**
	 * 商品详情信息
	 * 
	 * @return
	 */
	public String detail_product() {

		HttpServletRequest request = ServletActionContext.getRequest();
		Product p = new Product();
		System.out.println(">>>>" + product.getProduct_id());
		p = productService.findById(product.getProduct_id());
		request.setAttribute("detail", p);
		String info = request.getParameter("flag");
		if ("info".equals(info)) {
			return "product_detail";
		} else {
			return "detail_product";
		}
	}

	/**
	 * 商品详情信息
	 * 
	 * @return
	 */
	public String tochange_product() {

		HttpServletRequest request = ServletActionContext.getRequest();
		Product p = new Product();
		p = productService.findById(product.getProduct_id());
		request.setAttribute("detail", p);
		getType();
		return "change_product";
	}

	/**
	 * 商品详情信息
	 * 
	 * @return
	 */
	public String change_product() {
		productService.update(product);
		detail_product();
		return "detail_product";
	}

	/**
	 * 按类型查找商品
	 * 
	 * @return
	 */
	public String findWithType() {
		HttpServletRequest request = ServletActionContext.getRequest();
		List<Product> products = null;
		String hql = "from Product p where Product_type='" + product.getProduct_type() + "'";
		products = productService.getQuery(hql);
		request.setAttribute("productlist", products);
		String info = request.getParameter("flag");
		if ("info".equals(info)) {
			return "show_product";
		} else {
			return "all_product";
		}
	}

	/**
	 * 删除商品信息
	 * 
	 * @return
	 */
	public String delete() {

		productService.delete(product.getProduct_id());
		allProduct();
		return "all_product";
	}

	/**
	 * 购物车
	 * 
	 * @return
	 */
	@SuppressWarnings("unchecked")
	public String addToCart() {
		HttpServletRequest request = ServletActionContext.getRequest();
		HttpServletResponse response = ServletActionContext.getResponse();
		HttpSession session = request.getSession();
		String product_id = request.getParameter("product_id");
		System.out.println(">>>product_id>>>" + product_id);
		List<Product> shoppingorder = new ArrayList<Product>();

		// 判断购物车是否为空
		if (session.getAttribute("shoppingorder") == null) {
			// 如果购物车为空，新建一个session保存商品信息
			session.setAttribute("shoppingorder", shoppingorder);
		} else {
			// 购物车不为空，，从session中取出商品信息
			shoppingorder = (List<Product>) session.getAttribute("shoppingorder");
		}

		int i = 0;
		// 遍历session中保存的信息，看是否存在相应的商品
		for (Product pro : shoppingorder) {
			if (product_id.equals(pro.getProduct_id() + "")) {
				System.out.println("HHHH");
				i++;
			}
		}
		// 根据product_id查找商品
		Product product = productService.findById(Integer.parseInt(product_id));
		// i==0说明，购物车没有这件商品，查找商品信息
		if (i == 0) {
			product.setProduct_amount(1);
			// 把商品加入购物车
			shoppingorder.add(product);
			double totalMoney = 0;
			if (session.getAttribute("totalMoney") == null) {
				session.setAttribute("totalMoney", product.getProduct_price());
			} else {
				totalMoney = (Double) session.getAttribute("totalMoney");
				totalMoney = totalMoney + product.getProduct_price();
				session.removeAttribute("totalMoney");
				session.setAttribute("totalMoney", totalMoney);
			}
			session.removeAttribute("shoppingorder");
			session.setAttribute("shoppingorder", shoppingorder);
		}
		try {
			response.sendRedirect("firstPage.jsp");
		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}

	// 从购物车中移除商品
	@SuppressWarnings("unchecked")
	public String removeCart() {
		HttpServletRequest request = ServletActionContext.getRequest();
		HttpServletResponse response = ServletActionContext.getResponse();
		HttpSession session = request.getSession();
		String index_id = request.getParameter("index_id");
		List<Product> shoppingorder = new ArrayList<Product>();
		shoppingorder = (List<Product>) session.getAttribute("shoppingorder");
		int index = Integer.parseInt(index_id);
		double totalMoney = (double) session.getAttribute("totalMoney");
		double product_price = shoppingorder.get(index).getProduct_price();
		totalMoney = totalMoney - product_price;
		session.removeAttribute("totalMoney");
		session.setAttribute("totalMoney", totalMoney);
		shoppingorder.remove(index);
		try {
			response.sendRedirect("product!goToCart");
		} catch (Exception e) {
			e.printStackTrace();
		}
		return "";
	}

	/**
	 * 跳转到购物车
	 */
	public String goToCart() {

		return "goToCart";
	}

	/**
	 * 获取商品类型
	 * 
	 * @return
	 */
	public String getType() {

		HttpServletRequest request = ServletActionContext.getRequest();
		List<Type> types = null;
		String hql = "from Type t";
		types = productService.getAllType(hql);
		request.setAttribute("typelist", types);
		return "add_product";
	}

	public Product getProduct() {
		return product;
	}

	public void setProduct(Product product) {
		this.product = product;
	}

	public ProductService getProductService() {
		return productService;
	}

	public void setProductService(ProductService productService) {
		this.productService = productService;
	}

}
