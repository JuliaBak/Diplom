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
                    <a class="desktop-link">Тестирование</a>
                    <input type="checkbox" id="show-services">
                    <label for="show-services">Тестирование</label>
                    <ul>
                        <li><a href="#">Тест 1</a></li>
                        <li><a href="#">Тест 2</a></li>
                    </ul>
                </li>
               <%-- <li><a href="#">Обратная связь/Мессенджер</a></li>--%>
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


<div class="box-container">
    <div class="box-wrap">
        <div class="cards">
            <div class="skip_element">

    <h2 class="header">
       Направления подготовки
    </h2>
  <%--  <div class="specialities">--%>
        <%
            for(StudyArea studyArea: StudyAreasTasks.study_areas)
            {
                out.print(" <div class=\"cardsContent card-3\">");
                out.print(" <div class=\"fab\"></div>");
                out.print("<h2>" + studyArea.getSa_name() + "</h2>");

               /* request.setAttribute("sa_id", studyArea.getSa_id());*/
                /* out.print("<p>" + studyArea.getSa_description() + "</p>"); */
                out.print("<a href=\"study-area-info"+"?"+studyArea.getSa_id()+"\">Узнать больше</a>");
                out.print("</div>");

            }
        %>

           <%-- </div>  --%>
            </div>
        </div>
    </div>
</div>


<div class="chat-bar-collapsible">
    <button id="chat-button" type="button" class="collapsible">Чат
        <i id="chat-icon" style="color: white;" class="fa fa-fw fa-comments-o"></i>
    </button>

    <div class="content-chat">
        <div class="full-chat-block">
            <!-- Message Container -->
            <div class="outer-container">
                <div class="chat-container">
                    <!-- Messages -->
                    <div id="chatbox">
                        <h5 id="chat-time-display"></h5>
                        <p id="botStarterMessage" class="botText"><span>Загрузка...</span></p>
                        <p id="botSecondMessage" class="botText"><span>...</span></p>
                    </div>

                    <!-- User input box -->
                    <div class="chat-bar-input-block">
                        <div id="userInput">
                            <input id="textInput" class="input-box" type="text" name="msg"
                                   placeholder="Напишите сообщение...">
                            <p></p>
                        </div>

                        <!-- Messaging button, paper plane-->
                        <div class="chat-bar-icons">
                            <i id="chat-icon" style="color: black;" class="fa fa-fw fa-send"
                               onclick="sendButton()"></i>
                        </div>
                    </div>

                    <div id="chat-bar-bottom">
                        <p></p>
                    </div>

                </div>
            </div>

        </div>
    </div>

</div>

</body>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script src="scripts/responses.js"></script>
<script src="scripts/chat.js"></script>

</body>
</html>
