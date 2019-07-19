
<#include "security.ftl">
<#import "login.ftl" as l>
<nav class="navbar navbar-expand-lg navbar-light bg-light">
  <a class="navbar-brand" href="/">Karim-A</a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>
  <div class="collapse navbar-collapse" id="navbarNav">
    <ul class="navbar-nav">
      <li class="nav-item active">
        <a class="nav-link" href="/">Домашняя страница <span class="sr-only">(current)</span></a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="/foods">Продукты</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="/contact">Контакты</a>
      </li>

     <#if isAdmin>
       <li class="nav-item">
         <a href="/user" class="nav-link">Список пользователей</a>
       </li>
	 </#if>

    <#if isEditor>
      <li class="nav-item">
        <a class="nav-link" href="/user-messages/${currentUserId}">Мои статьи</a>
      </li>
    </#if>

    </ul>
  </div>


		<div class="text"> ${name}</div>
	      <#if user??>
    <@l.logout />
</#if>
<#if !user??><@l.login1 /></#if>

	  </nav>
</div>