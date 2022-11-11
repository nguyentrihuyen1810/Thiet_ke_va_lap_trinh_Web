<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
    String firstName = request.getParameter("firstName");
    String lastName = request.getParameter("lastName");
%>
<h2 style="color: green">Thanks for joining our email list</h2>
<p>Here is the information that you entered:</p>
<span>Email:</span><br>
<span>First Name: <%= firstName%></span><br>
<span>Last Name: <%= lastName%></span><br>
<p>To enter another email address, click on the Back button in your browser or the Return button shown blow</p>
</body>
</html>
