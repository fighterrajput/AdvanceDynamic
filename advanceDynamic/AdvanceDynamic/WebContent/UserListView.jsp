<%@page import="java.util.List"%>
<%@page import="java.util.Iterator"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<%
		List list = (List) request.getAttribute("list");
		Iterator it = list.iterator();
	%>
	<%@include file="header.jsp"%>
	<form action="UserListCtl" method="post">
		<table>
			<tr>
				<td><input type="text" name="firstName"></td>
				<td><input type="submit" name="operation" value="search"></td>
				<td><input type="submit" name="operation" value="add"></td>
			</tr>

		</table>

		<table border="1%">
			<tr>
				<th>Id</th>
				<th>FirstName</th>
				<th>LastName</th>
				<th>LoginID</th>
				<th>Password</th>
				<th>DOB</th>
				<th>Address</th>
			</tr>
			<%
				while (it.hasNext()) {

					UserBean bean = (UserBean) it.next();
			%>
			<tr>
				<td><%=bean.getId()%></td>
				<td><%=bean.getFirstName()%></td>
				<td><%=bean.getLastName()%></td>
				<td><%=bean.getLoginId()%></td>
				<td><%=bean.getPassword()%></td>
				<td><%=bean.getDob()%></td>
				<td><%=bean.getAddress()%></td>
			</tr>
			<%
				}
			%>

		</table>

	</form>
	<%@include file="Footer.jsp"%>
</body>
</html>