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


        <br><br>

        <form:select path="country">
            <form:options items="${theCountryOptions}" />
        </form:select>
        <br><br>

        Favorite Language:

        Java<form:radiobutton path="favoriteLanguage" value="Java" />
        PHP<form:radiobutton path="favoriteLanguage" value="PHP" />
        Python<form:radiobutton path="favoriteLanguage" value="Python" />
       C<form:radiobutton path="favoriteLanguage" value="C" />

        <br><br>
        Operating Systems:

        Linux <form:checkbox path="operatingSystems" value="Linux"/>
        Mac OS <form:checkbox path="operatingSystems" value="Mac OS"/>
        Windows <form:checkbox path="operatingSystems" value="Windows"/>
        <br><br>

        <input type="submit" value="Submit">
    </form:form>
</body>
</html>
