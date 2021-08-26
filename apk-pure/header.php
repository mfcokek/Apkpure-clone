<html>
  <head>
    <meta charset="utf-8">
    <title>ApkPure</title>
    <link rel="stylesheet" href="assent/css\style.css">
    <link rel="stylesheet" href="assent/icon\font-1\css\font-awesome.min.css">
  </head>
  <body>
      <div class="header">
          <div class="container">
            <div class="logo">
              <a href="index.php"><img src="assent/images/indir.png" alt="logo"></a>
            </div>
            <div class="navbar">
              <ul>
                <li><a href="kategori\kategori.html"><i class="fa fa-gamepad"></i>OYUNLAR</a></li>
                <li><a href="kategori\kategori.html"><i class="fa fa-android"></i>UYGULAMALAR</a></li>
                <li><a href=""><i class="fa fa-bars"></i>KONULAR</a></li>
                <li><a href=""><i class="fa fa-cube"></i>ÜRÜNLER</a></li>
                <?php if(session("user_id")){
                    echo '<li><a href="logout.php"><i class="fa fa-sign-out"></i>ÇIKIŞ</a></li>'; 
                }  
                else{
                    echo '<li><a href="login.php"><i class="fa fa-user"></i>Giriş Yap</a></li>'; 
                }
                ?>
                
              </ul>
            </div>
          </div>
      </div>