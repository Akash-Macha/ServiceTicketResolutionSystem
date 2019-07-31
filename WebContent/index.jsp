<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>

<%
	response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate"); // HTTP 1.1.
	response.setHeader("Pragma", "no-cache"); // HTTP 1.0.
	response.setHeader("Expires", "0"); // Proxies.
%>

<meta charset="ISO-8859-1">
<style>

/*
* Basic styles
*/
body {
  margin: 0;
  font-family: Cambria, Cochin, Georgia, Times, 'Times New Roman', serif;
  font-size: 1.05em;
  line-height: 1.5;
}

a {
  color: var(--c-interactive);
}

h1 {
  margin-top: 0;
}

code {
  font-family: 'Fira Mono', Consolas, 'Liberation Mono', Menlo, Courier, monospace;
}

.wrapper {
  max-width: 600px;
}

/*-- START: styling for Button-- */
.button {
  background-color: #4CAF50; /* Green */
  border: none;
  color: white;
  padding: 10px 20px; /* padding: 15px 32px; */
  text-align: center;
  text-decoration: none;
  display: inline-block;
  font-size: 16px;
  margin: 2px 1px;
  cursor: pointer;
  -webkit-transition-duration: 0.4s; /* Safari */
  transition-duration: 0.4s;
}

.button2:hover {
  box-shadow: 0 12px 16px 0 rgba(0,0,0,0.24),0 17px 50px 0 rgba(0,0,0,0.19);
}
/*-- END: styling for Button-- */
</style>

<title>Service Ticket Resolution System</title>
</head>
<body>

<center>
<%
if(request.getParameter("warning") != null){
	String operation = request.getParameter("warning");
	
	if(operation.equals("UnAuthorizedLogin")){
		
%>

<h2>You first need to LOG IN!</h2>

<%
	}
}

%>

	<h1>Welcome to the Service Ticket Resolution System</h1>

	<h2>Login<h2>

	<form action="ValidateServlet" method="POST">
		User Name : <input type="text" name="user_name" autofocus><br>
		Password : <input type="password" name="password"><br>
		<input type="submit" class="button button2"><br>
	</form>
	
<%
if(request.getParameter("isvalid") != null){
	String isvalid = request.getParameter("isvalid");
	if(isvalid.equals("false")){
%>
<h3>Your credentials are wrong!</h3>

<%
	}
}
%>
</center>
</body>
</html>