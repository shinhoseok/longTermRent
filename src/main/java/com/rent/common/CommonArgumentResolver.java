package com.rent.common;

import javax.servlet.http.HttpServletRequest;

import org.springframework.core.MethodParameter;
import org.springframework.web.bind.support.WebDataBinderFactory;
import org.springframework.web.context.request.NativeWebRequest;
import org.springframework.web.method.support.HandlerMethodArgumentResolver;
import org.springframework.web.method.support.ModelAndViewContainer;

import com.rent.login.service.LoginVO;


public class CommonArgumentResolver implements HandlerMethodArgumentResolver{
	
	@Override
	public boolean supportsParameter(MethodParameter parameter) {
		return LoginVO.class.isAssignableFrom(parameter.getParameterType());
	}
 
	@Override
	public Object resolveArgument(MethodParameter parameter, ModelAndViewContainer mavContainer,
			NativeWebRequest webRequest, WebDataBinderFactory binderFactory) throws Exception {
		Class<?> clazz = parameter.getParameterType();
		String paramName = parameter.getParameterName();
		if(clazz.equals(LoginVO.class) && paramName.equals("sessionVO")){			
			HttpServletRequest request = (HttpServletRequest) webRequest.getNativeRequest();  
			return request.getSession().getAttribute(GlobalConstants.LOGIN_SESSION_KEY);
		}
		return null;
	}
}