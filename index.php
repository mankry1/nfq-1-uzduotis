<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="lt" lang="lt">
<head>
  <title>Kompiuterių surinkimas</title>
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
  <meta http-equiv="Content-Style-Type" content="text/css" />
  <link rel="stylesheet" type="text/css" media="screen" href="style/index.css?t=<?php echo time(); ?>" />
  <script type="text/javascript" src="//code.jquery.com/jquery-1.6.4.js"></script>
  <script type="text/javascript" src="//code.jquery.com/jquery-1.10.2.js"></script>
  <meta name="viewport" content="width=device-width, initial-scale=1">
  
  <script>
  $(document).ready(function(){
    $(".nfq").hide(0).delay(1000).fadeIn(1000).delay(1000).fadeOut(1000);
    $(".info").hide(0).delay(4500).fadeIn(1000).delay(1000).fadeOut(1000);
    $(".main").hide(0).delay(8000).fadeIn(2000);
  });
  </script>
  
</head>
<body>
  <div class="nfq"></div>
  <div class="info">
    <div class="content">Mantas Kryževičius</div>
  </div>
  <div class="main">
    <a class="block" href="order_item.php">Užsakymas</a>
    <a class="block" href="order_list.php">Užsakymų sąrašas</a>
    <a class="block" id="github" href="https://github.com/mankry1/nfq-1-uzduotis">GitHub</a>
  </div>
</body>
</html>