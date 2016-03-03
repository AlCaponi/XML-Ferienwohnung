<?xml version="1.0" ?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns="http://www.w3.org/1999/xhtml">
  <xsl:output method="html" encoding="UTF-8" indent="yes"/>
  <xsl:template match="/">
    <html>
      <head>
        <title>XML Projekt - Aktuelle Buchungen</title>
        <meta http-equiv="content-type" content="text/html; charset=utf-8" />
        <meta name="description" content="" />
        <meta name="keywords" content="" />
        <!--[if lte IE 8]><script src="css/ie/html5shiv.js"></script><![endif]-->
        <script src="js/jquery.min.js"></script>
        <script src="js/jquery.dropotron.min.js"></script>
        <script src="js/skel.min.js"></script>
        <script src="js/skel-layers.min.js"></script>
        <script src="js/init.js"></script>
        <noscript>
          <link rel="stylesheet" href="css/skel.css" />
          <link rel="stylesheet" href="css/style.css" />
          <link rel="stylesheet" href="css/style-wide.css" />
        </noscript>
        <style type="text/css">
          td, th, tr { vertical-align: top; }
        </style>
        <!--[if lte IE 8]><link rel="stylesheet" href="css/ie/v8.css" /><![endif]-->
      </head>
      <body>

        <!-- Header -->
        <div id="header">
          <!-- Logo -->
          <h1>
            <a href="index.html" id="logo">Bio-Hofladen</a>
          </h1>

          <!-- Nav -->
          <nav id="nav">
            <ul>
              <li>
                <a href="index.html">Home</a>
              </li>
              <li>
                <a href="products_list.xml">Produkte</a>
              </li>
              <li  class="current">
                <a href="fewo_list.xml">Ferienwohnungen</a>
              </li>
              <li>
                <a href="bookings.php">Buchungen</a>
              </li>
              <li>
                <a href="product_administration.php">Administration Produkte</a>
              </li>
              <li>
                <a href="fewo_administration.php">Administration Ferienwohnungen</a>
              </li>
            </ul>
          </nav>
        </div>

        <!-- Banner -->
        <section id="banner">
          <div>
            <a href="#" class="image image-full">
              <img src="images/laden_innen_gr.jpg" alt="" />
            </a>
          </div>

          <header>
            <h2>Aktuelle Buchungen</h2>
          </header>
        </section>

        <!-- Gigantic Heading -->
        <section class="wrapper style2">
          <div class="container">
            <header class="major">
              <xsl:apply-templates select="bookings/booking" />
            </header>
          </div>
        </section>

        <!-- Footer -->
        <div id="footer">
          <!-- Copyright -->
          <div class="copyright">
            <ul class="menu">
              <li>Copyright by Dominique Nobel, Kai Gossens, Rukshan Srirangarajah, Angelo Conconi. All rights reserved</li>
              <li>
                Design: <a href="http://html5up.net">HTML5 UP</a>
              </li>
            </ul>
          </div>
        </div>
      </body>
    </html>
    
  </xsl:template>

  <xsl:template match="booking">
    <div>
      <h1>
        Buchungs-ID #<xsl:value-of select="@id"/> für Ferienobjekt-ID #<xsl:value-of select="@fewoid"/> vom <xsl:value-of select="startdate"/> bis <xsl:value-of select="enddate"/>
      </h1>
    </div>
    <div>           
	  <table>
        <tr>
          <td width="50">
            <b>Name</b>
          </td>
          <td width="100">            
			<xsl:value-of select="booker/firstname"/>&#160;<xsl:value-of select="booker/lastname"/>
          </td>
          <td width="50">
            <b>Strasse</b>
          </td>
          <td width="200">
			<xsl:value-of select="booker/street"/>&#160;<xsl:value-of select="booker/sno"/>
          </td>
          <td width="50">
            <b>Ort</b>
          </td>
          <td width="100">
			<xsl:value-of select="booker/countrycode"/>-<xsl:value-of select="booker/zipcode"/>&#160;<xsl:value-of select="booker/city"/>
          </td>
        </tr>
	
      </table>
    </div>
    <p/>
  </xsl:template>
</xsl:stylesheet>