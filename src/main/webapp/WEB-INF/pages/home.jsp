<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" trimDirectiveWhitespaces="true"%>

<%@ taglib prefix="layout" tagdir="/WEB-INF/tags/layout" %>
<%@ taglib prefix="posts" tagdir="/WEB-INF/tags/posts" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>

<layout:template>

    <div class="jumbotron bg-home">
        <div class="container-fluid featured-posts">
            <div class="row">
                <posts:featured posts="${featuredPosts}" cssClass="col-md-4" />
            </div>
        </div>
    </div>

    <div class="container-fluid main-content">
        <div class="row justify-content-center">
            <div class="col-md-8 list-posts latest-posts">
                <posts:latest posts="${latestPosts}" />
            </div>
            <div class="col-md-2">
                <posts:archiveList data="${archiveList}" />
            </div>
        </div>
    </div>

</layout:template>