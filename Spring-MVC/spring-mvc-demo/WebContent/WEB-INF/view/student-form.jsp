<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
<title>Student Registration Form</title>
</head>
<body>
<form:form action="processForm" modelAttribute="student">
	First Name: <form:input path="firstName" />   <!-- path has the property of Student class -->
	<br><br>
	Last Name: <form:input path="lastName"/>
	<br><br>
	
	Country: 	<%-- <form:select path="country">
					<form:option value="Brazil" label="Brazil" />
					<form:option value="France" label="France" />
					<form:option value="Germany" label="Germany" />
					<form:option value="India" label="India" />
				</form:select> --%>
				<form:select path="country">
					<form:options items="${student.countryOptions}"/>
				</form:select> 
	<br><br>
	
	Favorite Language:
		Java <form:radiobutton path="favoriteLanguage" value="Java"/>
		C# <form:radiobutton path="favoriteLanguage" value="C#"/>
		PHP <form:radiobutton path="favoriteLanguage" value="PHP"/>
		RUBY <form:radiobutton path="favoriteLanguage" value="RUBY"/>
		
	<br><br>
	Operating System:
		Windows <form:checkbox path="operatingSystems" value="Windows"/>
		Mac OS <form:checkbox path="operatingSystems" value="Mac OS"/>
		Linux <form:checkbox path="operatingSystems" value="Linux"/>
				
	<br><br>
	
	<input type="submit" value="Submit"/>
</form:form>
</body>
</html>