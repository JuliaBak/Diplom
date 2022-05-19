<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>Welcome Page</title>
    <link rel="stylesheet" href="style.css">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <script src="https://kit.fontawesome.com/a076d05399.js"></script>
</head>
<body>
<br/>

<div class="wrapper">
    <nav>
        <input type="checkbox" id="show-menu">
        <label for="show-menu" class="menu-icon"><i class="fas fa-bars"></i></label>
        <div class="content">
            <div class="logo"><a href="#">Диплом</a></div>
        </div>
    </nav>
</div>

<div class="options">
<form class="forms" action="add" method="get">
    <input type="submit" value="Зарегистрироваться (добавить пользователя)" />
</form>
    <form class="forms" action="user_login_success" method="get">
        <input type="submit" value="Логин" />
    </form>
    <form class="forms" action="Main.jsp" method="get">
        <input type="submit" value="Меню" />
    </form>
<%--<div>
    <a href="Main.jsp">Меню</a>
</div>--%>
</div>
</br>
</body>
</html>