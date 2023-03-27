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
                <a href="#about">Изменить</a>
                <a href="javascript:void(0);" class="icon" onclick="myFunction()">&#9776;</a>
            </div>

            <div class="row">
                <div class="main"><b>Кошки</b></div>
            </div>
            <table>
                <tr>
                    <th>ID</th>
                    <th>Имя</th>
                    <th>Дата рождения</th>
                    <th>Список выполняемых команд</th>
                </tr>
                <#list cats as cat>
                    <tr>
                        <th>${cat.id}</th>
                        <th>${cat.name}</th>
                        <th>${cat.birthDate}</th>
                        <th><#list cat.petCommands as commands>${commands}</#list></th>
                        <th><a href="#">Редактировать</a> </th>
                    </tr>
                <#else>
                    <h3>Нет записей</h3>
                </#list>
            </table><br><br>

            <div class="row">
                <div class="main"><b>Собаки</b></div>
            </div>
            <table>
                <tr>
                    <th>ID</th>
                    <th>Имя</th>
                    <th>Дата рождения</th>
                    <th>Список выполняемых команд</th>
                </tr>
                <#list dogs as dog>
                    <tr>
                        <th>${dog.id}</th>
                        <th>${dog.name}</th>
                        <th>${dog.birthDate}</th>
                        <th><#list dog.petCommands as commands>${commands}</#list></th>
                        <th><a href="#">Редактировать</a> </th>
                    </tr>
                <#else>
                    <h3>Нет записей</h3>
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