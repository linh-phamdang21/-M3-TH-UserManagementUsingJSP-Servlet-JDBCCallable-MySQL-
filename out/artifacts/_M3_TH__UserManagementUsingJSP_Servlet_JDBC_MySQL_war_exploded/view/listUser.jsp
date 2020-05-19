<%--
  Created by IntelliJ IDEA.
  User: phdan
  Date: 18/05/2020
  Time: 14:44
  To change this template use File | Settings | File Templates.
--%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>User List</title>
</head>
<body>
<h3> User List </h3>
<h4></h4>
<p>
    <a href="/users?action=create"> Add new user</a>
</p>
<table border="1">
    <tr>
        <td> ID </td>
        <td> Name </td>
        <td> Email </td>
        <td> Country </td>
    </tr>
    <c:forEach  var="user" items="${listUser}">
        <tr>
            <td> ${user.getId()} </td>
            <td> ${user.getName()} </td>
            <td> ${user.getEmail()} </td>
            <td> ${user.getCountry()} </td>
            <td>
                <a href="/users?action=edit&id=${user.getId()}">Edit</a>
                <a href="/users?action=delete&id=${user.getId()}">Delete</a>
            </td>
        </tr>
    </c:forEach>
</table>
</body>
</html>
