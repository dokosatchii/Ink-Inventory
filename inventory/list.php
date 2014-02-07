<?php
echo "<link rel='stylesheet' type='text/css' href='stylesheet2.css' />";  
//info to connect to database
$user_name="root";
$password="";
$server="127.0.0.1";
$database="ink";
$data="Success!";
//connecting to the MySQL
mysql_connect($server,$user_name,$password) or die(mysql_error());
mysql_select_db($database);

//Get all the data from ricoh table
$result=mysql_query("SELECT * FROM ricoh") or die(mysql_error());
echo "<div class=\"standard\">";
echo"<table border =  '1'>";
echo "<tr> <th>Ricoh printer</th><th>Color</th><th>Quantity</th><th>Toner name</th><th>Also known as</th></tr>";
//fetch from database
while($row = mysql_fetch_array($result)) 
{
	echo "<tr><td>";
	echo $row['name'];
	echo "</td><td>";
	echo $row['color'];
	echo "</td><td>";
	echo $row['quantity'];
	echo "</td><td>";
	echo $row['toner_name'];
	echo "</td><td>";
	echo $row['alternative'];
	echo "</td></tr>";
}
echo "</div>";
$result=mysql_query("SELECT * FROM hp") or die(mysql_error());

echo "<div class=\"standard\">";
echo"<table border =  '1'>";
echo "<tr> <th>HP printer</th><th>Color</th><th>Quantity</th><th>Alternative Printer</th><th>Toner Name</th><th>Alternative toner name</th><th>Printer Amount</th></tr>";

//fetch from database
while($row = mysql_fetch_array($result)) 
{
	echo "<tr><td>";
	echo $row['printer'];
	echo "</td><td>";
	echo $row['color'];
	echo "</td><td>";
	echo $row['quantity'];
	echo "</td><td>";
	echo $row['alt_printer'];
	echo "</td><td>";
	echo $row['toner_name'];
	echo "</td><td>";
	echo $row['alternative'];
	echo "</td><td>";
	echo $row['printer_amount'];
	echo "</td></tr>";
}
echo "</div>";
?>