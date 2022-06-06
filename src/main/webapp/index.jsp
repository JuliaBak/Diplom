<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>Welcome Page</title>
    <link rel="stylesheet" href="css/style.css">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
</head>
<body>

<div class="wrapper">
    <nav>
        <input type="checkbox" id="show-menu">
        <label for="show-menu" class="menu-icon"><i class="fas fa-bars"></i></label>
        <div class="content">
            <div class="logo"><a>Диплом</a></div>
        </div>
    </nav>
</div>

<div class="bg"></div>
<div class="bg bg2"></div>
<div class="bg bg3"></div>

<div class="options">
    <form class="forms" action="add" method="get">
        <input type="submit" value="Зарегистрироваться" />
    </form>
    <form class="forms" action="user_login_success" method="get">
        <input type="submit" value="Логин" />
    </form>
</div>

</body>
</html>