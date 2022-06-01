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
                    <a class="desktop-link">Специальности</a>
                    <input type="checkbox" id="show-features">
                    <label for="show-features">Специальности</label>
                    <ul>
                        <%-- <li><a href="specialitiesTable.html">Таблица специальностей</a></li>--%>
                        <li><a href="ShowStudyAreasServlet">Направления подготовки</a></li>
                        <li><a href="ShowSpecialitiesServlet">Специальности</a></li>
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

<div class="main-text">
    <%
        out.print(" <h2>" + SpProfilesTasks.searchedSpProf.getSp_prof_name() + "</h2>" );
        out.print("<br/>");
        out.print(" <h3>" + SpProfilesTasks.searchedSpProf.getSp_prof_description() + "</h3>" );
        out.print("<br/>");
        out.print(" <h2>" + "Дисциплины" + "</h2>" );
        out.print("<br/>");

        for(Discipline discipline: SpProfilesTasks.disciplines)
        {
            out.print("<h3>" + discipline.getDiscipline_name() + "</h3>");
            out.print("<br/>");
        }

        out.print(" <h2>" + "Кем вы можете стать и чем заниматься..." + "</h2>" );
        out.print("<br/>");

        for(Job job: SpProfilesTasks.jobs)
        {
            out.print("<h3>" + job.getJob_name() + "</h3>");
            out.print("<br/>");
        }
        %>
</div>

</body>
</html>
