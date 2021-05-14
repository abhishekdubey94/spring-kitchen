# Spring Security

- Spring security defines a framework for security.
- Implemented using Servlet filters in the background.Servlet filters are used to pre-process/post-process web requests.
- Servlet filters can route web requests based on security logic.
- Spring-security provides a default login form.

On a high level, Spring MVC workflow move around following points.

- Dispatcher Servlet intercepts all incoming requests.
- Converts payload of the request to Spring MVC data structure.
- Send a request to the specific controller for processing.
- Invoke business rule/ processing from the controller.
- Send a response to the view for rendering (using view resolver.)
- For RESTful controllers, send the response directly to customer skipping view resolver.

So, spring searches for a match. What exactly is spring try to map to? Spring is trying to map to "/". Why would spring try to do that? Because, "/" is the root mapping of the application, mentioned in dispatcher servelet url.
Of course, "/showMyLoginPage" also contains "/" but, why only "/" ? because, "/" has been set as the root mapping of the application.
Why are we using "/" as the root? There is no specific reason. It is just that people tend to use from the beginning as it is specified to be a best practice. We can configure our application's root mapping to "something".
If you change the mapping to "/something", your code will break unless you configure the root mapping of your application to "/something".

We're overriding the method configure(), and configuring that any HTTP request that comes in should be authenticated with a form login before the root application is made accessible (the root mapping).

## Development Process For Enabling Spring Security

- Create Spring Security Initializer
  - There is a special class to register Spring Security Filters. (AbstractSecurityWebApplicationInitializer)
  - This class has to be extended.
- Create Spring Security Configuration(@Configuration)
  - WebSecurityConfigureAdapter has to be extended with @Configuration and @EnableWebSecurity
- Add users, passwords, roles
  - To add users, passwords and roles, override the configure method of above class.

## Development Process For Using Custom Login Form

- Override the configure(HttpSecurity http) method
- Develop a controller to show the custom login form.
- Create a custom login form.

## Custom Logout Page with post logout logic

By default, the logout will go to login page with logout param.e.g /login?logout
https://www.baeldung.com/spring-security-logout
https://www.javadevjournal.com/spring-security/spring-security-logout/

## Spring security and CSRF

- Spring security protects against Cross-Site Request Forgery
- Each request includes a session cookie and randomly generated token.
- For request processing, Spring Security verifies token before processing.
- < form:form > automtically adds csrf token.
- for < form > we have to add manually

  ```
    <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}">
  ```

## Dislaying user ID and roles

- Spring security provides JSP custom tags for accessing user id and roles.
- Add the springsecurity JSP tag library and use it in jsp page.
