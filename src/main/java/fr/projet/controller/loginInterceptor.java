package fr.projet.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

public class loginInterceptor extends HandlerInterceptorAdapter {

	private List<String> ignoreList;

	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {

		String requestedUrl = request.getRequestURI();
		boolean urlAIgnorer = false;
		
		for (String urlIgnoree : ignoreList) {
			
			if (requestedUrl.contains(urlIgnoree)) {
				urlAIgnorer = true;
				break;
			}

		}
		
		if (!urlAIgnorer) {

			Object subscriber = request.getSession().getAttribute("subscriber");
			
			if (subscriber == null) {
				
				request.getRequestDispatcher("/connect").forward(request, response);;
			}
		}
		return true;

	}

	public List<String> getIgnoreList() {
		return ignoreList;
	}

	public void setIgnoreList(List<String> ignoreList) {
		this.ignoreList = ignoreList;
	}
}
