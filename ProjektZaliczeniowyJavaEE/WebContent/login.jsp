<%@ include file="header.jsp" %>
		<div class="container body-content">
		<br />
			<h2>Logowanie</h2>
		<br />
			<form action="loginProcess.jsp" method="post">
				<div class="row">
    				<div class="col-md-4">
    				    <div class="form-group">
		                    Login:
		                    <div class="col-md-8">
		                        <input type="text" name="login"/>
		                	</div>
		                </div>
		                <div class="form-group">
		                    Haslo:
		                    <div class="col-md-8">
		                        <input type="password" name="password"/>
		                	</div>
		                </div>	
						<center><input type="submit" value="Zaloguj"/></center>
					</div>
				</div>
			</form>  
			<%
					Boolean error = Boolean.parseBoolean(request.getParameter("error"));
					if(error)out.append("<font color=\"red\">Podany uzytkownik nie istnieje, sprawdz poprawnosc danych.</font> </br>");
				
			%>
			<a href="register.jsp?eType=0">Zarejestruj sie</a>
		</div>
	</body>
</html>