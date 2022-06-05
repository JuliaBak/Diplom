<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>User Profile</title>
    <link rel="stylesheet" href="css/style.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <script type='text/javascript' src='http://ajax.googleapis.com/ajax/libs/jquery/1/jquery.min.js'></script>

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
                                <span style="color: red; font-size: 18px" id="changeResult1"></span>
                                <span style="color: red; font-size: 18px" id="changeResult2"></span>
                                <h3 style="color: red; font-size: 18px" id="changeResult"></h3>
                                <h2>Профиль пользователя</h2>
                                <h3>Привет,
                                    <%
                                        out.print(loggedUser.getName());
                                    %>
                                    !</h3>
                            </div>
                        </div>
                    </div>

                    <div class="box-container-1">
                        <div class="outer">
                            <div class="data-input-user">
                                <form <%--action="update-user-data" method="post" --%> class="forms-user">
                                    <div>
                                        <label class="labels-user" for="newUsername">Имя</label>
                                        <input type="text" class="data_input" name="newUsername" id="newUsername"
                                               value="<% out.print(loggedUser.getName()); %>"
                                               placeholder="Новое имя"/>
                                    </div>
                                    <br/>
                                    <div>
                                        <label class="labels-user" for="newPass">Пароль</label>
                                        <input type="password" class="data_input" name="newPass" id="newPass"
                                               placeholder="Новый пароль"
                                               value="<% out.print(loggedUser.getPassword());%>"/>
                                    </div>
                                    <br/>
                                    <div>
                                        <label class="labels-user" for="newEmail">Email</label>
                                        <input type="email" class="data_input" name="newEmail" id="newEmail"
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

<script>
    $(document).ready(function () {
        $('#saveData').click(function () {
            var newUsername = $('#newUsername').val();
            var newPass = $('#newPass').val();
            var newEmail = $('#newEmail').val();
            $.ajax(
                {
                    type: 'POST',
                    data: {newUsername: newUsername, newPass: newPass, newEmail: newEmail},
                    url: 'update-user-data',
                    success: function (result) {
                        $('#changeResult1').val(result);
                        $('#changeResult').text(result);
                        $('#changeResult2').html(result);
                    }
                }
            )
        });
    });
</script>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script src="scripts/responses.js"></script>
<script src="scripts/chat.js"></script>

</body>
</html>
