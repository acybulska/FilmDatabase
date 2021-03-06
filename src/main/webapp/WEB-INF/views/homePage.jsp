<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: podzi
  Date: 06.01.2018
  Time: 02:45
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html lang="en-US" xmlns="http://www.w3.org/1999/xhtml" dir="ltr">
<head>
    <title>Free CSS template by ChocoTemplates.com</title>
    <meta http-equiv="Content-type" content="text/html; charset=utf-8" />
    <link rel="stylesheet" href="css/style.css" type="text/css" media="all" />
    <!--[if IE 6]>
    <link rel="stylesheet" href="css/ie6.css" type="text/css" media="all" />
    <![endif]-->
    <script type="text/javascript" src="js/jquery-1.4.2.min.js"></script>
    <script type="text/javascript" src="js/jquery-func.js"></script>
</head>
<body>
<!-- Shell -->
<div id="shell">
    <!-- Header -->
    <div id="header">
        <h1 id="logo"><a href="#">Movie Hunter</a></h1>
        <div class="social">
            <span>FOLLOW US ON:</span>
            <ul>
                <li><a class="twitter" href="#">twitter</a></li>
                <li><a class="facebook" href="#">facebook</a></li>
                <li><a class="vimeo" href="#">vimeo</a></li>
                <li><a class="rss" href="#">rss</a></li>
            </ul>
        </div>

        <!-- Navigation -->
        <div id="navigation">
            <ul>
                <li><a class="active" href="#">HOME</a></li>
                <li><a href="#">NEWS</a></li>
                <li><a href="#">IN THEATERS</a></li>
                <li><a href="#">COMING SOON</a></li>
                <li><a href="#">CONTACT</a></li>
                <li><a href="#">ADVERTISE</a></li>
            </ul>
        </div>
        <!-- end Navigation -->

        <!-- Sub-menu -->
        <div id="sub-navigation">
            <ul>
                <li><a href="#">SHOW ALL</a></li>
                <li><a href="#">LATEST TRAILERS</a></li>
                <li><a href="#">TOP RATED</a></li>
                <li><a href="#">MOST COMMENTED</a></li>
            </ul>
            <div id="search">
                <form action="home_submit" method="get" accept-charset="utf-8">
                    <label for="search-field">SEARCH</label>
                    <input type="text" name="search field" value="Enter search here" id="search-field" title="Enter search here" class="blink search-field"  />
                    <input type="submit" value="GO!" class="search-button" />
                </form>
            </div>
        </div>
        <!-- end Sub-Menu -->

    </div>
    <!-- end Header -->

    <!-- Main -->
    <div id="main">
        <!-- Content -->
        <div id="content">

            <!-- Box -->
            <div class="box">
                <div class="head">
                    <h2>LATEST TRAILERS</h2>
                    <p class="text-right"><a href="#">See all</a></p>
                </div>

                <c:forEach items="${films}" var="film">
                    <!-- Movie -->
                    <div class="movie">

                        <div class="movie-image">

                            <a href="#"><span class="play"><span class="name">${film.title}</span></span><img src="${film.poster}" alt="movie" /></a>
                        </div>

                        <div class="rating">
                            <p>RATING</p>
                            <div class="stars">
                                <div class="stars-in">

                                </div>
                            </div>
                            <span class="comments">12</span>
                        </div>
                    </div>
                    <!-- end Movie -->

                </c:forEach>


                <div class="cl">&nbsp;</div>
            </div>
            <!-- end Box -->
            <!--
                         Box
            <div class="box">
                <div class="head">
                    <h2>TOP RATED</h2>
                    <p class="text-right"><a href="#">See all</a></p>
                </div>

                <!-- Movie
                <div class="movie">
                    <div class="movie-image">
                        <a href="#"><span class="play"><span class="name">TRANSFORMERS</span></span><img src="css/images/movie7.jpg" alt="movie" /></a>
                    </div>
                    <div class="rating">
                        <p>RATING</p>
                        <div class="stars">
                            <div class="stars-in">

                            </div>
                        </div>
                        <span class="comments">12</span>
                    </div>
                </div>
                end Movie

                Movie
                <div class="movie last">
                    <div class="movie-image">
                        <a href="#"><span class="play"><span class="name">ANGELS &amp; DEMONS</span></span><img src="css/images/movie12.jpg" alt="movie" /></a>
                    </div>
                    <div class="rating">
                        <p>RATING</p>
                        <div class="stars">
                            <div class="stars-in">

                            </div>
                        </div>
                        <span class="comments">12</span>
                    </div>
                </div>
                <!-- end Movie
                <div class="cl">&nbsp;</div>
            </div>
            <!-- end Box

            <!-- Box
            <div class="box">
                <div class="head">
                    <h2>MOST COMMENTED</h2>
                    <p class="text-right"><a href="#">See all</a></p>
                </div>

                <!-- Movie
                <div class="movie">
                    <div class="movie-image">
                        <a href="#"><span class="play"><span class="name">HOUSE</span></span><img src="css/images/movie13.jpg" alt="movie" /></a>
                    </div>
                    <div class="rating">
                        <p>RATING</p>
                        <div class="stars">
                            <div class="stars-in">

                            </div>
                        </div>
                        <span class="comments">12</span>
                    </div>
                </div>
                <!-- end Movie
                <div class="cl">&nbsp;</div>
            </div>
            <!-- end Box
            -->
        </div>
        <!-- end Content -->

        <!-- NEWS -->
        <div id="news">
            <div class="head">
                <h3>NEWS</h3>
                <p class="text-right"><a href="#">See all</a></p>
            </div>

            <div class="content">
                <p class="date">12.04.09</p>
                <h4>Disney's A Christmas Carol</h4>
                <p>&quot;Disney's A Christmas Carol,&quot; a multi-sensory thrill ride re-envisioned by Academy Award&reg;-winning filmmaker Robert Zemeckis, captures... </p>
                <a href="#">Read more</a>
            </div>
            <div class="content">
                <p class="date">11.04.09</p>
                <h4>Where the Wild Things Are</h4>
                <p>Innovative director Spike Jonze collaborates with celebrated author Maurice Sendak to bring one of the most beloved books of all time to the big screen in &quot;Where the Wild Things Are,&quot;...</p>
                <a href="#">Read more</a>
            </div>
            <div class="content">
                <p class="date">10.04.09</p>
                <h4>The Box</h4>
                <p>Norma and Arthur Lewis are a suburban couple with a young child who receive an anonymous gift bearing fatal and irrevocable consequences.</p>
                <a href="#">Read more</a>
            </div>
        </div>
        <!-- end NEWS -->

        <!-- Coming -->
        <div id="coming">
            <div class="head">
                <h3>COMING SOON<strong>!</strong></h3>
                <p class="text-right"><a href="#">See all</a></p>
            </div>
            <div class="content">
                <h4>The Princess and the Frog </h4>
                <a href="#"><img src="css/images/coming-soon1.jpg" alt="coming soon" /></a>
                <p>Walt Disney Animation Studios presents the musical "The Princess and the Frog," an animated comedy set in the great city of New Orleans...</p>
                <a href="#">Read more</a>
            </div>
            <div class="cl">&nbsp;</div>
            <div class="content">
                <h4>The Princess and the Frog </h4>
                <a href="#"><img src="css/images/coming-soon2.jpg" alt="coming soon" /></a>
                <p>Walt Disney Animation Studios presents the musical "The Princess and the Frog," an animated comedy set in the great city of New Orleans...</p>
                <a href="#">Read more</a>
            </div>

        </div>
        <!-- end Coming -->
        <div class="cl">&nbsp;</div>
    </div>
    <!-- end Main -->

    <!-- Footer -->
    <div id="footer">
        <p>
            <a href="#">HOME</a> <span>|</span>
            <a href="#">NEWS</a> <span>|</span>
            <a href="#">IN THEATERS</a> <span>|</span>
            <a href="#">COMING SOON </a> <span>|</span>
            <a href="#">LATERS TRAILERS</a> <span>|</span>
            <a href="#">TOP RATED TRAILERS</a> <span>|</span>
            <a href="#">MOST COMMENTED TRAILERS</a> <span>|</span>
            <a href="#">ADVERTISE</a> <span>|</span>
            <a href="#">CONTACT </a>
        </p>
        <p>&copy; Order of Fat Panda 2018</p>
    </div>
    <!-- end Footer -->
</div>
<!-- end Shell -->
</body>
</html>
