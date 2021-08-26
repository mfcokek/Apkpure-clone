<?php include 'ayar.php'?>

<?php 
if(session("user_id")){
  header("Location:index.php");
}
if($_POST){
    $kadi = $_POST['user_name'];
    $email = $_POST['user_email'];
    $pass1 = $_POST['user_pass'];
    $pass2 = $_POST['user_pass2'];
    $i = 1;
    if(empty($kadi) || empty($email) || empty($pass1) || empty($pass2) ){
        $message = "Hiç Bir Alan Boş Bırakılamaz";
    }else{
        if($pass1 != $pass2){
            $message = "Şifreler Uyuşmuyor";
        }else{
            $query = $db->query("SELECT * FROM users WHERE user_email = '{$email}'")->fetch(PDO::FETCH_ASSOC);
            if($query){
                $message = "Bu E-posta Kullanılıyor";
            }else{
                $query = $db->prepare("INSERT INTO users SET
                user_name = ?,
                user_email = ?,
                user_pass = ?");
                $insert = $query->execute(array(
                    $kadi , $email , $pass1
                ));
                if ( $insert ){
                    $last_id = $db->lastInsertId();
                    $message = "Kayıt Başarılı";
                    $i = 0 ;
                    $_SESSION['user_id'] = $last_id;
                    $_SESSION['user_name'] = $kadi;
                    header("Location:index.php");
                }
            }
        }
    }
}
?>
<?php require 'header.php'?>
      <div class="kayit-site" id="kayit">
        <div class="kayit-container">
          <div align="center">
            <div class="kayit-kayit">
              <h2>Kulanıcı Girişi</h2>
              <div class="kayit-clear"></div>
              <div style="width:350px;height:39px;border:1px solid <?php if(isset($i)){if($i==1){echo '#e0b4b4;';}else{echo 'green;';}}?>border-radius:3px;" class="kayit-alert"><p style="color:#666;line-height:40px;font-size:16px;"><?=@$message?></p></div>
              <form class="" action="" method="post">
                <input type="text" name="user_name" value="" placeholder="Kullanıcı Adı">
                <input type="email" name="user_email" value="" placeholder="E-Posta">
                <input type="password" name="user_pass" value="" placeholder="Şifre">
                <input type="password" name="user_pass2" value="" placeholder="Şifre Doğrula">
                <input class="kayit-button" type="submit" name="" value="Kayıt Ol">
              </form>
              <div class="kayit-giris">
                <a href="login.php">Giriş</a>
              </div>
            </div>
          </div>
        </div><!--  container bitis -->
      </div><!-- site bitis -->
<?php require 'footer.php'?>
