<%@ page import="org.springframework.http.HttpRequest" %>
<%@ page import="java.util.List" %><%--
  Created by IntelliJ IDEA.
  User: pp-7
  Date: 11/12/20
  Time: 2:56 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE>
<html>
<head>
    <title>Sendig data from controller</title>
</head>
<body>
<h1>How sending data from view to controller</h1>
<%
    String name = (String) request.getAttribute("name");
    List<String> data = (List<String>) request.getAttribute("friends");
%>
<h3>Name is :<%=name%>
</h3>

<h3>friends are :</h3>
<%
    for (String friends : data) {
%>
<h3><%=friends%>
</h3>
<%
    }
%>
</body>
</html>
