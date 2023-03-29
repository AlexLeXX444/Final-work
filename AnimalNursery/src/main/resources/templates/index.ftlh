<!DOCTYPE html>
    <html lang="en">
        <head>
            <title>PET NURSERY</title>
            <meta charset="UTF-8">
            <meta name="viewport" content="width=device-width, initial-scale=1">
            <link rel="stylesheet" type="text/css" href="/static/css/styles.css">
        </head>

        <body>
            <div class="header">
                <h1>ПИТОМНИК ДЛЯ ЖИВОТНЫХ</h1>
            </div>

            <div class="topnav" id="myTopnav">
                <a href="/" class="active">Главная</a>
                <a href="/list_of_pets">Все животные</a>
                <div class="dropdown">
                    <button class="dropbtn">Добавить
                        <i class="fa fa-caret-down"></i>
                    </button>
                    <div class="dropdown-content">
                        <a href="/create_home_pet">Домашние животные</a>
                        <a href="/create_pack_pet">Вьючные животные</a>
                    </div>
                </div>
                <a href="javascript:void(0);" class="icon" onclick="myFunction()">&#9776;</a>
            </div>

            <div class="row">
                <div class="main">Добро подаловать!!!</div><br><br><br>
                <div class="main">Данна платворма реализует следующий функционал: </div><br>
                <div class="main">1. Создание питомца; </div><br>
                <div class="main">2. Просмотр списка всех питомцев; </div><br>
                <div class="main">3. Редактирование команд питомца; </div><br>
                <div class="main">4. Удаление питомца. </div><br>
            </div>

            <script>
                function myFunction() {
                    var x = document.getElementById("myTopnav");
                    if (x.className === "topnav") {
                        x.className += " responsive";
                    } else {
                        x.className = "topnav";
                    }
                }
            </script>
        </body>
    </html>