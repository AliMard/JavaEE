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
	Question q = dao.getQuestById(temp);
	
	String text = request.getParameter("text");

	Answer a = new Answer();
	a.setTEXT(text);
	a.setQUEST_ID(q.getID());

	int userid= Integer.parseInt(session.getAttribute("idUser").toString());
	a.setUSER_ID(userid);
	q.setSTATUS(1);
	dao.UpdateQuestdByID(q);
	dao.addNewAnswer(a);
	
	String site = new String("adDetails.jsp?ID="+q.getAD_ID());
	response.setStatus(response.SC_MOVED_TEMPORARILY);
	response.setHeader("Location", site); 
	
}
%>