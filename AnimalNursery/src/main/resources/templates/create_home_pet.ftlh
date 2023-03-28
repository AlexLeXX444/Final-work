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
                <a href="/">Главная</a>
                <a href="/list_of_pets">Список всех</a>
                <div class="dropdown">
                    <button class="active">Добавить
                        <i class="fa fa-caret-down"></i>
                    </button>
                    <div class="dropdown-content">
                        <a href="/create_home_pet">Домашние животные</a>
                        <a href="/create_pack_pet">Вьючные животные</a>
                    </div>
                </div>
                <a href="/redact_pet">Изменить</a>
                <a href="javascript:void(0);" class="icon" onclick="myFunction()">&#9776;</a>
            </div>

            <div class="row">
                <div class="main">Добавить нового представителя домашних животных.</div>
            </div>

            <div class="tab">
                <button class="tablinks" onclick="openTab(event, 'hamsterAdd')">Хомяки</button>
                <button class="tablinks" onclick="openTab(event, 'catAdd')">Кошки</button>
                <button class="tablinks" onclick="openTab(event, 'dogAdd')">Собаки</button>
            </div>

            <div id="hamsterAdd" class="tabcontent">
                <h3>Хомяки</h3>
                <form action="/pet_create/hamster" method="post" enctype="multipart/form-data">
                    Имя: <input type="text" name="name"/><br><br>
                    Дата рождения: <input type="date" name="birthDate"/><br><br>
                    Список команд: <input type="text" name="petCommands"/>  (через пробел)<br><br>
                    <input type="submit" value="Добавить"/>
                </form>
            </div>

            <div id="catAdd" class="tabcontent">
                <h3>Кошки</h3>
                <form action="/pet_create/cat" method="post" enctype="multipart/form-data">
                    Имя: <input type="text" name="name"/><br><br>
                    Дата рождения: <input type="date" name="birthDate"/><br><br>
                    Список команд: <input type="text" name="petCommands"/>  (через пробел)<br><br>
                    <input type="submit" value="Добавить"/>
                </form>
            </div>

            <div id="dogAdd" class="tabcontent">
                <h3>Собаки</h3>
                <form action="/pet_create/dog" method="post" enctype="multipart/form-data">
                    Имя: <input type="text" name="name"/><br><br>
                    Дата рождения: <input type="date" name="birthDate"/><br><br>
                    Список команд: <input type="text" name="petCommands"/>  (через пробел)<br><br>
                    <input type="submit" value="Добавить"/>
                </form>
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

                function openTab(evt, tabName) {
                    var i, tabcontent, tablinks;
                    tabcontent = document.getElementsByClassName("tabcontent");
                    for (i = 0; i < tabcontent.length; i++) {
                        tabcontent[i].style.display = "none";
                    }
                    tablinks = document.getElementsByClassName("tablinks");
                    for (i = 0; i < tablinks.length; i++) {
                        tablinks[i].className = tablinks[i].className.replace(" active", "");
                    }
                    document.getElementById(tabName).style.display = "block";
                    evt.currentTarget.className += " active";
                }
            </script>
        </body>
    </html>