function getBotResponse(input) {

    var helloLines = ['Привет', 'Рад тебя видеть', 'Доброго времени суток'];
    var userHelloLines = ['Приветствую', 'Здравствуйте', 'привет', 'здравствуйте', 'здравствуй', 'здорово', 'привееет', 'Здравствуй'];

    var goodbyeLines = ['Пока', 'Рад был видеть тебя', 'Пока! Еще увидимся', 'Пока! До скорых встреч'];
    var userGoodbyeLines = ['Прощай', 'пока', 'рад был видеть тебя', 'еще увидимся', 'до скорых встреч'];
    var ranAnswer = "";

    var userFunctionAsks = ['Что ты умеешь?', 'Какой твой функционал?', 'Каков твой фнкционал?', 'Какие функции ты имеешь?',
    'Что ты можешь?', 'Что ты умеешь', 'что ты умеешь', 'что ты умеешь?'];

    var studyAreasAsk = ['Где направления', 'где направления', "где направления?", "Где направления?"];
    var studyAreaLink = "Ты можешь найти направления через вверхнее меню в разделе \'Учеба\'!";

    var specialitiesAsk = ['Где специальности', 'где специальности', "где специальности?", "Где специальности?"];
    var specialitiesLink = "Специальности можно найти на главной странице в разделе \'Учеба\'! Или в \'Учеба\'\-\>" +
        "\'Направления\' и здесь, перейдя по нужному тебе направлению, сможешь увидеть все специальнсти, относящиеся в данному направлению!";

    var profilesAsk = ['Где профили', 'где профили', "где профили?", "Где профили?"];
    var profilesLink = "Профили находятся на главной странице в разделе \'Учеба\'! Также их можно найти в \'Учеба\'\-\>" +
        "\'Профили\'!";

    var nameAks = ['Как тебя зовут', 'как тебя зовут', 'как тебя зовут?', 'Как тебя зовут?', 'как твое имя', 'как твое имя?',
    'Как твое имя', 'Как твое имя?'];
    var nameReply = ['Диппи!', 'Меня зовут Диппи!', 'Мое имя Диппи'];

    var mainFunctionsBot2 = "Я могу рассказать о наших направленяих подготовки! Для этого скажи мне \"Направления\". \n" +
        "Еще я могу рассказать о наших специальностях! Скажи мне \"Специальности\"\n";

    var mainFunctionsBot = "Я могу подсказать, где находится то, что ты ищещь! Просто спроси меня \"Где направления\" или \"Где специальности\"";

    //Ответы
    /*if (input == "Привет" || input == "Здравствуй")*/
    if(checkAvailability(userHelloLines,input) || checkAvailability(helloLines,input)){
        ranAnswer = RandArray(helloLines);
        return ranAnswer+"!";
    } else if (checkAvailability(goodbyeLines,input) || checkAvailability(userGoodbyeLines,input)) {
        ranAnswer = RandArray(goodbyeLines);
        return ranAnswer+"!";
    } else if (checkAvailability(userFunctionAsks,input)) {
        ranAnswer = mainFunctionsBot;
        return ranAnswer; }
    else if (checkAvailability(studyAreasAsk,input)) {
        ranAnswer = studyAreaLink;
        return ranAnswer; }
    else if (checkAvailability(specialitiesAsk,input)) {
            ranAnswer = specialitiesLink;
        return ranAnswer; }
    else if (checkAvailability(profilesAsk,input)) {
        ranAnswer = profilesLink;
        return ranAnswer; }
    else if (checkAvailability(nameAks,input)) {
        ranAnswer = RandArray(nameReply);
        return ranAnswer; }
    else {
        return "Прости, я не знаю ответа...";
    }
}

function RandArray(array){
    var rand = Math.random()*array.length | 0;
    var rValue = array[rand];
    return rValue;
}

function checkAvailability(replies, val) {
    return replies.some(arrVal => val === arrVal);
}

function matchPattern(msq)
{
    const helloPat = /^([пП]ривет[-.?!)(,:]*\s*|[Зз]дравствуй(те)*[-.?!)(,:]*\s*$)/;
    return helloPat.test(msg);
}
/*

function findStudyAreas()
{
    var studyAreasFound;
    var mode = 1;
    $.ajax(
        {
            type:'POST',
            data: {mode:mode},
            url:'username-validation',
            success: function (result){
               /!* $('#result').html(result);*!/

            }
        }
    )

}*/
