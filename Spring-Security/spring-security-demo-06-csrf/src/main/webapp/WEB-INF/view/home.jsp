<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!doctype html>
<html>
<head>Hello
</head>
<body>
	Weclome to home page
	<p>
		<form:form action="${pageContext.request.contextPath }/logout"
			method="POST">
			<input type="submit" value="Logout" />
		</form:form>
	</p>
</body>
</html>