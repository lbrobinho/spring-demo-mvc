<%--
  Created by IntelliJ IDEA.
  User: vagrant
  Date: 8/12/18
  Time: 6:40 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<html>
<head>
    <title>Student Registration Form</title>
</head>
<body>
    <form:form action="processForm" modelAttribute="student">
        FirstName: <form:input path="firstName" />

        <br><br>

        LastName: <<form:input path="lastName"/>

        <br><br>

        <input type="submit" value="Submit">
    </form:form>
</body>
</html>
