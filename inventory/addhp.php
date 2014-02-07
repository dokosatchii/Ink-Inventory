<?php
//info to connect to database
$user_name="root";
$password="";
$server="127.0.0.1";
$database="ink";
$data="Success!";
$date=date("m/d/y/");

//variables from html file
$hptoner=$_POST['posthptype'];
$amount=$_POST['posthpamount'];

//connecting to MySQL
mysql_connect($server,$user_name,$password) or die(mysql_error());
mysql_select_db($database);
//removes the amount from the database
$result=mysql_query("UPDATE hp SET quantity = quantity+$amount WHERE toner_name='$hptoner' OR alternative='$hptoner'") or die(mysql_error());

//creates a text log for todd to view later
$data=$hptoner." + ".$amount." ".$date."\r\n";
$log="log.txt";
$fh=fopen($log,'a') or die("Can't open file");
fwrite($fh,$data);
fclose($fh);
echo $data;

$hptoner="";
$amount="";

?>