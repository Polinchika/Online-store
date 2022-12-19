<#import "templates/blocks.ftlh" as t>
<@t.template userByPrincipal>
<main>
    <section class="py-5 text-center container">
        <h1 style="text-align: center">Личный кабинет</h1>
        <hr>
        <div style="text-align: center">
            <img src="/images/${image.id?c}"
                 style="border:2px solid black; border-radius: 20px" height="120">
<#--    <img src="/images/${image.id?c}" height="60ps"/> <br><br>-->
            <br>
            <br>
            <h2>Имя: ${user.name}</h2> <br>
            <b>Адрес электронной почты: </b> ${user.email} <br>
            <b>Номер телефона: </b> ${user.phoneNumber} <br>
<#--            <#if errorMessage??>-->
<#--                <h2 style="color: red">${errorMessage}</h2>-->
<#--            </#if>-->
            <a href="/user/${user.id?c}/update">Редактировать</a>
        </div>
        <br>
        <hr>
<#--        <h1 style="text-align: center">Товары пользователя ${user.name}:</h1>-->
<#--        <h1 style="text-align: center">Товары</h1>-->
<#--        <br>-->
<#--        <div class="card-columns">-->
<#--            <#list products as product>-->
<#--                <a href="/product/${product.id}" class="product-link">-->
<#--                    <div class="card text-white bg-dark my-3 product">-->

<#--                        <img src="/images/${product.previewImageId}"-->
<#--                             class="card-img-top">-->
<#--                        <div class="card-body">-->
<#--                            <h5 class="card-title">${product.title}</h5>-->
<#--                            <p class="card-text">${product.price} ₽</p>-->
<#--                        </div>-->
<#--                        <div class="card-footer">-->
<#--                            ${product.user.name}-->
<#--                        </div>-->
<#--                    </div>-->
<#--                </a>-->
<#--            <#else>-->
<#--                <h1 style="text-align: center">Не найдено</h1>-->
<#--            </#list>-->
<#--        </div>-->
    </section>
</main>
</@t.template>