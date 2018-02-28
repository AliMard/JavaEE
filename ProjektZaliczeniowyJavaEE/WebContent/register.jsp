<%@ include file="header.jsp" %>
	<div class="container body-content">
		<br />
			<h2>Rejestracja</h2>
		<br />
			<form action="registerProcess.jsp" method="post">
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
		                <div class="form-group">
		                    Powtorz haslo:
		                    <div class="col-md-8">
		                        <input type="password" name="cpassword"/>
		                	</div>
		                </div>
		                <div class="form-group">
		                    Imie, Nazwisko:
		                    <div class="col-md-8">
		                        <input type="password" name="name"/>
		                	</div>
		                </div>	
		                <div class="form-group">
		                    Telefon:
		                    <div class="col-md-8">
		                        <input type="password" name="phone"/>
		                	</div>
		                </div>	
						<center><input type="submit" value="Zarejestruj"/></center>
					</div>
				</div>
			</form>  
			<%
					int errorType = Integer.parseInt(request.getParameter("eType"));
					switch (errorType)
					{
					case 1:
						out.append("<font color=\"red\">Niepoprawne hasla.</font> </br>");
						break;
					case 2:
						out.append("<font color=\"red\">Login zajety.</font> </br>");
						break;
					}
			%>
			<a href="login.jsp">Masz konto? Przejdz do logowania</a>
		</div>
	</body>
</html>
