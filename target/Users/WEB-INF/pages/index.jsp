<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<html>
<head>
  <title>User Manager</title>
</head>
<body>
<div>
  <h1>BookManager</h1>
  <c:if test = "${!empty users}">
    <table>
      <tr>
        <th>Name</th>
        <th>Login</th>
        <th>Password</th>
        <th>Sex</th>
        <th>Age</th>
        <th></th>
      </tr>
      <c:forEach items = "${users}" var = "user">
        <tr>
          <td>${user.name}</td>
          <td>${user.login}</td>
          <td>${user.password}</td>
          <td>${user.sex}</td>
          <td>${user.age}</td>
          <td><a href="deleteUser/$(user.id)">Delete</a></td>
        </tr>
      </c:forEach>
    </table>
  </c:if>
</div>
<a href="addUser">Add User</a>
</body>
</html>
