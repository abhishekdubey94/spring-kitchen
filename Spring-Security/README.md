# Spring Security

- Spring security defines a framework for security.
- Implemented using Servlet filters in the background.Servlet filters are used to pre-process/post-process web requests.
- Servlet filters can route web requests based on security logic.
- Spring-security provides a default login form.

### Development Process For Enabling Spring Security

- Create Spring Security Initializer
  - There is a special class to register Spring Security Filters. (AbstractSecurityWebApplicationInitializer)
  - This class has to be extended.
- Create Spring Security Configuration(@Configuration)
  - WebSecurityConfigureAdapter has to be extended with @Configuration and @EnableWebSecurity
- Add users, passwords, roles
  - To add users, passwords and roles, override the configure method of above class.

### Development Process For Using Custome Login Form

- Override the configure(HttpSecurity http) method
- Develop a controller to show the custom login form.
- Create a custom login form.
