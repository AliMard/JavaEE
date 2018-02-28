<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" import="java.util.*, Model.*" %>
	<jsp:useBean id="dao" class="database.DataBase" scope="application"></jsp:useBean>
<%
	String login = request.getParameter("login");
	String password = request.getParameter("password");
	String password2 = request.getParameter("cpassword");
	String name = request.getParameter("name");
	int phone =  Integer.parseInt(request.getParameter("phone"));
	
	System.out.println(request.getParameter("password")+" "+request.getParameter("cpassword"));
	
	if(dao.checkUserExist(login)) {
		String site = new String("register.jsp?eType=2");
		response.setStatus(response.SC_MOVED_TEMPORARILY);
		response.setHeader("Location", site); 
		
	} else if(!password.equals(password2)) {
		System.out.append(request.getParameter("password")+" "+request.getParameter("cpassword"));
		String site = new String("register.jsp?eType=1");
		response.setStatus(response.SC_MOVED_TEMPORARILY);
		response.setHeader("Location", site); 
	} else {
		User u = new User();
		u.setLOGIN(login);
		u.setNAME(name);
		u.setPASSWORD(password);
		u.setPHONE(phone);
		
		dao.addNewUser(u);
		
		String site = new String("login.jsp");
		response.setStatus(response.SC_MOVED_TEMPORARILY);
		response.setHeader("Location", site); 
	}
%>
