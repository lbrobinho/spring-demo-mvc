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
    <style>
        .error {
            color: red;
        }
    </style>
</head>
<body>
    <i>Fill out the Form. Asterisk(*) means required.</i>

    <br><br>

    <form:form action="processForm" modelAttribute="student">
        FirstName: <form:input path="firstName" />

        <br><br>

        LastName(*): <form:input path="lastName"/>
                     <form:errors path="lastName" cssClass="error"></form:errors>
        <br><br>

        <form:select path="country">
            <form:option value="BRA" label="Brazil" />
            <form:option value="FRN" label="France" />
            <form:option value="GER" label="Germany" />
            <form:option value="IND" label="India" />
        </form:select>
        <br><br>

        <input type="submit" value="Submit">
    </form:form>
</body>
</html>
