<?php 
session_start();
try {
    $db = new PDO("mysql:host=localhost;dbname=apk-pure;charset=utf8", "root", "");
} catch ( PDOException $e ){
    print $e->getMessage();
}

function session($name){
    return isset($_SESSION[$name]) ? $_SESSION : false; 
}
