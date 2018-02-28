<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.*, Model.*"
%>
	<jsp:useBean id="dao" class="database.DataBase" scope="application"></jsp:useBean>
<% 
	if(session.getAttribute("loginUser")==null)
	{
		String site = new String("error.jsp");
		response.setStatus(response.SC_MOVED_TEMPORARILY);
		response.setHeader("Location", site); 
	}
	else{

	int temp = (Integer.parseInt(request.getParameter("ID")));

	String text = request.getParameter("text");

	Question q = new Question();
	q.setTEXT(text);
	q.setAD_ID(temp);

	int userid= Integer.parseInt(session.getAttribute("idUser").toString());
	q.setUSER_ID(userid);

	dao.addNewQuest(q);
	
	String site = new String("adDetails.jsp?ID="+q.getAD_ID());
	response.setStatus(response.SC_MOVED_TEMPORARILY);
	response.setHeader("Location", site); 
	}
%>