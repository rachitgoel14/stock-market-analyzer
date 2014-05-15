<?php 
$connect = mysql_connect('localhost' , 'root' , '');

if(!$connect) {
	die('Problem connecting to the database');
}

mysql_select_db("stock_market" , $connect);
?>