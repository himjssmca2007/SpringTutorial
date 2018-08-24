<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
<meta name="description" content="">
<meta name="author" content="">

<title>Create an account "${contextPath}"</title>

<link href="${contextPath}/resources/css/bootstrap.min.css" rel="stylesheet"> 
<link href="${contextPath}/resources/css/common.css" rel="stylesheet">
</head>
<body>    
	<div class="container">	
	<h3 class="form-signin-heading">Employee Management Screen</h3>
	<form:form method="post" action="add" commandName="employee" class="form-signin">
		<table>
			<tr>				
				<td><form:input path="firstname" class="form-control" placeholder="First Name"/></td>
			</tr>
			<tr>				
				<td><form:input path="lastname" class="form-control" placeholder="Last Name"/></td>
			</tr>
			<tr>				
				<td><form:input path="email" class="form-control" placeholder="Email"/></td>
			</tr>
			<tr>				
				<td><form:input path="telephone" class="form-control" placeholder="Phone"/></td>
			</tr>
			<tr>
				<td colspan="2"><button type="submit" class="btn btn-lg btn-primary btn-block"><spring:message code="label.add" /></button></td>
			</tr>
		</table>
	</form:form>
	</div>
	<div class="container">
	<h3 class="form-signin-heading">Employees</h3>
	<c:if test="${!empty employeeList}">
		<table class="form-display">
			<tr>
				<th>Name</th>
				<th>Email</th>
				<th>Telephone</th>
				<th>Action</th>
			</tr>
			<c:forEach items="${employeeList}" var="emp">
				<tr>
					<td>${emp.lastname} ${emp.firstname}</td>
					<td>${emp.email}</td>
					<td>${emp.telephone}</td>
					<td><a href="delete/<c:out value="${emp.id}"/>">delete</a></td>
				</tr>
			</c:forEach>
		</table>
	</c:if>
	</div>
	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
	<script src="${contextPath}/resources/js/bootstrap.min.js"></script> 
</body>
</html>