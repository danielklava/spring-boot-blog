<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" trimDirectiveWhitespaces="true"%>

<%@ taglib prefix="layout" tagdir="/WEB-INF/tags/layout" %>
<%@ taglib prefix="posts" tagdir="/WEB-INF/tags/posts" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>

<layout:template>

    <div class="container">
        <div class="row justify-content-center">
            <div class="col-md-8 list-posts">
                <posts:latest posts="${latestPosts}" />
            </div>
            <div class="col-md-2">
                <posts:archiveList data="${archiveList}" />
            </div>
        </div>
    </div>

</layout:template>