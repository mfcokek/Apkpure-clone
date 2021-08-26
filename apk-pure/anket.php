<?php
    include 'ayar.php';
    $secim=$_GET["secim"];
   
            $db->exec("UPDATE anket SET cevap_sayi = cevap_sayi+1 WHERE anket_id = $secim ");
            header("Location:index.php");
      
?>