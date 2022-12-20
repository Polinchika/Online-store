<#import "templates/blocks.ftlh" as t>
<@t.template user>
    <main>
        <section class="py-5 text-center container">
            <h1 class="fw-light">Инструкция по изготовлению товара <b>${product.title}</b></h1>
            <#if imagesInstruction[0]??>
                <div class="container">
                    <div class="row">
                        <#list i as i>
                            <div class="col-sm">
                                <div>
                                    Шаг ${i}:
                                </div>
                                <a href="/images/${imagesInstruction[i-1].id}">
                                    <img class="product" style="height: 300px"
                                         src="/images/${imagesInstruction[i-1].id}">
                                </a>
                            </div>
                        </#list>
                    </div>
                </div>
            </#if>
            <hr>
            <p style="text-align: center"><b>Описание товара: </b>
                ${product.description}</p>
            <p style="text-align: center"><b>Инструкция по изготовлению товара: </b>
                ${product.instruction}</p><br>
        </section>
    </main>
</@t.template>