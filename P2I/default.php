<?php 
include("include/connect.php"); // Assuming this file contains the database connection function
$bdd = getDb();

$query = "SELECT Titre, Image2 FROM films WHERE code = 1"; // Select both the title and the image path
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
    <?php include_once('include/header.php'); ?>

    <div class="blank-space"></div>

    <h2 class="big-text">Liste d'oeuvres:</h2>
    <input type="text" placeholder="Rechercher" name="textbox">

    <fieldset>
        <h3><?= $film['Titre'] ?></h3>
        <img src="<?= $film['Image2'] ?>" alt="Film Image"> <!-- Display the image -->
    </fieldset>

</body>
</html>
