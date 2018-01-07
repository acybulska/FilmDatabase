<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html lang="en">
<head>
    <title>${film.title} - Movie Database</title>
    <jsp:include page="styles.jsp"/>
</head>
<body>
<jsp:include page="navbar.jsp"/>
<div class="jumbotron">
    <div class="container">
        <ul>
            <c:forEach items="${films}" var="film">
                <li><a href="/movie/${film.id}">${film.title}</a></li>
            </c:forEach>
        </ul>
    </div>
</div>
<jsp:include page="footer.jsp"/>
<jsp:include page="scripts.jsp"/>
</body>
</html>