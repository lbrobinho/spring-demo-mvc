<%--
  Created by IntelliJ IDEA.
  User: bo
  Date: 8/13/18
  Time: 11:08 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
    <title>Student Confirmation Form</title>
</head>
<body>
    The Student name is confirmed ${student.firstName} ${student.lastName}

    <br><br>

    Country: ${student.country}

    <br><br>
    Favorite language is: ${student.favoriteLanguage}

    <br><br>
    Favorite operation System:

        <ul>
            <c:forEach var="temp" items="${student.operatingSystems}">
            <li>${temp}</li>
            </c:forEach>
        </ul>
</body>
</html>
