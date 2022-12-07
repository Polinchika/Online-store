<!DOCTYPE html>
<html>
<head>
    <title>Handiwork</title>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css">
</head>
<body>
<div class="container">
    <h4>Авторизация</h4>
    <form class="form-signin" method="post" action="/login">
        <h2 class="form-signin-heading">Пожалуйста, войдите в систему</h2>
            <label for="username" class="sr-only">Электронная почта</label>
            <input type="email" name="username" class="form-control" placeholder="Username" required="" autofocus="">
        </p>
        <p>
            <label for="password" class="sr-only">Пароль</label>
            <input type="password" name="password" class="form-control" placeholder="Password" required="">
        </p>
        <input type="hidden" name="_csrf" value="${_csrf.token}">
        <input type="submit" value="Вход"/>
    </form>
    <a href="/registration">Зарегистрироваться</a>
</div>
</body>
</html>