<html lang="nl">
<head>
    <meta charset="UTF-8">
    <title>Lingospel</title>
    <script src="lab17.js"></script>
    <link rel="stylesheet" href="lab17.css">
</head>
<body>
<div id='stadsnaam'>Lingo</div>
</div>
<script>
    steden = new Array('Amsterdam', 'Barcelona', 'London', 'Parijs', 'Berlijn', 'Antwerpen', 'Rome', 'Madrid')
    var rand = steden[Math.floor(Math.random() * steden.length)];
    var c = document.createDocumentFragment();
    for (var i=0; i < rand.length; i++) {
        var e = document.createElement("div");
        e.className = "square default";
        e.innerText = "?";
        c.appendChild(e);
    }
    document.body.appendChild(c);
</script>
<button id="button" class="visible" onClick="gokken()">Doe een gok</button>
</body>
</html>
