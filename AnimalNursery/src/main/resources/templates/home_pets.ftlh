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
            <h1>ДОМАШНИЕ ЖИВОТНЫЕ</h1>
            <p>. . .</p>
        </div>

        <div class="navbar">
            <a href="/">Главная</a>
            <a href="/home_pets">Домашние питомцы</a>
            <a href="/pack_pets">Вьючные животные</a>
        </div>

        <button class="accordion">Хомячки</button>
        <div class="panel">
            <p>Lorem ipsum...</p>
        </div>

        <button class="accordion">Кошки</button>
        <div class="panel">
            <div class="tab">
                <button class="tablinks" onclick="openVerticalTab(event, 'addCat')" id="defaultOpenTab">Добавить</button>
                <button class="tablinks" onclick="openVerticalTab(event, 'listCat')">Список всех</button>
                <button class="tablinks" onclick="openVerticalTab(event, 'redactCat')">Редактировать</button>
                <button class="tablinks" onclick="openVerticalTab(event, 'deleteCat')">Удалить</button>
            </div>

            <div id="addCat" class="tabcontent">
                <h3>Добавить</h3>
                <form action="/cat/create" method="post">
                    Имя (кличка): <input type="text" name="name"/><br><br>
                    Дата рождения: <input type="date" name="birthDate"/><br><br>
                    Команды, которые может выполнять: <input type="text" name="petCommands"/>  (через пробел)<br><br>
                    <input type="submit" value="Добавить питомца"/>
                </form>
            </div>

            <div id="listCat" class="tabcontent">
                <h3>Список всех</h3>
                <table>
                <#list cats as cat>
                <tr>
                    <th>${cat.id}</th>
                    <th>${cat.name}</th>
                    <th>${cat.birthDate}</th>
                    <th><#list cat.petCommands as commands>${commands}</#list></th>
                </tr>
                <#else>
                    <h3>Нет записей</h3>
                </#list>
                </table>
            </div>

            <div id="redactCat" class="tabcontent">
                <h3>Редактировать</h3>
                <form action="/edit" method="post">
                    <input type="hidden" value="${cat.id}" name="id">
                    <button type="submit">Сохранить</button>
                </form>
            </div>

            <div id="deleteCat" class="tabcontent">
                <h3>Удалить</h3>
                <p>Tokyo is the capital of Japan.</p>
            </div>
        </div>

        <button class="accordion">Собаки</button>
        <div class="panel">
            <p>Lorem ipsum...</p>
        </div>

    <script>
        var acc = document.getElementsByClassName("accordion");
        var i;

        for (i = 0; i < acc.length; i++) {
            acc[i].addEventListener("click", function() {
                /* Toggle between adding and removing the "active" class,
                to highlight the button that controls the panel */
                this.classList.toggle("active");

                /* Toggle between hiding and showing the active panel */
                var panel = this.nextElementSibling;
                if (panel.style.display === "block") {
                    panel.style.display = "none";
                } else {
                    panel.style.display = "block";
                }
            });
        }

        function openVerticalTab(evt, tabName) {
            // Declare all variables
            var i, tabcontent, tablinks;

            // Get all elements with class="tabcontent" and hide them
            tabcontent = document.getElementsByClassName("tabcontent");
            for (i = 0; i < tabcontent.length; i++) {
                tabcontent[i].style.display = "none";
            }

            // Get all elements with class="tablinks" and remove the class "active"
            tablinks = document.getElementsByClassName("tablinks");
            for (i = 0; i < tablinks.length; i++) {
                tablinks[i].className = tablinks[i].className.replace(" active", "");
            }

            // Show the current tab, and add an "active" class to the link that opened the tab
            document.getElementById(tabName).style.display = "block";
            evt.currentTarget.className += " active";
        }

        // Get the element with id="defaultOpen" and click on it
        document.getElementById("defaultOpenTab").click();
    </script>
    </body>
</html>