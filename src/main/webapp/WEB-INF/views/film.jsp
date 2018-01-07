<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<html lang="en">
<head>
    <title>${film.title} - Movie Database</title>
    <jsp:include page="styles.jsp"/>
</head>
<body>
<jsp:include page="navbar.jsp"/>
<div class="container">
    <div class="row mjx-header">
        <div class="col-sm-8">
            <h2>${film.title}</h2>
        </div>
        <div class="col-sm-2">
            <div class="star-container">
                <img src="/resources/star.png" alt="Star" style="width: 50px">
                <div class="centered-text">${rating}</div>
            </div>
        </div>
        <div class="col-sm-2"></div>
    </div>
    <div class="row">
        <div class="col-sm-1"></div>
        <div class="film-details col-sm-10">
            <div class="row">
                <div class="col-sm-5">
                    <img class="film-poster-detail" src="${film.poster}" alt="movie" >
                </div>
                <div class="col-sm-5">
                    <div class="film-detail-director">
                        <p>Director: <b>${film.director}</b></p>
                    </div>
                    <div class="film-detail-year">
                        <p>Year: <b>${film.year}</b></p>
                    </div>
                    <div class="film-detail-country">
                        <p>Country: <b>${film.country}</b></p>
                    </div>
                    <div class="film-detail-genre">
                        <p>Genre: <b>${film.genre1}<c:if test="${film.genre2!=null}">, ${film.genre2}</c:if> </b></p>
                    </div>
                    <div class="film-detail-cast">
                        <p>Main Cast:<br>
                            <b>
                                ${film.cast1}<br>
                                ${film.cast2}<br>
                                ${film.cast3}<br>
                                ${film.cast4}<br>
                                ${film.cast5}<br>
                            </b>
                        </p>
                    </div>
                    <div class="film-detail-imdb">
                        <a href="${film.imdbLink}"><img style="height: 50px; width: 50px;" src="/resources/imdb.ico" alt="movie" ></a>
                    </div>
                </div>
            </div>
        </div>
        <div class="col-sm-1"></div>
    </div>
    <div class="row">
        <div class="col-sm-3"></div>
        <div class="col-sm-6 enter-comment">
            <h3>Add Comment</h3>
            <form:form modelAttribute="comment" method="post" action="/addComment">
                <form:input cssClass="form-control mr-sm-2" cssStyle="margin: 10px" path="name" placeholder="Name"/>
                <form:radiobuttons cssClass="" items="${scores}" path="score"/>
                <form:textarea cssClass="form-control mr-sm-2" cssStyle="margin: 10px; height: 100px" placeholder="Message" path="content"/>
                <form:hidden path="id"/>
                <input class="btn btn-info my-2 my-sm-0" style="font-weight: bold" type="submit" value="SEND">
            </form:form>
        </div>
        <div class="col-sm-3"></div>
    </div>
    <div class="comments-section row">
        <div class="col-sm-1"></div>
        <div class="col-sm-10">
            <h3>Comments</h3>
            <c:forEach items="${film.comments.comment}" var="comment">
                <div id="comment-${comment.id}" class="comment-detail row bg-info" style="margin-bottom: 20px; padding-bottom:10px; padding-top: 10px">
                    <div class="col-sm-2">
                        <h4 style="text-align: center">${comment.name}</h4>
                        <div class="star-container">
                            <img src="/resources/star.png" alt="Star" style="width: 50px">
                            <div class="centered-text">${comment.score}</div>
                        </div>
                    </div>
                    <div class="col-sm-8">
                        <p>${comment.content}</p>
                    </div>
                </div>
            </c:forEach>
        </div>
        <div class="col-sm-1"></div>
    </div>
</div>
<jsp:include page="footer.jsp"/>
<jsp:include page="scripts.jsp"/>
</body>
</html>