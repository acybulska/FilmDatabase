<html>
<head>
    <script>
        el = document.getElementById("titles");
        var ts = ${titles};
        function getTitles(item,index) {
            el.innterHTML = el.innterHTML + ts + "<br>";
        }
        window.onload=getTitles();
    </script>
</head>
<body>
    <div class="header">
        <h2>Film Database</h2>
    </div>
    <div class="searchBox">

    </div>
    <p id="titles">

    </p>
</body>
</html>
