<%@ page import="com.diplomlate.diplomlate.dao.SpecialitiesTasks" %>
<%@ page import="com.diplomlate.diplomlate.entities.Speciality" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Try Specialities</title>
</head>
<body>

<%--<h1>Специальности</h1>--%>

<br>
<table border="3">
    <%
        out.print("<div><center><h1>Специальности:</h1></center>");
        for(Speciality spec: SpecialitiesTasks.specialities)
        {

            out.print("<table width=25% border=1>");

            out.print("<tr><td>" + spec.getSpec_name() + "</td>");

            out.print("<td>" + spec.getSpec_number() + "</td>");

            out.print("<td>" + spec.getSpec_description() + "</td></tr>");

            out.println("</table></div>");
        }
    %>
</table>
</body>
</html>





