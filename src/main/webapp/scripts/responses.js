function getBotResponse(input) {
    //Камень ножницы бумага
    if (input == "Камень") {
        return "Бумага";
    } else if (input == "Бумага") {
        return "Ножницы";
    } else if (input == "Ножницы") {
        return "Камень";
    }

    // Simple responses
    if (input == "Привет") {
        return "Привет!";
    } else if (input == "Пока") {
        return "Пока!";
    } else {
        return "Прости, я не знаю ответа...!";
    }
}