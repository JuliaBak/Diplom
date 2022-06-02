<%--
  Created by IntelliJ IDEA.
  User: эльдо
  Date: 19.05.2022
  Time: 19:08
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Cards Specialities</title>
    <link rel="stylesheet" href="css/style.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
</head>
<body>

<%@include file="upperMenu.jsp"%>

<div class="cards">
    <h2 class="header">
        Карточное представление
    </h2>
    <div class="specialities">
        <div class="cardsContent card-1">
            <div class="fab"></div>
            <h2>
                Специальность 1
            </h2>
            <p>
                Описание первой специальности
            </p>
            <a href="#">Узнать больше</a>
        </div>
        <div class="cardsContent card-2">
            <div class="fab"></div>
            <h2>
                Специальность 2
            </h2>
            <p>
                Описание второй специальности
            </p>
            <a href="#">Узнать больше</a>
        </div>
        <div class="cardsContent card-3">
            <div class="fab"></div>
            <h2>
                Специальность 3
            </h2>
            <p>
                Описание третьей специальности
            </p>
            <a href="#">Узнать больше</a>
        </div>
    </div>
</div>
</body>
</html>
