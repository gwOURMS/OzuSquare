<?php 
include("include/connect.php"); 
$bdd = getDb();

$query = "SELECT Titre, Image2 FROM films WHERE code = 1"; 
$statement = $bdd->prepare($query);
$statement->execute();
$film = $statement->fetch(PDO::FETCH_ASSOC);
?>


<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>OzuSquare</title>
    <link rel="stylesheet" type="text/css" href="mystyle.css">
    <script type="text/javascript" src="script.js"></script>
</head>
<body>
<img id="filmImage" src="<?= $film['Image2'] ?>" alt="Film Image"> 
<input id="button" type="button" value="Ajouter à une liste">
<ul id="listeFilms"></ul>

<script> document.getElementById('button').addEventListener('click', function() {
   
    var imageUrl = document.getElementById('filmImage').src;

    var newImage = document.createElement('img');
    newImage.src = imageUrl;
    newImage.alt = 'Film Image';

    var listItem = document.createElement('li');
    listItem.appendChild(newImage);

    document.getElementById('listeFilms').appendChild(listItem);
}); </script>

</body>
</html>