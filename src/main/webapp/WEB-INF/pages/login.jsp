<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" trimDirectiveWhitespaces="true"%>

<%@ taglib prefix="layout" tagdir="/WEB-INF/tags/layout" %>
<%@ taglib prefix="posts" tagdir="/WEB-INF/tags/posts" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>

<layout:template>

    <main class="container">
        <div class="row justify-content-md-center">
            <div class="col-md-4 form-login">
                <form action="perform_login" method="post">
                    <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
                    <div class="form-group">
                        <label for="username">Usuário</label>
                        <input name="username" type="text" class="form-control" />
                    </div>
                    <div class="form-group">
                        <label for="password">Senha</label>
                        <input name="password" type="password" class="form-control" />
                    </div>
                    <div class="form-group">
                        <input type="submit" value="Entrar" class="btn btn-primary"/>
                    </div>
                </form>
            </div>
        </div>
    </main>

</layout:template>