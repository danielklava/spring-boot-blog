<%@ tag body-content="scriptless"  trimDirectiveWhitespaces="true" %>
<%@ attribute name="data" required="true" type="java.util.List<br.com.dkblog.dto.ArchiveCountDTO>" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>

<h3>Archive List</h3>
<ul class="archive-list">
    <c:forEach items="${data}" var="item">
        <fmt:formatDate value="${item.date}" type="date" var="itemDate"/>
        <fmt:formatDate value="${item.date}" pattern="yyyy/MM/dd" var="hrefDate"/>
        <li><a href="/posts/${hrefDate}">${itemDate} (${item.count})</a></li>
    </c:forEach>
</ul>
