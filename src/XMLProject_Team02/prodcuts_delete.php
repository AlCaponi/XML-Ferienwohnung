<?php 

// Init config
$sourceFile = 'products_list.xml';

// GET variables
$id = $_GET["id"];

// define XPath Query
$xPathQuery = '/products/product[@id='.$id.']';

// load XML
$document = new DOMDocument();
$document->load($sourceFile);

$products = $document->documentElement;

// run xpath query 
$xPath = new DOMXPath($document);
$nodes = $xPath->query($xPathQuery);
$old = $products->removeChild($nodes->item(0));

$document->save($sourceFile);

// redirect to XML File
header("Location: product_administration.php");

?>