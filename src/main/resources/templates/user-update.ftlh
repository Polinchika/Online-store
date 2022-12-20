<#import "templates/blocks.ftlh" as t>
<@t.template user>
    <main>
        <section class="py-5 text-center container">
            <h1 style="text-align: center">Редактирование профиля</h1>
            <hr>
    <form method="post" enctype="multipart/form-data">
        Имя: <input type="text" name="name" placeholder="${user.name}"/><br><br>
        Номер телефона: <input type="text" name="phoneNumber" placeholder="${user.phoneNumber}"><br><br>
        Аватар: <img src="/images/${image.id?c}" height="60ps"/> <br><br>
        <input type="file" name="file"/><br><br>
        <input type="hidden" name="_csrf" value="${_csrf.token}"/>
        <input type="submit" value="Изменить профиль"/>
    </form>
</@t.template>