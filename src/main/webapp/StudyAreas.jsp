<%@ page import="com.diplomlate.diplomlate.dao.StudyAreasTasks" %>
<%@ page import="com.diplomlate.diplomlate.entities.StudyArea" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Study Areas</title>
    <link rel="stylesheet" href="style.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
</head>
<body>

<div class="wrapper">
    <nav>
        <input type="checkbox" id="show-search">
        <input type="checkbox" id="show-menu">
        <label for="show-menu" class="menu-icon"><i class="fas fa-bars"></i></label>
        <div class="content">
            <div class="logo"><a href="Main.jsp">Диплом</a></div>
            <ul class="links">
                <li><a href="Main.jsp">Главная</a></li>
                <li><a href="About.html">О нас</a></li>
                <li>
                    <a href="#" class="desktop-link">Специальности</a>
                    <input type="checkbox" id="show-features">
                    <label for="show-features">Специальности</label>
                    <ul>
                        <%-- <li><a href="specialitiesTable.html">Таблица специальностей</a></li>--%>
                        <li><a href="ShowSpecialitiesServlet">Направления</a></li>
                        <li><a href="CardsSpecialities.jsp">Карточное представление</a></li>
                    </ul>
                </li>
                <li>
                    <a href="#" class="desktop-link">Тестирование</a>
                    <input type="checkbox" id="show-services">
                    <label for="show-services">Тестирование</label>
                    <ul>
                        <li><a href="#">Тест 1</a></li>
                        <li><a href="#">Тест 2</a></li>
                    </ul>
                </li>
                <li><a href="#">Обратная связь/Мессенджер</a></li>
                <li><a href="${pageContext.request.contextPath}/start">Выйти</a></li>
            </ul>
        </div>
        <label for="show-search" class="search-icon"><i class="fas fa-search"></i></label>
        <form action="#" class="search-box">
            <input type="text" placeholder="Начните ввод..." required>
            <button type="submit" class="go-icon"><i class="fas fa-long-arrow-alt-right"></i></button>
        </form>
    </nav>
</div>

<div class="cards">
    <h2 class="header">
       Направления подготовки
    </h2>
    <div class="specialities">
        <%
            for(StudyArea studyArea: StudyAreasTasks.study_areas)
            {
                out.print(" <div class=\"cardsContent card-3\">");
                out.print(" <div class=\"fab\"></div>");
                out.print("<h2>" + studyArea.getSa_name() + "</h2>");
                out.print("<p>" + studyArea.getSa_description() + "</p>");
                out.print("<a href=\"#\">Узнать больше</a>");
                out.print("</div>");

            }
        %>
    </div>
</div>
</body>
</html>
