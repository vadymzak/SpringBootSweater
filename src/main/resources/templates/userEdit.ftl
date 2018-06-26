<#import "parts/common.ftl" as c>

<@c.page>
User editor
<form action="/user" method="post">
    <input type="text" name="username" value="${user.username}" />
    <#list roles as role>
            <div>
               <label> <input type="checkbox" name="${role}" ${user.roles?seq_contains(role)?string("checked", "")}>${role}</label>
            </div>gi
    </#list>
    <input type="hidden" name="id" value="${user.id}" />
    <input type="hidden" name="_csrf" value="${_csrf.token}" />
    <button type="submit">Зберегти</button>
</form>

</@c.page>