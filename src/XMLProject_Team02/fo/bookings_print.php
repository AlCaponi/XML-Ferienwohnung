<?php
/**
 * XML Transformation, FO -> PDF Rendering
 * @author Kai Gossens <kai.gossens@stud.hslu.ch>
 */
 
// FOP Client laden
require_once 'fop_service_client.php';

// FO Dateiname inkl. Pfad
$foFile = '../receipt/bookings_print.fo';

// XML-Quellen laden
$xml = new DOMDocument;
$xml->load('bookings_print.xml');

$xsl = new DOMDocument;
$xsl->load('bookings_print.xsl');

// GET variables
$id = $_GET["bookId"];

// Prozessor instanziieren und konfigurieren
$proc = new XSLTProcessor;
$proc->importStyleSheet($xsl); // XSL Document importieren
$proc->setParameter('', 'bookId', $id);
$proc->transformToURI($xml, $foFile);

// FOP Client Instanz erzeugen und Service Request ausführen.
$serviceClient = new FOPServiceClient();
$pdfFile = $serviceClient->processFile($foFile);

// Temporäre FO Datei löschen
unlink($foFile);

// generate HTML output and show results of service request
echo '<h1>FOP Service Client</h1>';
echo sprintf('<p>Erfolgreich gerenderte FO-Datei:<br><strong><a href="%s">%s</a></strong></p>', $foFile, $foFile);
echo sprintf('<p>Erzeugtes PDF:<br><strong><a href="%s">%s</a></strong></p>', $pdfFile, $pdfFile);

// Browser umleiten
header("Location: " . $pdfFile);
?>
