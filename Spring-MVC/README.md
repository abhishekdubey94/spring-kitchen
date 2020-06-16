## Spring MVC development Process
1. Create Contoller class (@Controller inherits from @Component)
2. Define controller method
3. Add Request Mapping to Controller Method
4. Return view name
5. Develop view page

# To bind the data to the argument @RequestParam
	```java
		public String processFormVersionThree(@RequestParam("studentName") String theName, Model model) {

		}
	```


#### Model Attributes with form tags
1. Create Student Class
2. Create Student controller class
3. Create HTML form
4. Create form processing code
5. Create confirmation page

#### Form tags (<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>)
- <form:form> </form:form>
- <form:input/>
- <form:select> <form:option/> </form:select>
- <form:radioButton/>
- <form:checkBox/>