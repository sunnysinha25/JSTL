<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" errorPage="error.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>LOG-IN APPLICATION</title>
</head>
<body>
<%!
	String emailVal="sunnysi@gmail.com";
	String pass="123";
%>

<%
	String email=request.getParameter("email");
	String password=request.getParameter("password");
	if(email.equals("") || password.equals(""))
		throw new Exception("EMAIL OR PASSWORD CANNOT BE NULL!");
	if(email.equals(emailVal) && password.equals(pass))
		out.println("LOGIN SUCCESSFUL!!");
	else
		out.println("INVALID EMAIL OR PASSWORD!!");
%>
</body>
</html>