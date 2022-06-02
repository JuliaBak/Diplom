<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <title>Login Diplom</title>
  <%--  <link rel="stylesheet" href="../css/style.css">--%>
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

<div>
    <div class="main-text">
        <span style="color: red; font-size: 18px" id="notification"></span>
        <h2>Логин</h2>
    </div>

    <div class="data-input-user">
        <form <%--action="user_login_success"--%> method="post" class="forms-user">
             <div>
                 <label class="labels-user" for="usernameButton">Имя</label>
                 <input type="text" class="data_input" name="username" id="usernameButton" />
             </div>
             <div>
                 <label class="labels-user" for="passButton">Пароль</label>
                 <input type="password" class="data_input" name="password" id="passButton"/>
             </div>
             <input type="submit" id="loginButton" value="Войти" />
        </form>
    </div>
</div>


<script>
    $(document).ready(function ()
    {
        $('#loginButton').onclick(function ()
        { var username = $('#username').val();
            var password = $('#password').val();
            $.ajax(
                {
                    type:'POST',
                    data: {username:username, password:password},
                    url:'user_login_success',
                    success: function (result){
                        $('#notification').html(result);
                    }
                }
            )
        });
    });
</script>

<%--<div class="data-input-user">
<form action="user_login_success" method="post" class="forms-user">
    <h1>Логин</h1>
        <div>
            <label class="labels-user">Имя</label>
            <div>
                <input type="text" class="data_input" name="username" />
            </div>
        </div>
        <div>
            <label>Пароль</label>
            <div>
                <input type="password" class="data_input" name="password" />
            </div>
        </div>

    &lt;%&ndash;<table &lt;%&ndash;class="table"&ndash;%&gt;>
        <tr>
            <td>Имя</td>
            <td><input type="text" class="data_input" name="username" /></td>
        </tr>
        <tr>
            <td>Пароль</td>
            <td><input type="password" class="data_input" name="password" /></td>
        </tr>
    </table>&ndash;%&gt;
    <input type="submit" id="loginButton" value="Войти" /></form>
</div>--%>

</body>
</html>