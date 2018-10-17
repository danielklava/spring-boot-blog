<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ tag body-content="scriptless"  trimDirectiveWhitespaces="true" %>
<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags" %>

<security:authorize access="hasAnyRole('USER')" var="isUser" />

<header class="blog-header py-3">
    <div class="row flex-nowrap justify-content-between align-items-center">
        <div class="col-4 pt-1">
            <a class="text-muted" href="#">Subscribe</a>
        </div>
        <div class="col-4 text-center">
            <a class="blog-header-logo text-dark" href="#">Large</a>
        </div>
        <div class="col-4 d-flex justify-content-end align-items-center">
            <a class="text-muted" href="#">
                <svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="mx-3"><circle cx="10.5" cy="10.5" r="7.5"></circle><line x1="21" y1="21" x2="15.8" y2="15.8"></line></svg>
            </a>
            ${isUser}
            <c:choose>
                <c:when test="isUser">
                    <a class="btn btn-sm" href="/admin">Admin</a>
                </c:when>
                <c:otherwise>
                    <a class="btn btn-sm" href="/login">Entrar</a>
                </c:otherwise>
            </c:choose>
            <a class="btn btn-sm btn-outline-secondary" href="#">Registrar-se</a>
        </div>
    </div>
</header>

<div class="nav-scroller py-1 mb-2">
    <nav class="nav d-flex justify-content-between">
        <a class="p-2 text-muted" href="#">Sobre</a>
        <a class="p-2 text-muted" href="#">Tecnologia</a>
        <a class="p-2 text-muted" href="#">Economia</a>
        <a class="p-2 text-muted" href="#">Design</a>
        <a class="p-2 text-muted" href="#">Cultura</a>
        <a class="p-2 text-muted" href="#">Negócios</a>
    </nav>
</div>
