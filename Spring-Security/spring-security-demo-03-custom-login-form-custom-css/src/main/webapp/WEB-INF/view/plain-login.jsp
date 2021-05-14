<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
<title>Custom Login Page</title>
<link rel="stylesheet" type="text/css" href="css/demo.css">
</head>
<body>
	<h3>My custom login page</h3>

	<form:form
		action="${pageContext.request.contextPath }/authenticateTheUser"
		method="POST">
		
		<!-- Check for login error  -->
		<c:if test="${param.error!=null }">
			<i class="failed">Sorry! you have entered invalid username/password</i>
		</c:if>
		<p>
			User Name: <input type="text" name="username">
		</p>
		<p>
			Password: <input type="password" name="password">
		</p>
		<p>
			<input type="submit" value="Login">
		</p>
	</form:form>
</body>
</html>