<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.*, Model.*"
%>
	<jsp:useBean id="dao" class="database.DataBase" scope="application"></jsp:useBean>
<%
	String name = request.getParameter("name");
	String descr = request.getParameter("descr");
	String address = request.getParameter("address");
	String picture = request.getParameter("picture");
	int prize = Integer.parseInt(request.getParameter("prize"));

	Ad a = new Ad();
	
	int tempID= Integer.parseInt(request.getParameter("ID"));
	a.setID(tempID);                                                                                                                                                                         
	a.setPICTURE(picture);
	a.setNAME(name);
	a.setDESCR(descr);
	a.setADDRESS(address);
	a.setPRIZE(prize);
	
	dao.UpdateAdByID(a);
	
	String site = new String("adListMy.jsp");
	response.setStatus(response.SC_MOVED_TEMPORARILY);
	response.setHeader("Location", site); 
%>
