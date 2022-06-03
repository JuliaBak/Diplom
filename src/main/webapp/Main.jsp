<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Main</title>
    <link rel="stylesheet" href="css/style.css">
    <script src="https://kit.fontawesome.com/a076d05399.js"></script>

    <link rel="stylesheet" href="css/chat.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
</head>
<body>

<%@include file="upperMenu.jsp" %>

<div class="bg"></div>
<div class="bg bg2"></div>
<div class="bg bg3"></div>

<div class="items-container">
    <section <%--class="section-one"--%>>
        <div id="main">
            <%-- <div class="section-items">--%>
            <div class="box-container">
                <div class="box-wrap">
                    <div class="main-text-2">
                        <h2 style="color: black; text-shadow: 0 0 10px white">Дипломный проект</h2>
                        <h2 style="color: black; text-shadow: 0 0 10px white">Представление специальностей</h2>
                        <%--  <%
                              if(!request.getAttribute("usernameLogin").toString().isEmpty())
                              { out.println( "<h2 style=\"color: black; text-shadow: 0 0 10px white\">"+ request.getAttribute("usernameLogin").toString() + "</h2>" );}
                          %>--%>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <section class="section-dark">
        <div id="about">
            <%-- <div class="section-items">--%>
            <div class="box-container">
                <div class="box-wrap">
                    <div class="main-text-2">
                        <h2 style="color: black; text-shadow: 0 0 10px white; ">Дипломный проект</h2>
                        <br/>
                        <h2 style="color: black; text-shadow: 0 0 10px white">
                            Данный проект представляет улучшенное представление специальностей бакалавриата,
                            прдедставленных в
                            Поволжским Государственным Университетом Телекоммуникаций и Информатики.
                            Способствует визуальному представлению каждой из специальностей и подробное изучение их
                            особенностей
                        </h2>
                    </div>
                </div>
            </div>
        </div>
</section>

<section>
    <div id="study-info">
        <%-- <div class="section-items">--%>
        <div class="box-container">
            <div class="box-wrap">
                <div class="main-text-2" style="width: 100%">
                    <h2 style="color: black; text-shadow: 0 0 10px white; ">Все об обучении</h2>
                    <br/>
                        <form class="forms" action="show-study-areas" method="get">
                            <input type="submit" value="Направления подготовки" />
                        </form>
                    <form class="forms" action="show-specialities" method="get">
                        <input type="submit" value="Специальности" />
                    </form>
                    <form class="forms" action="show-profiles" method="get">
                        <input type="submit" value="Профили" />
                    </form>
                </div>
            </div>
        </div>
    </div>
</section>
</div>

<%@include file="chatBot.jsp" %>

<%--</body>--%>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script src="scripts/responses.js"></script>
<script src="scripts/chat.js"></script>

</body>
</html>
