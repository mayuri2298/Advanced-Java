<%@page import="com.service.UserServiceImpli"%>
<%@page import="com.service.UserService"%>
<jsp:useBean id="user" class="com.dto.User" scope="session"></jsp:useBean>
<jsp:setProperty property="*" name="user"/>
<%
	UserService userService = new UserServiceImpli();
	boolean f = userService.loginUser(user);
	if(f){
		response.sendRedirect("home.jsp");
	}else{
		Cookie cookie = new Cookie("user_name" ,user.getUserName());
		cookie.setMaxAge(60*60*24);
		response.addCookie(cookie);
		response.sendRedirect("login.jsp?error_msg=wrong credentials");
	}
	
%>