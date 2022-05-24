<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Register New User</title>
    <script type='text/javascript' src='http://ajax.googleapis.com/ajax/libs/jquery/1/jquery.min.js'></script>
   <%-- <link rel="stylesheet" href="style.css">--%>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
</head>

<body>
<%--<div class="wrapper">
    <nav>
        <input type="checkbox" id="show-menu">
        <label for="show-menu" class="menu-icon"><i class="fas fa-bars"></i></label>
        <div class="content">
            <div class="logo"><a>Диплом</a></div>
        </div>
    </nav>
</div>--%>
<%--<script>
    $(document).ready(function() {
        $(".button").click(function(){
            ver=true;
            username=$("#name").val();
            var p=/^[a-zа-яА-ЯёЁ0-9_\.\-]{3,35}$/i;
            if(!p.test(username)){
                message_a="Неверное имя пользователя";
                ver=false;

            }
            email=$("#email").val();
            var p=/^[a-z0-9_\.\-]+@([a-z0-9\-]+\.)+[a-z]{2,4}$/i;
            if(!p.test(email)){
                message_a="Неверно введена почта!";
                ver=false;
            }

            password=$("#pass").val();
            var p=/^[a-z0-9_\.\-]{4,100}$/i;
            if(!p.test(password)){
                message_a="Неверный формат пароля!";
                ver=false;
            }
            if(ver){
                return true;
            }else{
                alert(message_a);
                return false;
            }
        });
    });

</script>--%>


<div class="options">
    <%
        if (request.getAttribute("userName") != null && request.getAttribute("password")  != null && request.getAttribute("password")  != ""
                && request.getAttribute("username")  != "") {
            out.println("<div>\n" +
                    "   <span onclick=\"this.parentElement.style.display='none'\"\n" +
                    "  >×</span>\n" +
                    "   <h2>Пользователь '" + request.getAttribute("userName") + "' добавлен!</h2>\n" +
                    "</div>");
        }
    %>
    <div>
        <span id="result"></span>
    </div>
    <div>
        <div>
            <h2>Добавить пользователя</h2>
        </div>
        <form class="forms" method="post">
            <label>Имя:
                <input type="text" name="name" id="username"><br />
            </label>
            <label>Пароль:
                <input type="password" name="pass" id="password" ><br />
            </label>
            <label>Почта:
                <input type="email" name="email" id="email" placeholder="youremail@gmail.com"><br />
            </label>
            <button type="submit" class="forms-buttons">Подтвердить</button>
        </form>
    </div>
</div>

<div>
    <form action="start" method="get">
        <input type="submit" value="Вернуться" />
    </form>
</div>

<script>
$(document).ready(function ()
{
    $('#username').change(function ()
    { var username = $('#username').val();
        $.ajax(
            {
                type:'POST',
                data: {username:username},
                url:'username-validation',
                success: function (result){
                    $('#result').html(result);
                    }
            }
        )
    });
});
</script>

</body>
</html>