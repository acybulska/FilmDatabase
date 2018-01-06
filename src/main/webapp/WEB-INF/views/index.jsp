<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <title>Films Database</title>

    <spring:url value="/resources/core/css/hello.css" var="coreCss" />
    <spring:url value="/resources/core/css/bootstrap.min.css" var="bootstrapCss" />
    <link href="${bootstrapCss}" rel="stylesheet" />
    <link href="${coreCss}" rel="stylesheet" />
</head>

<nav class="navbar navbar-inverse navbar-fixed-top">
    <div class="container">
        <div class="navbar-header">
            <a class="navbar-brand" href="#">Films List</a>
        </div>
    </div>
</nav>



<div class="jumbotron">
    <div class="container">
        <h1>Welcome to Films Database!</h1>
        <p>
        </p>
    </div>
</div>

<div class="container">
    <table>
        <tr>
            <c:forEach items="${films}" var="film">
                <td>
                    <img width="208" height="301" src="${film.poster}" alt="movie" >
                </td>
            </c:forEach>
        </tr>
        <tr>
            <c:forEach items="${films}" var="film">
                <td>
                    <span><a href="/movie/${film.id}" class="name">${film.title}</a></span>
                </td>
            </c:forEach>
        </tr>
    </table>
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

<spring:url value="/resources/core/css/hello.js" var="coreJs" />
<spring:url value="/resources/core/css/bootstrap.min.js" var="bootstrapJs" />

<script src="${coreJs}"></script>
<script src="${bootstrapJs}"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>

</body>
</html>