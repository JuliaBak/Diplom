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
            <div class="main-text-2">
                <h2 style="color: black; text-shadow: 0 0 10px white">Дипломный проект</h2>
                <h2 style="color: black; text-shadow: 0 0 10px white">Представление специальностей</h2>
            </div>
        </div>
    </section>

    <section class="section-dark">
        <div id="about">
            <div class="main-text-2">
                <h2 style="color: black; text-shadow: 0 0 10px white; ">Дипломный проект</h2>
                <h3 style="color: black; text-shadow: 0 0 10px white">
                    Данный проект представляет улучшенное представление специальностей, прдедставленных Поволжским
                    Государственным Университетом Телекоммуникаций и Информацтики.
                    Способствует визуальному представлению каждой из специальностей и подробное изучение их
                    особенностей.
                    Представлен студентами группы РПИС-82, Бакай Ю.О. и Лариной В.А.</h3>
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
