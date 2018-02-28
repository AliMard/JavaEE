<%@ include file="header.jsp" %>
	<body>
	<div class="container body-content">
		<br />
		<%
			User u = dao.getUserById(Integer.parseInt(request.getParameter("ID")));
		%>
		<hr />
	        <table class="table">
	            <tr>
	                <th width="100dp">
	                	Imie, Nazwisko:
	                </th>
	                <td>
	                	<%
	                		out.append("<td>"+u.getNAME()+"</td>");
						%>
	                </td>
	            </tr>
	            <tr>
	                <th width="100dp">
	                	Telefon:
	                </th>
	                <td>
	                	<%
	                		out.append("<td>"+u.getPHONE()+"</td>");
						%>
	                </td>
	            </tr>
	        </table>
	        
	        Ogloszenia:
	
			<table class="table">
				<tr>
					<th>Nazwa</th>
					<th>Adres</th>
					<th>Cena</th>
				</tr>
				<%
					List<Ad> ad = dao.getAdByUserID(Integer.parseInt(request.getParameter("ID")));
					for(Ad a : ad){
					out.append("<tr>");
					out.append("<td><a href=adDetailsMy.jsp?ID="+a.getID()+">"+a.getNAME()+"</a></td>");
					out.append("<td>"+a.getADDRESS()+"</td>");
					out.append("<td>"+a.getPRIZE()+" PLN </td>");
					out.append("</tr>");
				}	
				%>
			</table>
		</div>
	</body>
</html>