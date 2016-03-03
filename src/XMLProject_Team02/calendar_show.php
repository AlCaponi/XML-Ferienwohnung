<?php 

// Init config
$sourceFile = 'bookings_list.xml';

// GET variables
$id = $_GET["objectId"];
echo $id;
// define XPath Query
$xPathQueryStartdate = '/bookings/booking[@fewoid='.$id.']/startdate';
$xPathQueryEnddate = '/bookings/booking[@fewoid='.$id.']/enddate';

// load XML
$document = new DOMDocument();
$document->load($sourceFile);

$fewo = $document->documentElement;

// run xpath query 
$xPath = new DOMXPath($document);
$nodesStartdate = $xPath->query($xPathQueryStartdate);
$nodesEnddate = $xPath->query($xPathQueryEnddate);


include 'calendar.php';
$calendar = new Calendar();
echo $calendar->show($nodesStartdate, $nodesEnddate);
//$old = $fewo->removeChild($nodes->item(0));

//$document->save($sourceFile);

// redirect to XML File
header("Location: bookings_list.xml");

?>