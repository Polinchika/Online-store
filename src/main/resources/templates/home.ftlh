<#import "templates/blocks.ftlh" as t>
<@t.template user>
    <main>
        <section class="py-5 text-center container">
            <h1 style="text-align: center">Добро пожаловать в Handiwork!</h1>
            <hr>
            <#if user.isAdmin()>
                <h5 style="text-align: center">Вы - администратор</h5>
                <h5 class="fw-light"><a href="/admin">Перейти в панель администратора</a></h5>
                <hr>
            </#if>
            <form action="/" method="get">
                <div class="form-row">
                    <div class="form-group col-md-2">
                        <label for="searchCity">Категория</label>
                        <select id="searchCity" class="form-control">
                            <option value="">Категория не выбрана</option>
                            <option value="Кольца">Кольца</option>
                            <option value="Ожерелья">Ожерелья</option>
                            <option value="Браслеты">Браслеты</option>
                        </select>
                    </div>
                    <div class="form-group col-md-10">
                        <label for="searchWord">Поиск по товарам</label>
                        <input type="text" name="searchWord" <#if searchWord??>value="${searchWord}"</#if>
                               class="form-control"
                               id="searchWord">
                    </div>
                    <button style="width: 100%" type="submit" class="btn btn-dark">Поиск</button>
                </div>
            </form>
            <hr>
            <div class="card-columns">
                <#list products as product>
                    <a href="/product/${product.id}" class="product-link">
                        <div class="card text-white bg-dark my-3 product">
                            <img src="/images/${product.previewImageId}" class="card-img-top">
                            <div class="card-body">
                                <h5 class="card-title">${product.title}</h5>
                                <p class="card-text">${product.price} ₽</p>
                            </div>
                            <div class="card-footer">
                                ${product.category}
                            </div>
                        </div>
                    </a>
                <#else>
                    <h1 style="text-align: center">Не найдено</h1>
                </#list>
            </div>
        </section>
        <#--                            <div class="album py-5 bg-light">-->
        <#--                                <div class="container">-->
        <#--                                    <div class="row row-cols-1 row-cols-sm-2 row-cols-md-3 g-3">-->
        <#--                                        <div class="col">-->
        <#--                                            <div class="card shadow-sm">-->
        <#--                                                <svg class="bd-placeholder-img card-img-top" width="100%" height="225" xmlns="http://www.w3.org/2000/svg" role="img" aria-label="Placeholder: Thumbnail" preserveAspectRatio="xMidYMid slice" focusable="false">-->
        <#--                                                    <title>Placeholder</title>-->
        <#--                                                    <rect width="100%" height="100%" fill="#55595c"></rect>-->
        <#--                                                    <text x="50%" y="50%" fill="#eceeef" dy=".3em">Product</text>-->
        <#--                                                </svg>-->
        <#--                                                <div class="card-body">-->
        <#--                                                    <p class="card-text">This is a wider card with supporting text below as a natural lead-in to additional content. This content is a little bit longer.</p>-->
        <#--                                                    <div class="d-flex justify-content-between align-items-center">-->
        <#--                                                        <div class="btn-group">-->
        <#--                                                            <button type="button" class="btn btn-sm btn-outline-secondary">Like</button>-->
        <#--                                                            <button type="button" class="btn btn-sm btn-outline-secondary">Buy</button>-->
        <#--                                                        </div>-->
        <#--                                                        <small class="text-muted">COST</small>-->
        <#--                                                    </div>-->
        <#--                                                </div>-->
        <#--                                            </div>-->
        <#--                                        </div>-->
        <#--                                    </div>-->
        <#--                                </div>-->
        <#--                            </div>-->
    </main>
</@t.template>