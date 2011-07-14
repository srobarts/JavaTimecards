<jsp:include page="/header.jsp"></jsp:include>
	
	<div id="content">
		<form method="post" action="logout">
				<input type="submit" value="Logout" />
			</form>
		<br />
		
		<h2>Please choose your operation from the choices below:</h2>
		
		<div id="stylized" class="myform">
			<form id="form" name="form" method="post" action="timecards">
				<div id="radioblock">
					<img src="./images/system-search.png" /><input type="radio" name="action" value="enter_timecard" />Enter Timecard
					
					<% if (request.isUserInRole("manager")) { %>
						<img src="./images/document-new.png" /><input type="radio" name="action" value="check_staff"  />Check Staff
					<% } %>
					
					<% if (request.isUserInRole("admin")) { %>
						<img src="./images/document-new.png" /><input type="radio" name="action" value="admin_timecard"  />Administer Timecards
					<% } %>
					
				</div>
				<button type="submit">Submit</button>
			</form>
		</div>
		<div id="spacer">&nbsp;</div>
	</div>
	
<jsp:include page="/footer.jsp"></jsp:include>