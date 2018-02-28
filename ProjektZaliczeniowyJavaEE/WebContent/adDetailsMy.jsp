<%@ include file="header.jsp" %>
	<body>
	<div class="container body-content">
		<br />
		<%
			Ad a = dao.getAdById(Integer.parseInt(request.getParameter("ID")));
			User u = dao.getUserById(a.getUSER_ID());
					out.append("<p><a href=adDeleteProcess.jsp?ID="+a.getID()+">"+"Usun"+"</a>");
					out.append(" | <a href=adUpdate.jsp?ID="+a.getID()+">"+"Edytuj"+"</a></p>");
		%>
		<hr />
	        <table class="table">
	            <tr>
	                <th width="100dp">
	                	Wlasciciel:
	                </th>
	                <td>
	                	<%
							out.append("<td><a href=userDetails.jsp?ID="+u.getID()+">"+u.getNAME()+"</a></td>");
						%>
	                </td>
	            </tr>
	        </table>
	
	        <p>
		        <%
					out.append("<image src="+a.getPICTURE()+" height=\"300\" width=\"500\">");
				%>
	        </p>
	
	        <table class="table">
				<tr>
					<th>Nazwa</th>
					<th>Adres</th>
					<th>Opis</th>
					<th>Cena</th>
				</tr>
				<tr>
				<%
					out.append("<td>"+a.getNAME()+"</td>");
					out.append("<td>"+a.getADDRESS()+"</td>");
					out.append("<td>"+a.getDESCR()+"</td>");
					out.append("<td>"+a.getPRIZE()+" PLN</td>");
				%>
				</tr>
			</table>
			Pytania od uzytkownikow:
			<%
				List<Question> quests = dao.getAllQuestByAdID(a.getID());
				for(Question q : quests){
					User us = dao.getUserById(q.getUSER_ID());
					%>
					<div class="card bg-secondary mb-3" style="max-width: 80rem;">
					  <div class="card-header"><% out.append(us.getNAME());%>: <% out.append(q.getTEXT());%></div>
						<%if(q.getSTATUS() == 0){
							out.append("<td><a href=addAnswer.jsp?ID="+q.getID()+">Odpowiedz</a></td>");
						}
						else { Answer an = dao.getAnswerById(q.getID()); %>
						<div class="card-body">
							<p class="card-text"><% out.append(an.getTEXT());%></p>
						</div>
			<%		} %>
					</div>
			<% } %>
			<br />
		</div>
	</body>
</html>