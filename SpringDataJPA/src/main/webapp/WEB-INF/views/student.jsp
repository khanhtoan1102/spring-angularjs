<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<a href="${pageContext.request.contextPath}/addstudent">Add Student</a>
	<table style="border: 1px solid; width: 200px; height: 150px; text-align: center;">
		<tr>
			<td>ID</td>
			<td>Name</td>
			<td>Address</td>
			<td></td>
			<td></td>
		</tr>
		<c:forEach var="item" items="${liststudent}">
			<tr>
				<td>${item.id}</td>
				<td>${item.name}</td>
				<td>${item.address}</td>
				<td><a href="${pageContext.request.contextPath}/editstudent?id=${item.id}">Edit</a></td>
				<td><a href="${pageContext.request.contextPath}/deletestudent?id=${item.id}">Delete</a></td>
			</tr>
		</c:forEach>
	</table>
</body>
</html>