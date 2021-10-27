<?php
class DBController {
	private $host = "sql211.epizy.com";
	private $user = "epiz_27845656";
	private $password = "Ql4u2tkk1W8uw";
	private $database = "epiz_27845656_andinstore";
	private $conn;
	
	function __construct() {
		$this->conn = $this->connectDB();
	}
	
	function connectDB() {
		$conn = mysqli_connect($this->host,$this->user,$this->password,$this->database);
		return $conn;
	}
	
	function runQuery($query) {
		$result = mysqli_query($this->conn,$query);
		if(!empty($result)){
			while($row=mysqli_fetch_assoc($result)) {
				$resultset[] = $row;
			}		
			if(!empty($resultset))
				return $resultset;
		}
	}

	function insertRow($query) {
		$result = mysqli_query($this->conn, $query);
		return $result;
	}
	
	function numRows($query) {
		$result  = mysqli_query($this->conn,$query);
		$rowcount = mysqli_num_rows($result);
		return $rowcount;	
	}
}
?>