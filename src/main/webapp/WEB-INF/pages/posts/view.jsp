<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="layout" tagdir="/WEB-INF/tags/layout" %>
<%@ taglib prefix="posts" tagdir="/WEB-INF/tags/posts" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>

<layout:template>

    <main id="posts">
        <article>
            <h2 class="title">${post.title}</h2>
            <div class="date">
                <i>Posted on</i>
                <span>${post.date}</span>
                <span>${post.author}</span>
                <i>by</i>
                <span>${post.author.fullName != null ? post.author.fullName : post.author.username}</span>
            </div>
            <p class="content">${post.body}</p>
        </article>
    </main>

</layout:template>