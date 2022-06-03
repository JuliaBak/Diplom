<%@ page import="com.diplomlate.diplomlate.tasks.SpecialitiesTasks" %>
<%@ page import="com.diplomlate.diplomlate.entities.Speciality" %>
<%@ page import="com.diplomlate.diplomlate.tasks.SpProfilesTasks" %>
<%@ page import="com.diplomlate.diplomlate.entities.SpProfile" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Profiles</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel="stylesheet" href="css/style.css">
    <script src="https://kit.fontawesome.com/a076d05399.js"></script>

    <link rel="stylesheet" href="css/chat.css">
    <link rel="stylesheet" href="css/tablesMain.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
</head>
<body>

<%@include file="upperMenu.jsp" %>

<div class="bg"></div>
<div class="bg bg2"></div>
<div class="bg bg3"></div>

<div>
    <br>
    <div class="box-container-1">
        <div class="box-container-1">
            <div class="box-container-2">
                <div class="box-wrap-1">
                    <%-- <div class="box-container">
                         <div class="box-wrap">--%>
                    <%--<div class="skip_element">--%>
                    <%-- <div class="table-container">--%>
                    <div class="box-container-1">
                        <div class="outer">
                            <div class="main-text-a">
                                <h2>Профили:</h2>
                            </div>
                        </div>
                    </div>
                    <br/>
                    <br/>
                    <%--  <div style="padding-top: 100px;">--%>
                    <div class="box-container-1">
                        <div class="outer">
                            <div class="table-container-a">
                            <%
                                out.print("<div><table class=\"first-table\">");
                                out.print("<tr> " + "<th>Название</th>" + "<th>Описание</th>" +
                                        "</tr>");

                                for (SpProfile profile : SpProfilesTasks.spProfiles) {

                                    out.print("<tr><td><a href=\"sp_prof_info" + "?" + profile.getSp_prof_id() + "\">" + profile.getSp_prof_name() + "</a></td>");
                                    out.print("<td background: white><a href=\"sp_prof_info" + "?" + profile.getSp_prof_id() + "\">" + profile.getSp_prof_description() + "</a></td></tr>");

                                }
                                out.println("</table></div>");
                            %>
                        </div>
                        </div>
                    </div>
                    <%-- </div>--%>
                </div>
                <%-- </div>--%>
            </div>
        </div>
    </div>
</div>

<%@include file="chatBot.jsp" %>


<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script src="scripts/responses.js"></script>
<script src="scripts/chat.js"></script>

</body>
</html>
