<%@ page import="com.diplomlate.diplomlate.dao.SpecialitiesTasks" %>
<%@ page import="com.diplomlate.diplomlate.entities.Speciality" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Specialities</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel="stylesheet" href="style.css">
    <script src="https://kit.fontawesome.com/a076d05399.js"></script>
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
                           <li><a href="ShowStudyAreasServlet">Направления подготовки</a></li>
                           <li><a href="ShowSpecialitiesServlet">Специализации</a></li>
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

<div>
<br>
    <div class="box-container">
        <%--<div class="skip_element">--%>
            <div class="table-container" >
    <%
        out.print("<div class=\"main-text\"><center><h2>Специальности:</h2></center></div>");
        out.print("<div><table>");
        for(Speciality spec: SpecialitiesTasks.specialities)
        {
            out.print("<tr><td>" + spec.getSpec_name() + "</td>");
            out.print("<td>" + spec.getSpec_number() + "</td>");
            out.print("<td>" + spec.getSpec_description() + "</td></tr>");

        }
        out.println("</table></div>");
    %>
            </div>
    </div>
</div>

</body>
</html>
