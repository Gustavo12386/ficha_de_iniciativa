<?php
$host = "localhost";
$user = "root";
$pass = "";
$dbname = "banco_ficha";
$port = 3306;

global $conn;

try{
    $conn = new PDO("mysql:host=$host;port=$port;dbname=".$dbname, $user, $pass); 
} catch(PDOException $e){
    echo "Erro na conexão";
}
?>