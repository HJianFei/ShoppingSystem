/**
 * 
 */
package com.shoppingsystem.service.impl;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.List;

import org.apache.struts2.ServletActionContext;
import org.hibernate.Query;

import com.shoppingsystem.dao.ProductDao;
import com.shoppingsystem.entity.Product;
import com.shoppingsystem.entity.Type;
import com.shoppingsystem.service.ProductService;
import com.shoppingsystem.utils.StringUtil;

/**
 * @author HJianFei
 * @time 2016年5月1日
 */
public class ProductServiceImpl implements ProductService {

	private ProductDao productDao;

	@Override
	public void save(Product product, String filePath, String fileFileName) {
		if (filePath == null && "".equals(filePath)) {
			product.setFileUrl(product.getFileUrl());
			product.setFileName(product.getFileName());
		} else {
			product.setFileUrl(filePath);
			product.setFileName(fileFileName);
		}
		productDao.save(product);
	}

	@Override
	public void update(Product product, File file, String fileFileName) {
		// TODO Auto-generated method stub
		Product s = findById(product.getProduct_id());
		System.out.println(">>>>fileFileName" + fileFileName);
		if (StringUtil.isNotEmpty(fileFileName)) { // 保存附件
			String myfilePath = "";
			if (!fileFileName.equals(s.getFileName())) {
				try {
					myfilePath = saveFile(file, fileFileName, product.getProduct_id());
					product.setFileUrl(myfilePath);
					product.setFileName(fileFileName);
				} catch (IOException e) {

					e.printStackTrace();
				}
			} else {
				product.setFileUrl(s.getFileUrl());
				product.setFileName(s.getFileName());
			}
		} else {
			product.setFileUrl(s.getFileUrl());
			product.setFileName(s.getFileName());
		}
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

	@Override
	public String saveFile(File file, String fileName, int product_id) throws IOException {
		// 设置文件路径
		String savePath = ServletActionContext.getServletContext().getRealPath("/picture");
		String filePath = "picture";
		String name = fileName.substring(fileName.indexOf("."), fileName.length());
		// 路径设置
		String uuidName = product_id + name;
		File f = new File(savePath);
		if (!f.exists())
			f.mkdirs();

		// 文件存放
		InputStream in = new FileInputStream(file);
		OutputStream out = new FileOutputStream(new File(savePath, uuidName));
		byte buf[] = new byte[1024];
		int length = 0;
		while ((length = in.read(buf)) > 0) {
			out.write(buf, 0, length);

		}
		in.close();
		out.close();

		// 文件存放路径
		filePath += "/" + uuidName;
		System.out.println(">>>>" + filePath);
		return filePath;
	}
}
