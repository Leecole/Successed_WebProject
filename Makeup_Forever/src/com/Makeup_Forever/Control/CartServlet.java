package com.Makeup_Forever.Control;

import java.io.IOException;
import java.util.HashMap;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.Makeup_Forever.DAO.ProductsDAOImp;
import com.Makeup_Forever.Model.Products;

/**
 * Servlet implementation class CartServlet
 */
@WebServlet("/CartServlet")
public class CartServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	 ProductsDAOImp daoImp;
	 HttpSession session;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public CartServlet() {
        super();
        daoImp=new ProductsDAOImp();
    }
    
	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String method=request.getParameter("method");
		switch(method) {
			case "addToCart": addToCart(request,response);break;
			case "delete": delete(request,response);break;
			case "deleteAll": deleteAll(request,response);
			case "add":add(request,response);break;//这是购物车里某个商品数量加
			case "reduce":reduce(request,response);
			case "sum":sum(request,response);//这是购物车结算功能跳转到后台
		}
	}

	/**
	 * 这是添加商品到购物车的方法
	 * @param request
	 * @param response
	 * @throws ServletException
	 * @throws IOException
	 */
	protected void addToCart(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		
		HttpSession session=request.getSession();
		String cartid=request.getParameter("proid");//获取index界面传过来的商品id
		Products productInfo=daoImp.searchByProID(Integer.parseInt(cartid));//根据获取的id，通过查询数据库，在转发到购物车模块（cart.jsp）
		
		//先判断session中有没有存储购物车集合，如果有，说明之前已经买过东西，如果没有说明没买过东西
		if(session.getAttribute("carts")==null) {
			HashMap<Products, Integer> cart=new HashMap<>();//定义一个map集合，key存储商品对象，value存储加入到购物车时，该商品的个数；
			cart.put(productInfo,1);//添加到购物车 1
			session.setAttribute("carts", cart);
		}
		else {
			
			HashMap<Products,Integer> cart=(HashMap<Products, Integer>) session.getAttribute("carts");
			
			//用 Map 的containsKey() 方法来检测是否数据是否存在, 如果key存在, 则表明已经获取过一次数据, 那么直接返回该 key 在 Map 中的值.
			//不管是否为 null 都直接返回; 如果 key 不存在, 则去生成或者获取数据, 并放入到 Map 中, 并返回该数据
			if(cart.containsKey(Integer.parseInt(cartid))) {
				//
				System.out.println("判断两个商品是否是一样的");
				
				Products pro=daoImp.searchByProID(Integer.parseInt(cartid));//查询该商品的id
				int Count=cart.get(pro)+1;//购物车某个商品数量加一，相当于再添加一次商品;//get()：获取当前Map集合所对应的value值
				System.out.println(Count);
				cart.put(pro, Count);//把相同的商品加入购物车，同时购物车中相同的商品数量实现自加；
			}
			else
				{
				cart.put(daoImp.searchByProID(Integer.parseInt(cartid)), 1);//表示这商品是第一次添加；
				}
			session.setAttribute("carts", cart);
		}
		response.sendRedirect("cart.jsp");
		
	}
	
	/**
	 * 这里是实现将商品从购物车删除的方法
	 * @param request
	 * @param response
	 * @throws ServletException
	 * @throws IOException
	 */
	protected void delete(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("进入了delete方法");
		request.setCharacterEncoding("UTF-8");
		HttpSession session=request.getSession();
		
		String proid=request.getParameter("proid");//获取index界面传过来的商品id
		int id=Integer.parseInt(proid);
		
		//从session里面取得选中的商品集合；
		HashMap<Products, Integer> deleteProduct=(HashMap<Products,Integer>)session.getAttribute("carts");
		
		//KeySet();将map集合中所有的键存入到Set集合，因为Set具备迭代器
		for(Products pro:deleteProduct.keySet()) {  //将该产品对象封装为一个set集合，也就是提取map里面的所以key,再另外存到一个集合中
			if(pro.getProID()==id) { //将要删除的商品与商品对象中的id进行比较；
				deleteProduct.remove(pro);//map集合自带的删除函数，将选中的商品删除；
				break;
			}
		}
		//当购物车删除某个商品时，在重新刷新页面
		response.sendRedirect("cart.jsp");
	}
	
	/**
	 * 这是清空购物车的方法；
	 * @param request
	 * @param response
	 * @throws ServletException
	 * @throws IOException
	 */
	protected void deleteAll(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.getSession().removeAttribute("carts");//removeAttribute()方法删除指定的属性。在这里删除购物车里面的所有商品
		response.sendRedirect("cart.jsp");
	}
	
	/**
	 * 这是在购物车里将某个商品的数量自加
	 * @param request
	 * @param response
	 * @throws ServletException
	 * @throws IOException
	 */
	protected void add(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

	}
	
	/**
	 * 这是将购物车里面的某个商品自减；
	 * @param request
	 * @param response
	 * @throws ServletException
	 * @throws IOException
	 */
	protected void reduce(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		
	}
	/**
	 * 这是购物车的结算功能
	 * @param request
	 * @param response
	 * @throws ServletException
	 * @throws IOException
	 */
	protected void sum(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	}
	
	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			doGet(request, response);
	}

}
