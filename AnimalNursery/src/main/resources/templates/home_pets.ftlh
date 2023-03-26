<!DOCTYPE html>
<html lang="en">
    <head>
        <title>PET NURSERY</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" type="text/css" href="/static/css/styles.css">
        <script src="/static/js/jscripts.js"></script>
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
            <p>Lorem ipsum...</p>
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
    </script>
    </body>
</html>