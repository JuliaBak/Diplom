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

<%@include file="upperMenu.jsp" %>

<div class="bg"></div>
<div class="bg bg2"></div>
<div class="bg bg3"></div>

<%--<div style="overflow-y: scroll; top: 30%; bottom: 30%;"
&lt;%&ndash;class="items-container"&ndash;%&gt;>--%>
<%-- <div class="main-content-page">
     <div class="section-items">--%>
<%-- <section class="section-white" style="width: 80%; margin: auto">--%>
<%--  <div class="main-content-page">
      <div class="box-container">
          <div class="box-wrap">--%>
<%-- <div style="top:10%; bottom: 10%; ">--%>
<%--<section>
    <div>--%>
<%--<section style="height: auto">--%>
<section class="section-white" style="margin: auto;">
    <div class="box-container-1">
        <div class="box-container-1">
            <div class="box-container-2" style="width: 90%">
                <div class="box-wrap-1" style="flex-direction: column">

                    <div class="box-container-1">
                        <div class="outer">
                            <div id="prof-name">

                                <div class="main-text-a">
                                    <%
                                        out.print(" <h2>" + SpProfilesTasks.searchedSpProf.getSp_prof_name() + "</h2>");
                                        out.print("<br/>");
                                        out.print(" <h3>" + SpProfilesTasks.searchedSpProf.getSp_prof_description() + "</h3>");
                                        out.print("<br/>");
                                    %>

                                </div>
                            </div>
                        </div>
                    </div>


                    <div id="disciplines">

                        <div class="box-container-1">
                            <div class="outer">
                                <div class="main-text-a">
                                    <h2>Дисциплины</h2>
                                </div>
                            </div>
                        </div>

                        <div class="box-container-1">
                            <div class="outer">
                                <%
                                    out.print("<br/>");

                                    out.print("<ol class=\"list-options\">");
                                    for (Discipline discipline : SpProfilesTasks.disciplines) {
                                        out.print("<li>" + discipline.getDiscipline_name() + "</li>");
                                    }
                                    out.print("</ol>");
                                %>

                            </div>
                        </div>
                    </div>

                    <div id="jobs">
                        <div class="box-container-1">
                            <div class="outer">
                                <div class="main-text-a">
                                    <h2>Кем вы можете стать и чем заниматься...</h2>
                                </div>
                            </div>
                        </div>
                        <div class="box-container-1">
                            <div class="outer">
                                <%
                                    out.print("<br/>");

                                    out.print("<ol class=\"list-options\">");
                                    for (Job job : SpProfilesTasks.jobs) {
                                        out.print("<li>" + job.getJob_name() + "</li>");
                                    }
                                    out.print("</ol>");
                                %>
                            </div>
                        </div>

                    </div>
                </div>

            </div>
        </div>
    </div>
</section>
<%--</section>--%>


<%@include file="chatBot.jsp" %>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script src="scripts/responses.js"></script>
<script src="scripts/chat.js"></script>

</body>
</html>
