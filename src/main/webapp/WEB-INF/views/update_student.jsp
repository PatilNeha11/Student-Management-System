<%@page import="com.jspiders.smswithspringmvcpractice.pojo.StudentPOJO"%>
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
	width: 60%;
	border-collapse: collapse;
	background-color: #fff;
	border: 1px solid #ccc;
	margin-bottom: 20px;
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

input[type="text"][readonly] {
	background-color: #f4f4f4; /* Read-only input background color */
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
}

input[type="submit"]:hover {
	background-color: #0056b3;
}

div[align="center"] {
	display: flex;
	justify-content: center;
	align-items: center;
	height: auto;
}

h1 {
	color: #007bff;
}
</style>
</head>
<body>
	<%
	StudentPOJO student = (StudentPOJO) request.getAttribute("student");
	if (student != null) {
	%>
	<div align="center">
		<form action="update_student" method="post">
			<table border="1px solid">
				<tr>
					<td>Id</td>
					<td><input type="text" value="<%=student.getId()%>"
						readonly="true" name="id"></td>
				</tr>
				<tr>
					<td>Name</td>
					<td><input type="text" value="<%=student.getName()%>"
						name="name"></td>
				</tr>
				<tr>
					<td>Email</td>
					<td><input type="text" value="<%=student.getEmail()%>"
						name="email"></td>
				</tr>
				<tr>
					<td>Mobile</td>
					<td><input type="text" value="<%=student.getMobile()%>"
						name="mobile"></td>
				</tr>
				<tr>
					<td>Age</td>
					<td><input type="text" value="<%=student.getAge()%>"
						name="age"></td>
				</tr>
			</table>
			<input type="submit" value="UPDATE">
		</form>
	</div>
	<%
	} else {
	%>
	<div align="center">
		<h1>Student not found.</h1>
	</div>
	<%
	}
	%>
</body>
</html>