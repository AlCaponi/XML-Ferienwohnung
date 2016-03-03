<?php 

// Init config
$sourceFile = 'fewo_list.xml';

// GET variables
$id = $_GET["objectId"];
echo $id;
// define XPath Query
$xPathQuery = '/fewo/object[@id='.$id.']';

// load XML
$document = new DOMDocument();
$document->load($sourceFile);

$fewo = $document->documentElement;

// run xpath query 
$xPath = new DOMXPath($document);
$nodes = $xPath->query($xPathQuery);
$old = $fewo->removeChild($nodes->item(0));

$document->save($sourceFile);

// redirect to XML File
header("Location: fewo_list.xml");

?>