<#import "templates/blocks.ftlh" as t>
<@t.template user>
    <main>
        <section class="py-5 text-center container">
            <h1 style="text-align: center">Панель администратора</h1>
            <hr>
            <h2 style="text-align: center">Информация о пользователях</h2>
            <table class="table table-hover table-dark">
                <tr>
                    <th scope="col">Email</th>
                    <th scope="col">Номер телефона</th>
                    <th scope="col">Активность</th>
                    <th scope="col">Роль</th>
                    <th scope="col">Бан</th>
                    <th scope="col">Заказы</th>
                </tr>
                <#list users as user>
                    <tr>
                        <th>${user.email}</th>
                        <th>${user.phoneNumber}</th>
                        <th><#if user.active>true<#else>false</#if></th>
                        <th><#list user.roles as role>${role}</#list></th>
                        <th>
                            <form action="/admin/user/ban/${user.id}" method="post">
                                <input type="hidden" name="_csrf" value="${_csrf.token}">
                                <input type="submit" class="btn btn-light" value="Бан">
                            </form>
                        </th>
                        <th><a href="/user/${user.id}">Информация</a></th>
                    </tr>
                <#else>
                    <h3>Пользователей нет</h3>
                </#list>
            </table>
        </section>
    </main>
</@t.template>