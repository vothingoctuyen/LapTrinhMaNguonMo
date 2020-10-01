<?php
// Thiết lập các biến kết nối với CSDL
$host = "localhost";
$db_name = "ql_banhangthietbididong";
$username = "root";
$password = "";
try {
	$con = new PDO("mysql:host={$host};dbname={$db_name}", $username, $password);
	$con->exec("set names utf8");
}
// Hiển thị lỗi nếu quá trình kết nối xảy ra vấn đề
catch(PDOException $exception){
	echo "Connection error: " . $exception->getMessage();}
?>
	
