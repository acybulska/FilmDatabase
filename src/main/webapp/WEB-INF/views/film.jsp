<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html lang="en">
<head>
    <title>${film.title} - Movie Database</title>
    <jsp:include page="styles.jsp"/>
</head>
<body>
<jsp:include page="navbar.jsp"/>
<div class="container">
    <div class="mjx-header">
        <h2>${film.title}</h2>
    </div>
    <div class="film-details col-md-10">
        <div class="row">
            <div class="col-md-5">
                <img class="film-poster-detail" src="${film.poster}" alt="movie" >
            </div>
            <div class="col-md-5">
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
    <div class="comments col-md-10">
        <h3>Comments</h3>
        <div class="enter-comment row">
            <div class="col-md-6">
                <form>
                    <input type="text" placeholder="Name" required="">
                    <input type="text" placeholder="Score" required="">
                    <textarea placeholder="Message" required=""></textarea>
                    <input type="submit" value="SEND">
                </form>
            </div>
        </div>
        <div class="comments-section">
            <c:forEach items="${film.comments.comment}" var="comment">
                <div id="comment-${comment.id}" class="comment-detail row">
                    <h4>${comment.name}</h4>
                    <p>${comment.content}</p>
                    <p>Score: ${comment.score}</p>
                </div>
            </c:forEach>
        </div>
    </div>
</div>
<jsp:include page="footer.jsp"/>
<jsp:include page="scripts.jsp"/>
</body>
</html>