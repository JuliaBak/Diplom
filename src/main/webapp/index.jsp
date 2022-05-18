<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>Welcome Page</title>
</head>
<body>
<h1><%= "Дипломный проект" %>
</h1>
<br/>
<div>
<form action="add" method="get">
    <input type="submit" value="Зарегистрироваться (добавить пользователя)" />
</form>
    <form action="user_login_success" method="get">
        <input type="submit" value="Логин" />
    </form>
</div>

</br>
</body>
</html>