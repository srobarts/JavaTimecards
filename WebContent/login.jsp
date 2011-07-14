<jsp:include page="/header.jsp"></jsp:include>
					
		<div id="content">
			<div id="stylized" class="myform">	
				<h3>Please log in</h3>		
				<form action="j_security_check" method="post">
					<input type="text" name="j_username" />
					<input type="password" name="j_password" />
					<input type="submit" value="Log In" />
				</form>
				<div class="spacer"></div>
			</div>
			<br /><br />
		</div>

<jsp:include page="/footer.jsp"></jsp:include>