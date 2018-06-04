package com.Makeup_Forever.Control.filter;

import java.io.IOException;
import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;

/**
 * Servlet Filter implementation class CharacterFilter
 */
	//@WebFilter("/CharacterFilter") //这是在web.xml中配置的filter(过滤器)
//@WebFilter//这是在此类中直接用注解 实现过滤器功能，设置字符集为utf-8
public class CharacterFilter implements Filter {

    /**
     * Default constructor. 
     */
    public CharacterFilter() {
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see Filter#destroy()
	 */
	public void destroy() {
		// TODO Auto-generated method stub
	}

	/**
	 * @see Filter#doFilter(ServletRequest, ServletResponse, FilterChain)
	 */
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {
		// TODO Auto-generated method stub
		// place your code here
		//System.out.println("进入过滤器了");
		request.setCharacterEncoding("UTF-8");//将所有的jsp界面字符设置为UTF-8
		response.setCharacterEncoding("UTF-8");//将所有的响应（后台）设置为UTF-8
		
		// pass the request along the filter chain
		//过滤器链：放行 如果过滤器中还有过滤请求，则继续 否则放行 ，执行相应的servlet,
		chain.doFilter(request, response);//chain.doFilter(request,response)必须写，要不然不会放行，即不会执行servlet
	}

	/**
	 * @see Filter#init(FilterConfig)
	 */
	public void init(FilterConfig fConfig) throws ServletException {
		// TODO Auto-generated method stub
	}

}
