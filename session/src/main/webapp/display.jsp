<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%@ page import="model.*" %>
<%
    User user = (User)session.getAttribute("user");
    String userName = user.getUsername();
    String email = user.getEmail();
    Order order = (Order)session.getAttribute("order");
    int quantity = order.getQuantity();
    double cost = order.getCost();
%>
<h2>Order Confirmation</h2>
<p>Thank you for your order of <%= quantity%> widgets, <%=userName%></p>
<p>You bill wil be $<%=cost%></p>
</body>
</html>
