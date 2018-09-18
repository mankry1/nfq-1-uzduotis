<?php

class Database {
  
  private $servername = "localhost";
  private $username = "id5557117_nfq";
  private $password = "nfq123";
  private $database = "id5557117_nfq";
  public $db; 

  public function connect(){
    $this->db = new mysqli($this->servername, $this->username, $this->password, $this->database);
  }
  
  public function set_charset($charset){
    $this->db->set_charset($charset);
  }
  
  public function query($query) {
    return $this->db->query($query);
  }
}

$Database = new Database;
$Database->connect();
$Database->set_charset("utf8");

?>