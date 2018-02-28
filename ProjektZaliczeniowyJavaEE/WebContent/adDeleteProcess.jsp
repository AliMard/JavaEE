<%@ include file="header.jsp" %>
<%
	dao.deleteAd(Integer.parseInt(request.getParameter("ID")));

	String site = new String("adListMy.jsp");
	response.setStatus(response.SC_MOVED_TEMPORARILY);
	response.setHeader("Location", site); 
%>