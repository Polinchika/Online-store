<#import "templates/blocks.ftlh" as t>
<@t.template user>
    <main>
        <section class="py-5 text-center container">
            <h1 style="text-align: center">Редактирование продукта</h1>
            <hr>
            <form action="/product/update/${id}" method="post" enctype="multipart/form-data">
                Название: <input type="text" name="title" placeholder="${product.title}"/><br><br>
                Цена: <input type="number" name="price" placeholder="${product.price}"><br><br>
                Описание: <input type="text" name="description" placeholder="${product.description}"><br><br>
<#--                Фотография 1: <img src="/images/${product.previewImageId}" height="60ps"/> <br><br>-->
<#--                <input type="file" name="file11"/><br><br>-->
<#--                Фотография 2:-->
<#--                <#if (product.countImages() > 1) >-->
<#--                    <img src="/images/${image[1].id}" height="60ps"/> <br><br>-->
<#--                </#if>-->
<#--                <input type="file" name="file12"/><br><br>-->
<#--                Фотография 3:-->
<#--                <#if (product.countImages() > 2) >-->
<#--                    <img src="/images/${image[2].id}" height="60ps"/> <br><br>-->
<#--                </#if>-->
<#--                <input type="file" name="file13"/><br><br>-->
                    <h1 style="text-align: center">Редактирование инструкции</h1>
                    <hr>
                Инструкция: <input type="text" name="instruction" placeholder="${product.instruction}"><br><br>
<#--                Фотография 1:-->
<#--                <#if (product.countImages() > 3) >-->
<#--                    <img src="/images/${image[3].id}" height="60ps"/> <br><br>-->
<#--                </#if>-->
<#--                <input type="file" name="file14"/><br><br>-->
<#--                Фотография 2:-->
<#--                <#if (product.countImages() > 4) >-->
<#--                    <img src="/images/${image[4].id}" height="60ps"/> <br><br>-->
<#--                </#if>-->
<#--                <input type="file" name="file15"/><br><br>-->
<#--                Фотография 3:-->
<#--                <#if (product.countImages() > 5) >-->
<#--                    <img src="/images/${image[5].id}" height="60ps"/> <br><br>-->
<#--                </#if>-->
<#--                <input type="file" name="file16"/><br><br>-->
                <input type="hidden" name="_csrf" value="${_csrf.token}"/>
                <button type="submit" class="btn btn-dark">Изменить продукт</button>
            </form>
        </section>
    </main>
</@t.template>