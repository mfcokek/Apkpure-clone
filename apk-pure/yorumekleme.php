<?php
    include 'ayar.php';
    $user=$_POST["user_id"];
    $icerik=$_POST["icerik_id"];
    $yorum=$_POST["ana_yorum"];

    $query = $db->prepare("INSERT INTO yorum SET
        icerik_id = ?,
        user_id = ?,
        yorum_icerik=?");
    $insert = $query->execute(array(
      $icerik, $user,$yorum
        ));
    if ( $insert ){
    $last_id = $db->lastInsertId();
    header("Location:ürün.php?id=".$icerik);
    }



?>