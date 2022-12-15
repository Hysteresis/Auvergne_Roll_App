<?php 
class Config{
	private static $instance;
	private $pdo;

	private function __construct() {
		require("infobdd.php"); 
        try 
        {
            $this->pdo = new PDO('mysql:host='.$host.';dbname='.$dbname, $user, $pass);
		}
		// catch (PDOException $error) 
        // {
        //     echo $error->getMessage();
        // }
	}
	public static function getInstance() {
		if(!(self::$instance instanceof self)) {
			self::$instance = new self();
			echo 'Tout est ok';
		}
		echo 'Tout est ok';
		return self::$instance;
			
	}

}

?>