<%@ page import="com.diplomlate.diplomlate.tasks.StudyAreasTasks" %>
<%@ page import="com.diplomlate.diplomlate.entities.Speciality" %>
<%@ page import="com.diplomlate.diplomlate.tasks.SpecialitiesTasks" %>
<%@ page import="com.diplomlate.diplomlate.entities.SpProfile" %>
<%@ page import="com.diplomlate.diplomlate.tasks.SpProfilesTasks" %>
<%@ page import="com.diplomlate.diplomlate.entities.Discipline" %>
<%@ page import="com.diplomlate.diplomlate.entities.Job" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Sp Prof Info</title>
    <link rel="stylesheet" href="css/style.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <link rel="stylesheet" href="css/chat.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
</head>
<body>

<%@include file="upperMenu.jsp"%>

<div class="main-text">
    <%
        out.print(" <h2>" + SpProfilesTasks.searchedSpProf.getSp_prof_name() + "</h2>" );
        out.print("<br/>");
        out.print(" <h3>" + SpProfilesTasks.searchedSpProf.getSp_prof_description() + "</h3>" );
        out.print("<br/>");
        out.print(" <h2>" + "Дисциплины" + "</h2>" );
        out.print("<br/>");

        for(Discipline discipline: SpProfilesTasks.disciplines)
        {
            out.print("<h3>" + discipline.getDiscipline_name() + "</h3>");
            out.print("<br/>");
        }

        out.print(" <h2>" + "Кем вы можете стать и чем заниматься..." + "</h2>" );
        out.print("<br/>");

        for(Job job: SpProfilesTasks.jobs)
        {
            out.print("<h3>" + job.getJob_name() + "</h3>");
            out.print("<br/>");
        }
        %>
</div>

<%@include file="chatBot.jsp"%>

</body>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script src="scripts/responses.js"></script>
<script src="scripts/chat.js"></script>

</body>
</html>
