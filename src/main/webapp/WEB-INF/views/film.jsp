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
        <h1>${film.title}</h1>
        <h2>${rating}</h2>
        <p>
            <img width="208" height="301" src="${film.poster}" alt="movie" >
        </p>
        <p>
            ${film.genre1}
        </p>
        <p>
            ${film.year}
        </p>
        <p>
            ${film.country}
        </p>
        <p>
            ${film.director}
        </p>
        <iframe width="560" height="315" src="${film.youtube}" frameborder="0" gesture="media" allow="encrypted-media" allowfullscreen></iframe>
    </div>
</div>

<div class="container">
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