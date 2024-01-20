<%@page import="com.jspiders.smswithspringmvcpractice.pojo.StudentPOJO"%>
<%@page import="java.util.List"%>
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
	width: 80%;
	border-collapse: collapse;
	background-color: #fff;
	border: 1px solid #ccc;
	margin: 0 auto 20px auto; /* Center the table */
}

th, td {
	padding: 10px;
	text-align: left;
}

th {
	background-color: #007bff;
	color: #fff;
}

tr:nth-child(even) {
	background-color: #f2f2f2; /* Alternate row color */
}

div[align="center"] {
	display: flex;
	justify-content: center;
	align-items: center;
	height: 100vh;
}

h1 {
	color: #007bff;
}
</style>
</head>
<body>
	<%
	@SuppressWarnings("unchecked")
	List<StudentPOJO> students = (List<StudentPOJO>) request.getAttribute("students");
	if (students != null && students.size() > 0) {
	%>
	<div align="center">
		<table border="1px solid">
			<tr>
				<th>Id</th>
				<th>Name</th>
				<th>Email</th>
				<th>Mobile</th>
				<th>Age</th>
			</tr>
			<%
			for (StudentPOJO studentPOJO : students) {
			%>
			<tr>
				<td><%=studentPOJO.getId()%></td>
				<td><%=studentPOJO.getName()%></td>
				<td><%=studentPOJO.getEmail()%></td>
				<td><%=studentPOJO.getMobile()%></td>
				<td><%=studentPOJO.getAge()%></td>
			</tr>
			<%
			}
			%>
		</table>
	</div>
	<%
	} else {
	%>
	<div align="center">
		<h1>Students not found.</h1>
	</div>
	<%
	}
	%>
</body>
</html>