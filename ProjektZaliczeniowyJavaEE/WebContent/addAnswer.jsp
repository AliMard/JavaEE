<%@ include file="header.jsp" %>
	<div class="container body-content">
				<% 
					int temp = (Integer.parseInt(request.getParameter("ID")));
					Question q = dao.getQuestById(temp);
					Ad a = dao.getAdById(q.getAD_ID());
					User u =  dao.getUserById(a.getUSER_ID());
				%>
		<br />
				<div class="row">
		                <div class="card bg-secondary" >
							  <div class="card-header">Pytanie od <% out.append(u.getNAME());%>:</div>
								<div class="card-body">
									<p class="card-text"><% out.append(q.getTEXT());%></p>
								</div>
						</div>
		         </div>
		<br />
			<% out.append("<form action=\"addAnswerProcess.jsp\" method=\"post\">");%>
		                <br />
						<div class="row">
		    				<div class="col-md-4">
		    				<div class="form-group">
						  <label class="col-form-label col-form-label-lg" for="inputLarge">Odpowiedz:</label>
						  <input class="form-control form-control-lg" name="text" type="text">
								</div>

		                	<% out.append("<input type=\"hidden\" name=\"ID\" value=\""+q.getID()+"\">");%>
						<center><input type="submit" value="Zatwierdz"/></center>
					</div>
				</div>
			</form>
		</div>
	</body>
</html>
