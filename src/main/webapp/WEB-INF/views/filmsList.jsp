<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html lang="en">
<head>
    <title>Movie Database</title>
    <jsp:include page="styles.jsp"/>
</head>
<body>
<jsp:include page="navbar.jsp"/>
<div class="container">
            <c:forEach items="${films}" varStatus="filmCount" step="3">
                <div class="row movie-image">
                    <div class="col-sm-3 film-thumbnail">
                        <a href="/movie/${films[3*(filmCount.count-1)].id}">
                            <img class="film-poster" src="${films[3*(filmCount.count-1)].poster}" alt="movie"/>
                            <p>${films[3*(filmCount.count-1)].title}</p>
                        </a>
                    </div>
                    <div class="col-sm-3 film-thumbnail">
                        <a href="/movie/${films[3*(filmCount.count-1)+1].id}">
                            <img class="film-poster" src="${films[3*(filmCount.count-1)+1].poster}" alt="movie"/>
                            <p>${films[3*(filmCount.count-1)+1].title}</p>
                        </a>
                    </div>
                    <div class="col-sm-3 film-thumbnail">
                        <a href="/movie/${films[3*(filmCount.count-1)+2].id}">
                            <img class="film-poster" src="${films[3*(filmCount.count-1)+2].poster}" alt="movie"/>
                            <p>${films[3*(filmCount.count-1)+2].title}</p>
                        </a>
                    </div>
                </div>
            </c:forEach>
    </div>
<jsp:include page="footer.jsp"/>
<jsp:include page="scripts.jsp"/>
</body>
</html>