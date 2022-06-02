function getBotResponse(input) {

    var helloLines = ['Привет', 'Рад тебя видеть', 'Доброго времени суток'];
    var userHelloLines = ['Приветствую', 'Здравствуйте', 'привет', 'здравствуйте', 'здравствуй', 'здорово', 'привееет', 'Здравствуй'];

    var goodbyeLines = ['Пока', 'Рад был видеть тебя', 'Пока! Еще увидимся', 'Пока! До скорых встреч'];
    var userGoodbyeLines = ['Прощай'];
    var ranAnswer = "";

    //Камень ножницы бумага
    if (input == "Камень") {
        return "Бумага";
    } else if (input == "Бумага") {
        return "Ножницы";
    } else if (input == "Ножницы") {
        return "Камень";
    }

    // Simple responses
    /*if (input == "Привет" || input == "Здравствуй")*/
    if(checkAvailability(userHelloLines,input) || checkAvailability(helloLines,input)){
        ranAnswer = RandArray(helloLines);
        return ranAnswer+"!";
    } else if (checkAvailability(goodbyeLines,input) || checkAvailability(userGoodbyeLines,input)) {
        ranAnswer = RandArray(goodbyeLines);
        return ranAnswer+"!";
    } else {
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