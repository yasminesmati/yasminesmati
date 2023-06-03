<?php
session_start();



if (isset($_SESSION["id_of_allrest"])) {
    echo "This is a session value: " . $_SESSION["id_of_allrest"];
}

if (isset($_POST["valid"])) {
    $nm = $_POST["name"];
    $plc = $_POST["place"];
    $categorie = $_POST["categorie_id"];

    // Inclure le fichier de configuration de la base de données
    require 'Config/restaurant.php';

    // Connexion à la base de données
    $link = mysqli_connect($servername, $username, $password, $dbname);
    if (!$link) {
        die("Connection failed: " . mysqli_connect_error());
    }

    // Requête d'insertion
    $sql = "INSERT INTO allrest (name, place, categorie_id) VALUES ('$nm', '$plc', '$categorie')";
    if (mysqli_query($link, $sql)) {
        echo "<br>Inserted successfully<br>";
    } else {
        echo "Error: " . $sql . "<br>" . mysqli_error($link);
    }

    // Requête de sélection
    $query = "SELECT name, place FROM allrest";
    echo $query;
    if ($result = mysqli_query($link, $query)) {
        while ($row = mysqli_fetch_row($result)) {
            echo " name: " . $row[0] . ", ";
            echo " place: " . $row[1];
            echo "<br>";
        }
        mysqli_free_result($result);
    }

    $query = "SELECT * FROM allrest";
    $result = mysqli_query($link, $query);
    $row = mysqli_fetch_array($result, MYSQLI_NUM);
    echo " name (Num): " . $row[0];
    echo ", place (Num): " . $row[1];
    echo "<br>";
    $row = mysqli_fetch_array($result, MYSQLI_ASSOC);
    echo " name (Array): " . $row["name"];
    echo ", place (Array): " . $row["place"];
    echo "<br>";

    $query = "SELECT ID, name, categorie_id FROM allrest";
    $result = mysqli_query($link, $query);
    $rowcount = mysqli_num_rows($result);
    $row = mysqli_fetch_all($result, MYSQLI_ASSOC);
    print_r($row);
    echo "<br>";

    // Fermer la connexion à la base de données
    mysqli_close($link);
}

?>
<?php
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "restaurant";

// Connexion à la base de données
$conn = mysqli_connect($servername, $username, $password, $dbname);
if (!$conn) {
    die("Connection failed: " . mysqli_connect_error());
} else {
    echo "Connection established successfully. <br>";
}

$categorie = $_POST["categorie_id"];
$sql = "SELECT * FROM allrest WHERE categorie='$categorie'";
$result = mysqli_query($conn, $sql);
if (mysqli_num_rows($result) > 0) {
    while ($row = mysqli_fetch_assoc($result)) {
        echo '<td style="height:100px;">';
        echo '<figure>';
        echo '<br><a href="index2.html">';
        echo '</details>';
        echo '</figcaption>';
        echo '</figure>';
        echo '</td>';
    }
} else {
    echo '</tr>';
    echo '<td colspan="3">Aucun restaurant trouvé dans cette catégorie.</td>';
    echo '</tr>';
}

// Fermer la connexion à la base de données
mysqli_close($conn);
?>
