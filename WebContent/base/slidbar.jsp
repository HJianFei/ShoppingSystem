<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<div class="sidebar">
	<h3>商品服务分类</h3>
	<div class="sidebar-info">
		<ul class="side-li">
			<li class="s_1"><a
				href="${pageContext.request.contextPath}/product!allProduct?flag=info"><h3>
						全部商品<span class="fa fa-angle-right fa-loc"></span>
					</h3></a></li>
			<li class="s_1"><a
				href="${pageContext.request.contextPath}/product!findWithType?product_type=手机&flag=info"><h3>
						智能手机<span class="fa fa-angle-right fa-loc"></span>
					</h3></a></li>
			<li class="s_2"><a
				href="${pageContext.request.contextPath}/product!findWithType?product_type=图书&flag=info"><h3>
						文学图书<span class="fa fa-angle-right fa-loc"></span>
					</h3></a></li>
			<li class="s_3"><a
				href="${pageContext.request.contextPath}/product!findWithType?product_type=书包&flag=info"><h3>
						日常用品<span class="fa fa-angle-right fa-loc"></span>
					</h3></a></li>
			<li class="s_4"><a
				href="${pageContext.request.contextPath}/product!findWithType?product_type=水果&flag=info"><h3>
						蔬菜瓜果<span class="fa fa-angle-right fa-loc"></span>
					</h3></a></li>
		</ul>
	</div>
</div>