package com.interceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

public class LoginInterceptor implements HandlerInterceptor {
	
	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response,
			Object obj) throws Exception {
		//获取请求的URL 
		String url = request.getRequestURI(); 
		HttpSession session = request.getSession();
		Object userObj = session.getAttribute("userid");
		if (userObj != null) {
			//response.sendRedirect("main.jsp");
			System.out.println("成功！！！！！！！！！！");
			return true;
		}
		System.out.println("失败！！！！！！！！！！");
		 //request.getRequestDispatcher("/WEB-INF/jsp/login.jsp").forward(request,response);
		response.sendRedirect("login");
		return false;
	}

	@Override
	public void postHandle(HttpServletRequest arg0, HttpServletResponse arg1,
			Object arg2, ModelAndView arg3) throws Exception {
		
		//((HttpServletResponse) arg0).sendRedirect("login.jsp");
		System.out.println("yj--渲染后拦截");
	}

	@Override
	public void afterCompletion(HttpServletRequest arg0, HttpServletResponse arg1, Object arg2, Exception arg3)
			throws Exception {
		// TODO Auto-generated method stub
		
	}

}
