<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>JSP - Hello World</title>
</head>
<body>
<form name = "form" method="get" action="orderSummary.jsp">
    <h3>Enter your Information</h3>
    <div>
        <span>Number to purchase</span>
        <input type = "text" name = "number" required="required">
    </div><br>
    <div style="margin-left: 60px">
        <span>Your name</span>
        <input type = "text" name = "name" required="required">
    </div><br>
    <div style="margin-left: 55px">
        <span>Your phone</span>
        <input type = "text" name = "phone" required="required">
    </div><br>
    <div style="margin-left: 58px">
        <span>Your email</span>
        <input type = "text" name = "email">
    </div>
    <div style="margin-left: 58px">
        <span>Number</span>
        <input type = "text" name = "phone">
    </div>
    Credit Information
    <div>
        <span>Expiration date</span>
    </div>
    <div style = "float: left;">
        <h4>Processor</h4>
        <input type="radio" name="processor" value="Celeron D">Celeron D<br>
        <input type="radio" name="processor" value="Pentium IV">Pentium IV<br>
        <input type="radio" name="processor" value="Pentium D">Pentium D<br>
    </div>
    <div style="float: left; margin-left: 50px">
        <h4>Accessories</h4>
        <input type="checkbox" name="monitor">Monitor<br>
        <select name="peripherals" SIZE="3">
            <option value="Camera"/>Camera
            <option value="Printer"/>Printer
            <option value="Scanner"/>Scanner
      </select>
    </div>
    <div style="clear: both; padding-top: 20px; margin-left: 70px">
        <button type="submit">PURCHASE</button>
    </div>
</form>
</body>
</html>