<%@page import="com.tap.entity.Student"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style>
	body{
		display:flex;
		justify-content:space-around;
		background-color: #E7BCDE;
	}
	
	button{
		padding:10px;
		cursor:pointer;
		font-weight: 700;
		background-color: #1DA1F2;
		color:white;
	}
	button:hover, a:hover{
		color:black;
	}
	button a{
		text-decoration: none;
		color:white;
	}
	a{
		text-decoration: none;
	}
	th,td{
		padding:10px;
	}
	table{
		background-color: #EEF5FF;
	}
	h1{
	text-align: center;
	}
</style>
</head>
<body>

		<form>
		<h1>Student  Details</h1>
			<table border>	
			<tr>
				<th>Student ID</th><th>Student Name</th><th>Student Email</th><th>Semester</th><th>Marks</th><th>Actions</th>
			</tr>
	<%
		List<Student> list = (List<Student>)request.getAttribute("slist");
		for(Student e:list){
	%>
			<tr>
				
				<td><%=e.getId()%></td>	       
				<td><%= e.getName()%></td>
				<td><%= e.getEmail()%></td>
				<td><%= e.getSemester() %></td>
				<td><%= e.getMarks()%></td>
				<td> <a href="updatestudent?id=<%=e.getId()%>&name=<%= e.getName()%>&email=<%= e.getEmail()%>&semester=<%=e.getSemester()%>&marks=<%=e.getMarks()%>">Edit</a> / <a href="deletestd?id=<%=e.getId()%>">Delete</a> </td>
				
			</tr>	
	<% } %>
			</table>
			<br>
			<br>
			<button><a href="insertform">Add Student</a></button>
		</form>
</body>
</html>