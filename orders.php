<?php

require_once("config/database.php");

class Order {
  
  public $ID;
  public $Cpu;
  public $Gpu;
  public $Ram;
  public $Motherboard;
  public $Hdd;
  public $CardReader;
  public $Customer;
  public $Email;
  public $Phone;
  
  public function Set ($ID, $Cpu, $Gpu, $Ram, $Motherboard, $Hdd, $CardReader, $Customer, $Email, $Phone) {
    
    $this->ID = $ID;
    $this->Cpu = $Cpu;
    $this->Gpu = $Gpu;
    $this->Ram = $Ram;
    $this->Motherboard = $Motherboard;
    $this->Hdd = $Hdd;
    $this->CardReader = $CardReader;
    $this->Customer = $Customer;
    $this->Email = $Email;
    $this->Phone = $Phone;
  }
}

class Orders {
  
  public $Counter = 0;
  public $Order = array();
  
  public function Add (Order $Order) {
    
    $this->Order[$this->Counter] = $Order;
    $this->Counter++;
  }
  
  public function GetByIndex($index) {
    
    return $this->Order[$index];
  }
  
  public function GetBy($by, $name) {
    
    $return = FALSE;
    
    for ($i = 0; $i < $this->Counter; $i++) {
      
      if($this->Order[$i]->$by == $name) 
        $return = $this->Order[$i];
    }
    
    return $return;
  }
  
  public function Swap($i, $x){
    
    list($this->Order[$x], $this->Order[$i]) = array($this->Order[$i], $this->Order[$x]);
  }
  
  public function SortBy($key, $order) {
    
    for ($i = 0; $i < $this->Counter - 1; $i++) {
      
      for ($x = $i + 1; $x < $this->Counter; $x++) {
        
        if($order == "DESC")
          if($this->Order[$i]->$key > $this->Order[$x]->$key)
            $this->Swap($i, $x); 
        
        if($order == "ASC")
          if($this->Order[$i]->$key < $this->Order[$x]->$key)
            $this->Swap($i, $x); 
      }
    }
  }
  
  public function SearchBy($keys, $data, $results) {
    
    if(!is_array($keys)) $keys = array($keys);
    
    for($i = 0; $i < $this->Counter; $i++) {
      
      $found = FALSE;
      
      foreach($keys as $key){
        
        if(strpos(strtolower($this->Order[$i]->$key), strtolower($data)) !== false)
          $found = TRUE;
      }
      
      if($found) {
        $results->Add($this->Order[$i]);
      }
    }
  }
  
  public function Edit($x, $key, $value) {
    
    $this->Order[$x]->$key = $value;
  }
}

$Orders = new Orders;

$query = $Database->query("SELECT * FROM `orders`");

while($row = $query->fetch_assoc()){
  
  $Order = new Order;
  $Order->Set(
    $row["ID"], 
    $row["Cpu"], 
    $row["Gpu"], 
    $row["Ram"], 
    $row["Motherboard"], 
    $row["Hdd"], 
    $row["CardReader"], 
    $row["Customer"], 
    $row["Email"], 
    $row["Phone"]
  );
  
  $Orders->Add($Order);
}

$Orders->SortBy("ID", "ASC");

?>