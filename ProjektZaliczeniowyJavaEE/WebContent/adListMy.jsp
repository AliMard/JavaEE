<%@ include file="header.jsp" %>
	<div class="container body-content">
		<center>
			<table class="table">
				<tr>
					<th>Nazwa</th>
					<th>Adres</th>
					<th>Cena</th>
				</tr>
				<%
					
					List<Ad> ad = dao.getAdByUserID(Integer.parseInt(session.getAttribute("idUser").toString()));
					for(Ad a : ad){
					User u = dao.getUserById(a.getUSER_ID());
					out.append("<tr>");
					out.append("<td><a href=adDetailsMy.jsp?ID="+a.getID()+">"+a.getNAME()+"</a></td>");
					out.append("<td>"+a.getADDRESS()+"</td>");
					out.append("<td>"+a.getPRIZE()+" PLN </td>");
					out.append("</tr>");
				}	
				%>
			</table>
		</center>
	</div>
</body>
</html>