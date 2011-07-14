<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<%
response.setHeader("Cache-Control", "no-store, no-cache, must-revalidate");
response.setHeader("Pragma", "no-cache");
response.setDateHeader("Expires", -1); 
%>
<link rel="stylesheet" type="text/css" href="./styles/styles.css" >
<title>NVDPL Timecards</title>

	<SCRIPT language="javascript" type="text/javascript"> 

		re = /^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/;
		regexp = /^\(?(\d{3})\)?[\.\-\/ ]?(\d{3})[\.\-\/ ]?(\d{4})$/;

		function submitIt(myForm)
		{
			errMsg = "";
			if(myForm.firstName.value == ""){
				errMsg = errMsg + "Please fill in your first name\n";
			}
			if(myForm.lastName.value == ""){
				errMsg = errMsg + "Please fill in your last name\n";
			}
			if(myForm.address.value == ""){
				errMsg = errMsg + "Please fill in your address\n";
			}
			if(myForm.city.value == ""){
				errMsg = errMsg + "Please fill in city\n";
			}
			if(myForm.country.value == ""){
				errMsg = errMsg + "Please fill in country\n";
			}
			if(myForm.code.value == ""){
				errMsg = errMsg + "Please fill in your postal code\n";
			}
			if (!re.test(myForm.email.value)) {
				errMsg = errMsg + "Your email address has been incorrectly formatted\nshould be in form name@server.com\n";
			}

			if(errMsg != ""){
				alert(errMsg);
				myForm.focus();
				return false;
			}
			return true;
		}
	 </SCRIPT>


</head>

<body>
	
	<div id="wrapper">
		<div id="header">
			<img class="header_image" src="./images/Mammooth-icon.png" />
			<span class="header_text">NVDPL Timecards</span>
		</div>	