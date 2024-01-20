<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<jsp:include page="home.jsp"></jsp:include>
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

div {
	margin-top: 50px;
}

table {
	width: 300px;
	border-collapse: collapse;
	background-color: #fff;
	border: 1px solid #ccc;
}

td {
	padding: 10px;
	text-align: left;
}

input[type="text"] {
	width: 100%;
	padding: 8px;
	box-sizing: border-box;
	border: 1px solid #ccc;
	border-radius: 4px;
	font-size: 16px;
}

input[type="submit"] {
	width: 100%;
	padding: 10px;
	background-color: #007bff;
	border: none;
	border-radius: 4px;
	color: #fff;
	font-size: 16px;
	cursor: pointer;
	transition: background-color 0.3s;
	margin-top: 20px;
}

input[type="submit"]:hover {
	background-color: #0056b3;
}

div[align="center"] {
	display: flex;
	flex-direction: column;
	justify-content: center;
	align-items: center;
	height: 100vh;
}

h1 {
	margin-top: 20px;
	color: #007bff;
}
</style>
</head>
<body>
	<div align="center">
		<form action="add_student" method="post">
			<table border="1px solid">
				<tr>
					<td>Name</td>
					<td><input type="text" name="name"></td>
				</tr>
				<tr>
					<td>Email</td>
					<td><input type="text" name="email"></td>
				</tr>
				<tr>
					<td>Mobile</td>
					<td><input type="text" name="mobile"></td>
				</tr>
				<tr>
					<td>Age</td>
					<td><input type="text" name="age"></td>
				</tr>
			</table>
			<input type="submit" value="ADD">
		</form>
	</div>
	<%
	String message = (String) request.getAttribute("message");
	if (message != null) {
	%>
	<div align="center">
		<h1><%=message%></h1>
	</div>
	<%
	}
	%>
</body>
</html>