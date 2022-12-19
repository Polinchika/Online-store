<#import "templates/blocks.ftlh" as t>
<@t.template user>
<main>
    <section class="py-5 text-center container">
        <h1 style="text-align: center">Корзина</h1>
        <hr>
        <div class="card-columns">
        <#list products as product>
            <a href="/product/${product.id}" class="product-link">
                <div class="card text-black bg-light my-3 product">
                    <img src="/images/${product.previewImageId}" class="card-img-top">
                    <div class="card-body">
                        <h5 class="card-title">${product.title}</h5>
                        <p class="card-text">${product.price} ₽</p>
                    </div>
                    <div class="card-footer">
                        ${product.category}
                        <#--                                <#if user.email??>-->
                        <#--                                    <a href="/like" class="btn btn-sm btn-outline-secondary">Like</a>-->
                        <#--                                    <a href="/buy" class="btn btn-sm btn-outline-secondary">Buy</a>-->
                        <#--                                <#else>-->
                        <#--                                    <a href="/login" class="btn btn-sm btn-outline-secondary">Like</a>-->
                        <#--                                    <a href="/login" class="btn btn-sm btn-outline-secondary">Buy</a>-->
                        <#--                                </#if>-->
                    </div>
                </div>
            </a>
        <#else>
            <h1 style="text-align: center">Не найдено</h1>
        </#list>
        </div>
    </section>
</main>
</@t.template>