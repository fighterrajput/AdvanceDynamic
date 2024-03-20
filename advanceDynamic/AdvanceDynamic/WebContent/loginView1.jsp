<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

	<form action="LoginCtl1" method="post">
		<%
			String msg = (String) request.getAttribute("msg");
		%>
		<%
			if (msg != null) {
		%>
		<%=msg%>
		<%
			}
		%>
		<table>
			<tr>
				<th>LoginId</th>
				<td><input type="text" name="loginId"></td>
			</tr>
			<tr>
				<th>Password</th>
				<td><input type="text" name="password"></td>
			</tr>
			<tr>
				<td><input type="submit" value="Sign-In"></td>
			</tr>

			<tr>
				<td>
					<h5>New User?</h5> <input type="submit" value="Sign-UP">
				</td>
			</tr>

		</table>



	</form>
</body>
</html>