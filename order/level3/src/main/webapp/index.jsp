<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>JSP - Hello World</title>
</head>
<body>
<form action="orderSummary.jsp" method="get">
    <div style = "float: left;">
        <h4>Processor</h4>
        <input type="radio" name="processor" value="Celeron D">Celeron D<br>
        <input type="radio" name="processor" value="Pentium IV">Pentium IV<br>
        <input type="radio" name="processor" value="Pentium D">Pentium D<br>
    </div>
    <div style="float: left; margin-left: 50px">
        <h4>Accessories</h4>
        <select name="monitor" id="monitor">
            <optgroup label="Camera">
                <option value="dell">DELL</option>
                <option value="lenovo">LENOVO</option>
                <option value="samsung">SAMSUNG</option>
                <option value="asus">ASUS</option>
                <option value="hangkhac">Hãng khác</option>
            </optgroup>
            <optgroup label="Printer">
                <option value="canon">Canon</option>
                <option value="hp">HP</option>
                <option value="epson">EPSON</option>
                <option value="brother">BROTHER</option>
                <option value="hangkhac">Hãng khác</option>
            </optgroup>
            <optgroup label="Scanner">
                <option value="plusktes">PLUSKTES</option>
                <option value="hp">HP</option>
                <option value="brother">BROTHER</option>
                <option value="hangkhac">Hãng khác</option>
            </optgroup>
        </select>
    </div><br>
    <div style="clear: both; padding-top: 20px; margin-left: 70px">
        <button type="submit">PURCHASE</button>
    </div>
</form>
</body>
</html>