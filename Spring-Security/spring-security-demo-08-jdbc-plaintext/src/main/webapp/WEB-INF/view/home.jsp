<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags"%>

<!doctype html>
<html>
<head>Hello
</head>
<body>
	<!-- display username and role -->
	UserName: <security:authentication property="principal.username"/>
	<br>
	Role: <security:authentication property="principal.authorities"/>
	<br>
	 <hr>
	 <!-- Add a link to point to /leaders ... this is for the managers  -->
	 <security:authorize access="hasRole('MANAGER')">
	 <p>
	 	<a href="${pageContext.request.contextPath }/leaders">Leadership Meeting</a>
	 	(Only for managers)
	 </p>
	 <hr>
	 </security:authorize>
	 <security:authorize access="hasRole('ADMIN')">
	  <hr>
	 <!-- Add a link to point to /systems ... this is for the Admins  -->
	 <p>
	 	<a href="${pageContext.request.contextPath }/systems">IT Systems Meeting</a>
	 	(Only for ADMINS)
	 </p>
	 <hr>
	 
	 </security:authorize>
	Weclome to home page
	<p>
		<form:form action="${pageContext.request.contextPath }/logout"
			method="POST">
			<input type="submit" value="Logout" />
		</form:form>
	</p>
</body>
</html>