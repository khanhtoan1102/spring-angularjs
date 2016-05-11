<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<spring:form action="editstudent" method="post" modelAttribute="student">
		<table>
			<tr><td><spring:hidden path="id"></spring:hidden></td></tr>
			<tr>
				<td>Name</td>
				<td><spring:input path="name"></spring:input></td>
			</tr>
			<tr>
				<td>Sex</td>
				<td><spring:input path="sex"></spring:input></td>
			</tr>
			<tr>
				<td>Date Of Birth</td>
				<td><spring:input path="dateOfBirth"></spring:input><td>
			</tr>
			<tr>
				<td>Address</td>
				<td><spring:input path="address"></spring:input></td>
			</tr>
			<tr>
				<td>School</td>
				<td>
					<spring:select path="school.id">
							<spring:options  items="${listschool}" itemLabel="name" itemValue="id"></spring:options>
					</spring:select>
				</td>
			</tr>
			<tr>
				<td></td>
				<td><input type="submit" value="Save Student"></td>
			</tr>
		</table>
	</spring:form>
</body>
</html>