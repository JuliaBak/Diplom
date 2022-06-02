// (Прокручивание элемента) Collapsible
var collElem = document.getElementsByClassName("chat-main-folder");

for (let i = 0; i < collElem.length; i++) {
    collElem[i].addEventListener("click", function () {
        this.classList.toggle("active");

        var content = this.nextElementSibling;

        if (content.style.maxHeight) {
            content.style.maxHeight = null;
        } else {
            content.style.maxHeight = content.scrollHeight + "px";
        }

    });
}

/*Отображение времени*/
function getTime() {
    let nowTime = new Date();
    hours = nowTime.getHours();
    minutes = nowTime.getMinutes();

    if (hours < 10) {
        hours = "0" + hours;
    }

    if (minutes < 10) {
        minutes = "0" + minutes;
    }

   /* let time = hours + ":" + minutes;*/
    return hours + ":" + minutes;
}

// Получает первое сообщение
function firstBotMessage() {
    let firstMsg = "Здравствуй! Мое имя Диппи"
    let secondMsg = "Я здесь, чтобы помочь тебе!"

    document.getElementById("botStarterMessage").innerHTML = '<p class="botText"><span>' + firstMsg + '</span></p>';
    document.getElementById("botSecondMessage").innerHTML = '<p class="botText"><span>' + secondMsg + '</span></p>';

    let time = getTime();

    $("#chat-time-display").append(time);
    document.getElementById("userInput").scrollIntoView(false);
}

firstBotMessage();

// Извлечение ответа
function getHardResponse(userText) {
    let botResponse = getBotResponse(userText);

        let botHtml = '<p class="botText"><span>' + botResponse + '</span></p>';
        $("#chatbox").append(botHtml);

     /*  botResponse.split("\n")*/

    document.getElementById("chat-bar-bottom").scrollIntoView(true);
}

//Получает текст из поля ввода и обрабатывает его
function getResponse() {
    let userText = $("#textInput").val();

    if (userText == "") {
        userText = "Диплом";
    }

    let userHtml = '<p class="userText"><span>' + userText + '</span></p>';

    $("#textInput").val("");
    $("#chatbox").append(userHtml);
    document.getElementById("chat-bar-bottom").scrollIntoView(true);

    setTimeout(() => {
        getHardResponse(userText);
    }, 1000)

}

// Обработка отправки текста при нажатии на кнопку
function buttonSendText(sampleText) {
    let userHtml = '<p class="userText"><span>' + sampleText + '</span></p>';

    $("#textInput").val("");
    $("#chatbox").append(userHtml);
    document.getElementById("chat-bar-bottom").scrollIntoView(true);

    //Uncomment this if you want the bot to respond to this buttonSendText event
    // setTimeout(() => {
    //     getHardResponse(sampleText);
    // }, 1000)
}

function sendButton() {
    getResponse();
}

/*
function heartButton() {
    buttonSendText("Heart clicked!")
}
*/

//  Обработка enter, для отправики сообщения
$("#textInput").keypress(function (e) {
    if (e.which == 13) {
        getResponse();
    }
});