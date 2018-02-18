<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="lt" lang="lt">
<head>
  <title>Kompiuterių surinkimas</title>
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
  <meta http-equiv="Content-Style-Type" content="text/css" />
  <link rel="stylesheet" type="text/css" media="screen" href="/style/main.css?t=<?php echo time(); ?>" />
</head>
<body>
  <?php 
  
  require_once("config/database.php");
  require_once("orders.php");
  require_once("items.php");
  
  $sorts = array(
    "ID_ASC" => "Naujausios pirmiau",
    "ID_DESC" => "Seniausi pirmiau"
  );
  
  $table = array(
    "ID" => "Užsakymo ID",
    "Cpu" => "Procesorius",
    "Gpu" => "Vaizdo plokštė",
    "Ram" => "Operatyvioji atmintis",
    "Motherboard" => "Motininė plokštė",
    "Hdd" => "Disko talpa",
    "CardReader" => "Kortelių skaitytuvas",
    "Customer" => "Užsakovas",
    "Email" => "Paštas",
    "Phone" => "Telefonas"
  );
  
  for($x = 0; $x < $Orders->Counter; $x++) {
    
    foreach($table as $key => $value) {
      
      $Orders->Edit($x, $key, $Items->Get($key, $Orders->GetByIndex($x)->$key, "Name"));
    }
  }
  
  $search = FALSE;
  $sort_by = "ID_ASC"; // numatytasis rikiavimas
  $page = 1;
  
  if(isset($_GET["search"])) $search = htmlspecialchars($_GET["search"]);
  if(isset($_GET["sort_by"])) $sort_by = htmlspecialchars($_GET["sort_by"]);
  if(isset($_GET["page"])) $page = (int)$_GET["page"];
  
  if($search) {
    
    $rezultatai = new Orders;
    
    // Pagal ka galima ieskoti
    $keys = array("Cpu", "Gpu", "Ram", "Motherboard", "Hdd", "CardReader", "Customer", "Email", "Phone");
    
    $Orders->SearchBy($keys, $search, $rezultatai);
    $Orders = $rezultatai;
  }
  
  if($sort_by != "" && isset($sorts[$sort_by])) {
    
    list($key, $sort) = explode("_", $sort_by);
    $Orders->SortBy($key, $sort);
  }
  
  $OrdersPerPage = 5;
  
  // puslapiavimas
  $pages = ceil($Orders->Counter / $OrdersPerPage);
  if($pages == 0) $pages = 1;
  if($page > $pages || $page < 1) $page = 1;
  $pageTo = $page * $OrdersPerPage;
  $pageFrom = $pageTo - $OrdersPerPage;
  if($pageTo > $Orders->Counter) $pageTo = $Orders->Counter;
  
  ?>
  <div class="main">
    <div class="main_top">
      <form method="get" class="search_block">
        <input type="text" name="search" value="<?php echo $search; ?>" placeholder="Paieška"/>
        <input type="hidden" name="sort_by" value="<?php echo $sort_by; ?>"/>
        <input type="submit" class="search" value=""/>
      </form>
      <form method="get" class="order_block">
        <input type="hidden" name="search" value="<?php echo $search; ?>"/>
        Rikiuoti:
        <select name="sort_by" onchange="this.form.submit()">
          <?php foreach($sorts as $key => $display) { ?>
            <option value="<?php echo $key; ?>"<?php if($sort_by == $key) echo "selected"; ?>><?php echo $display; ?></option>
          <?php } ?>
        </select>
      </form>
    </div>
    <?php if($search != "") { ?>
      <div class="message">
        Paieškos rezultatų: <?php echo $Orders->Counter; ?>
        <a class="show_all" href="?search=&amp;sort_by=<?php echo $sort_by; ?>">Rodyti visus užsakymus</a>
      </div>
    <?php } ?>
    <div class="message" id="info">
      Užveskite pelės žymeklį ant teksto, kurį norite pilnai matyti.
    </div>
    <div class="order_list">
      <?php if($Orders->Counter != 0) { ?>
        <table>
          <tr>
            <?php foreach($table as $value) { ?>
              <td>
                <?php echo $value; ?>
              </td>
            <?php } ?>
          </tr>
          <?php for($x = $pageFrom; $x < $pageTo; $x++){ ?>
            <tr>
              <?php foreach($table as $key => $value) { ?>
                <td><span class="hidden"><?php echo $Orders->GetByIndex($x)->$key; ?></span></td>
              <?php } ?>
            </tr>
          <?php } ?>
        </table>
      <?php } else { ?>
        <div class="error_list">Užsakymų nėra</div>
      <?php } ?>
    </div>
    <div class="paging">
      <?php for($x = 1; $x <= $pages; $x++) { ?>
        <?php if($page == $x) echo '<span class="page_now">'.$x."</span>"; else { ?>
          <a href="?search=<?php echo $search; ?>&amp;sort_by=<?php echo $sort_by; ?>&amp;page=<?php echo $x; ?>"><?php echo $x; ?></a>
        <?php } ?>
      <?php } ?>
    </div>
    <div class="main_bottom">
      Sukūrė: Mantas Kryževičius
    </div>
  </div>
</body>
</html>