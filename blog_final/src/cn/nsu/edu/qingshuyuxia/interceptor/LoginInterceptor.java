package cn.nsu.edu.qingshuyuxia.interceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

public class LoginInterceptor implements HandlerInterceptor{

	private final String ADMINSESSION = "adminsession";  
	
	@Override
	public void afterCompletion(HttpServletRequest arg0,
			HttpServletResponse arg1, Object arg2, Exception arg3)
			throws Exception {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void postHandle(HttpServletRequest arg0, HttpServletResponse arg1,
			Object arg2, ModelAndView arg3) throws Exception {
		// TODO Auto-generated method stub
		
	}

	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response,
			Object arg2) throws Exception {
		// TODO Auto-generated method stub
		//判断session
		Object objSession = request.getSession().getAttribute("ADMINSESSION");
		
		if(objSession != null){
			System.out.println("你已经登录了");
			return true;
		}
		response.sendRedirect("login.action"); 
		
		return false;
	}

}
