<%@page import="in.co.rays.bean.UserBean"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

	<form action="UserCtl1" method="post">

		<h2>
			Welcome,
			<%
			UserBean user = (UserBean) request.getAttribute("user");
		%>
			<%=user.getFirstName()%>
		</h2>
		<hr>
		<a href="UserView1.jsp">AddUser</a>| <a href="#">UserList</a> | <a
			href="#">LogOut</a>
		<hr>

	</form>

</body>
</html>