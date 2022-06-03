<%@ page import="com.diplomlate.diplomlate.tasks.StudyAreasTasks" %>
<%@ page import="com.diplomlate.diplomlate.entities.Speciality" %>
<%@ page import="com.diplomlate.diplomlate.tasks.SpecialitiesTasks" %>
<%@ page import="com.diplomlate.diplomlate.entities.SpProfile" %>
<%@ page import="com.diplomlate.diplomlate.tasks.SpProfilesTasks" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Speciality Info</title>
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

<%--<section>--%>
<div class="main-content-page" style="width: 80%; top: 30%; bottom: 40%">
    <div class="section-items">
            <div class="main-text" style="width: 80%">
                <%
                    out.print(" <h2>" + SpecialitiesTasks.searchedSpec.getSpec_name() + "</h2>");
                    out.print("<br/>");
                    out.print(" <h3>" + SpecialitiesTasks.searchedSpec.getSpec_description() + "</h3>");
                %>
            </div>

            <div style="padding: 10%"></div>

            <div class="box-container">
                <div class="box-wrap">
                    <div class="cards">
                        <h2 class="header">
                            Профили
                        </h2>
                        <%
                            for (SpProfile spProfile : SpProfilesTasks.searchedAllSpProfiles) {
                                out.print(" <div class=\"cardsContent card-3\">");
                                out.print(" <div class=\"fab\"></div>");
                                out.print("<h2>" + spProfile.getSp_prof_name() + "</h2>");
                                out.print("<p>" + spProfile.getSp_prof_description() + "</p>");
                                out.print("<a href=\"sp_prof_info" + "?" + spProfile.getSp_prof_id() + "\">Узнать больше</a>");
                                out.print("</div>");

                            }
                        %>

                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<%--</section>--%>

<%@include file="chatBot.jsp" %>

</body>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script src="scripts/responses.js"></script>
<script src="scripts/chat.js"></script>

<%--<div class="box-container">
    <div class="box-wrap">
        <div class="cards">
            <div class="skip_element">
                <h2 class="header">
                    Специальности
                </h2>
                &lt;%&ndash;  <div class="specialities">&ndash;%&gt;
                <%
                    for(Speciality speciality: StudyAreasTasks.sa_specialities)
                    {
                        out.print(" <div class=\"cardsContent card-3\">");
                        out.print(" <div class=\"fab\"></div>");
                        out.print("<h2>" + speciality.getSpec_name() + "</h2>");
                        out.print("<p>" + speciality.getSpec_description() + "</p>");
                        out.print("<a href=\"#\">Узнать больше</a>");
                        out.print("</div>");

                    }
                %>

                &lt;%&ndash; </div>  &ndash;%&gt;
            </div>
        </div>
    </div>
</div>--%>

</body>
</html>
