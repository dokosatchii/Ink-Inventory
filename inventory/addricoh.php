<?php
//info to connect to database
$user_name="root";
$password="";
$server="127.0.0.1";
$database="ink";
$data="Success!";
$date=date("m/d/y");

//variables from html file
$ricohtoner=$_POST['postricoh'];
$amount=$_POST['postricohamount'];


//connecting to MySQL
mysql_connect($server,$user_name,$password) or die(mysql_error());
mysql_select_db($database);

//adds the amount from the database
$result=mysql_query("UPDATE ricoh SET quantity=quantity+$amount WHERE toner_name='$ricohtoner'") or die(mysql_error());

//creates a text log for todd to view later
$data=$ricohtoner." + ".$amount." ".$date."\r\n";
$log="log.txt";
$fh=fopen($log,'a') or die("Can't open file");
fwrite($fh,$data);
fclose($fh);
echo $data;

$ricohtoner="";
$amount="";

?>
