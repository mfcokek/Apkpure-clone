<?php
    include 'ayar.php';
    include 'header.php';
    $id=$_GET["id"];
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
        }?>
<?php 
  $yorumlar=$db->query("SELECT * FROM yorum JOIN users ON yorum.user_id = users.user_id WHERE icerik_id = '{$id}'", PDO::FETCH_ASSOC);
?>
<?php 
  $icerik = $db->query("SELECT * FROM icerik WHERE icerik_id = '{$id}'" )->fetch(PDO::FETCH_ASSOC);
?>
      <div class="site">
        <div class="container">
          <div class="sol">
            <div class="ürün-card">
                <div class="ürün-cardhead">
                  <a href="#">Anasayfa</a>»<a href="#">Uygulamalar</a>»<a href="#">Haberleşme</a>» <span style="color:#24cd77;">UC Browser</span>
                  <div class="ürün-carddahafazla">
                    <a href="#">Daha Fazla »</a>
                  </div>
                </div>
                <div class="ürün-card-list">
                  <div class="ürün-indirme">
                    <div class="ürün-indirme-resim">
                      <img src="assent/images\<?php echo $icerik['icerik_foto']?>" alt="" style="width:170px;height:170px;">
                    </div>
                    <div class="ürün-indirme-kismi">
                      <div class="ürün-isim">
                        <h1><?php echo $icerik['icerik_ismi']?></h1>
                      </div>
                      <div class="ürün-rate">
                        <button class="ürün-begeni">BEĞEN</button>
                      </div>
                      <a href="#"><?php echo $icerik['icerik_ismi']?></a>
                      <div class="ürün-indir">
                        <a href="<?php echo $icerik['icerik_link']?>">Apk İndir</a>
                      </div>
                    </div><div class="clear"></div>
                  </div>
                  <div class="ürün-oyun-gorsel">
                    <img src="assent/images\<?php echo $icerik['icerik_foto_2']?>" alt="" style="width:820px;height:410px;">
                  </div>
                  <div class="ürün-oyun-acıklama">
                    <h2><?php echo $icerik['icerik_ismi']?> Açıklaması</h2><br>
                    <p>
                      <?php echo $icerik['icerik_aciklama']?>
                    </p>
                  </div>
                  <div class="ürün-yorum">
                    <form action="yorumekleme.php" method="post">
                        <input type="hidden" name="user_id" value="<?php echo $_SESSION["user_id"];?>">
                        <input type="hidden" name="icerik_id" value="<?php echo $icerik['icerik_id'];?>">
                        <textarea name="ana_yorum" cols="30" rows="10" placeholder="Yorum Yapınız..."></textarea>
                        <input type="submit" value="Gönder">   
                    </form>
                    <div class="clear"></div>
                  </div>
                  <div class="ürün-yorumlar">
                    <?php foreach($yorumlar as $yorum){?>
                        <div class="yorum">
                            <i class="fa fa-user-circle-o fa-4x"></i>
                            <h2><?php echo $yorum['user_name']?></h2>
                            <p><?php echo $yorum['yorum_icerik']?></p>
                            <button class="yanıtla">BEĞEN</button>
                            <div class="beğenenler"><a href="">mfcokek,tunaorcun,b1fona...</a></div>
                        </div>
                    <?php } ?>
                  </div>
                </div>
            </div>
          </div><!-- sol bitis-->
          <div class="sag">
            <div class="ürün-card">
                <div class="ürün-cardhead">
                  <a href="#">Trend Uygulamalar »</a>
                </div>
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
          </div><!-- sag bitis-->

          
          
        </div><!--  container bitis -->
      </div><!-- site bitis -->
<?php
    //include 'footer.php';
?>

                            <!--<div class="alt-yorumlar">
                              <div class="alt-yorum">
                                <i class="fa fa-user-circle-o fa-3x"></i><h3>b1fona</h3><p>bu bir alt yorumdur..</p>
                                <button>beğen</button><a href="">mfcokek,tunaorcun,b1fona...</a>
                              </div>
                              <div class="alt-yorum">
                                <i class="fa fa-user-circle-o fa-3x"></i><h3>b1fona</h3><p>bu bir alt yorumdur..</p>
                                <button>beğen</button><a href="">mfcokek,tunaorcun,b1fona...</a>
                              </div>
                              <div class="clear"></div>
                            </div>
                            <div class="yanıt">
                                <form action="">
                                <input type="hidden" name="user_id" value="">
                                <input type="hidden" name="user_id" value="">
                                <textarea name="yorum" id="" cols="30" rows="10" class="yanıt-yaz" placeholder="yanıtla.."></textarea>
                                <input type="submit" name="yorum-gönder" value="Gönder">
                                </form>
                            </div>
                        </div>
                        <div class="yorum">
                            <i class="fa fa-user-circle-o fa-4x"></i>
                            <h2>mfockek</h2>
                            <p>bu bir yorumdur</p>
                            <button class="yanıtla">BEĞEN</button>
                            <div class="beğenenler"><a href="">mfcokek,tunaorcun,b1fona...</a></div>
                            <div class="alt-yorumlar">
                              <div class="alt-yorum">
                                <i class="fa fa-user-circle-o fa-3x"></i><h3>b1fona</h3><p>bu bir alt yorumdur..</p>
                                <button>beğen</button><a href="">mfcokek,tunaorcun,b1fona...</a>
                              </div>
                              <div class="alt-yorum">
                                <i class="fa fa-user-circle-o fa-3x"></i><h3>b1fona</h3><p>bu bir alt yorumdur..</p>
                                <button>beğen</button><a href="">mfcokek,tunaorcun,b1fona...</a>
                              </div>
                              <div class="clear"></div>
                            </div>
                            <div class="yanıt">
                                <form action="">
                                <textarea name="" id="" cols="30" rows="10" class="yanıt-yaz" placeholder="yanıtla.."></textarea>
                                <input type="button" value="Gönder">
                                </form>
                            </div>
                          </div>-->