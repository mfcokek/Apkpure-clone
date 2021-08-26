<?php
    include 'ayar.php';
    include 'header.php';
    $aranan = $_GET["ara"];
?>
<?php $query = $db->query("SELECT * FROM `icerik` ORDER BY tarih DESC LIMIT 12 ", PDO::FETCH_ASSOC); 
            if ( $query->rowCount() ){
                $i = 0;
                    foreach( $query as $row ){
                    $tarih[$i]['icerik_id'] = $row['icerik_id'];
                    $tarih[$i]['icerik_isim'] = $row['icerik_ismi'];
                    $tarih[$i]['icerik_foto'] = $row['icerik_foto'];
                    $tarih[$i]['tarih'] = $row['tarih'];
                    $i++;
                    }
        }
        
        $ara = $db->query("SELECT * FROM icerik WHERE icerik_ismi LIKE '%{$aranan}%'", PDO::FETCH_ASSOC); 
        
        
        
        ?>




<div class="site">
        <div class="container">
          <div class="sol">
          <div class="card">
                <div class="cardhead">
                  <a href="#">Keşfet »</a>
                  <div class="carddahafazla">
                    <a href="#">Daha Fazla »</a>
                  </div>
                </div>
                <div class="card-list">
                 <?php if($ara->rowCount()){ 
                     foreach ($ara as $item) { ?>
                    <div class="apk">
                      <div class="apkimg"><a href="ürün.php?id=<?php echo $item['icerik_id'] ?>"><img src="assent/images/<?php echo $item['icerik_foto']?>" alt=""></a></div>
                      <div class="apkhead"><a href="ürün.php?id=<?php echo $item['icerik_id'] ?>"><?php echo $item['icerik_ismi']?></a></div>
                      <p><?php echo$item['tarih'] ?></p>
                      <a href="ürün.php?id=<?php echo $item['icerik_id'];$id=$item['icerik_id']?>" class="button">İndir APK</a>
                  </div>
                 <?php }} ?>
                </div>
            </div>
          </div><!-- sol bitis-->
          <div class="sag">
            <div class="arananlar">
              <div class="arama">
              <form class="search" action="arama.php" method="get">
                  <input type="search" name="ara" value="" placeholder="APKpure de ara">
                  <button type="submit" >
                    <i class="fa fa-search fa-lg"></i>
                  </button>
                </form>
                <div class="clear"></div>
              </div>
              <div class="trend">
                <div class="cokaranan"><a href=""><i class="fa fa-fire"></i>Lulubox for PUBG</a></div>
              </div>
              <div class="trend">
                <div class="cokaranan"><a href="">derbi tv hd</a></div>
              </div>
              <div class="trend">
                <div class="cokaranan"><a href="">pubg mobile</a></div>
              </div>
              <div class="trend">
                <div class="cokaranan"><a href="">fortnite</a></div>
              </div>
              <div class="trend">
                <div class="cokaranan"><a href="">pubg mobile lite</a></div>
              </div>
              <div class="trend">
                <div class="cokaranan"><a href="">taraftar tv</a></div>
              </div>
              <div class="trend">
                <div class="cokaranan"><a href="">minecraft pocket edition</a></div>
              </div>
              <div class="trend">
                <div class="cokaranan"><a href="">بوبجي</a></div>
              </div>
              <div class="trend">
                <div class="cokaranan"><a href="">gfx tool</a></div>
              </div>
              <div class="trend">
                <div class="cokaranan"><a href="">gta san andreas</a></div>
              </div>
            </div>
            <div class="card">
                <div class="cardhead">
                  <a href="#">Trend Uygulamalar »</a>
                </div>
                <div class="card-list">
                    <?php for ($i=0; $i < 10 ; $i++) { ?>
                  <div class="apk-list">
                      <div class="sıralama"><?php echo $i+1?></div>
                      <div class="apk-list-img"><a href="ürün.php?id=<?php echo $tarih[$i]['icerik_id'] ?>"><img src="assent/images/<?php echo $tarih[$i]['icerik_foto']?>" alt="" style="width:75px;height:75px;"></a></div>
                      <div class="apk-list-head"><a href="ürün.php?id=<?php echo $tarih[$i]['icerik_id'] ?>"><?php echo $tarih[$i]['icerik_isim']?></a></div>
                      <div class="apk-list-version"><?php echo $tarih[$i]['tarih'] ?></div>
                      <a href="ürün.php?id=<?php echo $tarih[$i]['icerik_id'] ?>" class="apk-list-button">İndir APK</a>
                  </div>
                  <?php }?>

                </div>
            </div>
          </div><!-- sag bitis-->
          <div class="clear"></div>
        </div><!--  container bitis -->
      </div><!-- site bitis -->





<?php include 'footer.php' ?>