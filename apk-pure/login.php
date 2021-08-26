<?php include 'ayar.php'?>
<?php 

if(session("user_id")){
    header("Location:index.php");
}

if($_POST){
    $user_name = $_POST['user_name'];
    $pass = $_POST['user_pass'];
    $i = 1;
    if(!$user_name){
        $message = "Kullanıcı Adı Giriniz";
    }elseif(!$pass){
        $message = "Parola Giriniz";
    }else{
    $query = $db->query("SELECT * FROM users WHERE user_name = '{$user_name}' AND user_pass = '{$pass}'")->fetch(PDO::FETCH_ASSOC);
    $row = $query; 
    if($query){
        $i=0;
        $message = "Giriş Başarılı..";
        $_SESSION['user_id'] = $row['user_id'];
        $_SESSION['user_name'] = $row['user_name'];
        header("Location:index.php");
    }else{
        $message = "Kullanıcı Adı veya Şifre Hatalı";
    }
}}  
?>
<?php include 'header.php'?>
      <div class="giris-site" id="giris-giris">
        <div class="container">
          <div align="center">
            <div class="giris-giris">
              <h2>Kulanıcı Girişi</h2>
              <form class="" action="" method="post">
                <div style="width:350px;height:39px;border:1px solid <?php if(isset($i)){if($i==1){echo '#e0b4b4;';}else{echo 'green;';}}?>border-radius:3px;" class="alert"><p style="color:#666;line-height:40px;font-size:16px;"><?=@$message?></p></div>
                <input type="text" name="user_name" value="" placeholder="Kullanıcı Adı">
                <input type="password" name="user_pass" value="" placeholder="Şifre">
                <input class="giris-button" type="submit" name="" value="Giriş Yap">
              </form>
              <a href="register.php">Yeni Kullanıcı</a>
              <div class="giris-sosyal">
                <a href="https://www.facebook.com/"><i class="fa fa-facebook-square fa-4x" style="color:#3b57a0"></a></i>
                <a href="https://www.google.com/"><i class="fa fa-google fa-4x" style="color:#d95134"></i></a>
                <a href="https://www.twitter.com/"><i class="fa fa-twitter-square fa-4x" style="color:#00abeb"></i></a>
              </div>
            </div>
          </div>
        </div><!--  container bitis -->
      </div><!-- site bitis -->
<?php include 'footer.php'?>