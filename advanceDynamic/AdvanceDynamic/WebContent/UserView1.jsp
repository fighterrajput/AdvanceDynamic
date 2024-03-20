<%@page import="in.co.rays.bean.UserBean"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style>
h5 {
	text-align: center;
	background-color: red;
}
</style>
</head>
<body>
	<form action="UserCtl1" method="post">
		<%
			String msg = (String) request.getAttribute("msg");
		%>
		<%=msg%>
		<%
			UserBean bean = new UserBean();
		%>
		<table border="1px">
			<h5>
			<tr>
				<th>First Name</th>
				<td><input type="text" value=""></td>
			</tr>
			<tr>
				<th>Last Name</th>
				<td><input type="text" value=""></td>
			</tr>
			<tr>
				<th>Login Id</th>
				<td><input type="text" value=""></td>
			</tr>
			<tr>
				<th>Password</th>
				<td><input type="text" value=""></td>
			</tr>
			<tr>
				<th>Dob</th>
				<td><input type="date" value=""></td>
			</tr>
			<tr>
				<th>Address</th>
				<td><input type="text" value=""></td>
			</tr>
			<tr>
				<th>Submit</th>
				<td><input type="submit"></td>
			</tr>
			</h5>
		</table>


	</form>

</body>
</html>