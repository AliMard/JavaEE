<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.*, Model.*" %>
<jsp:useBean id="dao" class="database.DataBase" scope="application"></jsp:useBean>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>
  <meta charset="utf-8">
  <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="lux.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body>
    <nav class="navbar navbar-expand-lg navbar-light bg-light">
        <a class="navbar-brand" href="index.jsp"> Piecyk Agency </a>
         <div class="collapse navbar-collapse" id="navbarColor03">
            <ul class="navbar-nav mr-auto">
                <li class="nav-item">
                	<a class="nav-link" href="adList.jsp" > Ogłoszenia </a>
                </li>
                <li class="nav-item">
                	<a class="nav-link" href="contact.jsp" > Kontakt </a>
                </li>
                <%
				if(session.getAttribute("loginUser")==null)
				{
				}
				else{
					String s = session.getAttribute("idUser").toString();
					int id = Integer.parseInt(s);
					User u = dao.getUserById(id);
					
					out.append("<li class=\"nav-item\">");
					out.append("<a class=\"nav-link\" href=\"adListMy.jsp\" > Moje ogłoszenia </a>");;
					out.append("</li>");
					out.append("<li class=\"nav-item\">");
					out.append("<a class=\"nav-link\" href=\"questListFrom.jsp\" > Skrzynka </a>");;
					out.append("</li>");
					out.append("<li class=\"nav-item\">");
					out.append("<a class=\"nav-link\" href=\"addAd.jsp\" > Dodaj ogłoszenie </a>");
					out.append("</li>");
				}
				%>
                <li class="nav-item">
                </li>
            </ul>
            <%
				if(session.getAttribute("loginUser")==null)
				{
					out.append("<ul class=\"nav navbar-nav navbar-right\">");
					out.append("<li class=\"nav-item\">");
					out.append("<a class=\"nav-link\" href=\"login.jsp\" > Logowanie </a>");
					out.append("</li>");
					out.append("<li class=\"nav-item\">");
					out.append("<a class=\"nav-link\" href=\"register.jsp?eType=0\" > Rejestracja </a>");;
					out.append("</li>");
					out.append("</ul>");
				}
				else{
					String s = session.getAttribute("idUser").toString();
					int id = Integer.parseInt(s);
					User u = dao.getUserById(id);
					
					out.append("<ul class=\"nav navbar-nav navbar-right\">");
					out.append("<li class=\"nav-item\">");
					out.append("<a class=\"nav-link\" href=\"logoutProcess.jsp\" > Wyloguj </a>");;
					out.append("</li>");
					out.append("</ul>");
				}
				%>
        </div>
    </nav>
