<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="lt" lang="lt">
<head>
  <title>Kompiuterių surinkimas</title>
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
  <meta http-equiv="Content-Style-Type" content="text/css" />
  <link rel="stylesheet" type="text/css" media="screen" href="style/main.css?t=<?php echo time(); ?>" />
</head>
<body>
  <div class="main">
    <div class="main_top" id="text">
      Teikiame kompiuterių surinkimo paslaugas.<br/>
      Išsirinkite norimus komponentus, patvirtinkite ir mes su jumis susisieksime!
    </div>
    <?php 
      
      require_once("config/database.php");
      require_once("orders.php");
      require_once("items.php");
      
      $inputs = array(
        "Cpu" => array(
          "type" => "option", 
          "name" => "Procesorius"
        ),
        "Gpu" => array(
          "type" => "option", 
          "name" => "Vaizdo plokštė"
        ),
        "Ram" => array(
          "type" => "option", 
          "name" => "Operatyvioji atmintis"
        ),
        "Motherboard" => array(
          "type" => "option", 
          "name" => "Motininė plokštė"
        ),
        "Hdd" => array(
          "type" => "option", 
          "name" => "Disko talpa"
        ),
        "CardReader" => array(
          "type" => "option", 
          "name" => "Kortelių skaitytuvas"
        ),
        "Customer" => array(
          "type" => "text", 
          "name" => "Vardas Pavardė"
        ),
        "Email" => array(
          "type" => "text", 
          "name" => "Paštas"
        ),
        "Phone" => array(
          "type" => "text", 
          "name" => "Telefonas"
        )
      );
      
      foreach($_POST as $key => $value){
        $_POST[$key] = htmlspecialchars(addslashes($value));
      }
      
      if(isset($_POST["submit"])) {
        
        $errors = array();
        
        foreach($inputs as $key => $params) {
          if(!isset($_POST[$key]))
            array_push($errors, "Paliktas laukelis ".$params["name"]);
          else {
            
            if($params["type"] == "option" && !$Items->Check($key, $_POST[$key])) // tikrinama ar yra toks daiktas koks buvo pasirinktas
              array_push($errors, "Pasirinktas netinkamas komponentas (".$params["name"].")");
            
            if(empty($_POST[$key]))
              array_push($errors, "Paliktas laukelis ".$params["name"]);
            
            elseif($key == "Email" && !filter_var($_POST[$key], FILTER_VALIDATE_EMAIL))
              array_push($errors, "Netinkamas elektroninio pašto adresas");
          }
        }
        
        if(count($errors) > 0){
          echo '<div class="error_list">';
          
          foreach($errors as $error) {
            echo $error."<br/>";
          }
          
          echo'</div>';
        }
        else {
          
          $x = 0;
          $names = $values = "";
          foreach($inputs as $key => $params) {
            
            $x++;
            $names = $names."`".$key."`";
            
            if($params["type"] == "option") 
              $values = $values."".$_POST[$key]."";
            else 
              $values = $values."'".$_POST[$key]."'";
            
            if($x < count($inputs)) {
              $names = $names.", ";
              $values = $values.", ";
            }
            
          }
          
          $Database->query("INSERT INTO orders ($names) VALUES ($values)");
          
          echo '<div class="message" id="success">Užsisakėte.</div>';
        }
      }
    ?>
    <div class="order_page">
      <form method="post" id="order">
        <?php foreach($inputs as $key => $params) { ?>
          <span class="order_name"><?php echo $params["name"]; ?></span>
          <?php if($params["type"] == "text") { ?>
            <input type="text" name = "<?php echo $key; ?>" placeholder="<?php echo $params["name"]; ?>"/><br/>
          <?php } ?>
          <?php if($params["type"] == "option") { ?>
            <?php 
              $list = new Items;
              $Items->GetByType($key, $list);
            ?>
            <select name="<?php echo $key; ?>">
              <option disabled selected>Pasirinkite</option>
              <?php for($x = 0; $x < $list->Counter; $x++) { ?>
                <option value="<?php echo $list->GetByIndex($x)->ID; ?>"><?php echo $list->GetByIndex($x)->Name; ?></option>
              <?php } ?>
            </select>
            <br/>
          <?php } ?>
        <?php } ?>
        <span class="order_name"></span> <input type="submit" name="submit" value="Užsakyti"/>
      </form>
    </div>
    <div class="main_bottom">
      Sukūrė: Mantas Kryževičius
    </div>
  </div>
</body>
</html>