<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <title>Guru Login Form</title>
</head>
<body>
<form action="user_login_success" method="post">
    <table style="with: 50%">

        <tr>
            <td>Имя</td>
            <td><input type="text" name="username" /></td>
        </tr>
        <tr>
            <td>Пароль</td>
            <td><input type="password" name="password" /></td>
        </tr>
    </table>

    <input type="submit" value="Войти" /></form>
</body>
</html>