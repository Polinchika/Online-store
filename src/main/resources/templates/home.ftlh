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

                    <form action="/" method="get">
                        Поиск по названию объявления: <input type="text" name="title"><br>
                        <input type="submit" value="Поиск"/>
                    </form>

                    <#list products as product>
                        <div>
                            <p>${product.title} ${product.price} руб. | <a href="/product/${product.id}">Подробнее...</a></p>
                        </div>
                        <#else>
                        <h3>Товаров нет</h3>
                    </#list>
                    <hr>
                    <h3> New product </h3>
                    <form action="/product/create" method="post">
                        Название товара: <input type="text" name="title"/><br><br>
                        Описание: <input type="text" name="description"/><br><br>
                        Цена: <input type="number" name="price"/><br><br>
                        Категория: <input type="text" name="category"/><br><br>
                        Инструкция: <input type="text" name="instruction"/><br><br>
                        <input type="submit" value="Добавить товар"/><br><br>
                    </form>
                                        <p class="lead text-muted">Какой-то текст</p>
                                        <p>
                                            <a href="#" class="btn btn-primary my-2">Первичное действие</a>
                                            <a href="#" class="btn btn-secondary my-2">Вторичное действие</a>
                                        </p>
                                    </div>
                                </div>
                            </section>

                            <div class="album py-5 bg-light">
                                <div class="container">

                                    <div class="row row-cols-1 row-cols-sm-2 row-cols-md-3 g-3">
                                        <div class="col">
                                            <div class="card shadow-sm">
                                                <svg class="bd-placeholder-img card-img-top" width="100%" height="225" xmlns="http://www.w3.org/2000/svg" role="img" aria-label="Placeholder: Thumbnail" preserveAspectRatio="xMidYMid slice" focusable="false">
                                                    <title>Placeholder</title>
                                                    <rect width="100%" height="100%" fill="#55595c"></rect>
                                                    <text x="50%" y="50%" fill="#eceeef" dy=".3em">Product</text>

                                                </svg>

                                                <div class="card-body">
                                                    <p class="card-text">This is a wider card with supporting text below as a natural lead-in to additional content. This content is a little bit longer.</p>
                                                    <div class="d-flex justify-content-between align-items-center">
                                                        <div class="btn-group">
                                                            <button type="button" class="btn btn-sm btn-outline-secondary">Like</button>
                                                            <button type="button" class="btn btn-sm btn-outline-secondary">Buy</button>
                                                        </div>
                                                        <small class="text-muted">COST</small>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col">
                                            <div class="card shadow-sm">
                                                <svg class="bd-placeholder-img card-img-top" width="100%" height="225" xmlns="http://www.w3.org/2000/svg" role="img" aria-label="Placeholder: Thumbnail" preserveAspectRatio="xMidYMid slice" focusable="false"><title>Placeholder</title><rect width="100%" height="100%" fill="#55595c"></rect><text x="50%" y="50%" fill="#eceeef" dy=".3em">Product</text></svg>

                                                <div class="card-body">
                                                    <p class="card-text">This is a wider card with supporting text below as a natural lead-in to additional content. This content is a little bit longer.</p>
                                                    <div class="d-flex justify-content-between align-items-center">
                                                        <div class="btn-group">
                                                            <button type="button" class="btn btn-sm btn-outline-secondary">Like</button>
                                                            <button type="button" class="btn btn-sm btn-outline-secondary">Buy</button>
                                                        </div>
                                                        <small class="text-muted">COST</small>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col">
                                            <div class="card shadow-sm">
                                                <svg class="bd-placeholder-img card-img-top" width="100%" height="225" xmlns="http://www.w3.org/2000/svg" role="img" aria-label="Placeholder: Thumbnail" preserveAspectRatio="xMidYMid slice" focusable="false"><title>Placeholder</title><rect width="100%" height="100%" fill="#55595c"></rect><text x="50%" y="50%" fill="#eceeef" dy=".3em">Product</text></svg>

                                                <div class="card-body">
                                                    <p class="card-text">This is a wider card with supporting text below as a natural lead-in to additional content. This content is a little bit longer.</p>
                                                    <div class="d-flex justify-content-between align-items-center">
                                                        <div class="btn-group">
                                                            <button type="button" class="btn btn-sm btn-outline-secondary">Like</button>
                                                            <button type="button" class="btn btn-sm btn-outline-secondary">Buy</button>
                                                        </div>
                                                        <small class="text-muted">COST</small>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>

                                        <div class="col">
                                            <div class="card shadow-sm">
                                                <svg class="bd-placeholder-img card-img-top" width="100%" height="225" xmlns="http://www.w3.org/2000/svg" role="img" aria-label="Placeholder: Thumbnail" preserveAspectRatio="xMidYMid slice" focusable="false"><title>Placeholder</title><rect width="100%" height="100%" fill="#55595c"></rect><text x="50%" y="50%" fill="#eceeef" dy=".3em">Product</text></svg>

                                                <div class="card-body">
                                                    <p class="card-text">This is a wider card with supporting text below as a natural lead-in to additional content. This content is a little bit longer.</p>
                                                    <div class="d-flex justify-content-between align-items-center">
                                                        <div class="btn-group">
                                                            <button type="button" class="btn btn-sm btn-outline-secondary">Like</button>
                                                            <button type="button" class="btn btn-sm btn-outline-secondary">Buy</button>
                                                        </div>
                                                        <small class="text-muted">COST</small>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col">
                                            <div class="card shadow-sm">
                                                <svg class="bd-placeholder-img card-img-top" width="100%" height="225" xmlns="http://www.w3.org/2000/svg" role="img" aria-label="Placeholder: Thumbnail" preserveAspectRatio="xMidYMid slice" focusable="false"><title>Placeholder</title><rect width="100%" height="100%" fill="#55595c"></rect><text x="50%" y="50%" fill="#eceeef" dy=".3em">Product</text></svg>

                                                <div class="card-body">
                                                    <p class="card-text">This is a wider card with supporting text below as a natural lead-in to additional content. This content is a little bit longer.</p>
                                                    <div class="d-flex justify-content-between align-items-center">
                                                        <div class="btn-group">
                                                            <button type="button" class="btn btn-sm btn-outline-secondary">Like</button>
                                                            <button type="button" class="btn btn-sm btn-outline-secondary">Buy</button>
                                                        </div>
                                                        <small class="text-muted">COST</small>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col">
                                            <div class="card shadow-sm">
                                                <svg class="bd-placeholder-img card-img-top" width="100%" height="225" xmlns="http://www.w3.org/2000/svg" role="img" aria-label="Placeholder: Thumbnail" preserveAspectRatio="xMidYMid slice" focusable="false"><title>Placeholder</title><rect width="100%" height="100%" fill="#55595c"></rect><text x="50%" y="50%" fill="#eceeef" dy=".3em">Product</text></svg>

                                                <div class="card-body">
                                                    <p class="card-text">This is a wider card with supporting text below as a natural lead-in to additional content. This content is a little bit longer.</p>
                                                    <div class="d-flex justify-content-between align-items-center">
                                                        <div class="btn-group">
                                                            <button type="button" class="btn btn-sm btn-outline-secondary">Like</button>
                                                            <button type="button" class="btn btn-sm btn-outline-secondary">Buy</button>
                                                        </div>
                                                        <small class="text-muted">COST</small>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>

                                        <div class="col">
                                            <div class="card shadow-sm">
                                                <svg class="bd-placeholder-img card-img-top" width="100%" height="225" xmlns="http://www.w3.org/2000/svg" role="img" aria-label="Placeholder: Thumbnail" preserveAspectRatio="xMidYMid slice" focusable="false"><title>Placeholder</title><rect width="100%" height="100%" fill="#55595c"></rect><text x="50%" y="50%" fill="#eceeef" dy=".3em">Product</text></svg>

                                                <div class="card-body">
                                                    <p class="card-text">This is a wider card with supporting text below as a natural lead-in to additional content. This content is a little bit longer.</p>
                                                    <div class="d-flex justify-content-between align-items-center">
                                                        <div class="btn-group">
                                                            <button type="button" class="btn btn-sm btn-outline-secondary">Like</button>
                                                            <button type="button" class="btn btn-sm btn-outline-secondary">Buy</button>
                                                        </div>
                                                        <small class="text-muted">COST</small>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col">
                                            <div class="card shadow-sm">
                                                <svg class="bd-placeholder-img card-img-top" width="100%" height="225" xmlns="http://www.w3.org/2000/svg" role="img" aria-label="Placeholder: Thumbnail" preserveAspectRatio="xMidYMid slice" focusable="false"><title>Placeholder</title><rect width="100%" height="100%" fill="#55595c"></rect><text x="50%" y="50%" fill="#eceeef" dy=".3em">Product</text></svg>

                                                <div class="card-body">
                                                    <p class="card-text">This is a wider card with supporting text below as a natural lead-in to additional content. This content is a little bit longer.</p>
                                                    <div class="d-flex justify-content-between align-items-center">
                                                        <div class="btn-group">
                                                            <button type="button" class="btn btn-sm btn-outline-secondary">Like</button>
                                                            <button type="button" class="btn btn-sm btn-outline-secondary">Buy</button>
                                                        </div>
                                                        <small class="text-muted">COST</small>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col">
                                            <div class="card shadow-sm">
                                                <svg class="bd-placeholder-img card-img-top" width="100%" height="225" xmlns="http://www.w3.org/2000/svg" role="img" aria-label="Placeholder: Thumbnail" preserveAspectRatio="xMidYMid slice" focusable="false"><title>Placeholder</title><rect width="100%" height="100%" fill="#55595c"></rect><text x="50%" y="50%" fill="#eceeef" dy=".3em">Product</text></svg>

                                                <div class="card-body">
                                                    <p class="card-text">This is a wider card with supporting text below as a natural lead-in to additional content. This content is a little bit longer.</p>
                                                    <div class="d-flex justify-content-between align-items-center">
                                                        <div class="btn-group">
                                                            <button type="button" class="btn btn-sm btn-outline-secondary">Like</button>
                                                            <button type="button" class="btn btn-sm btn-outline-secondary">Buy</button>
                                                        </div>
                                                        <small class="text-muted">COST</small>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </main>

                        <footer class="text-muted py-5">
                            <div class="container">
                                <p class="float-end mb-1">
                                    <a href="#">Back to top</a>
                                </p>
                                <p class="mb-1">Средства связи с продавцом:</p>
                                <p class="mb-0">Контактные данные <a href="/">*Тут что-то будет*</a>.</p>
                            </div>
                        </footer>

                    </div>
                    </body>
                    </html>
