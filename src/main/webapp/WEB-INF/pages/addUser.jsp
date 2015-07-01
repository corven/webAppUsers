<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Add User</title>
</head>
<body>
  <form:form method="post" action="addUser" commandName="user">
    <table>
      <tr>
        <td><form:label path="name">Name</form:label></td>
      </tr>
      <tr>
        <td><form:label path="login">Login</form:label></td>
      </tr>
      <tr>
        <td><form:label path="password">Password</form:label></td>
      </tr>
      <tr>
        <td><form:label path="sex">Sex</form:label></td>
      </tr>
      <tr>
        <td><form:label path="age">Age</form:label></td>
      </tr>
      <tr colspan="5"><input type="submit" value="Add User"/></tr>
    </table>
  </form:form>
</body>
</html>
