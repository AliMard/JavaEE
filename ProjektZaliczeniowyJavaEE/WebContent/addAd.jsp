<%@ include file="header.jsp" %>
	<div class="container body-content">
		<br />
			<h2>Dodaj ogloszenie</h2>
		<br />
			<form action="addAdProcess.jsp" method="post">
				<div class="row">
    				<div class="col-md-4">
    				    <div class="form-group">
		                    Nazwa:
		                    <div class="col-md-8">
		                        <input type="text" name="name"/>
		                	</div>
		                </div>
		                <div class="form-group">
		                    Adres:
		                    <div class="col-md-8">
		                        <input type="text" name="address"/>
		                	</div>
		                </div>
		                <div class="form-group">
		                    Cena:
		                    <div class="col-md-8">
		                        <input type="text" name="prize"/>
		                	</div>
		                </div>
		                <div class="form-group">
		                    Obraz:
		                    <div class="col-md-8">
		                        <input type="text" name="picture"/>
		                	</div>
		                </div>	
		                <div class="form-group">
		                    Opis:
		                    <div class="col-md-8">
		                        <textarea rows="4" cols="35" name="descr"></textarea>
		                	</div>
		                </div>	
						<center><input type="submit" value="Stworz"/></center>
					</div>
				</div>
			</form>
		</div>
	</body>
</html>
