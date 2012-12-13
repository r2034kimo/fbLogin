<?php
    
    require 'dbconnect.php';
    $petid = _GET['petID'];
	$petName = $_POST['petName'];
	$owner = $_POST['Owner'];
	$phone = $_POST['phone'];
	$address1 = $_POST['address1'];
	$address2 = $_POST['address2'];
	$city = $_POST['city'];
	$state = $_POST['state'];
	$postal = $_POST['postalCode'];
	$country = $_POST['country'];
	$sales = $_POST['sales'];
	$sqlStatement = "INSERT INTO customers(customerNumber, customerName, contactLastName, contactFirstName, phone, addressLine1, addressLine2, city, state, postalCode, country, salesRepEmployeeNumber, creditLimit, amountowed) VALUES ($id, '$name', '$fname', '$lname', '$phone', '$address1', '$address2', '$city', '$state', $postal, '$country', $sales, 1000, 0);";
	if (mysql_query($sqlStatement))
	{
		print "$name is inserted into the list.<br/>";
	}
	else
	{
		print "Insertion failed: ".mysql_error()."<br/>";
	}
    

    

?>

