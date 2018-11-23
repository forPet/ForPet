package com.forpet.interceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

public class AuthInterceptor extends HandlerInterceptorAdapter {
	
	private static final Logger logger = LoggerFactory.getLogger(AuthInterceptor.class);
	/**
	 * 로그인 전 페이지를 기억한 후 로그인후 이동
	 */
	private void saveDest(HttpServletRequest req) {
		String uri = req.getRequestURI();
		String query = req.getQueryString();
		System.out.println("Asdad");
		if (query == null || query.equals("null")) {
			query = "";
			System.out.println("123eaws");
		} else {
			query = "?" + query;
			System.out.println("else");
		}
		if (req.getMethod().equals("GET")) {
			logger.info("dest: "+(uri + query));
			req.getSession().setAttribute("dest", uri + query);
		}
	}
	/**
	 * 특정 경로 접근시 로그인 상태인지 체크
	 */
	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler) throws Exception {
		HttpSession session = request.getSession();
		
		if(session.getAttribute("login") == null) {
			logger.info("current user is not logined");
			response.sendRedirect("/userPage/login");
			return false;
		}
		return true;
	}
}
