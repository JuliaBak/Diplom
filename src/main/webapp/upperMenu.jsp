<%@ page import="static com.diplomlate.diplomlate.entities.User.loggedUser" %>
<%@ page import="java.util.Objects" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%--Для встройки данного сегмента необходимо, что в "голове" был указан style.css--%>
<div class="wrapper">
  <nav>
    <input type="checkbox" id="show-search">
    <input type="checkbox" id="show-menu">
    <label for="show-menu" class="menu-icon"><i class="fas fa-bars"></i></label>
    <div class="content">
      <div class="logo"><a href="Main.jsp#main">Диплом</a></div>
      <ul class="links">
        <li><a href="Main.jsp#main">Главная</a></li>
        <li><a href="Main.jsp#about">О нас</a></li>
        <li>
          <a href="Main.jsp#study-info" class="desktop-link">Учеба</a>
          <input type="checkbox" id="show-features">
          <label for="show-features">Специальности</label>
          <ul>
            <li><a href="show-study-areas">Направления подготовки</a></li>
            <li><a href="show-specialities">Специальности</a></li>
              <li><a href="show-profiles">Профили</a></li>
          </ul>
        </li>
     <%--   <li>
          <a class="desktop-link">Тестирование</a>
          <input type="checkbox" id="show-services">
          <label for="show-services">Тестирование</label>
          <ul>
            <li><a href="#">Тест 1</a></li>
            <li><a href="#">Тест 2</a></li>
            <!-- <li>
                 <a href="#" class="desktop-link">Далее</a>
                 <input type="checkbox" id="show-items">
                 <label for="show-items">Далее</label>
                 <ul>
                     <li><a href="#">Тест 1</a></li>
                     <li><a href="#">тест 2</a></li>
                     <li><a href="#">Тест 3</a></li>
                 </ul>
             </li>-->
          </ul>
        </li>--%>
        <%--  <li><a href="Chat.jsp">Обратная связь/Мессенджер</a></li>     --%>
        <li><a href="${pageContext.request.contextPath}/start" id="exit">Выйти</a></li>
        <%
          if(!Objects.equals(loggedUser.getName(), null)/* && loggedUser != null*/)
          {
            out.print("<li> <a href=\"UserProfile.jsp\" class=\"desktop-link\">"+ loggedUser.getName() + "</a></li>");
          }
        %>
      </ul>
    </div>
   <%-- <%
      if(!loggedUser.getName().isEmpty())
      { out.print(" <label for=\"show-search\" class=\"search-icon\"><i class=\"fas fa-search\">"+ loggedUser.getName() + "</i></label>");
        }
    %>--%>
    <%--<label for="show-search" class="search-icon"><i class="fas fa-search"></i></label>
    <form action="#" class="search-box">
      <input type="text" placeholder="Начните ввод..." required>
      <button type="submit" class="go-icon"><i class="fas fa-long-arrow-alt-right"></i></button>
    </form>--%>
  </nav>
</div>


<div>
  <input class="back-button" type="button" onclick="history.back();" value="Назад"/>
</div>
