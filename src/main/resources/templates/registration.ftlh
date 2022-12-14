<#import "templates/blocks.ftlh" as t>
<@t.template user>
    <main>
        <div class="row py-lg-5">
            <div class="col-lg-6 col-md-8 mx-auto">
                <div class="container">
                    <h1 style="text-align: center">Регистрация</h1>
                    <hr>
                    <form action="/registration" method="post">
                        <div class="form-group">
                            <label for="name">Имя пользователя</label>
                            <input type="text" class="form-control" required id="name" name="name">
                        </div>
                        <div class="form-group">
                            <label for="email">Электронная почта</label>
                            <input type="email" class="form-control" id="email" required name="email">
                        </div>
                        <div class="form-group">
                            <label for="phoneNumber">Номер телефона</label>
                            <input type="text" class="form-control" id="phoneNumber" required name="phoneNumber">
                        </div>
                        <div class="form-group">
                            <label for="password">Пароль</label>
                            <input type="password" class="form-control" id="password" required name="password">
                        </div>
                        <input type="hidden" name="_csrf" value="${_csrf.token}">
                        <button type="submit" style="width: 100%" class="btn btn-dark">Зарегистрироваться</button>
                    </form>
                    <#if errorMessage??>
                        <h2 style="color: red">${errorMessage}</h2>
                    </#if>
                </div>
            </div>
        </div>
    </main>
</@t.template>