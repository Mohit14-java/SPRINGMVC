<%--
  Created by IntelliJ IDEA.
  User: pp-7
  Date: 11/12/20
  Time: 3:56 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE>
<html xml:lang="en">
<head>
    <title>ModelAndView</title>
</head>
<body>
<h1>Hiee This is a ModelAndView jsp page</h1>
<%
    String name=(String) request.getAttribute("name");
%>
<h3> name is :<%=name%></h3>
</body>
</html>
