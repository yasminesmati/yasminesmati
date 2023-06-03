<?php

if (file_exists('dbConn.php')) {
    require 'dbConn.php';
} else {
    echo "File not found";
    die();
}

session_start();


if ($_SERVER['REQUEST_METHOD']=="POST") {

    $fnm = $_POST["first_name"];
    $lnm = $_POST["last_name"];
    $usr = $_POST["email"];
    $pass= $_POST["pass"];
   // $pwd_hash = password_hash($pwd, PASSWORD_DEFAULT);


  
if(!empty($usr)&& !empty($pass)&& ! is_numeric($usr)){
    $hashedPassword= password_hash($pass, PASSWORD_DEFAULT);
    $query="insert into utilisateur(email,pass,first_name,last_name)values('$usr','$pass',' $fnm','$lnm')";
    mysqli_query($link,$query);
    echo "<script type 'text/javascript'alert('succcessfully Register')</script>";
    if(isset($_POST['aller'])){header("location:index2.html");}
}
else echo "<script type 'text/javascript'alert('non valid information')</script>";
}