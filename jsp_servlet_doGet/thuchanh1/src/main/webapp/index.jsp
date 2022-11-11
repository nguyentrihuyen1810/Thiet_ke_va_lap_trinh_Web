<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>JSP - Hello World</title>
</head>
<body>
<h1>Join our email list</h1>
<p>To join our email list, enter your name and email address below</p>
<p><i>${message}</i></p>
<form action="emailList.jsp" method="post">
    <input type="hidden" name="action" value = "add">
    <label class="pad top">Email:</label>
    <input type="email" name="email" value="${user.email}"><br>
    <label class = "pad top">First Name:</label>
    <input type="text" name="firstName" value="${user.firstName}"><br>
    <label class = "pad top">Last Name:</label>
    <input type="text" name="firstName" value="${user.lastName}"><br>
    <label>&nbsp;</label>
    <input type="submit" value="Join Now" class="margin_left"><br>
</form>
</body>
</html>