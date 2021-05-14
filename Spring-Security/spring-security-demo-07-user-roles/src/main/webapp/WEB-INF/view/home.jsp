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
	
	Weclome to home page
	<p>
		<form:form action="${pageContext.request.contextPath }/logout"
			method="POST">
			<input type="submit" value="Logout" />
		</form:form>
	</p>
</body>
</html>