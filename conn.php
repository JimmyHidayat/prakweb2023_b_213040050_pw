<?php 

$servername = "localhost";
$username = "root";
$password = "";
$db = "prakweb_2023_b_213040050";

try {

    $conn = new PDO("mysql:host=$servername;dbname=$db", $username, $password);
    $conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
    echo ""; 
} catch (PDOException $e) {
    echo "Failed" . $e->getMessage();
}
