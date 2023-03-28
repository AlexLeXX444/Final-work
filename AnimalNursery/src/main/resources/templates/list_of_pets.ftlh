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
                <a href="/list_of_pets" class="active">Список всех</a>
                <div class="dropdown">
                    <button class="dropbtn">Добавить
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

            <table>
                <tr>
                    <th>ID</th>
                    <th>Имя</th>
                    <th>Дата рождения</th>
                    <th>Список выполняемых команд</th>
                </tr>
            </table>

            <div class="row">
                <div class="main"><b>Хомяки</b></div>
            </div>
            <table>
                <#list hamsters as hamster>
                    <tr>
                        <th>${hamster.id}</th>
                        <th>${hamster.name}</th>
                        <th>${hamster.birthDate}</th>
                        <th><#list hamster.petCommands as commands>${commands}</#list></th>
                        <th><a href="/redact/hamster/${hamster.id}">Редактировать</a> </th>
                    </tr>
                <#else>
                    <tr>
                        <th>Нет записей</th>
                        <th> </th>
                        <th> </th>
                        <th> </th>
                        <th> </th>
                    </tr>
                </#list>
            </table><br><br>

            <div class="row">
                <div class="main"><b>Кошки</b></div>
            </div>
            <table>
                <#list cats as cat>
                    <tr>
                        <th>${cat.id}</th>
                        <th>${cat.name}</th>
                        <th>${cat.birthDate}</th>
                        <th><#list cat.petCommands as commands>${commands}</#list></th>
                        <th><a href="#">Редактировать</a> </th>
                    </tr>
                <#else>
                    <tr>
                        <th>Нет записей</th>
                    </tr>
                </#list>
            </table><br><br>

            <div class="row">
                <div class="main"><b>Собаки</b></div>
            </div>
            <table>
                <#list dogs as dog>
                    <tr>
                        <th>${dog.id}</th>
                        <th>${dog.name}</th>
                        <th>${dog.birthDate}</th>
                        <th><#list dog.petCommands as commands>${commands}</#list></th>
                        <th><a href="#">Редактировать</a> </th>
                    </tr>
                <#else>
                    <tr>
                        <th>Нет записей</th>
                    </tr>
                </#list>

            </table><br><br>

            <div class="row">
                <div class="main"><b>Ослы</b></div>
            </div>
            <table>
                <#list donkeys as donkey>
                    <tr>
                        <th>${donkey.id}</th>
                        <th>${donkey.name}</th>
                        <th>${donkey.birthDate}</th>
                        <th><#list donkey.petCommands as commands>${commands}</#list></th>
                        <th><a href="#">Редактировать</a> </th>
                    </tr>
                <#else>
                    <tr>
                        <th>Нет записей</th>
                    </tr>
                </#list>

            </table><br><br>

            <div class="row">
                <div class="main"><b>Лошади</b></div>
            </div>
            <table>
                <#list horses as horse>
                    <tr>
                        <th>${horse.id}</th>
                        <th>${horse.name}</th>
                        <th>${horse.birthDate}</th>
                        <th><#list horse.petCommands as commands>${commands}</#list></th>
                        <th><a href="#">Редактировать</a> </th>
                    </tr>
                <#else>
                    <tr>
                        <th>Нет записей</th>
                    </tr>
                </#list>

            </table><br><br>

            <div class="row">
                <div class="main"><b>Верблюды</b></div>
            </div>
            <table>
                <#list camels as camel>
                    <tr>
                        <th>${camel.id}</th>
                        <th>${camel.name}</th>
                        <th>${camel.birthDate}</th>
                        <th><#list camel.petCommands as commands>${commands}</#list></th>
                        <th><a href="#">Редактировать</a> </th>
                    </tr>
                <#else>
                    <tr>
                        <th>Нет записей</th>
                    </tr>
                </#list>

            </table><br><br>

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