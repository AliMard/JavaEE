<%@ include file="header.jsp" %>
<br />
		<div class="container body-content">
			<% 
			int temp = (Integer.parseInt(request.getParameter("ID")));
			out.append("<form action=\"adUpdateProcess.jsp?ID="+temp+"\" method=\"post\">");
			Ad a = dao.getAdById(Integer.parseInt(request.getParameter("ID")));
			%>
		
			<div class="form-horizontal">
				<div class="form-group">
		            Nazwa:
		            <div class="col-md-10">
		            <%
						out.append("<input type=\"text\" name=\"name\" value="+a.getNAME()+">");
		            %>
				    </div>
				</div>
				<div class="form-group">
		            Adres:
		            <div class="col-md-10">
		            <%
						out.append("<input type=\"text\" name=\"address\" value="+a.getADDRESS()+">");
		            %>
				    </div>
				</div>
				<div class="form-group">
		            Cena:
		            <div class="col-md-10">
		            <%
						out.append("<input type=\"text\" name=\"prize\" value="+a.getPRIZE()+">");
		            %>
				    </div>
				</div>
				<div class="form-group">
		            Obraz:
		            <div class="col-md-10">
		            <%
						out.append("<input type=\"text\" name=\"picture\" value="+a.getPICTURE()+">");
		            %>
				    </div>
				</div>
					<div class="form-group">
		            Opis:
		            <div class="col-md-10">
		            <%
						out.append("<textarea rows=\"4\" cols=\"35\" name=\"descr\">"+a.getDESCR()+"</textarea>");
		            %>
				    </div>
				</div>
			</div>
		</div>
	<center><input type="submit" value="Zapisz"/></center>
</form>  
</body>
</html>