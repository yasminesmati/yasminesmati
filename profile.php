<?php
if (file_exists('dbConn.php')) 
    {
        require 'dbConn.php';
    }
    else {
        echo "File not found";
        die();
}

session_start();
$_SESSION["id_of_user"] = $_GET["id_user"];


$id = $_GET["id_user"]; 
$query = "SELECT * from user where ID=$id";

$result=mysqli_query($link,$query);
        // Gets the Numeric array
$row=mysqli_fetch_array($result,MYSQLI_ASSOC);
$first_n = $row["first_name"];
$last_n = $row["last_name"];
?>

<h2>Hello <?php echo $first_n." ".$last_n; ?>!</h2>
<p>Welcome to your profile</p>