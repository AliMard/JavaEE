<%@ include file="header.jsp" %>
	<body>
	<div class="container body-content">
		<br />
		<%
			Ad a = dao.getAdById(Integer.parseInt(request.getParameter("ID")));
			User u = dao.getUserById(a.getUSER_ID());
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
						}
						else { Answer an = dao.getAnswerById(q.getID()); %>
						<div class="card-body">
							<p class="card-text"><% out.append(an.getTEXT());%></p>
						</div>
			<%		} %>
					</div>
			<% } %>
			<br />
			<% out.append("<form action=\"addQuestionProcess.jsp\" method=\"post\">");%>
				<div class="row">
		    				<div class="col-md-4">
		    				<div class="form-group">
						  <label class="col-form-label col-form-label-lg" for="inputLarge">Zadaj pytanie:</label>
						  <input class="form-control form-control-lg" name="text" type="text">
						</div>

		                	<% out.append("<input type=\"hidden\" name=\"ID\" value=\""+a.getID()+"\">");%>
						<center><input type="submit" value="Zatwierdz"/></center>
					</div>
				</div>
			</form>
		</div>
	</body>
</html>