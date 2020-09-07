<?php
$hostname = 'host=localhost';
$username = 'root';
$password = '';
$bdd = 'biblio';

try {
    $Pdo = new PDO("mysql:$hostname;dbname=$bdd;charset=utf8", $username, $password);
    $Pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
} catch (PDOException $e) {
    echo $e->getMessage();
    $Pdo = null;
}
