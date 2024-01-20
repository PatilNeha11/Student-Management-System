<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style type="text/css">
body {
	font-family: Arial, sans-serif;
	background-color: #f4f4f4;
	margin: 0;
	padding: 0;
}

nav {
	background-color: #333;
	padding: 10px 0;
	text-align: center;
}

nav a {
	color: #fff;
	padding: 14px 20px;
	text-decoration: none;
	display: inline-block;
	transition: background-color 0.3s;
}

nav a:hover {
	background-color: #555;
}

div[align="center"] {
	display: flex;
	justify-content: center;
	align-items: center;
	height: 80vh; /* Adjust as needed */
}

h1 {
	color: #007bff;
	font-size: 2em;
}
</style>
</head>
<body>
	<%
	String email = (String) request.getAttribute("admin");
	%>
	<nav>
		<a href="home">HOME</a> <a href="add_student">ADD</a> <a
			href="edit_student">EDIT</a> <a href="delete_student">DELETE</a> <a
			href="search">SEARCH</a> <a href="get_students">ALL STUDENTS</a> <a
			href="delete_admin?email=<%=email%>">DELETE ADMIN</a> <a
			href="log_out">LOG OUT</a>
	</nav>
	<div align="center">
		<h1>WELCOME TO STUDENT MANAGEMENT SYSTEM</h1>
	</div>
</body>
</html>