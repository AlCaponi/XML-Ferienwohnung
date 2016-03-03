<?php 

// Init config
$sourceFile = 'fewo_list.xml';

// Form variables
$title = $_POST["txtTitle"];
$description = $_POST["txtTitle"];
$dimension = $_POST["txtDimension"];
$rooms = $_POST["txtRooms"];
$price = $_POST["txtPrice"];
$id = $_POST["txtID"];

// read xml file 
$xml = simplexml_load_file($sourceFile);

addEntryToXML($xml, $id, $title, $description, $dimension, $rooms, $price);

persistXML($sourceFile, $xml);

header("Location: fewo_list.xml");

function persistXML($path, $xml) {
    file_put_contents($path, $xml->asXML());
}

function addEntryToXML($xml, $id, $title, $description, $dimension, $rooms, $price) {
    $node = $xml->addChild('object');
    $node->addAttribute('id', $id);
	$node->addChild('title', $title);
	$node->addChild('descr', $description);
	$node->addChild('dim', $dimension);
	$node->addChild('rooms', $rooms);
	$node->addChild('priceByDay', $price);
	//Dummy Element for Images
	$node->addChild('images');
}

?>