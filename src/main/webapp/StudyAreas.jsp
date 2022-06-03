<%@ page import="com.diplomlate.diplomlate.tasks.StudyAreasTasks" %>
<%@ page import="com.diplomlate.diplomlate.entities.StudyArea" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Study Areas</title>
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
    <div class="main-content-page">
       <%-- <div class="section-items">--%>
            <div class="box-container">
                <div class="box-wrap">
                    <div class="cards">
                       <%-- <div class="skip_element">--%>
                            <h2 class="header">
                                Направления подготовки
                            </h2>
                            <%--  <div class="specialities">--%>
                            <%
                                for (StudyArea studyArea : StudyAreasTasks.study_areas) {
                                    out.print(" <div class=\"cardsContent card-3\">");
                                    out.print(" <div class=\"fab\"></div>");
                                    out.print("<h2>" + studyArea.getSa_name() + "</h2>");

                                    /* request.setAttribute("sa_id", studyArea.getSa_id());*/
                                    /* out.print("<p>" + studyArea.getSa_description() + "</p>"); */
                                    out.print("<a href=\"study-area-info" + "?" + studyArea.getSa_id() + "\">Узнать больше</a>");
                                    out.print("</div>");

                                }
                            %>

                            <%-- </div>  --%>
                        </div>
                    </div>
                </div>
            </div>
       <%-- </div>--%>
    </div>
<%--</section>--%>

<%@include file="chatBot.jsp" %>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script src="scripts/responses.js"></script>
<script src="scripts/chat.js"></script>

</body>
</html>
