<?php

require_once("config/database.php");

class Item {
	
	public $ID;
	public $Type;
	public $Name;
	
	public function Set ($ID, $Type, $Name) {
		
		$this->ID = $ID;
		$this->Type = $Type;
		$this->Name = $Name;
	}
}

class Items {
	
	public $Counter = 0;
	public $Item = array();
	
	public function Add (Item $Item) {
		
		$this->Item[$this->Counter] = $Item;
		$this->Counter++;
	}
	
	public function Get($Type, $ID, $Key) {
		
		$return = $ID;
    
    for($x = 0; $x < $this->Counter; $x++) {
      if($this->Item[$x]->ID == $ID && $this->Item[$x]->Type == $Type)
        $return = $this->Item[$x]->$Key;
    }
		
		return $return;
	}
  
  public function GetByType($type, $list){
    for($x = 0; $x < $this->Counter; $x++) {
      if($this->Item[$x]->Type == $type) {
        $list->Add($this->Item[$x]);
      }
    }
  }
  
  public function GetByIndex($index) {
    return $this->Item[$index];
  }
  
  public function Check ($type, $ID) {
    $return = FALSE;
    
    for($x = 0; $x < $this->Counter; $x++) {
      if($this->Item[$x]->Type == $type && $this->Item[$x]->ID == $ID)
        $return = TRUE;
    }
    
    return $return;
  }
}

$Items = new Items;

$query = $Database->query("SELECT * FROM `items`");

while($row = $query->fetch_assoc()){
	
	$Item = new Item;
	$Item->Set(
		$row["ID"], 
		$row["Type"], 
		$row["Name"]
	);
	
	$Items->Add($Item);
}

?>