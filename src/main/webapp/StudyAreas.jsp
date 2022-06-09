<%@ page import="com.diplomlate.diplomlate.tasks.StudyAreasTasks" %>
<%@ page import="com.diplomlate.diplomlate.entities.StudyArea" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Study Areas</title>
    <link rel="stylesheet" href="css/style.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <link rel="stylesheet" href="css/imageShowStyle.css">

    <link rel="stylesheet" href="css/chat.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
</head>
<body>

<%@include file="upperMenu.jsp" %>

<div class="bg"></div>
<div class="bg bg2"></div>
<div class="bg bg3"></div>

<section style="margin: auto;">
    <div class="box-container-1">
        <div class="box-container-1">
            <div class="box-container-2" style="width: 100%">
                <div class="box-wrap-1">

                    <%--  <div class="box-container-1">
                          <div class="outer">
                              <div class="main-text-a">
                                  <h2>Направления подготовки</h2>
                              </div>
                          </div>
                      </div>


                      <div class="box-container-1">
                          <div class="box-wrap-1"  style="flex-direction: row; font-size: 20px; word-break: break-word; justify-content: space-around">
                              &lt;%&ndash;<div class="outer" style="justify-content: space-around; align-content: space-around; ">&ndash;%&gt;
                              <%
                                  for (StudyArea studyArea : StudyAreasTasks.study_areas) {

                                      /* out.print("<div class=\"image-container\" style=\"margin: 10px; width:300px; background-image: url(images/computers.jpg); background-repeat: no-repeat;background-size: cover;\">");
                                       */
                                      out.print("<div class=\"image-container-3\">");
                                      out.print("<div class=\"image-wrapper\" style=\"width: 100%; justify-content: space-around;\">");

                                      out.print("<div class=\"image-card-2\" style=\" width:300px;\">");
                                      out.print(" <h2 style=\"top: 25%; color: white; margin: 20px; text-align: center; position: relative; font-size: 20px\">" +
                                              "<a style=\" color:white; font-size: 37px\" href=\"study-area-info" +
                                              "?" + studyArea.getSa_id() + "\">"
                                              + studyArea.getSa_name() + "</a></h2>");

                                      out.print("</div>");

                                      out.print("</div>");
                                      out.print("</div>");


                                  }
                              %>
                              &lt;%&ndash;</div>&ndash;%&gt;
                          </div>
                      </div>--%>

                    <div class="box-container-1">
                        <div class="outer">
                            <div class="main-text-a">
                                <h2>Направления подготовки</h2>
                            </div>
                        </div>
                    </div>

                    <div class="box-container-1" style="padding: 30px; background-image: url(images/img.png);
    background-repeat: no-repeat; background-size: cover; background-position: inherit;">
                        <div class="outer">
                            <iframe width="660" height="415" src="https://www.youtube.com/embed/d_47ez-wxp0?start=19"
                                    title="YouTube video player" frameborder="0"
                                    allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture"
                                    allowfullscreen
                                    style="border: solid 2px;background: white;border-radius: 50px;"></iframe>
                        </div>
                    </div>

                    <div class="box-container-1">
                        <div class="box-wrap-1" style="flex-direction: row; width: inherit;align-items: baseline;">
                            <%-- <div class="cards">--%>
                            <%
                                for (StudyArea studyArea : StudyAreasTasks.study_areas) {
                                    out.print(" <div class=\"cardsContent card-3\" style=\" width: 300px; \">");
                                    out.print(" <div class=\"fab\" style=\" width: inherit; \"></div>");
                                    out.print("<h2 style=\"word-break: break-word; width: inherit;\">" + studyArea.getSa_name() + "</h2>");

                                    /* request.setAttribute("sa_id", studyArea.getSa_id());*/
                                    /* out.print("<p>" + studyArea.getSa_description() + "</p>"); */
                                    out.print("<a href=\"study-area-info" + "?" + studyArea.getSa_id() + "\" style=\"padding: 20px;\">Узнать больше</a>");
                                    out.print("</div>");

                                }
                            %>
                            <%--  </div>--%>
                        </div>
                    </div>

                </div>
                <%-- </div>--%>
            </div>
            <%-- </div>--%>
        </div>
    </div>
    <%--</div>--%>
</section>

<%--<section>--%>
<%--<div class="main-content-page">
    &lt;%&ndash; <div class="section-items">&ndash;%&gt;
    <div class="box-container">
        <div class="box-wrap">
            <div class="cards">
                &lt;%&ndash; <div class="skip_element">&ndash;%&gt;
                <h2 class="header">
                    Направления подготовки
                </h2>
                &lt;%&ndash;  <div class="specialities">&ndash;%&gt;
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


                <%
                    for (StudyArea studyArea : StudyAreasTasks.study_areas) {

                        /* out.print("<div class=\"image-container\" style=\"margin: 10px; width:300px; background-image: url(images/computers.jpg); background-repeat: no-repeat;background-size: cover;\">");
                         */
                        out.print("<div class=\"image-container\" style=\"margin: 10px; width:300px; background: linear-gradient(45deg, #C5DDE8, #EECFBA );\">");
                        out.print("<div class=\"image-wrapper\" style=\"width: 100%\">");

                        out.print("<div class=\"image-card\" style=\" width:300px;\">");
                        out.print(" <h2 style=\"top: 25%; color: white;margin: 20px;text-align: center;position: relative;\"><a href=\"study-area-info" +
                                "?" + studyArea.getSa_id() + "\">"
                                + studyArea.getSa_name() + "</a></h2>");

                        out.print("</div>");

                        out.print("</div>");
                        out.print("</div>");


                    }
                %>

                &lt;%&ndash; </div>  &ndash;%&gt;
            </div>
        </div>
    </div>
</div>
&lt;%&ndash; </div>&ndash;%&gt;
</div>--%>
<%--</section>--%>

<%@include file="chatBot.jsp" %>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script src="scripts/responses.js"></script>
<script src="scripts/chat.js"></script>

</body>
</html>
