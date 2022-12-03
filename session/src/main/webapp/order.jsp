<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>JSP - Hello World</title>
</head>
<body>
<form name = "form" method="get" action="display.jsp">
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