<%@ page import="com.diplomlate.diplomlate.tasks.SpProfilesTasks" %>
<%@ page import="com.diplomlate.diplomlate.entities.Discipline" %>
<%@ page import="com.diplomlate.diplomlate.entities.Job" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Main</title>
    <link rel="stylesheet" href="css/style.css">
    <script src="https://kit.fontawesome.com/a076d05399.js"></script>

    <link rel="stylesheet" href="css/imageShowStyle.css">

    <link rel="stylesheet" href="css/chat.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
</head>
<body>

<%@include file="upperMenu.jsp" %>

<div class="bg"></div>
<div class="bg bg2"></div>
<div class="bg bg3"></div>

<div class="items-container">
    <div class="box-container-1">
        <div class="box-container-1">
            <div class="box-container-2" style="width: 90%">
                <div class="box-wrap-1" style="flex-direction: column">

                    <section style="width: 100%; background-image: url(images/img.png);
                    background-size: contain;
                    background-repeat: no-repeat;background-position: center;background-clip: inherit; ">
                        <div class="main-text-a">
                        <div class="box-container-1">
                            <div class="outer">
                                <div id="main">
                                        <h2 style="color: black; text-shadow: 0 0 10px white">Дипломный проект</h2>
                                        <h2 style="color: black; text-shadow: 0 0 10px white">Представление
                                            специальностей</h2>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </section>


                    <section class="section-dark" style="height: auto; padding: 13%; background: white; width: 90%">
                        <div class="box-container-1" style="background: antiquewhite;padding: 20px;">
                            <div class="outer">
                                <div id="about">

                                    <div class="main-text-a">
                                        <h2 style="color: black; text-shadow: 0 0 10px white; ">Дипломный проект</h2>
                                        <br/>
                                        <h2 style="color: black; text-shadow: 0 0 10px white">
                                            Данный проект представляет улучшенное представление специальностей
                                            бакалавриата,
                                            прдедставленных в
                                            Поволжским Государственным Университетом Телекоммуникаций и Информатики.
                                            Способствует визуальному представлению каждой из специальностей и подробное
                                            изучение их
                                            особенностей
                                        </h2>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </section>


                    <section style="width: 90%; background-image: url(images/img.png);
                    background-size: cover;
                    background-repeat: no-repeat;background-position: inherit;background-clip: inherit;">
                        <div class="box-container-1">
                            <div class="outer">
                                <div id="study-info">

                                    <div class="main-text-a">
                                        <h2 style="color: black; text-shadow: 0 0 10px white">Учеба</h2>
                                    </div>

                                    <input class="image-input" type="radio" name="btn" id="btn1" checked>
                                    <input class="image-input" type="radio" name="btn" id="btn2">
                                    <input class="image-input" type="radio" name="btn" id="btn3">
                                    <div class="image-container">
                                        <div class="image-wrapper">

                                            <div class="image-card">
                                                <div class="image-box">
                                                    <img src="images/personWorking.jpg">
                                                </div>
                                                <div class="image-info-panel">
                                                    <h2 class="h2-image">Направления подготовки</h2>
                                                    <h5 class="h5-image">Общее направление специальностей</h5>
                                                    <p class="p-image">Области, описывающее в общих чертах, какие сферы
                                                        применения у специальностей,
                                                        входящих в это направление</p>
                                                    <div class="image-details">
                                                        <a class="a-image" href="show-study-areas">Узнать больше</a>
                                                    </div>
                                                </div>
                                            </div>

                                            <div class="image-card">
                                                <div class="image-box">
                                                    <img src="images/phone.jpg">
                                                </div>
                                                <div class="image-info-panel">
                                                    <h2 class="h2-image">Специальности</h2>
                                                    <h5 class="h5-image">Детальное изучение необходимых знаний и
                                                        навыков</h5>
                                                    <p class="p-image">Углубленное изучение определенной части знаний и
                                                        навыков, относящихся к какому-либо
                                                        направлению подготовки</p>
                                                    <div class="image-details">
                                                        <a class="a-image" href="show-specialities">Узнать больше</a>
                                                        <div class="image-icons">
                                                            <i class="fa fa-github"></i>
                                                            <i class="fa fa-twitter"></i>
                                                            <i class="fa fa-youtube"></i>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>

                                            <div class="image-card">
                                                <div class="image-box">
                                                    <img src="images/computers.jpg">
                                                </div>
                                                <div class="image-info-panel">
                                                    <h2 class="h2-image">Профили</h2>
                                                    <h5 class="h5-image">Конкретная область знаний</h5>
                                                    <p class="p-image">Профиль определяет основное направление
                                                        дальнейшей профессиональной деятельности
                                                        выпускника.</p>
                                                    <div class="image-details">
                                                        <a class="a-image" href="show-profiles">Узнать больше</a>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>


                                        <div class="btnbar">
                                            <label for="btn1" class="navkeys key1"></label>
                                            <label for="btn2" class="navkeys key2"></label>
                                            <label for="btn3" class="navkeys key3"></label>
                                        </div>
                                    </div>
                                </div>

                                <%-- <div class="main-text-a">
                                     <h2 style="color: black; text-shadow: 0 0 10px white; ">Все об обучении</h2>
                                     <br/>
                                     <form class="forms" action="show-study-areas" method="get">
                                         <input type="submit" value="Направления подготовки"/>
                                     </form>
                                     <form class="forms" action="show-specialities" method="get">
                                         <input type="submit" value="Специальности"/>
                                     </form>
                                     <form class="forms" action="show-profiles" method="get">
                                         <input type="submit" value="Профили"/>
                                     </form>
                                 </div>--%>

                            </div>
                        </div>
                    </section>

                    <%--
                                        <section class="section-dark" style="height: auto; padding: calc(100% - 800px); width:100%;">
                                            <div class="box-container-1">
                                                <div class="outer">
                                                    <div id="study-info-image">

                                                        <input class="image-input" type="radio" name="btn" id="btn1" checked>
                                                        <input class="image-input" type="radio" name="btn" id="btn2">
                                                        <input class="image-input" type="radio" name="btn" id="btn3">
                                                        <div class="image-container">
                                                            <div class="image-wrapper">

                                                                <div class="image-card">
                                                                    <div class="image-box">
                                                                        <img src="images/personWorking.jpg">
                                                                    </div>
                                                                    <div class="image-info-panel">
                                                                        <h2 class="h2-image">Направления подготовки</h2>
                                                                        <h5 class="h5-image">Общее направление специальностей</h5>
                                                                        <p class="p-image">Области, описывающее в общих чертах, какие сферы применения у специальностей,
                                                                            входящих в это направление</p>
                                                                        <div class="image-details">
                                                                            <a class="a-image" href="#">Узнать больше</a>
                                                                        </div>
                                                                    </div>
                                                                </div>

                                                                <div class="image-card">
                                                                    <div class="image-box">
                                                                        <img src="images/phone.jpg">
                                                                    </div>
                                                                    <div class="image-info-panel">
                                                                        <h2 class="h2-image">Специальности</h2>
                                                                        <h5 class="h5-image">Детальное изучение необходимых знаний и навыков</h5>
                                                                        <p class="p-image">Углубленное изучение определенной части знаний и навыков, относящихся к какому-либо
                                                                            направлению подготовки</p>
                                                                        <div class="image-details">
                                                                            <a class="a-image" href="#">Узнать больше</a>
                                                                            <div class="image-icons">
                                                                                <i class="fa fa-github"></i>
                                                                                <i class="fa fa-twitter"></i>
                                                                                <i class="fa fa-youtube"></i>
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                </div>

                                                                <div class="image-card">
                                                                    <div class="image-box">
                                                                        <img src="images/computers.jpg">
                                                                    </div>
                                                                    <div class="image-info-panel">
                                                                        <h2 class="h2-image">Профили</h2>
                                                                        <h5 class="h5-image">Конкретная область знаний</h5>
                                                                        <p class="p-image">Профиль определяет основное направление дальнейшей профессиональной деятельности
                                                                            выпускника.</p>
                                                                        <div class="image-details">
                                                                            <a class="a-image" href="#">Узнать больше</a>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </div>


                                                            <div class="btnbar">
                                                                <label for="btn1" class="navkeys key1"></label>
                                                                <label for="btn2" class="navkeys key2"></label>
                                                                <label for="btn3" class="navkeys key3"></label>
                                                            </div>
                                                        </div>
                                                    </div>

                                                </div>
                                            </div>
                                        </section>--%>

                </div>
            </div>
        </div>
    </div>
</div>

<%@include file="chatBot.jsp" %>

<%--</body>--%>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script src="scripts/responses.js"></script>
<script src="scripts/chat.js"></script>

</body>
</html>
