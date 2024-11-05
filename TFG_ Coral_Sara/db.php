<?php 
    //iniciamos la conexión con la base de datos
    try {

        $pdo = new PDO ("mysql:host=127.0.0.1; dbname=bizcochadas", "root", ""); //instancia de la bd
        $pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);

    }catch (PDOException $e){
        die ("Error de conexión con la BD: " .$e->getMessage());
    }

?>