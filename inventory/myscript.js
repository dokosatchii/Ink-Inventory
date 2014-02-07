//global variables
var ticket;
var department;
var ricohcolor;
var ricohprinter;
var ricohamount;
var hpcolor;
var hpprinter;
var hpamount;
var hpdcolor;
var hpdprinter;
var hpdamount;
var moveon="false";
var ricohtoner;
var hptoner;

//creates the changing options for ricoh and hp
$(document).ready(function() {
$("#ricohtype").change(function() {
var printer = $(this).val();
$("#ricohcolor").html(options[printer]);
	})
var options = [
				"<option>Black</option>",
				"<option>Black</option><option>Magenta</option><option>Yellow</option><option>Cyan</option>",
				];
});

$(document).ready(function() {
$("#hptype").change(function() {
var printer = $(this).val();
$("#hpcolor").html(options[printer]);
	})
var options = [
				"<option>Black</option>",
				"<option>Black</option><option>Magenta</option><option>Yellow</option><option>Cyan</option>",
				];
});

$(document).ready(function() {
$("#hpdtype").change(function() {
var printer = $(this).val();
$("#hpdcolor").html(options[printer]);
	})
var options = [
				"<option>Black</option>",
				"<option>Black</option><option>Tricolor</option>",
				"<option>Black</option><option>Magenta</option><option>Yellow</option><option>Cyan</option>"
				];
});
//trim function
function trim(text) {
    return text.replace(/^\s+|\s+$/g, "");
}
function ltrim(text) {
    return text.replace(/^\s+/g, "");
}
function rtrim(text) {
    return text.replace(/\s+$/g, "");
}

//removes the temporary save and undo buttons
function disappear()
{
	$('.temp2').remove();
	$('#update').empty();
	$('#first').get(0).reset();
	$('#second').get(0).reset();
	$('#third').get(0).reset();
	$('#fourth').get(0).reset();
	}

function disappear2()
{
	$('.temp2').remove();
	$('#update').empty();
	$('#second').get(0).reset();
	$('#third').get(0).reset();
	}	

//sends the data to php page to remove toner	
function takeawayricoh() 
{
	disappear();
	$.post('takeawayricoh.php',{postticket:ticket,postdepartment:department,postricohtype:ricohprinter,postricohcolor:ricohcolor,postricohamount:ricohamount},
	function(data)
	{
	$('#update2').html(data);
	});
	moveon="false";
}	
	
function takeawayhpd() 
{
	disappear();
	$.post('takeawayhpd.php',{postticket:ticket,postdepartment:department,posthpdtype:hpdprinter,posthpdcolor:hpdcolor,posthpdamount:hpdamount},
	function(data)
	{
	$('#update2').html(data);
	});
	moveon="false";
}	

function takeawayhp() 
{
	disappear();
	$.post('takeawayhp.php',{postticket:ticket,postdepartment:department,posthptype:hpprinter,posthpcolor:hpcolor,posthpamount:hpamount},
	function(data)
	{
	$('#update2').html(data);
	});
	moveon="false";
}	

//send the data to the php page to add toner 
function addricoh() 
{
	disappear2();
	$.post('addricoh.php',{postricoh:ricohtoner,postricohamount:ricohamount},
	function(data)
	{
	$('#update').html(data);
	});
	
}	

function addhp() 
{
	disappear2();
	$.post('addhp.php',{posthptype:hptoner,posthpamount:hpamount},
	function(data)
	{
	$('#update').html(data);
	});
}	
	
//collects information for the ricoh printer and toner and asks the user if they want to continue to remove
function ricohinfo() 
{
	if(moveon=="true"){
	ricohcolor = $("#ricohcolor option:selected").text();
	ricohprinter = $("#ricohtype option:selected").text();
	ricohamount = $("#ricohamount").val();
	$("#update").html("You have chosen to remove " +ricohamount+ " " +ricohcolor+ " toner(s) for Ricoh Aficio " +ricohprinter+ " with ticket number "+ticket+ " for department "+department+". Are you sure this is what you want to remove?");
	$('#update').after('<input type="button" class="temp2" value="undo" onclick="disappear()">');	
	$('#update').after('<input type="button" class="temp2" value="continue" onclick="takeawayricoh()">');
	}
}

function hpdinfo() 
{
	if(moveon=="true") {
	hpdcolor = $("#hpdcolor option:selected").text();
	hpdprinter = $("#hpdtype option:selected").text();
	hpdamount = $("#hpdamount").val();
	$("#update").html("You have chosen to remove "+hpdamount+ " " +hpdcolor+ " toner(s) for HP " +hpdprinter+ " with ticket number  "+ticket+ " for department " +department+ ". Are you sure this is what you want to remove?");
	$('#update').after('<input type="button" class="temp2" value="undo" onclick="disappear()">');	
	$('#update').after('<input type="button" class="temp2" value="continue" onclick="takeawayhpd()">');
	}
}

function hpinfo() 
{
	if(moveon=="true") {
	hpcolor = $("#hpcolor option:selected").text();
	hpprinter = $("#hptype option:selected").text();
	hpamount = $("#hpamount").val();
	$("#update").html("You have chosen to remove "+hpamount+ " " +hpcolor+ " toner(s) for HP " +hpprinter+ " with ticket number  "+ticket+ " for department " +department+ ". Are you sure this is what you want to remove?");
	$('#update').after('<input type="button" class="temp2" value="undo" onclick="disappear()">');	
	$('#update').after('<input type="button" class="temp2" value="continue" onclick="takeawayhp()">');
	}
}

//collects information for the ricoh/hp printer and toner and asks the user if they want to continue 
function ricohaddinfo() 
{
	ricohtoner = trim($("#ricohtype2 option:selected").text());
	ricohamount = $("#ricohamount2").val();
	$("#update").html("You have chosen to add " +ricohamount+ " toner(s) for Ricoh Aficio toner " +ricohtoner+ ". Are you sure this is what you want to add in?");
	$('#update').after('<input type="button" class="temp2" value="undo" onclick="disappear2()">');	
	$('#update').after('<input type="button" class="temp2" value="continue" onclick="addricoh()">');
	
}


function hpaddinfo() 
{
	hptoner = $("#hptype option:selected").text();
	hpamount = $("#hpamount").val();
	$("#update").html("You have chosen to add "+hpamount+" " +hpcolor+ " toner(s) for HP " +hpprinter+ ". Are you sure this is what you want to add in?");
	$('#update').after('<input type="button" class="temp2" value="undo" onclick="disappear2()">');	
	$('#update').after('<input type="button" class="temp2" value="continue" onclick="addhp()">');
	
}
//a check to make sure the department and ticket fields are filled upon ricoh button click
function check() 
{
	
	ticket = $('#ticket').val();
	department = $('#department').val();
	
	if (ticket=="" || ticket=="ticket number..."&& department=="Department") 
	{
		$('.temp').remove();
		alert("Please make sure you specify the ticket number and department");
		$('#ticket').after('<img src="x.gif" class="temp">');
		$('#department').after('<img src="x.gif" class="temp">');
	}
	else if(ticket==""|| ticket=="ticket number..."&& department!="Department") 
	{
			alert("Please make sure you specify the ticket number");
			$('.temp').remove();
			$('#ticket').after('<img src="x.gif" class="temp">');		
	}
	else if(department=="Department")
	{
		alert("Please make sure you specify the department");
		$('.temp').remove();
		$('#department').after('<img src="x.gif" class="temp">');
	}
	else
	{
		moveon="true";
		$('.temp').remove();
	}	
}

