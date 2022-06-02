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

<div class="bg"></div>
<div class="bg bg2"></div>
<div class="bg bg3"></div>


<div <%--class="options"--%>>
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
    <div class="main-text">
        <span style="color: red; font-size: 18px" id="result"></span>
        <span style="color: red; font-size: 18px" id="passResult"></span>
    </div>
    <div class="data-input-user">
        <div>
            <h2 style="font-size: 18px">Добавить пользователя</h2>
        </div>
        <form class="forms-user" method="post">
           <%-- <label>Имя: </label>--%>
                <div>
                    <label for="username">Имя</label><input type="text" class="data_input" name="name" id="username"><br />
                </div>
          <%-- <label>Пароль:    </label>--%>
               <div>
                   <label for="password">Пароль</label><input type="password" class="data_input" name="pass" id="password" ><br />
                </div>
                <%--<label>Почта:  </label>--%>
                    <div>
                        <label for="email">Почта</label><input type="email" class="data_input" name="email" id="email" placeholder="youremail@gmail.com"><br />
            </div>
            <input type="submit" value="Подтвердить" <%--class="forms-buttons"--%>><%--Подтвердить--%></input>
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
        var mode = 1;
        $.ajax(
            {
                type:'POST',
                data: {username:username, mode:mode},
                url:'username-validation',
                success: function (result){
                    $('#result').html(result);
                    }
            }
        )
    });
});
</script>

<script>
    $(document).ready(function ()
    {
        $('#password').change(function ()
        { var password = $('#password').val();
            var mode = 2;
            $.ajax(
                {
                    type:'POST',
                    data: {password:password, mode:mode},
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