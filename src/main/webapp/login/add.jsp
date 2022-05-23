<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Register New User</title>
    <link rel="stylesheet" href="../style.css">
    <script type='text/javascript' src='http://ajax.googleapis.com/ajax/libs/jquery/1/jquery.min.js'></script>
</head>

<body>
<div>
    <h1>Диплом</h1>
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
       /* else {
            out.println("<div>\n" +
                    "   <span onclick=\"this.parentElement.style.display='none'\"\n" +
                    "   >×</span>\n" +
                    "   <h2>Заполните поля!</h2>\n" +
                    "</div>");
        }*/
    %>
    <div>
        <span id="result"></span>
    </div>
    <div>
        <div>
            <h2>Добавить пользователя</h2>
        </div>
        <form method="post">
            <label>Имя:
                <input type="text" name="name" id="username"><br />
            </label>
            <label>Пароль:
                <input type="password" name="pass" id="password"><br />
            </label>
            <label>Почта:
                <input type="text" name="email" id="email"><br />
            </label>
            <button type="submit" class="button">Подтвердить</button>
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