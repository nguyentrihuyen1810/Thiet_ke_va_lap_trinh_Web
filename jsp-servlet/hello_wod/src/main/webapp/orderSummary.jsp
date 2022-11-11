<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
    String monitor = request.getParameter("monitor");
    String processor = request.getParameter("processor");
    String[] peripherals = request.getParameterValues("peripherals");
%>
<h2>Order Summary</h2>
<table border="2">
    <tr>
        <th>Processor</th>
        <td>
            <% if (processor != null) { %>
                <%= processor %>
                <% if (processor.equals("Celeron D")) { %>
            <%--        <br/><i>Have you considered a more powerful processor?</i>--%>
                <% } %>
            <%   }
            else {
            %>
            No processor selected.
            <%
                }
            %>

            <% if (processor != null) { %>
<%--                <%= processor %>--%>
                <% if (processor.equals("Pentium IV")) { %>
            <%--        <br/><i>Have you considered a more powerful processor?</i>--%>
                <% } %>
            <%   }
            else {
            %>
                No processor selected.
            <%
                }
            %>

            <% if (processor != null) { %>
<%--                <%= processor %>--%>
                <% if (processor.equals("Pentium D")) { %>
            <%--        <br/><i>Have you considered a more powerful processor?</i>--%>
                <% } %>
            <%   }
            else {
            %>
                No processor selected.
            <%
                }
            %>
        </td>
    </tr>
    <tr>
        <th>Accessories</th>
        <td>
            <% if(monitor != null) { %>
                <%= monitor%>
            <% } %>

            <% if (peripherals != null) { %>
                <% for (int i = 0; i < peripherals.length; i++) { %>
                    <%= peripherals[i] %><br>
                <% } %>
            <% } %>
        </td>
    </tr>
</table>

</body>
</html>
