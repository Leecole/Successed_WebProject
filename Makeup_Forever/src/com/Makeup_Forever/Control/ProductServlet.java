package com.Makeup_Forever.Control;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.Makeup_Forever.DAO.ProductsDAOImp;
import com.Makeup_Forever.Model.Products;

/**
 * Servlet implementation class ProductServlet
 */
@WebServlet("/ProductServlet")
public class ProductServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
    private ProductsDAOImp dao;
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ProductServlet() {
		//在这里实例化ProductsDaoImp
		dao=new ProductsDAOImp();
    
    }
	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String methodType=request.getParameter("method");//通过前端传过来的method参数来识别用户是要调用哪个方法
		switch(methodType) {
			case "index":index(request,response);break;
			
			case "detail":detail(request,response);break;
		
			case "Search":Search(request,response);break;
		}
	}
	
	/**
	 * 这是index方法，用于定位到index界面
	 * @param request
	 * @param response
	 * @throws ServletException
	 * @throws IOException
	 */
	
	protected void index(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("web经过了后台");
		
		ArrayList<Products> allProducts=dao.ListProductsByConts(20);//显示要在Product.jsp界面要显示的商品信息数，共显示20条
		ArrayList<Products> ListAllProducts=dao.ListAllProducts();	
		
		request.setAttribute("AllProducts", allProducts);//这里将所有的products集合存储起来，发送到index.jsp界面使用
		request.getRequestDispatcher("index.jsp").forward(request,response);
	}
	
	/**
	 * 这是detaile方法，用于定位到product.jsp界面，以及将此界面获取到的信息，在product.jsp该界面显示详情信息
	 * @param request
	 * @param response
	 * @throws ServletException
	 * @throws IOException
	 */
	protected void detail(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("这里实现了detail");
		//这里获取index界面中，点击超链接Buy Now 时，超链接传参的方法读取到当前所点击的具体商品id;
		Products productInfo=dao.searchByProID(Integer.parseInt(request.getParameter("proId")));//这里是将数据库按照id查询出来的结果封装为一个Products对象
		request.setAttribute("productInfo",productInfo);
		request.getRequestDispatcher("productDetail.jsp").forward(request,response);
	}
	/**
	 * 这是实现搜索框的方法
	 * @param request
	 * @param response
	 * @throws ServletException
	 * @throws IOException
	 */
	protected void Search(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String keywords=request.getParameter("keywords");
		System.out.println("您输入的关键字是："+keywords);
		
		ArrayList<Products> products=dao.SearchByKeywords(keywords);
		System.out.println("为你找到如下商品："+products);
		
		if(products!=null) {
			request.setAttribute("productsBykeywords", products);
			request.getRequestDispatcher("products.jsp").forward(request, response);
		}
		else {
			request.setAttribute("productsBykeywords", products);
			request.getRequestDispatcher("products.jsp").forward(request, response);
		}
	}
	
	
	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
