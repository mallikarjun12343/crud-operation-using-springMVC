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
		flex-direction: column;
		align-items: center;
		background-color: #E7BCDE;
	}
	td{
		padding:10px;
		font-size: 18px;	
	}
	input{
		width:200px;
		height: 30px;
		padding:5px;
	}
	.btn{
		padding:10px;
		cursor:pointer;
		font-weight: 700;
		background-color: #1DA1F2;
		color:white;
		height: 40px;
		width: 150px;
		border-radius: 10px;
	}
	.btn:hover{
		color:black;
	}
	fieldset{
		background-color: #EEF5FF;
	}
</style>
</head>
<body>
	<h1>Update Employee Details</h1>
	
	<fieldset>
		<form action="updateform">
			<table>
				<tr><td>Student ID:</td><td><input type="text" name="id" value="<%= request.getParameter("id") %>"></td></tr>
				<tr><td>Student Name :</td><td><input type="text" name="name" value="<%= request.getParameter("name")%>"></td></tr>
				<tr><td>Student Email :</td><td><input type="text" name="email" value="<%= request.getParameter("email") %>"></td></tr>
				<tr><td>Sem :</td><td><input type="text" name="sem" value="<%= request.getParameter("semester") %>"></td></tr>
				<tr><td>marks:</td><td><input type="text" name="marks" value="<%= request.getParameter("marks") %>"></td></tr>
				<tr><td></td><td><input type="submit" value="Update Details" class="btn"></td></tr>
			</table>
		</form>
	</fieldset>
</body>
</html>