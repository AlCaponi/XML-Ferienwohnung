<?php 

// Init config
$sourceFile = 'products_list.xml';

// Form variables
$id = $_POST["txtID"];
$name = $_POST["txtName"];
$descr = $_POST["txtDescr"];
$quant = $_POST["txtQuant"];
$unit = $_POST["txtUnit"];
$price = $_POST["txtPriceByUnit"];
$image = $_POST["txtImage"];


// read xml file 
$xml = simplexml_load_file($sourceFile);

addEntryToXML($xml, $id, $name, $descr, $quant, $unit, $price, $image);

persistXML($sourceFile, $xml);

header("Location: product_administration.php");

function persistXML($path, $xml) {
    file_put_contents($path, $xml->asXML());
}

function addEntryToXML($xml, $id, $name, $descr, $quant, $unit, $price, $image) {
    $node = $xml->addChild('product');
    $node->addAttribute('id', $id);
	$node->addChild('name', $name);
	$node->addChild('descr', $descr);
	$node->addChild('quantity', $quant);
	$node->addChild('unit', $unit);
	$node->addChild('priceByUnit', $price);
	$node->addChild('image', $image);
}

?>