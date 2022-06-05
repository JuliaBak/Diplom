<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%--<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">--%>
<html>
<head>
    <title>Login Diplom</title>

    <script type='text/javascript' src='http://ajax.googleapis.com/ajax/libs/jquery/1/jquery.min.js'></script>
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

<section style="text-align: center">
    <div class="box-container-1">
        <div class="box-container-2">

            <div class="box-wrap-1">
                <div class="box-container-1">
                    <div class="main-text-a">
                        <span style="color: red; font-size: 18px" id="announce"></span>
                        <h2>Логин</h2>
                    </div>
                </div>
            </div>

            <div>
                <div class="data-input-user">
                    <form <%--action="user_login_success"--%> method="post" class="forms-user">
                        <div>
                            <label class="labels-user" for="username">Имя</label>
                            <input type="text" class="data_input" name="username" id="username"/>
                        </div>
                        <div>
                            <label class="labels-user" for="password">Пароль</label>
                            <input type="password" class="data_input" name="password" id="password"/>
                        </div>
                        <input type="submit" id="loginButton" value="Войти"/>
                    </form>
                </div>
            </div>
        </div>
    </div>
</section>

<script>
    $(document).ready(function () {
        $('#loginButton').onclick(function () {
            var username = $('#username').val();
            var password = $('#password').val();
            $.ajax(
                {
                    type: 'POST',
                    data: {username: username, password: password},
                    url: 'user_login_success',
                    success: function (result) {
                        $('#announce').html(result);
                    }
                }
            )
        });
    });
</script>

<%--<script>
    $(document).ready(function () {
        $('#loginButton').onclick(function () {
            var username = $('#username').val();
            var password = $('#password').val();
            var mode = 3;
            $.ajax(
                {
                    type: 'POST',
                    data: {username: username, password: password, mode: mode},
                    url: 'username-validation',
                    success: function (result) {
                        $('#announce').html(result);
                    }
                }
            )
        });
    });
</script>--%>

</body>
</html>