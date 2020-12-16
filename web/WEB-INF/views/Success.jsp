
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="style.html"%>
<html>
<head>
    <title>Success page</title>
</head>
<body>
<h3>${Header}</h3>
<h3>Welcome ,${user.userName}</h3>
<h3>Your emailAddress is  : ${user.email}</h3>
<h3>Your password is :  ${user.password}</h3>
</body>
</html>
