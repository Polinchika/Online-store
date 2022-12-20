<#import "templates/blocks.ftlh" as t>
<@t.template user>
    <main>
        <section class="py-5 text-center container">
            <h1 style="text-align: center">Панель администратора</h1>
            <hr>
            <h5 class="fw-light"><a href="/admin/info">Просмотреть информацию о пользователях</a></h5>

            <div class="row py-lg-5">
                <div class="col-lg-6 col-md-8 mx-auto">
                    <h1 style="text-align: center">Товары</h1>
                    <hr>
                    <a class="btn btn-dark mt-3 mb-3" style="text-align: center; width: 100%"
                       data-toggle="collapse" href="#collapseExample" role="button"
                       aria-expanded="true" aria-controls="collapseExample">
                        Добавить новый товар
                    </a>
                    <div class="collapse mb-3" id="collapseExample" style="">
                        <form action="/product/create" method="post" enctype="multipart/form-data">
                            <div class="form-group">
                                <label for="productName">Название товара</label>
                                <input type="text" required class="form-control"
                                       id="productName" name="title">
                            </div>
                            <div class="form-group">
                                <label for="price">Цена товара</label>
                                <div class="input-group mb-3">
                                    <input type="number" required class="form-control" id="price" name="price">
                                    <div class="input-group-append">
                                        <span class="input-group-text">₽</span>
                                    </div>
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="searchCategory">Категория</label>
                                <select id="searchCategory" required name="category" class="form-control">
                                    <option value="">Категория не выбрана</option>

                                    <option value="Кольца">Кольца</option>
                                    <option value="Ожерелья">Ожерелья</option>
                                    <option value="Браслеты">Браслеты</option>

                                </select>
                            </div>
                            <div class="form-group">
                                <label for="description">Описание товара</label>
                                <textarea required class="form-control" id="description" name="description"></textarea>
                            </div>
                            <div class="form-group">
                                <div class="custom-file">
                                    <input required type="file" name="file1" id="file1">
                                    <label class="custom-file-label" for="file1">Первая фотография к товару</label>
                                </div>
                            </div>
                            <div class="form-group">
                                <div class="custom-file">
                                    <input type="file" name="file2" id="file2">
                                    <label class="custom-file-label" for="file2">Вторая фотография к товару</label>
                                </div>
                            </div>
                            <div class="form-group">
                                <div class="custom-file">
                                    <input type="file" name="file3" id="file3">
                                    <label class="custom-file-label" for="file3">Третья фотография к товару</label>
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="instruction">Инструкция по выполнению товара</label>
                                <textarea required class="form-control" id="instruction" name="instruction"></textarea>
                            </div>
                            <div class="form-group">
                                <div class="custom-file">
                                    <input required type="file" name="file4" id="file4">
                                    <label class="custom-file-label" for="file4">Первая фотография к инструкции</label>
                                </div>
                            </div>
                            <div class="form-group">
                                <div class="custom-file">
                                    <input required type="file" name="file5" id="file5">
                                    <label class="custom-file-label" for="file5">Вторая фотография к инструкции</label>
                                </div>
                            </div>
                            <div class="form-group">
                                <div class="custom-file">
                                    <input required type="file" name="file6" id="file6">
                                    <label class="custom-file-label" for="file6">Третья фотография к инструкции</label>
                                </div>
                            </div>
                            <input type="hidden" name="_csrf" value="${_csrf.token}"/>
                            <button type="submit" style="width: 100%" class="btn btn-dark">Добавить</button>
                        </form>
                    </div>
                </div>
            </div>

            <div class="card-columns">
                <#list products as product>
                    <a href="/product/${product.id}" class="product-link">
                        <div class="card text-white bg-dark my-3 product">
                            <div class="row">
                                <div class="card-top">
                                    <form action="/product/delete/${product.id}" method="post">
                                        <input type="hidden" name="_csrf" value="${_csrf.token}"/>
                                        <button type="submit" class="btn btn-danger m-3">
                                            Удалить
                                        </button>
                                    </form>
<#--                                    <div class="btn btn-primary m-3"><a href="/product/${product.id}/update">Edit</a></div>-->
                                    <form action="/product/update/${product.id}" method="get">
                                        <input type="hidden" name="_csrf" value="${_csrf.token}"/>
                                        <button type="submit" class="btn btn-primary m-3">
                                            Редактировать
                                        </button>
                                    </form>
                                </div>
                            </div>
                            <img src="/images/${product.previewImageId}"
                                 class="card-img-top">
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
        </section>
    </main>
</@t.template>