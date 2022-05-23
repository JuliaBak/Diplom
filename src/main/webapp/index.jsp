<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>Welcome Page</title>
    <link rel="stylesheet" href="style.css">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
</head>
<body>
<br/>

<div class="wrapper">
    <nav>
        <input type="checkbox" id="show-menu">
        <label for="show-menu" class="menu-icon"><i class="fas fa-bars"></i></label>
        <div class="content">
            <div class="logo"><a>Диплом</a></div>
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
    <form class="forms" action="SpecialitiesPresent.jsp" method="get">
        <input type="submit" value="Специализации" />
    </form>
</div>



<%--<div class="options">
    <h2>Sign up</h2>
    <form method="" action="" class="register-form"
          id="login-form">
        <div class="form-group">
            <label for="username"><i
                    class="zmdi zmdi-account material-icons-name"></i></label> <input
                type="text" name="username" id="username"
                placeholder="Your Name" />
        </div>
        <div class="form-group">
            <label for="password"><i class="zmdi zmdi-lock"></i></label> <input
                type="password" name="password" id="password"
                placeholder="Password" />
        </div>
        <div class="form-group">
            <input type="checkbox" name="remember-me" id="remember-me"
                   class="agree-term" /> <label for="remember-me"
                                                class="label-agree-term"><span><span></span></span>Remember
            me</label>
        </div>
        <div class="form-group form-button">
            <input type="submit" name="signin" id="signin"
                   class="form-submit" value="Log in" />
        </div>
    </form>
    <div class="social-login">
        <span class="social-label">Or login with</span>
        <ul class="socials">
            <li><a href="#"><i
                    class="display-flex-center zmdi zmdi-facebook"></i></a></li>
            <li><a href="#"><i
                    class="display-flex-center zmdi zmdi-twitter"></i></a></li>
            <li><a href="#"><i
                    class="display-flex-center zmdi zmdi-google"></i></a></li>
        </ul>
    </div>
</div>--%>

</body>
</html>