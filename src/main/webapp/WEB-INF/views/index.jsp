<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html lang="en">
<head>
    <title>Films Database</title>
    <jsp:include page="styles.jsp"/>
</head>

<div class="container">
    <div class="mjx-header">
        <h1>Welcome to Films Database!</h1>
    </div>
    <div id="film-navbar" class="row">
        <jsp:include page="navbar.jsp"/>
    </div>
    <div class="row">
    <div class="col-md-12 mjx-films-list">
        <div class="bs-example bs-example-tabs" role="tabpanel" data-example-id="togglable-tabs">
            <ul id="myTab" class="nav nav-tabs" role="tablist">
                <li role="presentation" class="active"><a href="#home" id="home-tab" role="tab" data-toggle="tab" aria-controls="home" aria-expanded="true">Featured</a></li>
                <li role="presentation"><a href="#popularity" role="tab" id="popularity-tab" data-toggle="tab" aria-controls="popularity" aria-expanded="false">Top Viewed</a></li>
                <li role="presentation"><a href="#rating" id="rating-tab" role="tab" data-toggle="tab" aria-controls="rating" aria-expanded="true">Top Rating</a></li>
            </ul>
            <div id="featured" class="col-md-10 tab-content">
                <div role="tabpanel" class="tab-pane fade active in" id="home" aria-labelledby="home-tab">
                    <div class="w3_agile_featured_movies">
                        <div class="w3l-movie-gride-agile">
                                <c:forEach items="${films}" varStatus="filmCount" step="3">
                                        <div class="row movie-image">
                                            <div class="col-xs-3 film-thumbnail">
                                                <img class="film-poster" src="${films[3*(filmCount.count-1)].poster}" alt="movie"/>
                                                <p>${films[3*(filmCount.count-1)].title}</p>
                                            </div>
                                            <div class="col-xs-3 film-thumbnail">
                                                <img class="film-poster" src="${films[3*(filmCount.count-1)+1].poster}" alt="movie"/>
                                                <p>${films[3*(filmCount.count-1)+1].title}</p>
                                            </div>
                                            <div class="col-xs-3 film-thumbnail">
                                                <img class="film-poster" src="${films[3*(filmCount.count-1)+2].poster}" alt="movie"/>
                                                <p>${films[3*(filmCount.count-1)+2].title}</p>
                                            </div>
                                        </div>
                                </c:forEach>
                        </div>
                    </div>
                </div>
                <div role="tabpanel" class="tab-pane fade active in" id="popularity" aria-labelledby="home-tab">
                    <div class="w3_agile_featured_movies">
                        <div class="w3l-movie-gride-agile">
                            <c:forEach items="${films}" varStatus="filmCount" step="3">
                                <div class="row movie-image">
                                    <div class="col-xs-3 film-thumbnail">
                                        <img class="film-poster" src="${films[3*(filmCount.count-1)].poster}" alt="movie"/>
                                        <p>${films[3*(filmCount.count-1)].title}</p>
                                    </div>
                                    <div class="col-xs-3 film-thumbnail">
                                        <img class="film-poster" src="${films[3*(filmCount.count-1)+1].poster}" alt="movie"/>
                                        <p>${films[3*(filmCount.count-1)+1].title}</p>
                                    </div>
                                    <div class="col-xs-3 film-thumbnail">
                                        <img class="film-poster" src="${films[3*(filmCount.count-1)+2].poster}" alt="movie"/>
                                        <p>${films[3*(filmCount.count-1)+2].title}</p>
                                    </div>
                                </div>
                            </c:forEach>
                        </div>
                    </div>
                </div>
                <div role="tabpanel" class="tab-pane fade active in" id="rating" aria-labelledby="home-tab">
                    <div class="w3_agile_featured_movies">
                        <div class="w3l-movie-gride-agile">
                            <c:forEach items="${films}" varStatus="filmCount" step="3">
                                <div class="row movie-image">
                                    <div class="col-xs-3 film-thumbnail">
                                        <img class="film-poster" src="${films[3*(filmCount.count-1)].poster}" alt="movie"/>
                                        <p>${films[3*(filmCount.count-1)].title}</p>
                                    </div>
                                    <div class="col-xs-3 film-thumbnail">
                                        <img class="film-poster" src="${films[3*(filmCount.count-1)+1].poster}" alt="movie"/>
                                        <p>${films[3*(filmCount.count-1)+1].title}</p>
                                    </div>
                                    <div class="col-xs-3 film-thumbnail">
                                        <img class="film-poster" src="${films[3*(filmCount.count-1)+2].poster}" alt="movie"/>
                                        <p>${films[3*(filmCount.count-1)+2].title}</p>
                                    </div>
                                </div>
                            </c:forEach>
                        </div>
                    </div>
                </div>
            </div>



        </div>
    </div>
    </div>
</div>


<div class="container">

    <div class="row">
        <div class="col-md-4">
            <h2>IMDB</h2>
            <p>
                <a class="btn btn-default" href="www.imdb.com" role="button">View details</a>
            </p>
        </div>
        <div class="col-md-4">
            <h2>YouTube</h2>
            <p>
                <a class="btn btn-default" href="www.youtube.com" role="button">View details</a>
            </p>
        </div>
        <div class="col-md-4">
            <h2>FilmWeb</h2>
            <p>
                <a class="btn btn-default" href="www.filmweb.pl" role="button">View details</a>
            </p>
        </div>
    </div>


    <hr>
    <footer>
        <p>&copy; Order of Fat Panda 2018</p>
    </footer>
</div>
<jsp:include page="scripts.jsp"/>
</body>
</html>