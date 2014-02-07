<!DOCTYPE html>
<html>
<head>

<link type="text/css" rel="stylesheet" href="stylesheet2.css"/>
<script type="text/javascript" src="jquery-1.9.1.js"></script>
<script type="text/javascript" src="myscript.js"></script>
<title>Ink Inventory Redesigned</title>
</head>
<body>
<h2>Adding toner to inventory</h2>
<div class="standard2">
	<h2>Ricoh Aficio</h2>
	<img class="itpics" src="ricoh.jpg">
		<form autocomplete="off" id="second">
			<select id="ricohtype2">
				<?php 
				$user_name="root";
				$password="";
				$server="127.0.0.1";
				$database="ink";
				$data="Success!";
				$sql="SELECT * FROM ricoh";
				mysql_connect($server,$user_name,$password) or die(mysql_error());
				mysql_select_db($database);
				$result=mysql_query($sql);
				while($row=mysql_fetch_array($result)){
				echo "<option>".$row['toner_name']." </option>";
				}
				?>
			</select>
			<select id="ricohamount2">
				<option>1</option>
				<option>2</option>
				<option>3</option>
				<option>4</option>
				<option>5</option>
			</select>
			<input type="button" id="submit" value="add!" onclick="ricohaddinfo()">
		</form>
</div>

<div class="standard2">
	<h2>HP Toners</h2>
	<img class="itpics" src="hpd.png">
		<form autocomplete="off" id="third">
			<select id="hptype">
				<?php 
				$user_name="root";
				$password="";
				$server="127.0.0.1";
				$database="ink";
				$data="Success!";
				$sql="SELECT * FROM hp";
				mysql_connect($server,$user_name,$password) or die(mysql_error());
				mysql_select_db($database);
				$result=mysql_query($sql);
				while($row=mysql_fetch_array($result)){
				if($temp == $row['toner_name']) {
					echo "<option>".$row['alternative']." </option>";
				}
				else {
				echo "<option>".$row['toner_name']." </option>";
				$temp=$row['toner_name'];
				}
				}
				?>
			</select>
			
			<select id="hpamount">
				<option>1</option>
				<option>2</option>
				<option>3</option>
				<option>4</option>
				<option>5</option>
			</select>
		<input type="button" id="submit2" value="add!" onclick="hpaddinfo()">
		</form>
</div>



<div id="update"></div>
<div id="update2"></div>
<br>
<a href="index.html">Click here to take out toner from inventory</a><br>
<a href="list.php">Click here to view entire inventory</a>



</body>
</html>