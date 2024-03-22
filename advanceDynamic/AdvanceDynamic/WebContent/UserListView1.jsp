<%@page import="in.co.rays.bean.UserBean"%>
<%@page import="java.util.List"%>
<%@page import="java.util.Iterator"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style>
table {
	width: 200px;
	background-position: center;
	background-color: yellow;
	text-align: center;
	padding-top: 20px;
	padding-left: 80px;
	padding-right: 100px;
}

h3 {
	background-color: lightblue;
	text-align: center;
}
</style>
</head>


<body>
	<h2>
		Rays Technologies <a
			href="https://www.google.com/url?sa=i&url=https%3A%2F%2Fin.linkedin.com%2Fcompany%2Frays-tec&psig=AOvVaw3nE5_Yr5MbnF-iclFb-gWd&ust=1711016321855000&source=images&cd=vfe&opi=89978449&ved=0CBIQjRxqFwoTCJD6kNLOgoUDFQAAAAAdAAAAABAW"></a>
	</h2>
	<h3>Hello Admin User, You can Manage the users from here.</h3>

	<%
		int pageNo = (int) request.getAttribute("pageNo");
		int index = ((pageNo - 1) * 5) + 1;
		List nextList = (List) request.getAttribute("nextList");
		List list = (List) request.getAttribute("list");
		Iterator it = list.iterator();
	%>
	<form action="UserListCtl1">
		<table border="1px" style="width: 100%">
			<tr>
				<th>Select</th>
				<th>S. No.</th>
				<th>First Name</th>
				<th>Last Name</th>
				<th>Login Id</th>
				<th>Password</th>
				<th>Dob</th>
				<th>Address</th>
				<th>Edit</th>
			</tr>
			<%
				while (it.hasNext()) {
					UserBean bean = (UserBean) it.next();
			%>
			<tr>
				<td align="center"><input type="checkbox" name="ids"
					value="<%=bean.getId()%>"></td>
				<td align="center"><%=index++%></td>
				<td align="center"><%=bean.getFirstName()%></td>
				<td align="center"><%=bean.getLastName()%></td>
				<td align="center"><%=bean.getLoginId()%></td>
				<td align="center"><%=bean.getPassword()%></td>
				<td align="center"><%=bean.getDob()%></td>
				<td align="center"><%=bean.getAddress()%></td>
				<td align="center"><a href="UserCtl1?id=<%=bean.getId()%>">edit</a></td>
			</tr>
			<%
				}
			%>

		</table>
		<table style="width: 100%">
			<tr>
				<td style="width: 25%"><input type="submit" value="previous"></td>
				<td style="width: 25%"><input type="submit" value="add"></td>
				<td style="width: 25%"><input type="submit" value="delete"></td>
				<td><input type="submit" value="next"></td>

			</tr>

		</table>

	</form>
	<h3>Thank You for choosing our services , For any assistance email
		us at help@raystec.com .</h3>
</body>
</html>