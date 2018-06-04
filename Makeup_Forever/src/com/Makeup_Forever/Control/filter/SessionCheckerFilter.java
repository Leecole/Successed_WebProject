package com.Makeup_Forever.Control.filter;

import java.io.IOException;
import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpServletRequest;

/**设置用户登录过滤器
 * Servlet Filter implementation class SessionCheckerFilter
 */
//filterName是拦截器名，拦截对象是所有的UserServlet
@WebFilter(filterName="/SessionCheckerFilter",urlPatterns="/UserServlet")
public class SessionCheckerFilter implements Filter {

    /**
     * Default constructor. 
     */
    public SessionCheckerFilter() {
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
		//判断是否非法登录后台
		System.out.println("进入登录过滤器");
		//1.先获取用户访问的url地址
		HttpServletRequest r=(HttpServletRequest)request;
		String url=r.getRequestURI().toString();//获取请求中的参数
		String parameters=r.getQueryString();//获取用户请求url地址
		if(parameters==null) { //参数为空时，直接进行登录
			chain.doFilter(request, response);
			return;
		}
		/*else if(parameters.contains("method=login")) {
		}*/
		chain.doFilter(request, response);
	}

	/**
	 * @see Filter#init(FilterConfig)
	 */
	public void init(FilterConfig fConfig) throws ServletException {
		// TODO Auto-generated method stub
	}

}
