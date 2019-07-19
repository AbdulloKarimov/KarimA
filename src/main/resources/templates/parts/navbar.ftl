
<#include "security.ftl">
<#import "login.ftl" as l>
<nav class="navbar navbar-default navbar-custom navbar-fixed-top navbar-right navbar-expand-lg">
        <div class="container-fluid">
            <!-- Brand and toggle get grouped for better mobile display -->
<div class="navbar-header page-scroll">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>

            </div>

            <!-- Collect the nav links, forms, and other content for toggling -->
<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                <ul class="nav navbar-nav navbar-right" style="margin-right:10%">
                    <li>
                        <a href="/">Домашняя страница</a>
                    </li>
                    <li>
                        <a href="/about">Продукты</a>
                    </li>
                    <li>
                        <a href="/contact">Контакты</a>
                    </li>
                </ul>
            </div>
            <!-- /.navbar-collapse -->

        <!-- /.container -->



		<div class="text">${name}</div>
	      <#if user??>
    <@l.logout />
</#if>
<#if !user??><@l.login1 /></#if>
</div>
	  </nav>