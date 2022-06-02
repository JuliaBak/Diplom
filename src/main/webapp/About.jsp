<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta http-equiv="X-UA-Compatible" content="ie=edge">
  <title>О Нас - Диплом</title>
  <link rel="stylesheet" href="css/style.css">
  <script src="https://kit.fontawesome.com/a076d05399.js"></script>

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
        <li><a href="About.jsp">О нас</a></li>
        <li>
          <a class="desktop-link">Специальности</a>
          <input type="checkbox" id="show-features">
          <label for="show-features">Специальности</label>
          <ul>
            <!-- <li><a href="specialitiesTable.html">Таблица специальностей</a></li>-->
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
        <!--<li><a href="#">Обратная связь/Мессенджер</a></li>-->
        <li><a href="start">Выйти</a></li>
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
  <h2>Дипломный проект.</h2>
  <h3>Данные проект представляет улучшенное представление специальностей, прдедставленных Поволжским Государственным Университетом Телекоммуникаций и Информацтики.
    Способствует визуальному представлению каждой из специальностей и подробное изучение их особенностей.
    Представлен студентами группы РПИС-82, Бакай Ю.О. и Лариной В.А.</h3>
</div>

<%@include file="chatBot.jsp"%>

</body>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script src="scripts/responses.js"></script>
<script src="scripts/chat.js"></script>

</body>
</html>
