<%@ include file="header.jsp" %>
		<div class="container body-content">
			<center>
			<br />
					<%
						out.append("<p><a href=questListFrom.jsp>Wyslane</a>");
						out.append(" | <a href=questListToMe.jsp>Odebrane</a></p>");
					%>
			
				<table class="table">
					<tr>
						<th>Nazwa</th>
						<th>Tresc</th>
						<th>Status</th>
					</tr>
					<%
						int userid= Integer.parseInt(session.getAttribute("idUser").toString());
						List<Question> quests = dao.getAllQuestByUserID(userid);
						for(Question q : quests){
						Ad a = dao.getAdById(q.getAD_ID());
						out.append("<tr>");
						out.append("<td><a href=adDetails.jsp?ID="+a.getID()+">"+a.getNAME()+"</a></td>");
						out.append("<td>"+q.getTEXT()+"</td>");
						if(q.getSTATUS() == 0){
							out.append("<td>Czeka na odpowiedz</td>");				
						}
						else {
							out.append("<td><a href=adDetails.jsp?ID="+a.getID()+">Zobacz odpowiedz</a></td>");
						}
						out.append("</tr>");
					}	
					%>
				</table>
			</center>
		</div>
	</body>
</html>