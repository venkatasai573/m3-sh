<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<form:form action="save.html" modelAttribute="employee" method="post">
FirstName:<form:input path="firstName" id="fname" required="true"
			placeholder="First Name" />
			<br>
LastName:<form:input path="lastName" id="lname" required="true"
			placeholder="Last Name" />
			<br>
Designation:<form:select path="designation" required="true">
			<form:option value="">Please Select Designation</form:option>
			<form:options items="${designations}" />
		</form:select>
		<br>
Salary: <form:input path="salary" id="salary" required="true"
			placeholder="Salary" />
			<br>
		<input type="submit" value="Add Employee" />
	</form:form>
	<br>
	<h3>Current List of Employee</h3>
	<c:if test="${empList ne null}">
		<table>
			<tr>
				<th>#</th>
				<th>FirstName</th>
				<th>LastNAme</th>
				<th>Designation</th>
				<th>Salary</th>
			</tr>
			<c:forEach items="${empList}" var="employee">
				<tr>
					<th>${employee.employeeId}</th>
					<th>${employee.firstName}</th>
					<th>${employee.lastName}</th>
					<th>${employee.designation}</th>
					<th>${employee.salary}</th>
				</tr>
			</c:forEach>
		</table>
	</c:if>
</body>
</html>