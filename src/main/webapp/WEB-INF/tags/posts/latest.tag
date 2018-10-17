<%@ tag body-content="scriptless"  trimDirectiveWhitespaces="true" %>
<%@ attribute name="posts" required="true" type="java.util.List<br.com.dkblog.models.Post>" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<c:forEach items="${posts}" var="p">
    <div class="col-md-12 blog-post">
        <article>
            <h2 class="title">${p.title}</h2>

            <div class="date">
                <i>Posted on</i>
                <span>${p.date}</span>
                <span>
                    <i>by</i>
                    <span>${p.author.fullName != null ? p.author.fullName : p.author.username}</span>
                </span>
            </div>
            <p class="content">${p.body}</p>
        </article>
    </div>
</c:forEach>