<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Register New User</title>
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
            <div class="box-container-1">
                <%
                    if (request.getAttribute("userName") != null && request.getAttribute("password") != null && request.getAttribute("password") != ""
                            && request.getAttribute("username") != "") {
                        out.println("<div>\n" +
                                "   <span onclick=\"this.parentElement.style.display='none'\"\n" +
                                "  >×</span>\n" +
                                "   <h2>Пользователь '" + request.getAttribute("userName") + "' добавлен!</h2>\n" +
                                "</div>");
                    }
                %>
                <div class="outer">
                    <div class="main-text-a">
                        <span style="color: red; font-size: 18px" id="result"></span>
                        <span style="color: red; font-size: 18px" id="passResult"></span>
                        <br/>
                        <h2>Добавить пользователя</h2>
                    </div>
                </div>
            </div>

            <div>

                <div class="data-input-user">
                    <form class="forms-user" method="post">
                        <div>
                            <label for="username">Имя</label><input type="text" class="data_input" name="name"
                                                                    id="username"><br/>
                        </div>
                        <div>
                            <label for="password">Пароль</label><input type="password" class="data_input"
                                                                       name="pass" id="password"><br/>
                        </div>
                        <div>
                            <label for="email">Почта</label><input type="email" class="data_input" name="email"
                                                                   id="email"
                                                                   placeholder="youremail@gmail.com"><br/>
                        </div>
                        <input type="submit" value="Подтвердить">
                    </form>
                </div>
            </div>
        </div>
    </div>
</section>

<script>
    $(document).ready(function () {
        $('#username').change(function () {
            var username = $('#username').val();
            var mode = 1;
            $.ajax(
                {
                    type: 'POST',
                    data: {username: username, mode: mode},
                    url: 'username-validation',
                    success: function (result) {
                        $('#result').html(result);
                    }
                }
            )
        });
    });
</script>

<script>
    $(document).ready(function () {
        $('#password').change(function () {
            var password = $('#password').val();
            var mode = 2;
            $.ajax(
                {
                    type: 'POST',
                    data: {password: password, mode: mode},
                    url: 'username-validation',
                    success: function (result) {
                        $('#result').html(result);
                    }
                }
            )
        });
    });
</script>

</body>
</html>