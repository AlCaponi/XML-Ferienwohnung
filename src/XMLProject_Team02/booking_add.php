<?php 

// Init config
$sourceFile = 'bookings_list.xml';

// Form variables
$id = $_POST["txtId"];
$firstname = $_POST["txtFirstname"];
$lastname = $_POST["txtLastname"];
$street = $_POST["txtStreet"];
$snumber = $_POST["txtSnumber"];
$zipcode = $_POST["txtZipcode"];
$countrycode = $_POST["txtCountrycode"];
$city = $_POST["txtCity"];
$fewoid = $_POST["txtFewoid"];
$startdate = $_POST["txtStartdate"];
$enddate = $_POST["txtEnddate"];

// read xml file 
$xml = simplexml_load_file($sourceFile);

addEntryToXML($xml, $id, $firstname, $lastname, $street, $snumber, $zipcode, $countrycode, $city, $fewoid, $startdate, $enddate);

persistXML($sourceFile, $xml);

header("Location: fo/bookings_print.php?bookId=".$id);

function persistXML($path, $xml) {
    file_put_contents($path, $xml->asXML());
}

function addEntryToXML($xml, $id, $firstname, $lastname, $street, $snumber, $zipcode, $countrycode, $city, $fewoid, $startdate, $enddate) {
    $node = $xml->addChild('booking');
    $node->addAttribute('id', $id);
    $node->addAttribute('fewoid', $fewoid);
	$node->addChild('startdate', $startdate);
	$node->addChild('enddate', $enddate);
	$booker = $node->addChild('booker');
	$booker->addChild('firstname', $firstname);
	$booker->addChild('lastname', $lastname);
	$booker->addChild('street', $street);
	$booker->addChild('sno', $snumber);
	$booker->addChild('zipcode', $zipcode);
	$booker->addChild('countrycode', $countrycode);
	$booker->addChild('city', $city);
}

?>