<?php
//info to connect to database
$user_name="root";
$password="";
$server="127.0.0.1";
$database="ink";
$data="Success!";
$date=date("m/d/y");

//variables from html file
$ticket=$_POST['postticket'];
$department=$_POST['postdepartment'];
$hpdprinter=$_POST['posthpdtype'];
$hpdcolor=$_POST['posthpdcolor'];
$amount=$_POST['posthpdamount'];

//connecting to MySQL
mysql_connect($server,$user_name,$password) or die(mysql_error());
mysql_select_db($database);
$query = "SELECT * FROM hp WHERE printer='$hpdprinter' OR alt_printer='$hpdprinter' AND color='$hpdcolor'";
$result = mysql_query($query);
$row = mysql_fetch_array($result);

//check if we have the toner in stock
if($row['quantity']==0)
{
	echo "We don't have anymore of these toners, a report has been sent to the manager";
	$message = "We are out of ".$row['color']. " toner for HP ".$row['printer']." toner name: " .$row['toner_name']. " Alternate name: ".$row['alternative'];
	
		}
else if($row['quantity']<$amount) {
	echo "Sorry we don't have that amount, check the inventory page to see how many we have left";
	}
else {

//removes the amount from the database
$result=mysql_query("UPDATE hp SET quantity = quantity-$amount WHERE printer='$hpdprinter' OR alt_printer='$hpdprinter' AND color='$hpdcolor'") or die(mysql_error());

//creates a text log for todd to view later
$data=$ticket." ".$department." ".$hpdprinter." ".$hpdcolor." - ".$amount." - ".$date."\r\n";
$log="log.txt";
$fh=fopen($log,'a') or die("Can't open file");
fwrite($fh,$data);
fclose($fh);
echo $data;

$hpdprinter="";
$hpdcolor="";
$amount="";
}
/* unused function to remove string from input
function removespaces($string)
{
	$string=str_replace(' ','',$string);
}
*/
?>

