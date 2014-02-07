<?php
//info to connect to database
$user_name="root";
$password="";
$server="127.0.0.1";
$database="ink";
$data="Success!";
$date=date("m/d/y/");

//variables from html file
$hpdprinter=$_POST['posthpdtype'];
$hpdcolor=$_POST['posthpdcolor'];
$amount=$_POST['posthpdamount'];

//connecting to MySQL
mysql_connect($server,$user_name,$password) or die(mysql_error());
mysql_select_db($database);
//removes the amount from the database
$result=mysql_query("UPDATE hp SET quantity = quantity+$amount WHERE printer='$hpdprinter' OR alt_printer='$hpdprinter' AND color='$hpdcolor'") or die(mysql_error());

//creates a text log for todd to view later
$data=$hpdprinter." ".$hpdcolor." + ".$amount." - ".$date."\r\n";
$log="log.txt";
$fh=fopen($log,'a') or die("Can't open file");
fwrite($fh,$data);
fclose($fh);
echo $data;

$hpdprinter="";
$hpdcolor="";
$amount="";

/* unused function to remove string from input
function removespaces($string)
{
	$string=str_replace(' ','',$string);
}
*/
?>