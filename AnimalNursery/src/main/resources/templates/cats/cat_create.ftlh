<!DOCTYPE html>
<html lang="english">
    <head>
        <title>PET NURSERY</title>
    </head>
    <body>
        <h1>PET NURSERY | <a href="/">Главная</a> | <a href="/cat/create">Добавить нового</a></h1>
        <h4>Добавить нового животного Кот:</h4><br>
        <form action="/cat/create" method="post">
            Имя (кличка): <input type="text" name="name"/><br><br>
            Дата рождения: <input type="date" name="birthDate"/><br><br>
            Команды, которые может выполнять: <input type="text" name="petCommands"/>  (через пробел)<br><br>
            <input type="submit" value="Добавить питомца"/>
        </form>
    </body>
</html>