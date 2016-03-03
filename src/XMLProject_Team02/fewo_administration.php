<?php

// XML-Quellen laden
$xml = new DOMDocument;
$xml->load('fewo_list.xml');

$xsl = new DOMDocument;
$xsl->load('fewo_list_administration.xsl');

// Prozessor instanziieren und konfigurieren
$proc = new XSLTProcessor;
$proc->importStyleSheet($xsl); // XSL Document importieren

echo $proc->transformToXML($xml);

?>