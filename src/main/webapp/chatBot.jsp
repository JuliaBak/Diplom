<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<div class="chat-bar-collapsible">
    <button id="chat-button" type="button" class="chat-main-folder">Чат
        <i id="chat-icon" style="color: white;" class="fa fa-fw fa-comments-o"></i>
    </button>

    <div class="content-chat">
        <div class="full-chat-block">
            <!-- Message Container -->
            <div class="outer-container-chat">
                <div class="chat-container">
                    <!-- Messages -->
                    <div id="chatbox">
                        <h5 id="chat-time-display"></h5>
                        <p id="botStarterMessage" class="botText"><span>Загрузка...</span></p>
                        <p id="botSecondMessage" class="botText"><span>...</span></p>
                    </div>

                    <!-- User input box -->
                    <div class="chat-bar-user-input-block">
                        <div id="userInput">
                            <input id="textInput" class="input-box-chat" type="text" name="msg"
                                   placeholder="Напишите сообщение...">
                            <p></p>
                        </div>

                        <!-- Messaging button, paper plane-->
                        <div class="chat-bar-icons">
                            <i id="chat-icon" style="color: black;" class="fa fa-fw fa-send"
                               onclick="sendButton()"></i>
                        </div>
                    </div>

                    <div id="chat-bar-bottom">
                        <p></p>
                    </div>

                </div>
            </div>

        </div>
    </div>

</div>
