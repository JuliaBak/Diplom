<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>User Profile</title>
    <link rel="stylesheet" href="css/style.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <link rel="stylesheet" href="css/chat.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
</head>
<body>

<%@include file="upperMenu.jsp" %>

<div class="bg"></div>
<div class="bg bg2"></div>
<div class="bg bg3"></div>

<section class="section-white" style="margin: auto; text-align: center">
    <div class="box-container-1">
        <div class="box-container-1">
            <div class="box-container-2">
                <div class="box-wrap-1">

                    <div class="box-container-1">
                        <div class="outer">
                            <div class="main-text-a">
                                <h2>Профиль пользователя</h2>
                                <h3>Привет,
                                    <%
                                        out.print(loggedUser.getName());
                                    %>
                                    !</h3>
<%--                                <h3 style="color: red; font-size: 18px" id="changeResult"></h3>--%>
                               <%-- <span style="color: red; font-size: 18px" id="changeResult"></span>--%>
                            </div>
                        </div>
                    </div>

                    <div class="box-container-1">
                        <div class="outer">
                            <div class="data-input-user">
                                <form <%--action="user_login_success"--%> <%--method="post"--%> class="forms-user">
                                    <div>
                                        <label class="labels-user" for="newUsername">Имя</label>
                                        <input type="text" class="data_input" name="username" id="newUsername"
                                               value="<% out.print(loggedUser.getName()); %>"
                                               placeholder="Новое имя"/>
                                    </div>
                                    <br/>
                                    <div>
                                        <label class="labels-user" for="newPass">Пароль</label>
                                        <input type="password" class="data_input" name="password" id="newPass"
                                               placeholder="Новый пароль"
                                               value="<% out.print(loggedUser.getPassword());%>"/>
                                    </div>
                                    <br/>
                                    <div>
                                        <label class="labels-user" for="newEmail">Email</label>
                                        <input type="email" class="data_input" name="email" id="newEmail"
                                               value="<% out.print(loggedUser.getEmail());%>"
                                               placeholder="Новое имя"/>
                                    </div>
                                    <br/>
                                    <input type="submit" id="saveData" value="Сохранить"/>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>

<%--<script>
    $(document).ready(function () {
        $('#newUsername').change(function () {
            var usernameNew = $('#newUsername').val();
            var mode = 1;
            $.ajax(
                {
                    type: 'POST',
                    data: {username: usernameNew, mode: mode},
                    url: 'username-validation',
                    success: function (result) {
                        $('#changeResult').html(result);
                    }
                }
            )
        });
    });
</script>--%>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script src="scripts/responses.js"></script>
<script src="scripts/chat.js"></script>

</body>
</html>
