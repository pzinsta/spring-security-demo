<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Login</title>
</head>
<body>
    
    <h1>Login</h1>
    <spring:url value="/process-login" var="processLoginUrl"/>
    <form:form method="POST" action="${processLoginUrl}">
        
        <c:if test="${param.error != null}">
            <p>Invalid user name / password.</p>
        </c:if>
            
        <div>
           User name: <input type="text" name="username">
        </div>
        <div>
           Password: <input type="password" name="password">
        </div>
        <div>
            <input type="submit">
        </div>
    </form:form>
</body>
</html>