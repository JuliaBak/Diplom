<%@ page import="com.diplomlate.diplomlate.tasks.SpecialitiesTasks" %>
<%@ page import="com.diplomlate.diplomlate.entities.Speciality" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Specialities</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel="stylesheet" href="css/style.css">
    <script src="https://kit.fontawesome.com/a076d05399.js"></script>

    <link rel="stylesheet" href="css/chat.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
</head>
<body>

<%@include file="upperMenu.jsp"%>

<div>
<br>
    <div class="box-container">
        <%--<div class="skip_element">--%>
            <div class="table-container" >
    <%
        out.print("<div class=\"main-text\"><center><h2>Специальности:</h2></center></div>");
        out.print("<div><table>");
        for(Speciality spec: SpecialitiesTasks.specialities)
        {
            out.print("<tr><td>" + spec.getSpec_name() + "</td>");
            out.print("<td>" + spec.getSpec_number() + "</td>");
            out.print("<td>" + spec.getSpec_description() + "</td></tr>");

        }
        out.println("</table></div>");
    %>
            </div>
    </div>
</div>

<%@include file="chatBot.jsp"%>

</body>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script src="scripts/responses.js"></script>
<script src="scripts/chat.js"></script>

</body>
</html>
