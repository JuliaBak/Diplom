<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <link rel="stylesheet" href="css/imageShowStyle.css">
    <title>Image Show</title>
</head>
<body>

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

</body>
</html>
