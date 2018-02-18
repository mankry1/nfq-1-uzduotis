<?php
	
	class Price {
		
		public function cents ($price) {
			
			$return;
			
			$array = explode(".", $price);
			
			if (count($array) == 2 ) {
				
				if (strlen($array[1]) == 1) $array[1] .= "0";
				if (strlen($array[1]) == 0) $array[1] = "00";
				
				$array[1] = substr($array[1], 0, 2);
				
				$return = $array[0] * 100 + $array[1];
			}
			else {
				
				$return = $price * 100;
			}
			
			return $return;
		}
		
		public function display ($price) {
			
			$return;
			
			if (count(explode(".", $price)) == 1) {
				
				$return = $price / 100;
			}
			else {
				
				$return = $price;
			}
			
			$return = $return."€";
			
			return $return;
		}
	}
	
	$Price = new Price;
?>