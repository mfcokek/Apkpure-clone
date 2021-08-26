
    <?php include 'ayar.php';?>
    <?php include 'header.php';?>
        <?php $query = $db->query("SELECT * FROM `icerik` ORDER BY icerik_kategori_id DESC LIMIT 12 ", PDO::FETCH_ASSOC);
            if ( $query->rowCount() ){
                $i = 0;
                    foreach( $query as $row ){
                    $guncel[$i]['icerik_id'] = $row['icerik_id'];
                    $guncel[$i]['icerik_isim'] = $row['icerik_ismi'];
                    $guncel[$i]['icerik_foto'] = $row['icerik_foto'];
                    $guncel[$i]['tarih'] = $row['tarih'];
                    $i++;
                    }
                }
        ?>
        <?php $query = $db->query("SELECT * FROM `icerik` ORDER BY icerik_kategori_id ASC LIMIT 12 ", PDO::FETCH_ASSOC);
            if ( $query->rowCount() ){
                $i = 0;
                    foreach( $query as $row ){
                    $eski[$i]['icerik_id'] = $row['icerik_id'];
                    $eski[$i]['icerik_isim'] = $row['icerik_ismi'];
                    $eski[$i]['icerik_foto'] = $row['icerik_foto'];
                    $eski[$i]['tarih'] = $row['tarih'];
                    $i++;
                    }
        }?>
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
        }?>
        <?php $query = $db->query("SELECT * FROM `icerik` ORDER BY icerik_ismi DESC LIMIT 9 ", PDO::FETCH_ASSOC);
            if ( $query->rowCount() ){
                $i = 0;
                    foreach( $query as $row ){
                    $isim[$i]['icerik_id'] = $row['icerik_id'];
                    $isim[$i]['icerik_isim'] = $row['icerik_ismi'];
                    $isim[$i]['icerik_foto'] = $row['icerik_foto'];
                    $isim[$i]['tarih'] = $row['tarih'];
                    $i++;
                    }
                }
         ?>
         <?php $query = $db->query("SELECT * FROM `icerik` ORDER BY tarih DESC LIMIT 1 ", PDO::FETCH_ASSOC);
            if ( $query->rowCount() ){
                $i = 0;
                    foreach( $query as $row ){
                    $enson[$i]['icerik_foto_2'] = $row['icerik_foto_2'];
                    $i++;
                    }
                }
         ?><?php

         $anketler = $db->query("SELECT * FROM `anket` ", PDO::FETCH_ASSOC);

         ?>

      <div class="site">
        <div class="container">
              <div class="anket" style="text-align:center;height:100px;background-color:#24cd77;">
              Siteden Memnun Kaldınız mı?
                <form action="anket.php" method="get">
                  <input type="hidden" name="user_id" value="<?php echo $_SESSION["user_id"]?>">
                  <input type="radio" name="secim" id="" value="1">Evet
                  <input type="radio" name="secim" id="" value="2">Hayır
                  <input type="radio" name="secim" id="" value="3">Kararsızım
                  <br>
                  <input type="submit">
                </form>
                <div class="cevaplar">
                  <?php
                    $i = 0;
                    foreach($anketler as $anket){
                      switch($i){
                        case 0:
                          echo "Evet=> " . $anket["cevap_sayi"] . "\t\t";
                          break;
                        case 1:
                        echo "Hayır=> " . $anket["cevap_sayi"]. "\t\t";
                          break;
                          case 2:
                        echo "Kararsızım=> " . $anket["cevap_sayi"]. "\t\t"  ;
                          break;
                      }
                      $i++;
                    }
                  ?>
                </div>
              </div>
          <div class="sol">
            <div class="slider">
                <?php for ($i=0; $i < 1 ; $i++) {?>
              <img src="assent/images/<?php echo $enson[$i]['icerik_foto_2'] ?>" alt="slider" style=" width: 850;height:415px;">
              <?php } ?>
            </div>
            <div class="card">
                <div class="cardhead">
                  <a href="#">Keşfet »</a>
                  <div class="carddahafazla">
                    <a href="#">Daha Fazla »</a>
                  </div>
                </div>
                <div class="card-list">
                 <?php for ($i=0; $i < 12 ; $i++) { ?>
                    <div class="apk">
                      <div class="apkimg"><a href="ürün.php?id=<?php echo $guncel[$i]['icerik_id'] ?>"><img src="assent/images/<?php echo $guncel[$i]['icerik_foto']?>" alt=""></a></div>
                      <div class="apkhead"><a href="ürün.php?id=<?php echo $guncel[$i]['icerik_id'] ?>"><?php echo $guncel[$i]['icerik_isim']?></a></div>
                      <p><?php echo $guncel[$i]['tarih'] ?></p>
                      <a href="ürün.php?id=<?php echo $guncel[$i]['icerik_id'];$id=$guncel[$i]['icerik_id']?>" class="button">İndir APK</a>
                  </div>
                 <?php } ?>
                </div>
            </div>
            <div class="card">
                <div class="cardhead">
                  <a href="#">Keşfet »</a>
                  <div class="carddahafazla">
                    <a href="#">Daha Fazla »</a>
                  </div>
                </div>
                <div class="card-list">
                <?php for ($i=0; $i < 12 ; $i++) { ?>
                    <div class="apk">
                      <div class="apkimg"><a href="ürün.php?id=<?php echo $eski[$i]['icerik_id'] ?>"><img src="assent/images/<?php echo $eski[$i]['icerik_foto']?>" alt=""></a></div>
                      <div class="apkhead"><a href="ürün.php?id=<?php echo $eski[$i]['icerik_id'] ?>"><?php echo $eski[$i]['icerik_isim']?></a></div>
                      <p><?php echo $eski[$i]['tarih'] ?></p>
                      <a href="ürün.php?id=<?php echo $eski[$i]['icerik_id'] ?>" class="button">İndir APK</a>
                  </div>
                 <?php } ?>

                </div>
            </div>
            <div class="card">
                <div class="cardhead">
                  <a href="#">Keşfet »</a>
                  <div class="carddahafazla">
                    <a href="#">Daha Fazla »</a>
                  </div>
                </div>
                <div class="card-list">
                <?php for ($i=0; $i < 9 ; $i++) { ?>
                    <div class="apk">
                      <div class="apkimg"><a href="ürün.php?id=<?php echo $tarih[$i]['icerik_id'];$id=$tarih[$i]['icerik_id']?>"><img src="assent/images/<?php echo $tarih[$i]['icerik_foto']?>" alt=""></a></div>
                      <div class="apkhead"><a href="ürün.php?id=<?php echo $tarih[$i]['icerik_id'];$id=$tarih[$i]['icerik_id']?>"><?php echo $tarih[$i]['icerik_isim']?></a></div>
                      <span>Activision Games</span><br>
                      <span><?php echo $tarih[$i]['tarih']?></span>
                  </div>
                 <?php } ?>
                </div>
            </div>
            <div class="card">
                <div class="cardhead">
                  <a href="#">Keşfet »</a>
                  <div class="carddahafazla">
                    <a href="#">Daha Fazla »</a>
                  </div>
                </div>
                <div class="card-list">
                    <?php for ($i=0; $i < 9 ; $i++) { ?>
                        <div class="apk">
                            <div class="apkimg"><a href="ürün.php?id=<?php echo $isim[$i]['icerik_id'];$id=$isim[$i]['icerik_id']?>"><img src="assent/images/<?php echo $isim[$i]['icerik_foto']?>" alt=""></a></div>
                            <div class="apkhead"><a href="ürün.php?id=<?php echo $isim[$i]['icerik_id'];$id=$isim[$i]['icerik_id']?>"><?php echo $isim[$i]['icerik_isim']?></a></div>
                            <p><?php echo $eski[$i]['tarih'] ?></p>
                            <a href="ürün.php?id=<?php echo $isim[$i]['icerik_id'];$id=$isim[$i]['icerik_id']?>" class="button">İndir APK</a>
                        </div>
                    <?php }?>
                </div>
            </div>
            <div class="card">
                <div class="cardhead">
                  <a href="#">Keşfet »</a>
                  <div class="carddahafazla">
                    <a href="#">Daha Fazla »</a>
                  </div>
                </div>
                <div class="card-list">
                        <?php for ($i=0; $i < 6 ; $i++) { ?>
                            <div class="apk">
                                <div class="apkimg"><a href="ürün.php?id=<?php echo $eski[$i]['icerik_id'];$id=$eski[$i]['icerik_id']?>"><img src="assent/images/<?php echo $eski[$i]['icerik_foto']?>" alt=""></a></div>
                                <div class="apkhead"><a href="ürün.php?id=<?php echo $eski[$i]['icerik_id'];$id=$eski[$i]['icerik_id']?>"><?php echo $eski[$i]['icerik_isim']?></a></div>
                                <p><?php echo $eski[$i]['tarih'] ?></p>
                                <a href="ürün.php?id=<?php echo $eski[$i]['icerik_id'];$id=$eski[$i]['icerik_id']?>" class="button">İndir APK</a>
                            </div>
                        <?php }?>
                </div>
            </div>
            <div class="card">
                <div class="cardhead">
                  <a href="#">Keşfet »</a>
                  <div class="carddahafazla">
                    <a href="#">Daha Fazla »</a>
                  </div>
                </div>
                <div class="card-list">
                <?php for ($i=0; $i < 6 ; $i++) { ?>
                        <div class="apk">
                            <div class="apkimg"><a href="ürün.php?id=<?php echo $tarih[$i]['icerik_id'];$id=$tarih[$i]['icerik_id']?>"><img src="assent/images/<?php echo $tarih[$i]['icerik_foto']?>" alt=""></a></div>
                            <div class="apkhead"><a href="ürün.php?id=<?php echo $tarih[$i]['icerik_id'];$id=$tarih[$i]['icerik_id']?>"><?php echo $tarih[$i]['icerik_isim']?></a></div>
                            <p><?php echo $eski[$i]['tarih'] ?></p>
                            <a href="ürün.php?id=<?php echo $tarih[$i]['icerik_id'];$id=$tarih[$i]['icerik_id']?>" class="button">İndir APK</a>
                        </div>
                    <?php }?>
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
            <div class="card">
                <div class="cardhead">
                  <a href="#">Konular »</a>
                  <div class="carddahafazla">
                    <a href="#">Daha Fazla »</a>
                  </div>
                </div>
                <div class="card-list">
                  <div class="konular">
                    <a href=""> <img src="assent/images/konu.jpg" alt=""> </a>
                    <a href=""> <img src="assent/images/konu.jpg" alt=""> </a>
                    <a href=""> <img src="assent/images/konu.jpg" alt=""> </a>
                    <a href=""> <img src="assent/images/konu.jpg" alt=""> </a>
                    <a href=""> <img src="assent/images/konu.jpg" alt=""> </a>
                    <a href=""> <img src="assent/images/konu.jpg" alt=""> </a>
                    <a href=""> <img src="assent/images/konu.jpg" alt=""> </a>
                    <a href=""> <img src="assent/images/konu.jpg" alt=""> </a>
                  </div>
                </div>
            </div>
            <div class="card">
                <div class="cardhead">
                  <span class="populer">Popüler Kategoriler</span>
                </div>
                <div class="card-list">
                  <div class=" kategoriler">
                    <div class="kategori"><a href="kategori\kategori.html"><i class=" fa fa-ship fa-lg"></i> Macera Oyunları</a></div>
                    <div class="kategori"><a href="kategori\kategori.html"><i class=" fa fa-ship fa-lg"></i> Macera Oyunları</a></div>
                    <div class="kategori"><a href="kategori\kategori.html"><i class=" fa fa-ship fa-lg"></i> Macera Oyunları</a></div>
                    <div class="kategori"><a href="kategori\kategori.html"><i class=" fa fa-ship fa-lg"></i> Macera Oyunları</a></div>
                    <div class="kategori"><a href="kategori\kategori.html"><i class=" fa fa-ship fa-lg"></i> Macera Oyunları</a></div>
                    <div class="kategori"><a href="kategori\kategori.html"><i class=" fa fa-ship fa-lg"></i> Macera Oyunları</a></div>
                    <div class="kategori"><a href="kategori\kategori.html"><i class=" fa fa-ship fa-lg"></i> Macera Oyunları</a></div>
                    <div class="kategori"><a href="kategori\kategori.html"><i class=" fa fa-ship fa-lg"></i> Macera Oyunları</a></div>
                    <div class="kategori"><a href="kategori\kategori.html"><i class=" fa fa-ship fa-lg"></i> Macera Oyunları</a></div>
                    <div class="kategori"><a href="kategori\kategori.html"><i class=" fa fa-ship fa-lg"></i> Macera Oyunları</a></div>
                    <div class="kategori"><a href="kategori\kategori.html"><i class=" fa fa-ship fa-lg"></i> Macera Oyunları</a></div>
                    <div class="kategori"><a href="kategori\kategori.html"><i class=" fa fa-ship fa-lg"></i> Macera Oyunları</a></div>
                    <div class="kategori"><a href="kategori\kategori.html"><i class=" fa fa-ship fa-lg"></i> Macera Oyunları</a></div>
                    <div class="kategori"><a href="kategori\kategori.html"><i class=" fa fa-ship fa-lg"></i> Macera Oyunları</a></div>
                    <div class="kategori"><a href="kategori\kategori.html"><i class=" fa fa-ship fa-lg"></i> Macera Oyunları</a></div>
                    <div class="kategori"><a href="kategori\kategori.html"><i class=" fa fa-ship fa-lg"></i> Macera Oyunları</a></div>
                    <div class="kategori"><a href="kategori\kategori.html"><i class=" fa fa-ship fa-lg"></i> Macera Oyunları</a></div>
                    <div class="kategori"><a href="kategori\kategori.html"><i class=" fa fa-ship fa-lg"></i> Macera Oyunları</a></div>
                    <div class="kategori"><a href="kategori\kategori.html"><i class=" fa fa-ship fa-lg"></i> Macera Oyunları</a></div>
                    <div class="kategori"><a href="kategori\kategori.html"><i class=" fa fa-ship fa-lg"></i> Macera Oyunları</a></div>
                    <div class="kategori"><a href="kategori\kategori.html"><i class=" fa fa-ship fa-lg"></i> Macera Oyunları</a></div>
                    <div class="kategori"><a href="kategori\kategori.html"><i class=" fa fa-ship fa-lg"></i> Macera Oyunları</a></div>
                    <div class="kategori"><a href="kategori\kategori.html"><i class=" fa fa-ship fa-lg"></i> Macera Oyunları</a></div>
                    <div class="kategori"><a href="kategori\kategori.html"><i class=" fa fa-ship fa-lg"></i> Macera Oyunları</a></div>
                    <div class="kategori"><a href="kategori\kategori.html"><i class=" fa fa-ship fa-lg"></i> Macera Oyunları</a></div>
                    <div class="kategori"><a href="kategori\kategori.html"><i class=" fa fa-ship fa-lg"></i> Macera Oyunları</a></div>
                    <div class="kategori"><a href="kategori\kategori.html"><i class=" fa fa-ship fa-lg"></i> Macera Oyunları</a></div>
                    <div class="kategori"><a href="kategori\kategori.html"><i class=" fa fa-ship fa-lg"></i> Macera Oyunları</a></div>
                    <div class="kategori"><a href="kategori\kategori.html"><i class=" fa fa-ship fa-lg"></i> Macera Oyunları</a></div>
                    <div class="kategori"><a href="kategori\kategori.html"><i class=" fa fa-ship fa-lg"></i> Macera Oyunları</a></div>
                  </div>
                </div>
            </div>
          </div><!-- sag bitis-->
          <div class="clear"></div>
        </div><!--  container bitis -->
      </div><!-- site bitis -->
    <?php include 'footer.php' ?>
