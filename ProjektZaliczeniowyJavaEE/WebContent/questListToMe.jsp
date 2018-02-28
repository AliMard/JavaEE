<%@ include file="header.jsp" %>
		<div class="container body-content">
			<center>
					<%
						out.append("<p><a href=questListFrom.jsp>Wyslane</a>");
						out.append(" | <a href=questListToMe.jsp>Odebrane</a></p>");
					%>
			
				<table class="table">
					<tr>
						<th>Nazwa</th>
						<th>Nadawca</th>
						<th>Tresc</th>
						<th>Status</th>
					</tr>
					<%
						int userid= Integer.parseInt(session.getAttribute("idUser").toString());
						List<Question> quests = dao.getAllQuestToUserID(userid);
						for(Question q : quests){
						Ad a = dao.getAdById(q.getAD_ID());
						User u =  dao.getUserById(a.getUSER_ID());
						out.append("<tr>");
						out.append("<td><a href=adDetails.jsp?ID="+a.getID()+">"+a.getNAME()+"</a></td>");
						out.append("<td><a href=userDetails.jsp?ID="+u.getID()+">"+u.getNAME()+"</a></td>");
						out.append("<td>"+q.getTEXT()+"</td>");
						if(q.getSTATUS() == 0){
							out.append("<td><a href=addAnswer.jsp?ID="+q.getID()+">Odpowiedz teraz</a></td>");				
						}
						else {
							out.append("<td><a href=adDetails.jsp?ID="+a.getID()+">Zobacz swoja odpowiedz</a></td>");
						}
						out.append("<td>"+q.getTEXT()+"</td>");
						out.append("</tr>");
					}	
					%>
				</table>
			</center>
		</div>
	</body>
</html>