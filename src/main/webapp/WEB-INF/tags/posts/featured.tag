<%@ tag body-content="scriptless"  trimDirectiveWhitespaces="true" %>
<%@ attribute name="posts" required="true" type="java.util.List<br.com.dkblog.models.Post>" %>
<%@ attribute name="cssClass" required="false" type="java.lang.String" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<c:forEach items="${posts}" var="p">
    <div class="${cssClass} post-summary">
        <a href="/posts/view/${p.id}">
            <article>
                <h4 class="title">${p.title}</h4>

                <div class="date">
                    <i>Posted on</i>
                    <span>${p.date}</span>
                    <span>
                        <i>by</i>
                        <span>${p.author.fullName != null ? p.author.fullName : p.author.username}</span>
                    </span>
                </div>
                <p class="content">${p.body.substring(0, 100).concat("...")}</p>
            </article>
        </a>
    </div>
</c:forEach>