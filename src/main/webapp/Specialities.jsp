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

    <link rel="stylesheet" href="css/imageShowStyle.css">

    <link rel="stylesheet" href="css/chat.css">
    <link rel="stylesheet" href="css/tablesMain.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
</head>
<body>

<%@include file="upperMenu.jsp" %>

<div class="bg"></div>
<div class="bg bg2"></div>
<div class="bg bg3"></div>

<%--<div>
    <br>--%>
<section class="section-white" style="margin: auto;">
    <div class="box-container-1">
        <div class="box-container-1" >
            <div class="box-container-2">
                <div class="box-wrap-1" style="justify-content: center">

                    <div class="box-container-1">
                        <div class="outer">
                            <div class="main-text-a">
                                <h2>Специальности</h2>
                            </div>
                        </div>
                    </div>

                   <%-- <div class="box-container-1" style="width: 100%">
                        <div class="outer" style="width: inherit">
                            <div class="table-container-a" style="width: inherit">
                                &lt;%&ndash; <%
                                   /*  out.print("<div class=\"main-text\"><center><h2>Специальности:</h2></center></div>");*/
                                     out.print("<div><table class=\"first-table\">");
                                     out.print("<tr> " + "<th>Название</th>" + "<th>Номер</th>" + "<th>Описание</th>" +
                                             "</tr>");
                                     for (Speciality spec : SpecialitiesTasks.specialities) {

                                         out.print("<tr><td><a href=\"spec-info" + "?" + spec.getSpec_id()  + "\">" + spec.getSpec_name() +  "</a></td>");
                                         out.print("<td><a href=\"spec-info" + "?" + spec.getSpec_id()  + "\">" + spec.getSpec_number() + "</a></td>");
                                         out.print("<td><a href=\"spec-info" + "?" + spec.getSpec_id()  + "\">" + spec.getSpec_description() + "</a></td></tr>");

                                     }
                                     out.println("</table></div>");
                                 %>
 &ndash;%&gt;
                                <%
                                    out.print("<br/>");
                                    out.print("<ol class=\"list-options\" style=\"width: inherit; text-align: center\">");
                                    for (Speciality spec : SpecialitiesTasks.specialities) {

                                        out.print("<li><a href=\"spec-info" + "?" + spec.getSpec_id() + "\">" + spec.getSpec_name() + "</a></li>");
                                    }
                                    out.print("</ol>");
                                %>
                            </div>
                        </div>
                    </div>--%>

                    <div class="box-container-1" >
                        <div class="box-wrap-1" style="flex-direction: row; font-size: 20px;word-break: break-word;">
                            <%--<div class="outer" style="justify-content: space-around; align-content: space-around; ">--%>
                            <%
                                for (Speciality spec : SpecialitiesTasks.specialities) {

                                   /* out.print("<div class=\"image-container\" style=\"margin: 10px; width:300px; background-image: url(images/computers.jpg); background-repeat: no-repeat;background-size: cover;\">");
                                  */
                                    out.print("<div class=\"image-container-3\"\">");
                                    out.print("<div class=\"image-wrapper\" style=\"width: 100%\">");

                                    out.print("<div class=\"image-card\" style=\" width:300px;\">");
                                    out.print(" <h2 style=\"top: 25%; color: white;margin: 20px;text-align: center;position: relative;\"><a style=\"color:white;\" href=\"spec-info" + "?" + spec.getSpec_id() + "\">"
                                            + spec.getSpec_name() + "</a></h2>");

                                   /* out.print("<div class=\"image-box\" style=\"overflow: hidden;  display: flex;  justify-content: center; align-items: center;\">");
                                    out.print("<img scr=(\"images/code.jpg\") style=\"width: auto; height: 100%\">");
                                    out.print("</div>");*/

                               /*     out.print("<div class=\"image-info-panel\" style=\"word-break: break-all; position: relative;display: flex;flex-direction: column;flex-wrap: wrap;\">");

                                    out.print("<h5 class=\"h5-image\">" + spec.getSpec_number() + "</h5>");
                                    out.print("<p class=\"p-image\">" + spec.getSpec_description() + "</p>");

                                    out.print(" <div class=\"image-details\">");
                                    out.print("<a class=\"a-image\" href=\"spec-info" + "?" + spec.getSpec_id() + "\">Подробности</a>");
                                    out.print("</div>");

                                    out.print("</div>");
*/
                                    out.print("</div>");

                                    out.print("</div>");
                                    out.print("</div>");


                                }
                            %>
                            <%--</div>--%>
                        </div>
                    </div>

                    <div class="box-container-1">
                        <div class="outer">
                            <div class="main-text-a">
                                <h2>Список специальностей</h2>
                            </div>
                        </div>
                    </div>

                    <div class="box-container-1" style="width: 100%">
                        <div class="outer" style="width: inherit">
                            <div class="table-container-a" style="width: inherit">
                                <%-- <%
                                   /*  out.print("<div class=\"main-text\"><center><h2>Специальности:</h2></center></div>");*/
                                     out.print("<div><table class=\"first-table\">");
                                     out.print("<tr> " + "<th>Название</th>" + "<th>Номер</th>" + "<th>Описание</th>" +
                                             "</tr>");
                                     for (Speciality spec : SpecialitiesTasks.specialities) {

                                         out.print("<tr><td><a href=\"spec-info" + "?" + spec.getSpec_id()  + "\">" + spec.getSpec_name() +  "</a></td>");
                                         out.print("<td><a href=\"spec-info" + "?" + spec.getSpec_id()  + "\">" + spec.getSpec_number() + "</a></td>");
                                         out.print("<td><a href=\"spec-info" + "?" + spec.getSpec_id()  + "\">" + spec.getSpec_description() + "</a></td></tr>");

                                     }
                                     out.println("</table></div>");
                                 %>
 --%>
                                <%
                                    out.print("<br/>");
                                    out.print("<ol class=\"list-options\" style=\"width: inherit; text-align: center\">");
                                    for (Speciality spec : SpecialitiesTasks.specialities) {

                                        out.print("<li><a style=\"color: black;\" href=\"spec-info" + "?" + spec.getSpec_id() + "\">" + spec.getSpec_name() + "</a></li>");
                                    }
                                    out.print("</ol>");
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
    <%--</div>--%>
</section>
<%--<div>
    <br>
        <div class="box-container">
            &lt;%&ndash;<div class="skip_element">&ndash;%&gt;
            <div class="table-container">
                <%
                    out.print("<div class=\"main-text\"><center><h2>Специальности:</h2></center></div>");
                    out.print("<div><table class=\"first-table\">");
                    out.print("<tr> " + "<th>Название</th>" + "<th>Номер</th>" + "<th>Описание</th>" +
                            "</tr>");
                    for (Speciality spec : SpecialitiesTasks.specialities) {

                        out.print("<tr><td><a href=\"spec-info" + "?" + spec.getSpec_id()  + "\">" + spec.getSpec_name() +  "</a></td>");
                        out.print("<td><a href=\"spec-info" + "?" + spec.getSpec_id()  + "\">" + spec.getSpec_number() + "</a></td>");
                        out.print("<td><a href=\"spec-info" + "?" + spec.getSpec_id()  + "\">" + spec.getSpec_description() + "</a></td></tr>");

                    }
                    out.println("</table></div>");
                %>
            </div>
        </div>
</div>--%>

<%@include file="chatBot.jsp" %>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script src="scripts/responses.js"></script>
<script src="scripts/chat.js"></script>

</body>
</html>
