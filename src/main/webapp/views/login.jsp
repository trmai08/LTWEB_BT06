<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Đăng nhập</title>
</head>

<body>

<h2>Đăng nhập tài khoản</h2>

<form action="${pageContext.request.contextPath}/login" method="post">

    <label>Username:</label>
    <input type="text" name="username">

    <br><br>

    <label>Password:</label>
    <input type="password" name="password">

    <br><br>

    <button type="submit">
        Đăng nhập
    </button>

</form>


<%
String error = (String) request.getAttribute("error");

if(error != null){
%>

<p style="color:red">
    <%= error %>
</p>

<%
}
%>


</body>
</html>