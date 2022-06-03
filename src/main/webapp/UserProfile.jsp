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

<section class="section-white" style="width: 80%; margin: auto;">
<div class="box-container-1">
    <div class="box-container-1">
        <div class="box-container-2">
            <div class="box-wrap-1">
                <div class="box-container-1">
                    <div class="outer">
                        <div class="main-text-a">
                            <h2>Приветствую
                                <%
                                    out.print(loggedUser.getName());
                                %>
                                !</h2>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
</section>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script src="scripts/responses.js"></script>
<script src="scripts/chat.js"></script>

</body>
</html>
