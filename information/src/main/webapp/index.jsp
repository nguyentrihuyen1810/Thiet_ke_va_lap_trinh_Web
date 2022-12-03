<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>JSP - Hello World</title>
</head>
<body>

<form action="orderSummary.jsp" method="get">
    <h3>Enter your Information</h3>
    <div>
        <span>Number to purchase</span><br>
        <small>(at lest 1)</small>
        <input type = "text" name = "number" required>
    </div><br>
    <div>
        <span>Your name</span>
        <input type = "text" name = "name" required>
    </div><br>
    <div>
        <span>Your phone</span>
        <input type = "text" name = "phone" required>
    </div><br>
</form>
</body>
</html>