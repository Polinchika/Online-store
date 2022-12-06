<!DOCTYPE HTML>
<html>
<head>
    <title>Handiwork</title>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css">
</head>
<body>
<div class="container py-3">
    <header>
        <div class="d-flex flex-column flex-md-row align-items-center pb-3 mb-4 border-bottom">
            <a href="/" class="d-flex align-items-center text-dark text-decoration-none">
                <svg xmlns="http://www.w3.org/2000/svg" width="40" height="40" fill="currentColor" class="bi bi-stars" viewBox="0 0 20 20">
                    <path d="M7.657 6.247c.11-.33.576-.33.686 0l.645 1.937a2.89 2.89 0 0 0 1.829 1.828l1.936.645c.33.11.33.576 0 .686l-1.937.645a2.89 2.89 0 0 0-1.828 1.829l-.645 1.936a.361.361 0 0 1-.686 0l-.645-1.937a2.89 2.89 0 0 0-1.828-1.828l-1.937-.645a.361.361 0 0 1 0-.686l1.937-.645a2.89 2.89 0 0 0 1.828-1.828l.645-1.937zM3.794 1.148a.217.217 0 0 1 .412 0l.387 1.162c.173.518.579.924 1.097 1.097l1.162.387a.217.217 0 0 1 0 .412l-1.162.387A1.734 1.734 0 0 0 4.593 5.69l-.387 1.162a.217.217 0 0 1-.412 0L3.407 5.69A1.734 1.734 0 0 0 2.31 4.593l-1.162-.387a.217.217 0 0 1 0-.412l1.162-.387A1.734 1.734 0 0 0 3.407 2.31l.387-1.162zM10.863.099a.145.145 0 0 1 .274 0l.258.774c.115.346.386.617.732.732l.774.258a.145.145 0 0 1 0 .274l-.774.258a1.156 1.156 0 0 0-.732.732l-.258.774a.145.145 0 0 1-.274 0l-.258-.774a1.156 1.156 0 0 0-.732-.732L9.1 2.137a.145.145 0 0 1 0-.274l.774-.258c.346-.115.617-.386.732-.732L10.863.1z"/>
                </svg>
                <span class="fs-4">Handiwork</span>
            </a>
            <nav class="d-inline-flex mt-2 mt-md-0 ms-md-auto">
                <a class="me-3 py-2 text-dark text-decoration-none" href="#">Главная</a>
                <a class="me-3 py-2 text-dark text-decoration-none" href="#">Профиль</a>
                <a class="me-3 py-2 text-dark text-decoration-none" href="#">Избранное</a>
                <a class="py-2 text-dark text-decoration-none" href="#">Корзина</a>
            </nav>
        </div>
    </header>

    <main>
        <section class="py-5 text-center container">
            <div class="row py-lg-5">
                <div class="col-lg-6 col-md-8 mx-auto">
                    <h1 class="fw-light">Hello world</h1>

                    <h4>Подробная информация о товаре</h4>
                    <#list images as img>
                        <img src="/images/${img.id}" height="60px"/><br><br>
                    </#list>
                    <b>Название товара </b>${product.title}<br>
                    <b>Описание товара </b>${product.description}<br>
                    <b>Цена товара </b>${product.price}<br>
                    <b>Категория товара </b>${product.category}<br>
                    <b>Инструкция по изготовлению товара </b>${product.instruction}<br>

                    <hr>
                    <form action="/product/delete/${product.id}" method="post">
                        <input type="submit" value="Удалить товар"/><br><br>
                    </form>
                </div>
            </div>
        </section>
    </main>
</div>
</body>
</html>
