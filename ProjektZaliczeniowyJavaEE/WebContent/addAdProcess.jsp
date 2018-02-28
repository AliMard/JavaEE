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
	a.setPICTURE(picture);
	a.setNAME(name);
	a.setADDRESS(address);
	a.setDESCR(descr);
	a.setPRIZE(prize);
	
	int userid= Integer.parseInt(session.getAttribute("idUser").toString());
	a.setUSER_ID(userid);
	
	dao.addNewAd(a);
	
	String site = new String("adListMy.jsp");
	response.setStatus(response.SC_MOVED_TEMPORARILY);
	response.setHeader("Location", site); 
%>